package org.libsdl.app;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class SDL {
    protected static Context mContext;

    public static Context getContext() {
        return mContext;
    }

    public static void initialize() {
        setContext(null);
        SDLActivity.initialize();
        SDLAudioManager.initialize();
        SDLControllerManager.initialize();
    }

    public static void loadLibrary(String str) {
        if (str == null) {
            throw new NullPointerException("No library name provided.");
        }
        try {
            Class<?> clsLoadClass = mContext.getClassLoader().loadClass("com.getkeepsafe.relinker.ReLinker");
            Class<?> clsLoadClass2 = mContext.getClassLoader().loadClass("com.getkeepsafe.relinker.ReLinker$LoadListener");
            Class<?> clsLoadClass3 = mContext.getClassLoader().loadClass("android.content.Context");
            Class<?> clsLoadClass4 = mContext.getClassLoader().loadClass("java.lang.String");
            Object objInvoke = clsLoadClass.getDeclaredMethod("force", null).invoke(null, null);
            objInvoke.getClass().getDeclaredMethod("loadLibrary", clsLoadClass3, clsLoadClass4, clsLoadClass4, clsLoadClass2).invoke(objInvoke, mContext, str, null, null);
        } catch (Throwable unused) {
            System.loadLibrary(str);
        }
    }

    public static void setContext(Context context) {
        mContext = context;
    }

    public static void setupJNI() {
        SDLActivity.nativeSetupJNI();
        SDLAudioManager.nativeSetupJNI();
        SDLControllerManager.nativeSetupJNI();
    }
}
