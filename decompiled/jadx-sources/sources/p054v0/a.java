package p054v0;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import p052u0.c;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f {
    public final ImageView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f5564c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Animatable f5565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5566e;

    public a(ImageView imageView, int i3) {
        this.f5566e = i3;
        f.c(imageView, "Argument must not be null");
        this.b = imageView;
        this.f5564c = new g(imageView);
    }

    @Override // p054v0.f
    public final void a(p052u0.f fVar) throws Throwable {
        g gVar = this.f5564c;
        ArrayList arrayList = gVar.b;
        View view = gVar.f5573a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int iA = gVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int iA2 = gVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((iA > 0 || iA == Integer.MIN_VALUE) && (iA2 > 0 || iA2 == Integer.MIN_VALUE)) {
            fVar.l(iA, iA2);
            return;
        }
        if (!arrayList.contains(fVar)) {
            arrayList.add(fVar);
        }
        if (gVar.f5574c == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            b bVar = new b(gVar);
            gVar.f5574c = bVar;
            viewTreeObserver.addOnPreDrawListener(bVar);
        }
    }

    @Override // p054v0.f
    public final void b(Drawable drawable) {
        j(null);
        this.f5565d = null;
        this.b.setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
        Animatable animatable = this.f5565d;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // p054v0.f
    public final void d(p052u0.f fVar) {
        this.f5564c.b.remove(fVar);
    }

    @Override // p054v0.f
    public final void e(Drawable drawable) {
        j(null);
        this.f5565d = null;
        this.b.setImageDrawable(drawable);
    }

    @Override // p054v0.f
    public final c f() {
        Object tag = this.b.getTag(R.id.glide_custom_view_target_tag);
        if (tag == null) {
            return null;
        }
        if (tag instanceof c) {
            return (c) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // p054v0.f
    public final void g(Drawable drawable) {
        g gVar = this.f5564c;
        ViewTreeObserver viewTreeObserver = gVar.f5573a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(gVar.f5574c);
        }
        gVar.f5574c = null;
        gVar.b.clear();
        Animatable animatable = this.f5565d;
        if (animatable != null) {
            animatable.stop();
        }
        j(null);
        this.f5565d = null;
        this.b.setImageDrawable(drawable);
    }

    @Override // p054v0.f
    public final void h(Object obj) {
        j(obj);
        if (!(obj instanceof Animatable)) {
            this.f5565d = null;
            return;
        }
        Animatable animatable = (Animatable) obj;
        this.f5565d = animatable;
        animatable.start();
    }

    @Override // p054v0.f
    public final void i(c cVar) {
        this.b.setTag(R.id.glide_custom_view_target_tag, cVar);
    }

    public final void j(Object obj) {
        switch (this.f5566e) {
            case 0:
                this.b.setImageBitmap((Bitmap) obj);
                break;
            default:
                this.b.setImageDrawable((Drawable) obj);
                break;
        }
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
        Animatable animatable = this.f5565d;
        if (animatable != null) {
            animatable.start();
        }
    }

    public final String toString() {
        return "Target for: " + this.b;
    }

    @Override // com.bumptech.glide.manager.i
    public final void onDestroy() {
    }
}
