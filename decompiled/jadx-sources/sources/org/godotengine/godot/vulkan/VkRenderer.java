package org.godotengine.godot.vulkan;

import android.util.Log;
import android.view.Surface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.GodotLib;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.GodotPluginRegistry;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u001e\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lorg/godotengine/godot/vulkan/VkRenderer;", "", "<init>", "()V", "pluginRegistry", "Lorg/godotengine/godot/plugin/GodotPluginRegistry;", "onVkSurfaceCreated", "", "surface", "Landroid/view/Surface;", "onVkSurfaceChanged", GodotService.KEY_WIDTH, "", GodotService.KEY_HEIGHT, "onVkDrawFrame", "onVkResume", "onVkPause", "onRenderThreadExiting", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VkRenderer {
    private static final String TAG = "VkRenderer";
    private final GodotPluginRegistry pluginRegistry;

    public VkRenderer() {
        GodotPluginRegistry pluginRegistry = GodotPluginRegistry.getPluginRegistry();
        Intrinsics.checkNotNullExpressionValue(pluginRegistry, "getPluginRegistry(...)");
        this.pluginRegistry = pluginRegistry;
    }

    public final void onRenderThreadExiting() {
        Log.d(TAG, "Destroying Godot Engine");
        GodotLib.ondestroy();
    }

    public final void onVkDrawFrame() {
        GodotLib.step();
        Iterator<GodotPlugin> it = this.pluginRegistry.getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onVkDrawFrame();
        }
    }

    public final void onVkPause() {
        GodotLib.onRendererPaused();
    }

    public final void onVkResume() {
        GodotLib.onRendererResumed();
    }

    public final void onVkSurfaceChanged(Surface surface, int width, int height) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        GodotLib.resize(surface, width, height);
        Iterator<GodotPlugin> it = this.pluginRegistry.getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onVkSurfaceChanged(surface, width, height);
        }
    }

    public final void onVkSurfaceCreated(Surface surface) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        GodotLib.newcontext(surface);
        Iterator<GodotPlugin> it = this.pluginRegistry.getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onVkSurfaceCreated(surface);
        }
    }
}
