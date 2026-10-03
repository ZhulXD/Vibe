package V1;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class e0 extends j0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f2280d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0() {
        j0 j0VarJ;
        super(true);
        boolean z2 = true;
        z(null);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j0.f2295c;
        InterfaceC0192h interfaceC0192h = (InterfaceC0192h) atomicReferenceFieldUpdater.get(this);
        C0193i c0193i = interfaceC0192h instanceof C0193i ? (C0193i) interfaceC0192h : null;
        if (c0193i == null || (j0VarJ = c0193i.j()) == null) {
            z2 = false;
            break;
        }
        while (!j0VarJ.t()) {
            InterfaceC0192h interfaceC0192h2 = (InterfaceC0192h) atomicReferenceFieldUpdater.get(j0VarJ);
            C0193i c0193i2 = interfaceC0192h2 instanceof C0193i ? (C0193i) interfaceC0192h2 : null;
            if (c0193i2 == null || (j0VarJ = c0193i2.j()) == null) {
                z2 = false;
                break;
            }
        }
        this.f2280d = z2;
    }

    @Override // V1.j0
    public final boolean t() {
        return this.f2280d;
    }

    @Override // V1.j0
    public final boolean u() {
        return true;
    }
}
