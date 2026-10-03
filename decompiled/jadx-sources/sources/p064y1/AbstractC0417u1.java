package p064y1;

import com.minhub.gamehub.data.GameEngine;

/* JADX INFO: renamed from: y1.u1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0417u1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f6373a;

    static {
        int[] iArr = new int[GameEngine.values().length];
        try {
            iArr[GameEngine.VXACE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[GameEngine.RENPY8.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[GameEngine.RENPY7.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[GameEngine.GODOT.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f6373a = iArr;
    }
}
