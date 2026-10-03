package J0;

import A1.C0013d;
import Y0.h;
import Y0.k;
import Y0.l;
import Y0.m;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.card.MaterialCardView;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final double f1193y = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final ColorDrawable f1194z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialCardView f1195a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f1196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final h f1197d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1198e;
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1199h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f1200i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f1201j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f1202k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f1203l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public m f1204m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ColorStateList f1205n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public RippleDrawable f1206o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public LayerDrawable f1207p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public h f1208q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1210s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public ValueAnimator f1211t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TimeInterpolator f1212u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f1213v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f1214w;
    public final Rect b = new Rect();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1209r = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f1215x = 0.0f;

    static {
        f1194z = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public d(MaterialCardView materialCardView, AttributeSet attributeSet) {
        this.f1195a = materialCardView;
        h hVar = new h(materialCardView.getContext(), attributeSet, R.attr.materialCardViewStyle, R.style.Widget_MaterialComponents_CardView);
        this.f1196c = hVar;
        hVar.j(materialCardView.getContext());
        hVar.n();
        l lVarE = hVar.b.f2383a.e();
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, A0.a.f20d, R.attr.materialCardViewStyle, R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            lVarE.b(typedArrayObtainStyledAttributes.getDimension(3, 0.0f));
        }
        this.f1197d = new h();
        h(lVarE.a());
        this.f1212u = com.bumptech.glide.c.O(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, B0.a.f290a);
        this.f1213v = com.bumptech.glide.c.N(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.f1214w = com.bumptech.glide.c.N(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float b(p000a.a aVar, float f) {
        if (aVar instanceof k) {
            return (float) ((1.0d - f1193y) * ((double) f));
        }
        if (aVar instanceof Y0.d) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    public final float a() {
        p000a.a aVar = this.f1204m.f2429a;
        h hVar = this.f1196c;
        return Math.max(Math.max(b(aVar, hVar.h()), b(this.f1204m.b, hVar.b.f2383a.f.a(hVar.g()))), Math.max(b(this.f1204m.f2430c, hVar.b.f2383a.g.a(hVar.g())), b(this.f1204m.f2431d, hVar.b.f2383a.f2433h.a(hVar.g()))));
    }

    public final LayerDrawable c() {
        if (this.f1206o == null) {
            int[] iArr = W0.a.f2299a;
            this.f1208q = new h(this.f1204m);
            this.f1206o = new RippleDrawable(this.f1202k, null, this.f1208q);
        }
        if (this.f1207p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.f1206o, this.f1197d, this.f1201j});
            this.f1207p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.f1207p;
    }

    public final c d(Drawable drawable) {
        int iCeil;
        int i3;
        MaterialCardView materialCardView = this.f1195a;
        if (materialCardView.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() * 1.5f) + (i() ? a() : 0.0f));
            iCeil = (int) Math.ceil(materialCardView.getMaxCardElevation() + (i() ? a() : 0.0f));
            i3 = iCeil2;
        } else {
            iCeil = 0;
            i3 = 0;
        }
        return new c(drawable, iCeil, i3, iCeil, i3);
    }

    public final void e(int i3, int i4) {
        int iCeil;
        int iCeil2;
        int i5;
        int i6;
        if (this.f1207p != null) {
            MaterialCardView materialCardView = this.f1195a;
            if (materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(((materialCardView.getMaxCardElevation() * 1.5f) + (i() ? a() : 0.0f)) * 2.0f);
                iCeil2 = (int) Math.ceil((materialCardView.getMaxCardElevation() + (i() ? a() : 0.0f)) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i7 = this.g;
            int i8 = (i7 & GravityCompat.END) == 8388613 ? ((i3 - this.f1198e) - this.f) - iCeil2 : this.f1198e;
            int i9 = (i7 & 80) == 80 ? this.f1198e : ((i4 - this.f1198e) - this.f) - iCeil;
            int i10 = (i7 & GravityCompat.END) == 8388613 ? this.f1198e : ((i3 - this.f1198e) - this.f) - iCeil2;
            int i11 = (i7 & 80) == 80 ? ((i4 - this.f1198e) - this.f) - iCeil : this.f1198e;
            if (ViewCompat.getLayoutDirection(materialCardView) == 1) {
                i6 = i10;
                i5 = i8;
            } else {
                i5 = i10;
                i6 = i8;
            }
            this.f1207p.setLayerInset(2, i6, i11, i5, i9);
        }
    }

    public final void f(boolean z2, boolean z3) {
        Drawable drawable = this.f1201j;
        if (drawable != null) {
            if (!z3) {
                drawable.setAlpha(z2 ? 255 : 0);
                this.f1215x = z2 ? 1.0f : 0.0f;
                return;
            }
            float f = z2 ? 1.0f : 0.0f;
            float f3 = z2 ? 1.0f - this.f1215x : this.f1215x;
            ValueAnimator valueAnimator = this.f1211t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f1211t = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f1215x, f);
            this.f1211t = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new b(0, this));
            this.f1211t.setInterpolator(this.f1212u);
            this.f1211t.setDuration((long) ((z2 ? this.f1213v : this.f1214w) * f3));
            this.f1211t.start();
        }
    }

    public final void g(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.f1201j = drawableMutate;
            DrawableCompat.setTintList(drawableMutate, this.f1203l);
            f(this.f1195a.f3378k, false);
        } else {
            this.f1201j = f1194z;
        }
        LayerDrawable layerDrawable = this.f1207p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.f1201j);
        }
    }

    public final void h(m mVar) {
        this.f1204m = mVar;
        h hVar = this.f1196c;
        hVar.setShapeAppearanceModel(mVar);
        hVar.f2416w = !hVar.b.f2383a.d(hVar.g());
        h hVar2 = this.f1197d;
        if (hVar2 != null) {
            hVar2.setShapeAppearanceModel(mVar);
        }
        h hVar3 = this.f1208q;
        if (hVar3 != null) {
            hVar3.setShapeAppearanceModel(mVar);
        }
    }

    public final boolean i() {
        MaterialCardView materialCardView = this.f1195a;
        if (!materialCardView.getPreventCornerOverlap()) {
            return false;
        }
        h hVar = this.f1196c;
        return hVar.b.f2383a.d(hVar.g()) && materialCardView.getUseCompatPadding();
    }

    public final boolean j() {
        View view = this.f1195a;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    public final void k() {
        Drawable drawable = this.f1200i;
        Drawable drawableC = j() ? c() : this.f1197d;
        this.f1200i = drawableC;
        if (drawable != drawableC) {
            MaterialCardView materialCardView = this.f1195a;
            if (materialCardView.getForeground() instanceof InsetDrawable) {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableC);
            } else {
                materialCardView.setForeground(d(drawableC));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:9:0x0020  */
    public final void l() {
        float fA;
        MaterialCardView materialCardView = this.f1195a;
        float cardViewRadius = 0.0f;
        if (materialCardView.getPreventCornerOverlap()) {
            h hVar = this.f1196c;
            if (!hVar.b.f2383a.d(hVar.g())) {
                fA = a();
            } else if (i()) {
                fA = a();
            } else {
                fA = 0.0f;
            }
        } else if (i()) {
            fA = a();
        } else {
            fA = 0.0f;
        }
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - f1193y) * ((double) materialCardView.getCardViewRadius()));
        }
        int i3 = (int) (fA - cardViewRadius);
        Rect rect = this.b;
        materialCardView.f5209d.set(rect.left + i3, rect.top + i3, rect.right + i3, rect.bottom + i3);
        C0013d c0013d = materialCardView.f;
        p040p.a aVar = (p040p.a) c0013d.f178d;
        if (!aVar.getUseCompatPadding()) {
            c0013d.G(0, 0, 0, 0);
            return;
        }
        p040p.b bVar = (p040p.b) ((Drawable) c0013d.f177c);
        float f = bVar.f5214e;
        float f3 = bVar.f5211a;
        int iCeil = (int) Math.ceil(p040p.c.a(f, f3, aVar.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(p040p.c.b(f, f3, aVar.getPreventCornerOverlap()));
        c0013d.G(iCeil, iCeil2, iCeil, iCeil2);
    }

    public final void m() {
        boolean z2 = this.f1209r;
        MaterialCardView materialCardView = this.f1195a;
        if (!z2) {
            materialCardView.setBackgroundInternal(d(this.f1196c));
        }
        materialCardView.setForeground(d(this.f1200i));
    }
}
