package C1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Q1 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ V1 f494c;

    public /* synthetic */ Q1(V1 v2, int i3) {
        this.b = i3;
        this.f494c = v2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.f494c.f515d.setVisibility(4);
                break;
            default:
                this.f494c.f = false;
                break;
        }
    }
}
