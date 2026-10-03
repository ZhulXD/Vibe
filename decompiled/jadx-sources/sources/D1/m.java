package D1;

import com.minhub.gamehub.data.GameEngine;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f839a;

    static {
        int[] iArr = new int[GameEngine.values().length];
        try {
            iArr[GameEngine.KIRI.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[GameEngine.MZ.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[GameEngine.MV.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[GameEngine.TYRANO.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[GameEngine.RENPY7.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[GameEngine.RENPY8.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr[GameEngine.GODOT.ordinal()] = 7;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr[GameEngine.VXACE.ordinal()] = 8;
        } catch (NoSuchFieldError unused8) {
        }
        f839a = iArr;
    }
}
