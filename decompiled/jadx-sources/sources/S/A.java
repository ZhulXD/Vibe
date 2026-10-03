package S;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1948a;
    public v b;

    public /* synthetic */ A() {
        this.f1948a = 1;
    }

    @Override // S.w, S.t
    public void a(v vVar) {
        switch (this.f1948a) {
            case 1:
                B b = (B) this.b;
                int i3 = b.f1951H - 1;
                b.f1951H = i3;
                if (i3 == 0) {
                    b.f1952I = false;
                    b.n();
                }
                vVar.B(this);
                break;
            case 2:
                this.b.E();
                vVar.B(this);
                break;
        }
    }

    @Override // S.w, S.t
    public void e(v vVar) {
        switch (this.f1948a) {
            case 0:
                B b = (B) this.b;
                b.f1949F.remove(vVar);
                if (!b.t()) {
                    b.y(b, u.f2008d, false);
                    b.f2030s = true;
                    b.y(b, u.f2007c, false);
                }
                break;
        }
    }

    @Override // S.w, S.t
    public void f(v vVar) {
        switch (this.f1948a) {
            case 1:
                B b = (B) this.b;
                if (!b.f1952I) {
                    b.M();
                    b.f1952I = true;
                }
                break;
        }
    }

    public /* synthetic */ A(v vVar, int i3) {
        this.f1948a = i3;
        this.b = vVar;
    }
}
