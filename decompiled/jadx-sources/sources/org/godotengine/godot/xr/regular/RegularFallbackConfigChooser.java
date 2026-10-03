package org.godotengine.godot.xr.regular;

import android.util.Log;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class RegularFallbackConfigChooser extends RegularConfigChooser {
    private static final String TAG = "RegularFallbackConfigChooser";
    private RegularConfigChooser fallback;

    public RegularFallbackConfigChooser(int i3, int i4, int i5, int i6, int i7, int i8, RegularConfigChooser regularConfigChooser) {
        super(i3, i4, i5, i6, i7, i8);
        this.fallback = regularConfigChooser;
    }

    @Override // org.godotengine.godot.xr.regular.RegularConfigChooser
    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
        EGLConfig eGLConfigChooseConfig = super.chooseConfig(egl10, eGLDisplay, eGLConfigArr);
        if (eGLConfigChooseConfig != null) {
            return eGLConfigChooseConfig;
        }
        Log.w(TAG, "Trying ConfigChooser fallback");
        return this.fallback.chooseConfig(egl10, eGLDisplay, eGLConfigArr);
    }
}
