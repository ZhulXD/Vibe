package org.godotengine.godot.gl;

import android.util.Log;
import java.util.Iterator;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.godotengine.godot.GodotLib;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.GodotPluginRegistry;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotRenderer implements GLSurfaceView.Renderer {
    private final String TAG = "GodotRenderer";
    private boolean activityJustResumed = false;
    private final GodotPluginRegistry pluginRegistry = GodotPluginRegistry.getPluginRegistry();

    public void onActivityPaused() {
        GodotLib.onRendererPaused();
    }

    public void onActivityResumed() {
        this.activityJustResumed = true;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public boolean onDrawFrame(GL10 gl10) {
        if (this.activityJustResumed) {
            GodotLib.onRendererResumed();
            this.activityJustResumed = false;
        }
        boolean zStep = GodotLib.step();
        Iterator<GodotPlugin> it = this.pluginRegistry.getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onGLDrawFrame(gl10);
        }
        return zStep;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public void onRenderThreadExiting() {
        Log.d(this.TAG, "Destroying Godot Engine");
        GodotLib.ondestroy();
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i3, int i4) {
        GodotLib.resize(null, i3, i4);
        Iterator<GodotPlugin> it = this.pluginRegistry.getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onGLSurfaceChanged(gl10, i3, i4);
        }
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        GodotLib.newcontext(null);
        Iterator<GodotPlugin> it = this.pluginRegistry.getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onGLSurfaceCreated(gl10, eGLConfig);
        }
    }
}
