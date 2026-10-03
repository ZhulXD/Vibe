package E1;

import com.minhub.gamehub.data.GameEngine;
import p064y1.C0363c0;
import p064y1.F1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f895a;

    static {
        int[] iArr = new int[F1.values().length];
        try {
            iArr[0] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            C0363c0 c0363c0 = F1.f6065c;
            iArr[1] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            C0363c0 c0363c1 = F1.f6065c;
            iArr[2] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            C0363c0 c0363c2 = F1.f6065c;
            iArr[3] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        int[] iArr2 = new int[GameEngine.values().length];
        try {
            iArr2[GameEngine.MV.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[GameEngine.MZ.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[GameEngine.TYRANO.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[GameEngine.VXACE.ordinal()] = 4;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            iArr2[GameEngine.HTML.ordinal()] = 5;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            iArr2[GameEngine.RENPY8.ordinal()] = 6;
        } catch (NoSuchFieldError unused10) {
        }
        try {
            iArr2[GameEngine.RENPY7.ordinal()] = 7;
        } catch (NoSuchFieldError unused11) {
        }
        try {
            iArr2[GameEngine.KIRI.ordinal()] = 8;
        } catch (NoSuchFieldError unused12) {
        }
        try {
            iArr2[GameEngine.GODOT.ordinal()] = 9;
        } catch (NoSuchFieldError unused13) {
        }
        try {
            iArr2[GameEngine.BROWSE.ordinal()] = 10;
        } catch (NoSuchFieldError unused14) {
        }
        f895a = iArr2;
    }
}
