package androidx.biometric;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WeakReference f2770c;

    public o(p pVar) {
        this.b = 0;
        this.f2770c = new WeakReference(pVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                WeakReference weakReference = this.f2770c;
                if (weakReference.get() != null) {
                    ((p) weakReference.get()).k();
                }
                break;
            case 1:
                WeakReference weakReference2 = this.f2770c;
                if (weakReference2.get() != null) {
                    ((w) weakReference2.get()).f2784m = false;
                }
                break;
            default:
                WeakReference weakReference3 = this.f2770c;
                if (weakReference3.get() != null) {
                    ((w) weakReference3.get()).f2785n = false;
                }
                break;
        }
    }

    public o(w wVar, int i3) {
        this.b = i3;
        switch (i3) {
            case 2:
                this.f2770c = new WeakReference(wVar);
                break;
            default:
                this.f2770c = new WeakReference(wVar);
                break;
        }
    }
}
