package E0;

import A1.C0009b;
import R0.t;
import S.v;
import S0.g;
import T.f;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOverlay;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p010d1.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f855a;
    public final /* synthetic */ Object b;

    public /* synthetic */ a(int i3, Object obj) {
        this.f855a = i3;
        this.b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f855a) {
            case 8:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.f2691x = null;
                actionBarOverlayLayout.f2678k = false;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f855a) {
            case 0:
                ((HideBottomViewOnScrollBehavior) this.b).f3294h = null;
                break;
            case 1:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.b;
                bottomSheetBehavior.I(5);
                WeakReference weakReference = bottomSheetBehavior.f3318U;
                if (weakReference != null && weakReference.get() != null) {
                    ((View) bottomSheetBehavior.f3318U.get()).requestLayout();
                    break;
                }
                break;
            case 2:
                ((v) this.b).n();
                animator.removeListener(this);
                break;
            case 3:
                g gVar = (g) this.b;
                gVar.b.setTranslationY(0.0f);
                gVar.b(0.0f);
                break;
            case 4:
                f fVar = (f) this.b;
                ArrayList arrayList = new ArrayList(fVar.f);
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ColorStateList colorStateList = ((L0.a) arrayList.get(i3)).b.f1267p;
                    if (colorStateList != null) {
                        DrawableCompat.setTintList(fVar, colorStateList);
                    }
                }
                break;
            case 5:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.b;
                sideSheetBehavior.w(5);
                WeakReference weakReference2 = sideSheetBehavior.f3500p;
                if (weakReference2 != null && weakReference2.get() != null) {
                    ((View) sideSheetBehavior.f3500p.get()).requestLayout();
                    break;
                }
                break;
            case 6:
                super.onAnimationEnd(animator);
                p002a1.d dVar = (p002a1.d) this.b;
                ViewGroup viewGroupC = t.c(dVar);
                C0009b c0009b = viewGroupC == null ? null : new C0009b(viewGroupC);
                ArrayList arrayList2 = dVar.f2546m;
                int size2 = arrayList2.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj = arrayList2.get(i4);
                    i4++;
                    ((ViewOverlay) c0009b.b).remove((p017g1.a) obj);
                }
                break;
            case 7:
                i iVar = (i) this.b;
                iVar.p();
                iVar.f3902r.start();
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.b;
                actionBarOverlayLayout.f2691x = null;
                actionBarOverlayLayout.f2678k = false;
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f855a) {
            case 4:
                f fVar = (f) this.b;
                ArrayList arrayList = new ArrayList(fVar.f);
                int size = arrayList.size();
                for (int i3 = 0; i3 < size; i3++) {
                    L0.c cVar = ((L0.a) arrayList.get(i3)).b;
                    ColorStateList colorStateList = cVar.f1267p;
                    if (colorStateList != null) {
                        DrawableCompat.setTint(fVar, colorStateList.getColorForState(cVar.f1271t, colorStateList.getDefaultColor()));
                    }
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
