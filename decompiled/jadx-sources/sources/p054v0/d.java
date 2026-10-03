package p054v0;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import p052u0.c;
import p052u0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements f {
    public final c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f5571c;

    public d(View view) {
        this.f5571c = view;
        this.b = new c(view);
    }

    @Override // p054v0.f
    public final void a(f fVar) throws Throwable {
        c cVar = this.b;
        ArrayList arrayList = cVar.b;
        View view = cVar.f5569a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = cVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = cVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.l(iA, iA2);
            return;
        }
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (cVar.f5570c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            b bVar = new b(cVar);
            cVar.f5570c = bVar;
            viewTreeObserver.addOnPreDrawListener(bVar);
        }
    }

    @Override // p054v0.f
    public final void d(f fVar) {
        this.b.b.remove(fVar);
    }

    @Override // p054v0.f
    public final c f() {
        Object tag = this.f5571c.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof c) {
            return (c) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // p054v0.f
    public final void g(Drawable drawable) {
        c cVar = this.b;
        ViewTreeObserver viewTreeObserver = cVar.f5569a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(cVar.f5570c);
        }
        cVar.f5570c = null;
        cVar.b.clear();
        j(drawable);
    }

    @Override // p054v0.f
    public final void i(c cVar) {
        this.f5571c.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    public abstract void j(Drawable drawable);

    public final String toString() {
        return "Target for: " + this.f5571c;
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
    }

    @Override // p054v0.f
    public final void e(Drawable drawable) {
    }
}
