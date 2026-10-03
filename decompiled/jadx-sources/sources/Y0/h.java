package Y0;

import A1.C0009b;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.util.ObjectsCompat;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class h extends Drawable implements TintAwareDrawable, x {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final Paint f2397x;
    public g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v[] f2398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v[] f2399d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BitSet f2400e;
    public boolean f;
    public final Matrix g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Path f2401h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Path f2402i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RectF f2403j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RectF f2404k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Region f2405l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Region f2406m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public m f2407n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Paint f2408o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Paint f2409p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final X0.a f2410q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C0009b f2411r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final o f2412s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuffColorFilter f2413t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public PorterDuffColorFilter f2414u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final RectF f2415v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2416w;

    static {
        Paint paint = new Paint(1);
        f2397x = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public h() {
        this(new m());
    }

    public void a() {
        invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        g gVar = this.b;
        this.f2412s.a(gVar.f2383a, gVar.f2388i, rectF, this.f2411r, path);
        if (this.b.f2387h != 1.0f) {
            Matrix matrix = this.g;
            matrix.reset();
            float f = this.b.f2387h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f2415v, true);
    }

    public final int c(int i3) {
        g gVar = this.b;
        float f = gVar.f2392m + 0.0f + gVar.f2391l;
        Q0.a aVar = gVar.b;
        return aVar != null ? aVar.a(i3, f) : i3;
    }

    public final void d(Canvas canvas) {
        if (this.f2400e.cardinality() > 0) {
            Log.w("h", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i3 = this.b.f2395p;
        Path path = this.f2401h;
        X0.a aVar = this.f2410q;
        if (i3 != 0) {
            canvas.drawPath(path, aVar.f2336a);
        }
        for (int i4 = 0; i4 < 4; i4++) {
            v vVar = this.f2398c[i4];
            int i5 = this.b.f2394o;
            Matrix matrix = v.b;
            vVar.a(matrix, aVar, i5, canvas);
            this.f2399d[i4].a(matrix, aVar, this.b.f2394o, canvas);
        }
        if (this.f2416w) {
            double d3 = 0;
            int iSin = (int) (Math.sin(Math.toRadians(d3)) * ((double) this.b.f2395p));
            int iCos = (int) (Math.cos(Math.toRadians(d3)) * ((double) this.b.f2395p));
            canvas.translate(-iSin, -iCos);
            canvas.drawPath(path, f2397x);
            canvas.translate(iSin, iCos);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:42:0x0122  */
    /* JADX WARN: Code duplicated, block: B:43:0x012a  */
    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int iWidth;
        PorterDuffColorFilter porterDuffColorFilter = this.f2413t;
        Paint paint = this.f2408o;
        paint.setColorFilter(porterDuffColorFilter);
        int alpha = paint.getAlpha();
        int i3 = this.b.f2390k;
        paint.setAlpha(((i3 + (i3 >>> 7)) * alpha) >>> 8);
        PorterDuffColorFilter porterDuffColorFilter2 = this.f2414u;
        Paint paint2 = this.f2409p;
        paint2.setColorFilter(porterDuffColorFilter2);
        paint2.setStrokeWidth(this.b.f2389j);
        int alpha2 = paint2.getAlpha();
        int i4 = this.b.f2390k;
        paint2.setAlpha(((i4 + (i4 >>> 7)) * alpha2) >>> 8);
        boolean z2 = this.f;
        Path path = this.f2401h;
        if (z2) {
            float f = -(i() ? paint2.getStrokeWidth() / 2.0f : 0.0f);
            m mVar = this.b.f2383a;
            l lVarE = mVar.e();
            c bVar = mVar.f2432e;
            if (!(bVar instanceof j)) {
                bVar = new b(f, bVar);
            }
            lVarE.f2423e = bVar;
            c bVar2 = mVar.f;
            if (!(bVar2 instanceof j)) {
                bVar2 = new b(f, bVar2);
            }
            lVarE.f = bVar2;
            c bVar3 = mVar.f2433h;
            if (!(bVar3 instanceof j)) {
                bVar3 = new b(f, bVar3);
            }
            lVarE.f2424h = bVar3;
            c bVar4 = mVar.g;
            if (!(bVar4 instanceof j)) {
                bVar4 = new b(f, bVar4);
            }
            lVarE.g = bVar4;
            m mVarA = lVarE.a();
            this.f2407n = mVarA;
            float f3 = this.b.f2388i;
            RectF rectFG = g();
            RectF rectF = this.f2404k;
            rectF.set(rectFG);
            float strokeWidth = i() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.f2412s.a(mVarA, f3, rectF, null, this.f2402i);
            b(g(), path);
            this.f = false;
        }
        g gVar = this.b;
        int i5 = gVar.f2393n;
        if (i5 != 1 && gVar.f2394o > 0) {
            if (i5 != 2) {
                int i6 = Build.VERSION.SDK_INT;
                if (!gVar.f2383a.d(g()) && !path.isConvex() && i6 < 29) {
                    canvas.save();
                    double d3 = 0;
                    canvas.translate((int) (Math.sin(Math.toRadians(d3)) * ((double) this.b.f2395p)), (int) (Math.cos(Math.toRadians(d3)) * ((double) this.b.f2395p)));
                    if (!this.f2416w) {
                        RectF rectF2 = this.f2415v;
                        iWidth = (int) (rectF2.width() - getBounds().width());
                        int iHeight = (int) (rectF2.height() - getBounds().height());
                        if (iWidth >= 0 || iHeight < 0) {
                            throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((this.b.f2394o * 2) + ((int) rectF2.width()) + iWidth, (this.b.f2394o * 2) + ((int) rectF2.height()) + iHeight, Bitmap.Config.ARGB_8888);
                        Canvas canvas2 = new Canvas(bitmapCreateBitmap);
                        float f4 = (getBounds().left - this.b.f2394o) - iWidth;
                        float f5 = (getBounds().top - this.b.f2394o) - iHeight;
                        canvas2.translate(-f4, -f5);
                        d(canvas2);
                        canvas.drawBitmap(bitmapCreateBitmap, f4, f5, (Paint) null);
                        bitmapCreateBitmap.recycle();
                        canvas.restore();
                    } else {
                        d(canvas);
                        canvas.restore();
                    }
                }
            } else {
                canvas.save();
                double d4 = 0;
                canvas.translate((int) (Math.sin(Math.toRadians(d4)) * ((double) this.b.f2395p)), (int) (Math.cos(Math.toRadians(d4)) * ((double) this.b.f2395p)));
                if (!this.f2416w) {
                    RectF rectF3 = this.f2415v;
                    iWidth = (int) (rectF3.width() - getBounds().width());
                    int iHeight2 = (int) (rectF3.height() - getBounds().height());
                    if (iWidth >= 0) {
                    }
                    throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                }
                d(canvas);
                canvas.restore();
            }
        }
        g gVar2 = this.b;
        Paint.Style style = gVar2.f2396q;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            e(canvas, paint, path, gVar2.f2383a, g());
        }
        if (i()) {
            f(canvas);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public final void e(Canvas canvas, Paint paint, Path path, m mVar, RectF rectF) {
        if (!mVar.d(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = mVar.f.a(rectF) * this.b.f2388i;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    public void f(Canvas canvas) {
        m mVar = this.f2407n;
        RectF rectFG = g();
        RectF rectF = this.f2404k;
        rectF.set(rectFG);
        boolean zI = i();
        Paint paint = this.f2409p;
        float strokeWidth = zI ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        e(canvas, paint, this.f2402i, mVar, rectF);
    }

    public final RectF g() {
        Rect bounds = getBounds();
        RectF rectF = this.f2403j;
        rectF.set(bounds);
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.b.f2390k;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        g gVar = this.b;
        if (gVar.f2393n == 2) {
            return;
        }
        if (gVar.f2383a.d(g())) {
            outline.setRoundRect(getBounds(), h() * this.b.f2388i);
            return;
        }
        RectF rectFG = g();
        Path path = this.f2401h;
        b(rectFG, path);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 30) {
            P0.d.a(outline, path);
            return;
        }
        if (i3 >= 29) {
            try {
                P0.b.a(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            P0.b.a(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.b.g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f2405l;
        region.set(bounds);
        RectF rectFG = g();
        Path path = this.f2401h;
        b(rectFG, path);
        Region region2 = this.f2406m;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final float h() {
        return this.b.f2383a.f2432e.a(g());
    }

    public final boolean i() {
        Paint.Style style = this.b.f2396q;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f2409p.getStrokeWidth() > 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.b.f2386e;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.b.getClass();
        ColorStateList colorStateList2 = this.b.f2385d;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.b.f2384c;
        return colorStateList3 != null && colorStateList3.isStateful();
    }

    public final void j(Context context) {
        this.b.b = new Q0.a(context);
        s();
    }

    public final void k(float f) {
        g gVar = this.b;
        if (gVar.f2392m != f) {
            gVar.f2392m = f;
            s();
        }
    }

    public final void l(ColorStateList colorStateList) {
        g gVar = this.b;
        if (gVar.f2384c != colorStateList) {
            gVar.f2384c = colorStateList;
            onStateChange(getState());
        }
    }

    public final void m(float f) {
        g gVar = this.b;
        if (gVar.f2388i != f) {
            gVar.f2388i = f;
            this.f = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.b = new g(this.b);
        return this;
    }

    public final void n() {
        this.f2410q.a(-12303292);
        this.b.getClass();
        super.invalidateSelf();
    }

    public final void o() {
        g gVar = this.b;
        if (gVar.f2393n != 2) {
            gVar.f2393n = 2;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, R0.l
    public boolean onStateChange(int[] iArr) {
        boolean z2 = q(iArr) || r();
        if (z2) {
            invalidateSelf();
        }
        return z2;
    }

    public final void p(ColorStateList colorStateList) {
        g gVar = this.b;
        if (gVar.f2385d != colorStateList) {
            gVar.f2385d = colorStateList;
            onStateChange(getState());
        }
    }

    public final boolean q(int[] iArr) {
        boolean z2;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.b.f2384c == null || color2 == (colorForState2 = this.b.f2384c.getColorForState(iArr, (color2 = (paint2 = this.f2408o).getColor())))) {
            z2 = false;
        } else {
            paint2.setColor(colorForState2);
            z2 = true;
        }
        if (this.b.f2385d == null || color == (colorForState = this.b.f2385d.getColorForState(iArr, (color = (paint = this.f2409p).getColor())))) {
            return z2;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean r() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f2413t;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f2414u;
        g gVar = this.b;
        ColorStateList colorStateList = gVar.f2386e;
        PorterDuff.Mode mode = gVar.f;
        if (colorStateList == null || mode == null) {
            int color = this.f2408o.getColor();
            int iC = c(color);
            porterDuffColorFilter = iC != color ? new PorterDuffColorFilter(iC, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(c(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.f2413t = porterDuffColorFilter;
        this.b.getClass();
        this.f2414u = null;
        this.b.getClass();
        return (ObjectsCompat.equals(porterDuffColorFilter2, this.f2413t) && ObjectsCompat.equals(porterDuffColorFilter3, this.f2414u)) ? false : true;
    }

    public final void s() {
        g gVar = this.b;
        float f = gVar.f2392m + 0.0f;
        gVar.f2394o = (int) Math.ceil(0.75f * f);
        this.b.f2395p = (int) Math.ceil(f * 0.25f);
        r();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i3) {
        g gVar = this.b;
        if (gVar.f2390k != i3) {
            gVar.f2390k = i3;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.b.getClass();
        super.invalidateSelf();
    }

    @Override // Y0.x
    public final void setShapeAppearanceModel(m mVar) {
        this.b.f2383a = mVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTint(int i3) {
        setTintList(ColorStateList.valueOf(i3));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(ColorStateList colorStateList) {
        this.b.f2386e = colorStateList;
        r();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(PorterDuff.Mode mode) {
        g gVar = this.b;
        if (gVar.f != mode) {
            gVar.f = mode;
            r();
            super.invalidateSelf();
        }
    }

    public h(Context context, AttributeSet attributeSet, int i3, int i4) {
        this(m.b(context, attributeSet, i3, i4).a());
    }

    public h(m mVar) {
        this(new g(mVar));
    }

    public h(g gVar) {
        o oVar;
        this.f2398c = new v[4];
        this.f2399d = new v[4];
        this.f2400e = new BitSet(8);
        this.g = new Matrix();
        this.f2401h = new Path();
        this.f2402i = new Path();
        this.f2403j = new RectF();
        this.f2404k = new RectF();
        this.f2405l = new Region();
        this.f2406m = new Region();
        Paint paint = new Paint(1);
        this.f2408o = paint;
        Paint paint2 = new Paint(1);
        this.f2409p = paint2;
        this.f2410q = new X0.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            oVar = n.f2438a;
        } else {
            oVar = new o();
        }
        this.f2412s = oVar;
        this.f2415v = new RectF();
        this.f2416w = true;
        this.b = gVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        r();
        q(getState());
        this.f2411r = new C0009b(this);
    }
}
