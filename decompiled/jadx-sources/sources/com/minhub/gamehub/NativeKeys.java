package com.minhub.gamehub;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\t\u0010\u0004\u001a\u00020\u0005H\u0087 J\t\u0010\u0006\u001a\u00020\u0005H\u0087 J\t\u0010\u0007\u001a\u00020\u0005H\u0087 J\t\u0010\b\u001a\u00020\u0005H\u0087 ¨\u0006\t"}, d2 = {"Lcom/minhub/gamehub/NativeKeys;", "", "<init>", "()V", "encKey", "", "pixeldrainKey", "patchKey", "gofileToken", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class NativeKeys {
    public static final NativeKeys INSTANCE = new NativeKeys();

    static {
        System.loadLibrary("mhcore");
    }

    private NativeKeys() {
    }

    @JvmStatic
    public static final native String encKey();

    @JvmStatic
    public static final native String gofileToken();

    @JvmStatic
    public static final native String patchKey();

    @JvmStatic
    public static final native String pixeldrainKey();
}
