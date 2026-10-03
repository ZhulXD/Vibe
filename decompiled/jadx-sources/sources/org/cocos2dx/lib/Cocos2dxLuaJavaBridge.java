package org.cocos2dx.lib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxLuaJavaBridge {
    public static native int callLuaFunctionWithString(int i3, String str);

    public static native int callLuaGlobalFunctionWithString(String str, String str2);

    public static native int releaseLuaFunction(int i3);

    public static native int retainLuaFunction(int i3);
}
