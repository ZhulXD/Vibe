package H0;

import A1.u0;
import C1.RunnableC0068g1;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1065a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f1067d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ z.a f1068e;

    public i(SideSheetBehavior sideSheetBehavior) {
        this.f1065a = 1;
        this.f1068e = sideSheetBehavior;
        this.f1067d = new RunnableC0068g1(7, this);
    }

    public final void a(int i3) {
        switch (this.f1065a) {
            case 0:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f1068e;
                WeakReference weakReference = bottomSheetBehavior.f3318U;
                if (weakReference != null && weakReference.get() != null) {
                    this.b = i3;
                    if (!this.f1066c) {
                        ViewCompat.postOnAnimation((View) bottomSheetBehavior.f3318U.get(), (u0) this.f1067d);
                        this.f1066c = true;
                    }
                    break;
                }
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1068e;
                WeakReference weakReference2 = sideSheetBehavior.f3500p;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.b = i3;
                    if (!this.f1066c) {
                        ViewCompat.postOnAnimation((View) sideSheetBehavior.f3500p.get(), (RunnableC0068g1) this.f1067d);
                        this.f1066c = true;
                    }
                    break;
                }
                break;
        }
    }

    public i(BottomSheetBehavior bottomSheetBehavior) {
        this.f1065a = 0;
        this.f1068e = bottomSheetBehavior;
        this.f1067d = new u0(2, this);
    }
}
