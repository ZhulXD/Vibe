package androidx.biometric;

import android.content.DialogInterface;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v implements DialogInterface.OnClickListener {
    public final /* synthetic */ int b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f2774c;

    public v(w wVar) {
        this.f2774c = new WeakReference(wVar);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i3) {
        switch (this.b) {
            case 0:
                WeakReference weakReference = (WeakReference) this.f2774c;
                if (weakReference.get() != null) {
                    ((w) weakReference.get()).e(true);
                }
                break;
            default:
                ((E) this.f2774c).f2757d.e(true);
                break;
        }
    }

    public v(E e2) {
        this.f2774c = e2;
    }
}
