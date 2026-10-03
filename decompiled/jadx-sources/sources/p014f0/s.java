package p014f0;

import p052u0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f4277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ v f4278d;

    public /* synthetic */ s(v vVar, f fVar, int i3) {
        this.b = i3;
        this.f4278d = vVar;
        this.f4277c = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                f fVar = this.f4277c;
                fVar.b.a();
                synchronized (fVar.f5397c) {
                    synchronized (this.f4278d) {
                        try {
                            if (this.f4278d.b.b.contains(new t(this.f4277c, p063y0.f.b))) {
                                v vVar = this.f4278d;
                                f fVar2 = this.f4277c;
                                vVar.getClass();
                                try {
                                    fVar2.h(vVar.f4294r, 5);
                                } catch (Throwable th) {
                                    throw new C0254c(th);
                                }
                            }
                            this.f4278d.d();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                        break;
                    }
                }
                return;
            default:
                f fVar3 = this.f4277c;
                fVar3.b.a();
                synchronized (fVar3.f5397c) {
                    synchronized (this.f4278d) {
                        try {
                            if (this.f4278d.b.b.contains(new t(this.f4277c, p063y0.f.b))) {
                                this.f4278d.f4296t.a();
                                v vVar2 = this.f4278d;
                                f fVar4 = this.f4277c;
                                vVar2.getClass();
                                try {
                                    fVar4.j(vVar2.f4296t, vVar2.f4292p, vVar2.f4299w);
                                    this.f4278d.h(this.f4277c);
                                } catch (Throwable th3) {
                                    throw new C0254c(th3);
                                }
                            }
                            this.f4278d.d();
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                }
                return;
        }
    }
}
