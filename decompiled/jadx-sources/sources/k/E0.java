package k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E0 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ I0 f4675c;

    public /* synthetic */ E0(I0 i3, int i4) {
        this.b = i4;
        this.f4675c = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                C0320v0 c0320v0 = this.f4675c.f4685d;
                if (c0320v0 != null) {
                    c0320v0.setListSelectionHidden(true);
                    c0320v0.requestLayout();
                }
                break;
            default:
                I0 i3 = this.f4675c;
                C0320v0 c0320v1 = i3.f4685d;
                if (c0320v1 != null && c0320v1.isAttachedToWindow() && i3.f4685d.getCount() > i3.f4685d.getChildCount() && i3.f4685d.getChildCount() <= i3.f4693n) {
                    i3.f4683A.setInputMethodMode(2);
                    i3.c();
                    break;
                }
                break;
        }
    }
}
