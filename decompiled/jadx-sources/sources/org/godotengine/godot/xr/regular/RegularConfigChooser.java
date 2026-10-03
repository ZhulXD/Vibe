package org.godotengine.godot.xr.regular;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class RegularConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private static int EGL_OPENGL_ES2_BIT = 4;
    private static final String TAG = "RegularConfigChooser";
    private static int[] s_configAttribs = {12324, 4, 12323, 4, 12322, 4, 12352, 4, 12344};
    protected int mAlphaSize;
    protected int mBlueSize;
    protected int mDepthSize;
    protected int mGreenSize;
    protected int mRedSize;
    protected int mStencilSize;
    private int[] mValue = new int[1];

    public RegularConfigChooser(int i3, int i4, int i5, int i6, int i7, int i8) {
        this.mRedSize = i3;
        this.mGreenSize = i4;
        this.mBlueSize = i5;
        this.mAlphaSize = i6;
        this.mDepthSize = i7;
        this.mStencilSize = i8;
    }

    private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i3, int i4) {
        return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i3, this.mValue) ? this.mValue[0] : i4;
    }

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr = new int[1];
        egl10.eglChooseConfig(eGLDisplay, s_configAttribs, null, 0, iArr);
        int i3 = iArr[0];
        if (i3 <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i3];
        egl10.eglChooseConfig(eGLDisplay, s_configAttribs, eGLConfigArr, i3, iArr);
        return chooseConfig(egl10, eGLDisplay, eGLConfigArr);
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        int length = eGLConfigArr.length;
        int i3 = 0;
        while (i3 < length) {
            EGLConfig eGLConfig = eGLConfigArr[i3];
            EGL10 egl11 = egl10;
            EGLDisplay eGLDisplay2 = eGLDisplay;
            int iFindConfigAttrib = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12325, 0);
            int iFindConfigAttrib2 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12326, 0);
            if (iFindConfigAttrib >= this.mDepthSize && iFindConfigAttrib2 >= this.mStencilSize) {
                int iFindConfigAttrib3 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12324, 0);
                int iFindConfigAttrib4 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12323, 0);
                int iFindConfigAttrib5 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12322, 0);
                int iFindConfigAttrib6 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12321, 0);
                if (iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                    return eGLConfig;
                }
            }
            i3++;
            egl10 = egl11;
            eGLDisplay = eGLDisplay2;
        }
        return null;
    }
}
