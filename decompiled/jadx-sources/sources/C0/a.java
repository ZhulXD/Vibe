package C0;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends z.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f383a;

    @Override // z.a
    public boolean k(CoordinatorLayout coordinatorLayout, View view, int i3) {
        v(coordinatorLayout, view, i3);
        if (this.f383a == null) {
            this.f383a = new b(view);
        }
        b bVar = this.f383a;
        View view2 = (View) bVar.f385c;
        bVar.f384a = view2.getTop();
        bVar.b = view2.getLeft();
        b bVar2 = this.f383a;
        View view3 = (View) bVar2.f385c;
        ViewCompat.offsetTopAndBottom(view3, 0 - (view3.getTop() - bVar2.f384a));
        ViewCompat.offsetLeftAndRight(view3, 0 - (view3.getLeft() - bVar2.b));
        return true;
    }

    public void v(CoordinatorLayout coordinatorLayout, View view, int i3) {
        coordinatorLayout.k(view, i3);
    }
}
