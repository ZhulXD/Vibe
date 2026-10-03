package org.cocos2dx.lib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxDataManager {
    public static void onSceneLoaderBegin() {
        setOptimise("load_scene", 1.0f);
    }

    public static void onSceneLoaderEnd() {
        setOptimise("load_scene", 0.0f);
    }

    public static void onShaderLoaderBegin() {
        setOptimise("shader_compile", 1.0f);
    }

    public static void onShaderLoaderEnd() {
        setOptimise("shader_compile", 0.0f);
    }

    public static void setFrameSize(int i3, int i4) {
        setOptimise("buffer_size", i3 * i4);
    }

    public static void setProcessID(int i3) {
        setOptimise("render_pid", i3);
    }

    public static void setOptimise(String str, float f) {
    }
}
