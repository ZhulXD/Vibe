package p064y1;

import com.minhub.gamehub.data.GameEngine;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class O1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f6113a;

    static {
        int[] iArr = new int[V1.values().length];
        try {
            iArr[0] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            V1 v2 = V1.b;
            iArr[1] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[GameEngine.values().length];
        try {
            iArr2[GameEngine.RENPY7.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[GameEngine.RENPY8.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[GameEngine.VXACE.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[GameEngine.KIRI.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[GameEngine.GODOT.ordinal()] = 5;
        } catch (NoSuchFieldError unused7) {
        }
        f6113a = iArr2;
    }
}
