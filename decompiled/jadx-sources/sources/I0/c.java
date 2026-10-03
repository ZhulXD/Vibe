package I0;

import Y0.h;
import Y0.m;
import Y0.x;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.button.MaterialButton;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialButton f1148a;
    public m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1149c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1151e;
    public int f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1152h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f1153i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f1154j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f1155k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f1156l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public h f1157m;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1161q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public RippleDrawable f1163s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1164t;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1158n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1159o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1160p = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1162r = true;

    public c(MaterialButton materialButton, m mVar) {
        this.f1148a = materialButton;
        this.b = mVar;
    }

    public final x a() {
        RippleDrawable rippleDrawable = this.f1163s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f1163s.getNumberOfLayers() > 2 ? (x) this.f1163s.getDrawable(2) : (x) this.f1163s.getDrawable(1);
    }

    public final h b(boolean z2) {
        RippleDrawable rippleDrawable = this.f1163s;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (h) ((LayerDrawable) ((InsetDrawable) this.f1163s.getDrawable(0)).getDrawable()).getDrawable(!z2 ? 1 : 0);
    }

    public final void c(m mVar) {
        this.b = mVar;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(mVar);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(mVar);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(mVar);
        }
    }

    public final void d(int i3, int i4) {
        MaterialButton materialButton = this.f1148a;
        int paddingStart = ViewCompat.getPaddingStart(materialButton);
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(materialButton);
        int paddingBottom = materialButton.getPaddingBottom();
        int i5 = this.f1151e;
        int i6 = this.f;
        this.f = i4;
        this.f1151e = i3;
        if (!this.f1159o) {
            e();
        }
        ViewCompat.setPaddingRelative(materialButton, paddingStart, (paddingTop + i3) - i5, paddingEnd, (paddingBottom + i4) - i6);
    }

    public final void e() {
        h hVar = new h(this.b);
        MaterialButton materialButton = this.f1148a;
        hVar.j(materialButton.getContext());
        DrawableCompat.setTintList(hVar, this.f1154j);
        PorterDuff.Mode mode = this.f1153i;
        if (mode != null) {
            DrawableCompat.setTintMode(hVar, mode);
        }
        float f = this.f1152h;
        ColorStateList colorStateList = this.f1155k;
        hVar.b.f2389j = f;
        hVar.invalidateSelf();
        hVar.p(colorStateList);
        h hVar2 = new h(this.b);
        hVar2.setTint(0);
        float f3 = this.f1152h;
        int iM = this.f1158n ? com.bumptech.glide.c.m(materialButton, R.attr.colorSurface) : 0;
        hVar2.b.f2389j = f3;
        hVar2.invalidateSelf();
        hVar2.p(ColorStateList.valueOf(iM));
        h hVar3 = new h(this.b);
        this.f1157m = hVar3;
        DrawableCompat.setTint(hVar3, -1);
        RippleDrawable rippleDrawable = new RippleDrawable(W0.a.c(this.f1156l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{hVar2, hVar}), this.f1149c, this.f1151e, this.f1150d, this.f), this.f1157m);
        this.f1163s = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        h hVarB = b(false);
        if (hVarB != null) {
            hVarB.k(this.f1164t);
            hVarB.setState(materialButton.getDrawableState());
        }
    }

    public final void f() {
        h hVarB = b(false);
        h hVarB2 = b(true);
        if (hVarB != null) {
            float f = this.f1152h;
            ColorStateList colorStateList = this.f1155k;
            hVarB.b.f2389j = f;
            hVarB.invalidateSelf();
            hVarB.p(colorStateList);
            if (hVarB2 != null) {
                float f3 = this.f1152h;
                int iM = this.f1158n ? com.bumptech.glide.c.m(this.f1148a, R.attr.colorSurface) : 0;
                hVarB2.b.f2389j = f3;
                hVarB2.invalidateSelf();
                hVarB2.p(ColorStateList.valueOf(iM));
            }
        }
    }
}
