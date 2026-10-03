package org.godotengine.godot.xr.ovr;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;
import org.godotengine.godot.gl.GLSurfaceView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class OvrConfigChooser implements GLSurfaceView.EGLConfigChooser {
    private static final int[] CONFIG_ATTRIBS = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12337, 0, 12344};

    @Override // org.godotengine.godot.gl.GLSurfaceView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
        int[] iArr;
        int[] iArr2 = new int[1];
        if (!egl10.eglGetConfigs(eGLDisplay, null, 0, iArr2)) {
            throw new IllegalArgumentException("eglGetConfigs failed.");
        }
        int i3 = iArr2[0];
        if (i3 <= 0) {
            throw new IllegalArgumentException("No configs match configSpec");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[i3];
        if (!egl10.eglGetConfigs(eGLDisplay, eGLConfigArr, i3, iArr2)) {
            throw new IllegalArgumentException("eglGetConfigs #2 failed.");
        }
        int[] iArr3 = new int[1];
        for (int i4 = 0; i4 < i3; i4++) {
            EGLConfig eGLConfig = eGLConfigArr[i4];
            egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12352, iArr3);
            if ((iArr3[0] & 64) == 64) {
                egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, 12339, iArr3);
                if ((iArr3[0] & 5) != 5) {
                    continue;
                } else {
                    int i5 = 0;
                    while (true) {
                        iArr = CONFIG_ATTRIBS;
                        int i6 = iArr[i5];
                        if (i6 == 12344) {
                            break;
                        }
                        egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i6, iArr3);
                        if (iArr3[0] != iArr[i5 + 1]) {
                            break;
                        }
                        i5 += 2;
                    }
                    if (iArr[i5] == 12344) {
                        return eGLConfig;
                    }
                }
            }
        }
        return null;
    }
}
