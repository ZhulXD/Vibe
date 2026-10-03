package k;

import android.content.Context;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d1 implements p024j.C {
    public p024j.p b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p024j.s f4819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Toolbar f4820d;

    public d1(Toolbar toolbar) {
        this.f4820d = toolbar;
    }

    @Override // p024j.C
    public final boolean d(p024j.s sVar) {
        Toolbar toolbar = this.f4820d;
        toolbar.c();
        ViewParent parent = toolbar.f2734i.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f2734i);
            }
            toolbar.addView(toolbar.f2734i);
        }
        View actionView = sVar.getActionView();
        toolbar.f2735j = actionView;
        this.f4819c = sVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f2735j);
            }
            e1 e1VarH = Toolbar.h();
            e1VarH.f4821a = (toolbar.f2740o & 112) | GravityCompat.START;
            e1VarH.b = 2;
            toolbar.f2735j.setLayoutParams(e1VarH);
            toolbar.addView(toolbar.f2735j);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((e1) childAt.getLayoutParams()).b != 2 && childAt != toolbar.b) {
                toolbar.removeViewAt(childCount);
                toolbar.f2718F.add(childAt);
            }
        }
        toolbar.requestLayout();
        sVar.f4579C = true;
        sVar.f4590n.p(false);
        KeyEvent.Callback callback = toolbar.f2735j;
        if (callback instanceof p021i.b) {
            ((p024j.u) ((p021i.b) callback)).b.onActionViewExpanded();
        }
        toolbar.t();
        return true;
    }

    @Override // p024j.C
    public final void g(boolean z2) {
        if (this.f4819c != null) {
            p024j.p pVar = this.b;
            if (pVar != null) {
                int size = pVar.f.size();
                for (int i3 = 0; i3 < size; i3++) {
                    if (this.b.getItem(i3) == this.f4819c) {
                        return;
                    }
                }
            }
            k(this.f4819c);
        }
    }

    @Override // p024j.C
    public final int getId() {
        return 0;
    }

    @Override // p024j.C
    public final void h(Context context, p024j.p pVar) {
        p024j.s sVar;
        p024j.p pVar2 = this.b;
        if (pVar2 != null && (sVar = this.f4819c) != null) {
            pVar2.d(sVar);
        }
        this.b = pVar;
    }

    @Override // p024j.C
    public final boolean i() {
        return false;
    }

    @Override // p024j.C
    public final Parcelable j() {
        return null;
    }

    @Override // p024j.C
    public final boolean k(p024j.s sVar) {
        Toolbar toolbar = this.f4820d;
        KeyEvent.Callback callback = toolbar.f2735j;
        if (callback instanceof p021i.b) {
            ((p024j.u) ((p021i.b) callback)).b.onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.f2735j);
        toolbar.removeView(toolbar.f2734i);
        toolbar.f2735j = null;
        ArrayList arrayList = toolbar.f2718F;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f4819c = null;
        toolbar.requestLayout();
        sVar.f4579C = false;
        sVar.f4590n.p(false);
        toolbar.t();
        return true;
    }

    @Override // p024j.C
    public final boolean m(p024j.I i3) {
        return false;
    }

    @Override // p024j.C
    public final void e(Parcelable parcelable) {
    }

    @Override // p024j.C
    public final void a(p024j.p pVar, boolean z2) {
    }
}
