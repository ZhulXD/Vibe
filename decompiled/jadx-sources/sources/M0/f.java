package M0;

import A1.C0009b;
import R0.l;
import R0.m;
import R0.t;
import Y0.o;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.material.chip.Chip;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends Y0.h implements Drawable.Callback, l {

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public static final int[] f1295G0 = {R.attr.state_enabled};

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public static final ShapeDrawable f1296H0 = new ShapeDrawable(new OvalShape());

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public float f1297A;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public ColorStateList f1298A0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public float f1299B;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public WeakReference f1300B0;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ColorStateList f1301C;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public TextUtils.TruncateAt f1302C0;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public float f1303D;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public boolean f1304D0;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public ColorStateList f1305E;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public int f1306E0;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public CharSequence f1307F;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public boolean f1308F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f1309G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Drawable f1310H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ColorStateList f1311I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public float f1312J;
    public boolean K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f1313L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Drawable f1314M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public RippleDrawable f1315N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ColorStateList f1316O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public float f1317P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public CharSequence f1318Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f1319R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f1320S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public Drawable f1321T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ColorStateList f1322U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public B0.b f1323V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public B0.b f1324W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public float f1325X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public float f1326Y;
    public float Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float f1327a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f1328b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public float f1329c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public float f1330d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public float f1331e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final Context f1332f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final Paint f1333g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final Paint.FontMetrics f1334h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final RectF f1335i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final PointF f1336j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final Path f1337k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final m f1338l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f1339m0;
    public int n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f1340o0;
    public int p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f1341q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f1342r0;
    public boolean s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f1343t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f1344u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public ColorFilter f1345v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public PorterDuffColorFilter f1346w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public ColorStateList f1347x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ColorStateList f1348y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public PorterDuff.Mode f1349y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ColorStateList f1350z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int[] f1351z0;

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.minhub.gamehub.R.attr.chipStyle, com.minhub.gamehub.R.style.Widget_MaterialComponents_Chip_Action);
        this.f1299B = -1.0f;
        this.f1333g0 = new Paint(1);
        this.f1334h0 = new Paint.FontMetrics();
        this.f1335i0 = new RectF();
        this.f1336j0 = new PointF();
        this.f1337k0 = new Path();
        this.f1344u0 = 255;
        this.f1349y0 = PorterDuff.Mode.SRC_IN;
        this.f1300B0 = new WeakReference(null);
        j(context);
        this.f1332f0 = context;
        m mVar = new m(this);
        this.f1338l0 = mVar;
        this.f1307F = "";
        mVar.f1934a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f1295G0;
        setState(iArr);
        if (!Arrays.equals(this.f1351z0, iArr)) {
            this.f1351z0 = iArr;
            if (Y()) {
                B(getState(), iArr);
            }
        }
        this.f1304D0 = true;
        int[] iArr2 = W0.a.f2299a;
        f1296H0.setTint(-1);
    }

    public static void Z(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean y(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean z(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void A() {
        e eVar = (e) this.f1300B0.get();
        if (eVar != null) {
            Chip chip = (Chip) eVar;
            chip.c(chip.f3396r);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    public final boolean B(int[] iArr, int[] iArr2) {
        boolean z2;
        boolean z3;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f1348y;
        int iC = c(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f1339m0) : 0);
        boolean state = true;
        if (this.f1339m0 != iC) {
            this.f1339m0 = iC;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f1350z;
        int iC2 = c(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.n0) : 0);
        if (this.n0 != iC2) {
            this.n0 = iC2;
            zOnStateChange = true;
        }
        int iCompositeColors = ColorUtils.compositeColors(iC2, iC);
        if ((this.f1340o0 != iCompositeColors) | (this.b.f2384c == null)) {
            this.f1340o0 = iCompositeColors;
            l(ColorStateList.valueOf(iCompositeColors));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.f1301C;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.p0) : 0;
        if (this.p0 != colorForState) {
            this.p0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.f1298A0 == null || !W0.a.d(iArr)) ? 0 : this.f1298A0.getColorForState(iArr, this.f1341q0);
        if (this.f1341q0 != colorForState2) {
            this.f1341q0 = colorForState2;
        }
        V0.d dVar = this.f1338l0.g;
        int colorForState3 = (dVar == null || (colorStateList = dVar.f2249j) == null) ? 0 : colorStateList.getColorForState(iArr, this.f1342r0);
        if (this.f1342r0 != colorForState3) {
            this.f1342r0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 != null) {
            int length = state2.length;
            int i3 = 0;
            while (true) {
                if (i3 < length) {
                    if (state2[i3] != 16842912) {
                        i3++;
                    } else if (this.f1319R) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
                break;
            }
        } else {
            z2 = false;
            break;
        }
        if (this.s0 == z2 || this.f1321T == null) {
            z3 = false;
        } else {
            float fV = v();
            this.s0 = z2;
            if (fV != v()) {
                zOnStateChange = true;
                z3 = true;
            } else {
                z3 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.f1347x0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f1343t0) : 0;
        if (this.f1343t0 != colorForState4) {
            this.f1343t0 = colorForState4;
            ColorStateList colorStateList6 = this.f1347x0;
            PorterDuff.Mode mode = this.f1349y0;
            this.f1346w0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            state = zOnStateChange;
        }
        if (z(this.f1310H)) {
            state |= this.f1310H.setState(iArr);
        }
        if (z(this.f1321T)) {
            state |= this.f1321T.setState(iArr);
        }
        if (z(this.f1314M)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.f1314M.setState(iArr3);
        }
        int[] iArr4 = W0.a.f2299a;
        if (z(this.f1315N)) {
            state |= this.f1315N.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z3) {
            A();
        }
        return state;
    }

    public final void C(boolean z2) {
        if (this.f1319R != z2) {
            this.f1319R = z2;
            float fV = v();
            if (!z2 && this.s0) {
                this.s0 = false;
            }
            float fV2 = v();
            invalidateSelf();
            if (fV != fV2) {
                A();
            }
        }
    }

    public final void D(Drawable drawable) {
        if (this.f1321T != drawable) {
            float fV = v();
            this.f1321T = drawable;
            float fV2 = v();
            Z(this.f1321T);
            t(this.f1321T);
            invalidateSelf();
            if (fV != fV2) {
                A();
            }
        }
    }

    public final void E(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f1322U != colorStateList) {
            this.f1322U = colorStateList;
            if (this.f1320S && (drawable = this.f1321T) != null && this.f1319R) {
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void F(boolean z2) {
        if (this.f1320S != z2) {
            boolean zW = W();
            this.f1320S = z2;
            boolean zW2 = W();
            if (zW != zW2) {
                if (zW2) {
                    t(this.f1321T);
                } else {
                    Z(this.f1321T);
                }
                invalidateSelf();
                A();
            }
        }
    }

    public final void G(float f) {
        if (this.f1299B != f) {
            this.f1299B = f;
            Y0.l lVarE = this.b.f2383a.e();
            lVarE.b(f);
            setShapeAppearanceModel(lVarE.a());
        }
    }

    public final void H(Drawable drawable) {
        Drawable drawable2 = this.f1310H;
        Drawable drawableUnwrap = drawable2 != null ? DrawableCompat.unwrap(drawable2) : null;
        if (drawableUnwrap != drawable) {
            float fV = v();
            this.f1310H = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            float fV2 = v();
            Z(drawableUnwrap);
            if (X()) {
                t(this.f1310H);
            }
            invalidateSelf();
            if (fV != fV2) {
                A();
            }
        }
    }

    public final void I(float f) {
        if (this.f1312J != f) {
            float fV = v();
            this.f1312J = f;
            float fV2 = v();
            invalidateSelf();
            if (fV != fV2) {
                A();
            }
        }
    }

    public final void J(ColorStateList colorStateList) {
        this.K = true;
        if (this.f1311I != colorStateList) {
            this.f1311I = colorStateList;
            if (X()) {
                DrawableCompat.setTintList(this.f1310H, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void K(boolean z2) {
        if (this.f1309G != z2) {
            boolean zX = X();
            this.f1309G = z2;
            boolean zX2 = X();
            if (zX != zX2) {
                if (zX2) {
                    t(this.f1310H);
                } else {
                    Z(this.f1310H);
                }
                invalidateSelf();
                A();
            }
        }
    }

    public final void L(ColorStateList colorStateList) {
        if (this.f1301C != colorStateList) {
            this.f1301C = colorStateList;
            if (this.f1308F0) {
                p(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void M(float f) {
        if (this.f1303D != f) {
            this.f1303D = f;
            this.f1333g0.setStrokeWidth(f);
            if (this.f1308F0) {
                this.b.f2389j = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    public final void N(Drawable drawable) {
        Drawable drawable2 = this.f1314M;
        Drawable drawableUnwrap = drawable2 != null ? DrawableCompat.unwrap(drawable2) : null;
        if (drawableUnwrap != drawable) {
            float fW = w();
            this.f1314M = drawable != null ? DrawableCompat.wrap(drawable).mutate() : null;
            int[] iArr = W0.a.f2299a;
            this.f1315N = new RippleDrawable(W0.a.c(this.f1305E), this.f1314M, f1296H0);
            float fW2 = w();
            Z(drawableUnwrap);
            if (Y()) {
                t(this.f1314M);
            }
            invalidateSelf();
            if (fW != fW2) {
                A();
            }
        }
    }

    public final void O(float f) {
        if (this.f1330d0 != f) {
            this.f1330d0 = f;
            invalidateSelf();
            if (Y()) {
                A();
            }
        }
    }

    public final void P(float f) {
        if (this.f1317P != f) {
            this.f1317P = f;
            invalidateSelf();
            if (Y()) {
                A();
            }
        }
    }

    public final void Q(float f) {
        if (this.f1329c0 != f) {
            this.f1329c0 = f;
            invalidateSelf();
            if (Y()) {
                A();
            }
        }
    }

    public final void R(ColorStateList colorStateList) {
        if (this.f1316O != colorStateList) {
            this.f1316O = colorStateList;
            if (Y()) {
                DrawableCompat.setTintList(this.f1314M, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void S(boolean z2) {
        if (this.f1313L != z2) {
            boolean zY = Y();
            this.f1313L = z2;
            boolean zY2 = Y();
            if (zY != zY2) {
                if (zY2) {
                    t(this.f1314M);
                } else {
                    Z(this.f1314M);
                }
                invalidateSelf();
                A();
            }
        }
    }

    public final void T(float f) {
        if (this.Z != f) {
            float fV = v();
            this.Z = f;
            float fV2 = v();
            invalidateSelf();
            if (fV != fV2) {
                A();
            }
        }
    }

    public final void U(float f) {
        if (this.f1326Y != f) {
            float fV = v();
            this.f1326Y = f;
            float fV2 = v();
            invalidateSelf();
            if (fV != fV2) {
                A();
            }
        }
    }

    public final void V(ColorStateList colorStateList) {
        if (this.f1305E != colorStateList) {
            this.f1305E = colorStateList;
            this.f1298A0 = null;
            onStateChange(getState());
        }
    }

    public final boolean W() {
        return this.f1320S && this.f1321T != null && this.s0;
    }

    public final boolean X() {
        return this.f1309G && this.f1310H != null;
    }

    public final boolean Y() {
        return this.f1313L && this.f1314M != null;
    }

    @Override // Y0.h, R0.l
    public final void a() {
        A();
        invalidateSelf();
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i3;
        Canvas canvas2;
        int iSaveLayerAlpha;
        int i4;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i3 = this.f1344u0) == 0) {
            return;
        }
        if (i3 < 255) {
            canvas2 = canvas;
            iSaveLayerAlpha = canvas2.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i3);
        } else {
            canvas2 = canvas;
            iSaveLayerAlpha = 0;
        }
        boolean z2 = this.f1308F0;
        Paint paint = this.f1333g0;
        RectF rectF = this.f1335i0;
        if (!z2) {
            paint.setColor(this.f1339m0);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, x(), x(), paint);
        }
        if (!this.f1308F0) {
            paint.setColor(this.n0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f1345v0;
            if (colorFilter == null) {
                colorFilter = this.f1346w0;
            }
            paint.setColorFilter(colorFilter);
            rectF.set(bounds);
            canvas2.drawRoundRect(rectF, x(), x(), paint);
        }
        if (this.f1308F0) {
            super.draw(canvas);
        }
        if (this.f1303D > 0.0f && !this.f1308F0) {
            paint.setColor(this.p0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f1308F0) {
                ColorFilter colorFilter2 = this.f1345v0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f1346w0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f = bounds.left;
            float f3 = this.f1303D / 2.0f;
            rectF.set(f + f3, bounds.top + f3, bounds.right - f3, bounds.bottom - f3);
            float f4 = this.f1299B - (this.f1303D / 2.0f);
            canvas2.drawRoundRect(rectF, f4, f4, paint);
        }
        paint.setColor(this.f1341q0);
        paint.setStyle(Paint.Style.FILL);
        rectF.set(bounds);
        if (this.f1308F0) {
            RectF rectF2 = new RectF(bounds);
            Y0.g gVar = this.b;
            Y0.m mVar = gVar.f2383a;
            float f5 = gVar.f2388i;
            C0009b c0009b = this.f2411r;
            o oVar = this.f2412s;
            Path path = this.f1337k0;
            oVar.a(mVar, f5, rectF2, c0009b, path);
            e(canvas2, paint, path, this.b.f2383a, g());
        } else {
            canvas2.drawRoundRect(rectF, x(), x(), paint);
        }
        if (X()) {
            u(bounds, rectF);
            float f6 = rectF.left;
            float f7 = rectF.top;
            canvas2.translate(f6, f7);
            this.f1310H.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f1310H.draw(canvas2);
            canvas2.translate(-f6, -f7);
        }
        if (W()) {
            u(bounds, rectF);
            float f8 = rectF.left;
            float f9 = rectF.top;
            canvas2.translate(f8, f9);
            this.f1321T.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            this.f1321T.draw(canvas2);
            canvas2.translate(-f8, -f9);
        }
        if (this.f1304D0 && this.f1307F != null) {
            PointF pointF = this.f1336j0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.f1307F;
            m mVar2 = this.f1338l0;
            if (charSequence != null) {
                float fV = v() + this.f1325X + this.f1327a0;
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    pointF.x = bounds.left + fV;
                } else {
                    pointF.x = bounds.right - fV;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = mVar2.f1934a;
                Paint.FontMetrics fontMetrics = this.f1334h0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF.setEmpty();
            if (this.f1307F != null) {
                float fV2 = v() + this.f1325X + this.f1327a0;
                float fW = w() + this.f1331e0 + this.f1328b0;
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    rectF.left = bounds.left + fV2;
                    rectF.right = bounds.right - fW;
                } else {
                    rectF.left = bounds.left + fW;
                    rectF.right = bounds.right - fV2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
            V0.d dVar = mVar2.g;
            TextPaint textPaint2 = mVar2.f1934a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                mVar2.g.d(this.f1332f0, textPaint2, mVar2.b);
            }
            textPaint2.setTextAlign(align);
            boolean z3 = Math.round(mVar2.a(this.f1307F.toString())) > Math.round(rectF.width());
            if (z3) {
                int iSave = canvas2.save();
                canvas2.clipRect(rectF);
                i4 = iSave;
            } else {
                i4 = 0;
            }
            CharSequence charSequenceEllipsize = this.f1307F;
            if (z3 && this.f1302C0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint2, rectF.width(), this.f1302C0);
            }
            canvas.drawText(charSequenceEllipsize, 0, charSequenceEllipsize.length(), pointF.x, pointF.y, textPaint2);
            canvas2 = canvas;
            if (z3) {
                canvas2.restoreToCount(i4);
            }
        }
        if (Y()) {
            rectF.setEmpty();
            if (Y()) {
                float f10 = this.f1331e0 + this.f1330d0;
                if (DrawableCompat.getLayoutDirection(this) == 0) {
                    float f11 = bounds.right - f10;
                    rectF.right = f11;
                    rectF.left = f11 - this.f1317P;
                } else {
                    float f12 = bounds.left + f10;
                    rectF.left = f12;
                    rectF.right = f12 + this.f1317P;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f13 = this.f1317P;
                float f14 = fExactCenterY - (f13 / 2.0f);
                rectF.top = f14;
                rectF.bottom = f14 + f13;
            }
            float f15 = rectF.left;
            float f16 = rectF.top;
            canvas2.translate(f15, f16);
            this.f1314M.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
            int[] iArr = W0.a.f2299a;
            this.f1315N.setBounds(this.f1314M.getBounds());
            this.f1315N.jumpToCurrentState();
            this.f1315N.draw(canvas2);
            canvas2.translate(-f15, -f16);
        }
        if (this.f1344u0 < 255) {
            canvas2.restoreToCount(iSaveLayerAlpha);
        }
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f1344u0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f1345v0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f1297A;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(w() + this.f1338l0.a(this.f1307F.toString()) + v() + this.f1325X + this.f1327a0 + this.f1328b0 + this.f1331e0), this.f1306E0);
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.f1308F0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f1297A, this.f1299B);
        } else {
            outline.setRoundRect(bounds, this.f1299B);
            outline2 = outline;
        }
        outline2.setAlpha(this.f1344u0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (y(this.f1348y) || y(this.f1350z) || y(this.f1301C)) {
            return true;
        }
        V0.d dVar = this.f1338l0.g;
        if (dVar == null || (colorStateList = dVar.f2249j) == null || !colorStateList.isStateful()) {
            return (this.f1320S && this.f1321T != null && this.f1319R) || z(this.f1310H) || z(this.f1321T) || y(this.f1347x0);
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i3) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i3);
        if (X()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f1310H, i3);
        }
        if (W()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f1321T, i3);
        }
        if (Y()) {
            zOnLayoutDirectionChanged |= DrawableCompat.setLayoutDirection(this.f1314M, i3);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i3) {
        boolean zOnLevelChange = super.onLevelChange(i3);
        if (X()) {
            zOnLevelChange |= this.f1310H.setLevel(i3);
        }
        if (W()) {
            zOnLevelChange |= this.f1321T.setLevel(i3);
        }
        if (Y()) {
            zOnLevelChange |= this.f1314M.setLevel(i3);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // Y0.h, android.graphics.drawable.Drawable, R0.l
    public final boolean onStateChange(int[] iArr) {
        if (this.f1308F0) {
            super.onStateChange(iArr);
        }
        return B(iArr, this.f1351z0);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j2);
        }
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        if (this.f1344u0 != i3) {
            this.f1344u0 = i3;
            invalidateSelf();
        }
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f1345v0 != colorFilter) {
            this.f1345v0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // Y0.h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f1347x0 != colorStateList) {
            this.f1347x0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // Y0.h, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.f1349y0 != mode) {
            this.f1349y0 = mode;
            ColorStateList colorStateList = this.f1347x0;
            this.f1346w0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (X()) {
            visible |= this.f1310H.setVisible(z2, z3);
        }
        if (W()) {
            visible |= this.f1321T.setVisible(z2, z3);
        }
        if (Y()) {
            visible |= this.f1314M.setVisible(z2, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public final void t(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f1314M) {
            if (drawable.isStateful()) {
                drawable.setState(this.f1351z0);
            }
            DrawableCompat.setTintList(drawable, this.f1316O);
            return;
        }
        Drawable drawable2 = this.f1310H;
        if (drawable == drawable2 && this.K) {
            DrawableCompat.setTintList(drawable2, this.f1311I);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    public final void u(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (X() || W()) {
            float f = this.f1325X + this.f1326Y;
            Drawable drawable = this.s0 ? this.f1321T : this.f1310H;
            float intrinsicWidth = this.f1312J;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (DrawableCompat.getLayoutDirection(this) == 0) {
                float f3 = rect.left + f;
                rectF.left = f3;
                rectF.right = f3 + intrinsicWidth;
            } else {
                float f4 = rect.right - f;
                rectF.right = f4;
                rectF.left = f4 - intrinsicWidth;
            }
            Drawable drawable2 = this.s0 ? this.f1321T : this.f1310H;
            float fCeil = this.f1312J;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(t.b(this.f1332f0, 24));
                if (drawable2.getIntrinsicHeight() <= fCeil) {
                    fCeil = drawable2.getIntrinsicHeight();
                }
            }
            float fExactCenterY = rect.exactCenterY() - (fCeil / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fCeil;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final float v() {
        if (!X() && !W()) {
            return 0.0f;
        }
        float f = this.f1326Y;
        Drawable drawable = this.s0 ? this.f1321T : this.f1310H;
        float intrinsicWidth = this.f1312J;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f + this.Z;
    }

    public final float w() {
        if (Y()) {
            return this.f1329c0 + this.f1317P + this.f1330d0;
        }
        return 0.0f;
    }

    public final float x() {
        return this.f1308F0 ? h() : this.f1299B;
    }
}
