package p033m0;

import p009d0.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static final n b = new n(2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f5126c = new n(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final n f5127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n f5128e;
    public static final n f;
    public static final h g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f5129h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5130a;

    static {
        n nVar = new n(1);
        f5127d = nVar;
        f5128e = new n(3);
        f = nVar;
        g = h.a(nVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f5129h = true;
    }

    public /* synthetic */ n(int i3) {
        this.f5130a = i3;
    }

    public final int a(int i3, int i4, int i5, int i6) {
        switch (this.f5130a) {
            case 0:
                if (b(i3, i4, i5, i6) == 1.0f) {
                    return 2;
                }
                return b.a(i3, i4, i5, i6);
            case 1:
                return 2;
            case 2:
                return f5129h ? 2 : 1;
            default:
                return 2;
        }
    }

    public final float b(int i3, int i4, int i5, int i6) {
        switch (this.f5130a) {
            case 0:
                return Math.min(1.0f, b.b(i3, i4, i5, i6));
            case 1:
                return Math.max(i5 / i3, i6 / i4);
            case 2:
                if (f5129h) {
                    return Math.min(i5 / i3, i6 / i4);
                }
                int iMax = Math.max(i4 / i6, i3 / i5);
                if (iMax == 0) {
                    return 1.0f;
                }
                return 1.0f / Integer.highestOneBit(iMax);
            default:
                return 1.0f;
        }
    }
}
