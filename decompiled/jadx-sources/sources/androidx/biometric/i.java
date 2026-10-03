package androidx.biometric;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f2768c;

    public /* synthetic */ i(p pVar, int i3) {
        this.b = i3;
        this.f2768c = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                w wVar = this.f2768c.f2771c;
                if (wVar.b == null) {
                    wVar.b = new t();
                }
                wVar.b.getClass();
                break;
            default:
                this.f2768c.f2771c.f2791t = false;
                break;
        }
    }
}
