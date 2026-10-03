package androidx.emoji2.text;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2885a = 1;
    public final s b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s f2886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f2887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2888e;
    public int f;

    public o(s sVar) {
        this.b = sVar;
        this.f2886c = sVar;
    }

    public final void a() {
        this.f2885a = 1;
        this.f2886c = this.b;
        this.f = 0;
    }

    public final boolean b() {
        G.a aVarB = this.f2886c.b.b();
        int iA = aVarB.a(6);
        return !(iA == 0 || aVarB.b.get(iA + aVarB.f984a) == 0) || this.f2888e == 65039;
    }
}
