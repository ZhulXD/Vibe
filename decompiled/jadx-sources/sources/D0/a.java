package D0;

import R0.l;
import R0.m;
import R0.p;
import Y0.h;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends Drawable implements l {
    public final WeakReference b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h f757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f759e;
    public final d f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f760h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f762j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f763k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f764l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public WeakReference f765m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public WeakReference f766n;

    public a(Context context, c cVar) {
        V0.d dVar;
        WeakReference weakReference = new WeakReference(context);
        this.b = weakReference;
        p.c(context, p.b, "Theme.MaterialComponents");
        this.f759e = new Rect();
        m mVar = new m(this);
        this.f758d = mVar;
        Paint.Align align = Paint.Align.CENTER;
        TextPaint textPaint = mVar.f1934a;
        textPaint.setTextAlign(align);
        d dVar2 = new d(context, cVar);
        this.f = dVar2;
        boolean zF = f();
        c cVar2 = dVar2.b;
        h hVar = new h(Y0.m.a(context, zF ? cVar2.f776h.intValue() : cVar2.f.intValue(), f() ? cVar2.f777i.intValue() : cVar2.g.intValue(), new Y0.a(0)).a());
        this.f757c = hVar;
        h();
        Context context2 = (Context) weakReference.get();
        if (context2 != null && mVar.g != (dVar = new V0.d(context2, cVar2.f775e.intValue()))) {
            mVar.c(dVar, context2);
            textPaint.setColor(cVar2.f774d.intValue());
            invalidateSelf();
            j();
            invalidateSelf();
        }
        int i3 = cVar2.f781m;
        if (i3 != -2) {
            this.f761i = ((int) Math.pow(10.0d, ((double) i3) - 1.0d)) - 1;
        } else {
            this.f761i = cVar2.f782n;
        }
        mVar.f1937e = true;
        j();
        invalidateSelf();
        mVar.f1937e = true;
        h();
        j();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(cVar2.f773c.intValue());
        if (hVar.b.f2384c != colorStateListValueOf) {
            hVar.l(colorStateListValueOf);
            invalidateSelf();
        }
        textPaint.setColor(cVar2.f774d.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.f765m;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.f765m.get();
            WeakReference weakReference3 = this.f766n;
            i(view, weakReference3 != null ? (FrameLayout) weakReference3.get() : null);
        }
        j();
        setVisible(cVar2.f789u.booleanValue(), false);
    }

    @Override // R0.l
    public final void a() {
        invalidateSelf();
    }

    public final String b() {
        d dVar = this.f;
        c cVar = dVar.b;
        c cVar2 = dVar.b;
        String str = cVar.f779k;
        WeakReference weakReference = this.b;
        if (str == null) {
            if (!g()) {
                return null;
            }
            if (this.f761i == -2 || e() <= this.f761i) {
                return NumberFormat.getInstance(cVar2.f783o).format(e());
            }
            Context context = (Context) weakReference.get();
            return context == null ? "" : String.format(cVar2.f783o, context.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(this.f761i), "+");
        }
        int i3 = cVar.f781m;
        if (i3 == -2 || str == null || str.length() <= i3) {
            return str;
        }
        Context context2 = (Context) weakReference.get();
        if (context2 == null) {
            return "";
        }
        return String.format(context2.getString(R.string.m3_exceed_max_badge_text_suffix), str.substring(0, i3 - 1), "…");
    }

    public final CharSequence c() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        d dVar = this.f;
        c cVar = dVar.b;
        c cVar2 = dVar.b;
        if (cVar.f779k != null) {
            CharSequence charSequence = cVar.f784p;
            return charSequence != null ? charSequence : dVar.b.f779k;
        }
        if (!g()) {
            return cVar2.f785q;
        }
        if (cVar2.f786r == 0 || (context = (Context) this.b.get()) == null) {
            return null;
        }
        if (this.f761i != -2) {
            int iE = e();
            int i3 = this.f761i;
            if (iE > i3) {
                return context.getString(cVar2.f787s, Integer.valueOf(i3));
            }
        }
        return context.getResources().getQuantityString(cVar2.f786r, e(), Integer.valueOf(e()));
    }

    public final FrameLayout d() {
        WeakReference weakReference = this.f766n;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        String strB;
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f757c.draw(canvas);
        if (!f() || (strB = b()) == null) {
            return;
        }
        Rect rect = new Rect();
        m mVar = this.f758d;
        mVar.f1934a.getTextBounds(strB, 0, strB.length(), rect);
        float fExactCenterY = this.f760h - rect.exactCenterY();
        canvas.drawText(strB, this.g, rect.bottom <= 0 ? (int) fExactCenterY : Math.round(fExactCenterY), mVar.f1934a);
    }

    public final int e() {
        int i3 = this.f.b.f780l;
        if (i3 != -1) {
            return i3;
        }
        return 0;
    }

    public final boolean f() {
        return this.f.b.f779k != null || g();
    }

    public final boolean g() {
        c cVar = this.f.b;
        return cVar.f779k == null && cVar.f780l != -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f.b.f778j;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f759e.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f759e.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final void h() {
        Context context = (Context) this.b.get();
        if (context == null) {
            return;
        }
        boolean zF = f();
        d dVar = this.f;
        this.f757c.setShapeAppearanceModel(Y0.m.a(context, zF ? dVar.b.f776h.intValue() : dVar.b.f.intValue(), f() ? dVar.b.f777i.intValue() : dVar.b.g.intValue(), new Y0.a(0)).a());
        invalidateSelf();
    }

    public final void i(View view, FrameLayout frameLayout) {
        this.f765m = new WeakReference(view);
        this.f766n = new WeakReference(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        j();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0235  */
    /* JADX WARN: Code duplicated, block: B:101:0x024d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0252  */
    /* JADX WARN: Code duplicated, block: B:107:0x025f  */
    /* JADX WARN: Code duplicated, block: B:110:0x026c  */
    /* JADX WARN: Code duplicated, block: B:113:0x0279  */
    /* JADX WARN: Code duplicated, block: B:96:0x0214  */
    /* JADX WARN: Code duplicated, block: B:97:0x022c  */
    public final void j() {
        float y2;
        float x2;
        float y3;
        float x3;
        float height;
        float width;
        float f;
        WeakReference weakReference = this.b;
        Context context = (Context) weakReference.get();
        WeakReference weakReference2 = this.f765m;
        View view = weakReference2 != null ? (View) weakReference2.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = this.f759e;
        rect.set(rect2);
        Rect rect3 = new Rect();
        view.getDrawingRect(rect3);
        WeakReference weakReference3 = this.f766n;
        ViewGroup viewGroup = weakReference3 != null ? (ViewGroup) weakReference3.get() : null;
        if (viewGroup != null) {
            viewGroup.offsetDescendantRectToMyCoords(view, rect3);
        }
        boolean zF = f();
        d dVar = this.f;
        float f3 = zF ? dVar.f797d : dVar.f796c;
        this.f762j = f3;
        if (f3 != -1.0f) {
            this.f763k = f3;
            this.f764l = f3;
        } else {
            this.f763k = Math.round((f() ? dVar.g : dVar.f798e) / 2.0f);
            this.f764l = Math.round((f() ? dVar.f799h : dVar.f) / 2.0f);
        }
        if (f()) {
            String strB = b();
            float f4 = this.f763k;
            m mVar = this.f758d;
            this.f763k = Math.max(f4, (mVar.a(strB) / 2.0f) + dVar.b.f790v.intValue());
            float f5 = this.f764l;
            if (mVar.f1937e) {
                mVar.b(strB);
                f = mVar.f1936d;
            } else {
                f = mVar.f1936d;
            }
            float fMax = Math.max(f5, (f / 2.0f) + dVar.b.f791w.intValue());
            this.f764l = fMax;
            this.f763k = Math.max(this.f763k, fMax);
        }
        c cVar = dVar.b;
        c cVar2 = dVar.b;
        int i3 = dVar.f802k;
        int iIntValue = cVar.f793y.intValue();
        if (f()) {
            iIntValue = cVar.f768A.intValue();
            Context context2 = (Context) weakReference.get();
            if (context2 != null) {
                iIntValue = B0.a.c(iIntValue, B0.a.b(0.0f, 1.0f, 0.3f, 1.0f, context2.getResources().getConfiguration().fontScale - 1.0f), iIntValue - cVar.f771D.intValue());
            }
        }
        if (i3 == 0) {
            iIntValue -= Math.round(this.f764l);
        }
        int iIntValue2 = cVar.f770C.intValue() + iIntValue;
        int iIntValue3 = cVar2.f788t.intValue();
        if (iIntValue3 == 8388691 || iIntValue3 == 8388693) {
            this.f760h = rect3.bottom - iIntValue2;
        } else {
            this.f760h = rect3.top + iIntValue2;
        }
        int iIntValue4 = f() ? cVar.f794z.intValue() : cVar2.f792x.intValue();
        if (i3 == 1) {
            iIntValue4 += f() ? dVar.f801j : dVar.f800i;
        }
        int iIntValue5 = cVar.f769B.intValue() + iIntValue4;
        int iIntValue6 = cVar2.f788t.intValue();
        if (iIntValue6 == 8388659 || iIntValue6 == 8388691) {
            this.g = ViewCompat.getLayoutDirection(view) == 0 ? (rect3.left - this.f763k) + iIntValue5 : (rect3.right + this.f763k) - iIntValue5;
        } else {
            this.g = ViewCompat.getLayoutDirection(view) == 0 ? (rect3.right + this.f763k) - iIntValue5 : (rect3.left - this.f763k) + iIntValue5;
        }
        if (cVar.f772E.booleanValue()) {
            View viewD = d();
            if (viewD != null) {
                FrameLayout frameLayoutD = d();
                if (frameLayoutD == null || frameLayoutD.getId() != R.id.mtrl_anchor_parent) {
                    y2 = 0.0f;
                    x2 = 0.0f;
                } else if (viewD.getParent() instanceof View) {
                    y2 = viewD.getY();
                    x2 = viewD.getX();
                    viewD = (View) viewD.getParent();
                }
                y3 = viewD.getY() + (this.f760h - this.f764l) + y2;
                x3 = viewD.getX() + (this.g - this.f763k) + x2;
                if (viewD.getParent() instanceof View) {
                    height = ((this.f760h + this.f764l) - (((View) viewD.getParent()).getHeight() - viewD.getY())) + y2;
                } else {
                    height = 0.0f;
                }
                if (viewD.getParent() instanceof View) {
                    width = ((this.g + this.f763k) - (((View) viewD.getParent()).getWidth() - viewD.getX())) + x2;
                } else {
                    width = 0.0f;
                }
                if (y3 < 0.0f) {
                    this.f760h = Math.abs(y3) + this.f760h;
                }
                if (x3 < 0.0f) {
                    this.g = Math.abs(x3) + this.g;
                }
                if (height > 0.0f) {
                    this.f760h -= Math.abs(height);
                }
                if (width > 0.0f) {
                    this.g -= Math.abs(width);
                }
            } else if (view.getParent() instanceof View) {
                float y4 = view.getY();
                x2 = view.getX();
                View view2 = (View) view.getParent();
                y2 = y4;
                viewD = view2;
                y3 = viewD.getY() + (this.f760h - this.f764l) + y2;
                x3 = viewD.getX() + (this.g - this.f763k) + x2;
                if (viewD.getParent() instanceof View) {
                    height = ((this.f760h + this.f764l) - (((View) viewD.getParent()).getHeight() - viewD.getY())) + y2;
                } else {
                    height = 0.0f;
                }
                if (viewD.getParent() instanceof View) {
                    width = ((this.g + this.f763k) - (((View) viewD.getParent()).getWidth() - viewD.getX())) + x2;
                } else {
                    width = 0.0f;
                }
                if (y3 < 0.0f) {
                    this.f760h = Math.abs(y3) + this.f760h;
                }
                if (x3 < 0.0f) {
                    this.g = Math.abs(x3) + this.g;
                }
                if (height > 0.0f) {
                    this.f760h -= Math.abs(height);
                }
                if (width > 0.0f) {
                    this.g -= Math.abs(width);
                }
            }
        }
        float f6 = this.g;
        float f7 = this.f760h;
        float f8 = this.f763k;
        float f9 = this.f764l;
        rect2.set((int) (f6 - f8), (int) (f7 - f9), (int) (f6 + f8), (int) (f7 + f9));
        float f10 = this.f762j;
        h hVar = this.f757c;
        if (f10 != -1.0f) {
            Y0.l lVarE = hVar.b.f2383a.e();
            lVarE.b(f10);
            hVar.setShapeAppearanceModel(lVarE.a());
        }
        if (rect.equals(rect2)) {
            return;
        }
        hVar.setBounds(rect2);
    }

    @Override // android.graphics.drawable.Drawable, R0.l
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        d dVar = this.f;
        dVar.f795a.f778j = i3;
        dVar.b.f778j = i3;
        this.f758d.f1934a.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
