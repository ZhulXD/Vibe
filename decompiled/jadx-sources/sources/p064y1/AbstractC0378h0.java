package p064y1;

import com.minhub.gamehub.data.GameEngine;

/* JADX INFO: renamed from: y1.h0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0378h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f6240a;

    static {
        int[] iArr = new int[GameEngine.values().length];
        try {
            iArr[GameEngine.HTML.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[GameEngine.BROWSE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f6240a = iArr;
    }
}
