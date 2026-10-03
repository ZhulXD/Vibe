package org.cocos2dx.lib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Cocos2dxDownloader {
    private long _id;

    public static native void nativeDestroyDownloader(long j2);

    public static native void nativeOnFinish(int i3, int i4, int i5, String str, byte[] bArr);

    public static native void nativeOnProgress(int i3, int i4, long j2, long j3, long j4);
}
