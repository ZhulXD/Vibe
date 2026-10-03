package androidx.biometric;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2765c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CharSequence f2766d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p f2767e;

    public /* synthetic */ h(p pVar, int i3, CharSequence charSequence, int i4) {
        this.b = i4;
        this.f2767e = pVar;
        this.f2765c = i3;
        this.f2766d = charSequence;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                w wVar = this.f2767e.f2771c;
                if (wVar.b == null) {
                    wVar.b = new t();
                }
                wVar.b.z(this.f2765c, this.f2766d);
                break;
            default:
                this.f2767e.g(this.f2765c, this.f2766d);
                break;
        }
    }
}
