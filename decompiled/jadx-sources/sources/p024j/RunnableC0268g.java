package p024j;

/* JADX INFO: renamed from: j.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0268g implements Runnable {
    public final /* synthetic */ C0270i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f4515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ p f4516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0269h f4517e;

    public RunnableC0268g(C0269h c0269h, C0270i c0270i, s sVar, p pVar) {
        this.f4517e = c0269h;
        this.b = c0270i;
        this.f4515c = sVar;
        this.f4516d = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewOnKeyListenerC0271j viewOnKeyListenerC0271j = (ViewOnKeyListenerC0271j) this.f4517e.f4518c;
        C0270i c0270i = this.b;
        if (c0270i != null) {
            viewOnKeyListenerC0271j.f4521A = true;
            c0270i.b.c(false);
            viewOnKeyListenerC0271j.f4521A = false;
        }
        s sVar = this.f4515c;
        if (sVar.isEnabled() && sVar.hasSubMenu()) {
            this.f4516d.q(sVar, null, 4);
        }
    }
}
