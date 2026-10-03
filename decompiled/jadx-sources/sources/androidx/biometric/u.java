package androidx.biometric;

import androidx.lifecycle.MutableLiveData;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u extends AbstractC0219e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f2773a;

    public u(w wVar) {
        this.f2773a = new WeakReference(wVar);
    }

    @Override // androidx.biometric.AbstractC0219e
    public final void a(int i3, CharSequence charSequence) {
        WeakReference weakReference = this.f2773a;
        if (weakReference.get() == null || ((w) weakReference.get()).f2783l || !((w) weakReference.get()).f2782k) {
            return;
        }
        ((w) weakReference.get()).b(new C0221g(i3, charSequence));
    }

    @Override // androidx.biometric.AbstractC0219e
    public final void b(s sVar) {
        WeakReference weakReference = this.f2773a;
        if (weakReference.get() == null || !((w) weakReference.get()).f2782k) {
            return;
        }
        int i3 = -1;
        if (sVar.b == -1) {
            N1.w wVar = sVar.f2772a;
            int iA = ((w) weakReference.get()).a();
            if ((iA & 32767) != 0 && !p000a.a.s(iA)) {
                i3 = 2;
            }
            sVar = new s(wVar, i3);
        }
        w wVar2 = (w) weakReference.get();
        if (wVar2.f2786o == null) {
            wVar2.f2786o = new MutableLiveData();
        }
        w.f(wVar2.f2786o, sVar);
    }
}
