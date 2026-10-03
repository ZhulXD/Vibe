package k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K extends AbstractViewOnTouchListenerC0326y0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ P f4710k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ T f4711l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K(T t2, T t3, P p2) {
        super(t3);
        this.f4711l = t2;
        this.f4710k = p2;
    }

    @Override // k.AbstractViewOnTouchListenerC0326y0
    public final p024j.G b() {
        return this.f4710k;
    }

    @Override // k.AbstractViewOnTouchListenerC0326y0
    public final boolean c() {
        T t2 = this.f4711l;
        if (t2.getInternalPopup().b()) {
            return true;
        }
        t2.g.m(t2.getTextDirection(), t2.getTextAlignment());
        return true;
    }
}
