package org.godotengine.godot.xr.regular;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;
import org.godotengine.godot.utils.GLUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class RegularContextFactory implements GLSurfaceView.EGLContextFactory {
    private static int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final String TAG = "RegularContextFactory";
    private static final int _EGL_CONTEXT_FLAGS_KHR = 12540;
    private static final int _EGL_CONTEXT_OPENGL_DEBUG_BIT_KHR = 1;
    private final boolean mUseDebugOpengl;

    public RegularContextFactory() {
        this(false);
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
    public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        EGLContext eGLContextEglCreateContext;
        String str = TAG;
        Log.w(str, "creating OpenGL ES 3.0 context :");
        GLUtils.checkEglError(str, "Before eglCreateContext", egl10);
        int i3 = EGL_CONTEXT_CLIENT_VERSION;
        int[] iArr = {i3, 3, _EGL_CONTEXT_FLAGS_KHR, 1, 12344};
        int[] iArr2 = {i3, 3, 12344};
        boolean z2 = this.mUseDebugOpengl;
        EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
        if (z2) {
            eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
            if (eGLContextEglCreateContext == null || eGLContextEglCreateContext == eGLContext) {
                Log.w(str, "creating 'OpenGL Debug' context failed");
                eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr2);
            }
        } else {
            eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr2);
        }
        GLUtils.checkEglError(str, "After eglCreateContext", egl10);
        return eGLContextEglCreateContext;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
    public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
        egl10.eglDestroyContext(eGLDisplay, eGLContext);
    }

    public RegularContextFactory(boolean z2) {
        this.mUseDebugOpengl = z2;
    }
}
