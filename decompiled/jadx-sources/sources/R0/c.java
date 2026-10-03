package R0;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.math.MathUtils;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public CharSequence f1863A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public CharSequence f1864B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f1865C;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public Bitmap f1867E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public float f1868F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public float f1869G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public float f1870H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public float f1871I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public float f1872J;
    public int K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int[] f1873L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f1874M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final TextPaint f1875N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final TextPaint f1876O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public TimeInterpolator f1877P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public TimeInterpolator f1878Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public float f1879R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public float f1880S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public float f1881T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public ColorStateList f1882U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public float f1883V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public float f1884W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public float f1885X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public StaticLayout f1886Y;
    public float Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextInputLayout f1887a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public float f1888a0;
    public float b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public float f1889b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f1890c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public CharSequence f1891c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Rect f1892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f1894e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f1899j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f1900k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f1901l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f1902m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f1903n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f1904o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f1905p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f1906q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Typeface f1907r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Typeface f1908s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Typeface f1909t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Typeface f1910u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Typeface f1911v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Typeface f1912w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Typeface f1913x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public V0.a f1914y;
    public int f = 16;
    public int g = 16;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f1897h = 15.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f1898i = 15.0f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final TextUtils.TruncateAt f1915z = TextUtils.TruncateAt.END;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final boolean f1866D = true;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f1893d0 = 1;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final float f1895e0 = 1.0f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f1896f0 = 1;

    public c(TextInputLayout textInputLayout) {
        this.f1887a = textInputLayout;
        TextPaint textPaint = new TextPaint(129);
        this.f1875N = textPaint;
        this.f1876O = new TextPaint(textPaint);
        this.f1892d = new Rect();
        this.f1890c = new Rect();
        this.f1894e = new RectF();
        g(textInputLayout.getContext().getResources().getConfiguration());
    }

    public static int a(int i3, int i4, float f) {
        float f3 = 1.0f - f;
        return Color.argb(Math.round((Color.alpha(i4) * f) + (Color.alpha(i3) * f3)), Math.round((Color.red(i4) * f) + (Color.red(i3) * f3)), Math.round((Color.green(i4) * f) + (Color.green(i3) * f3)), Math.round((Color.blue(i4) * f) + (Color.blue(i3) * f3)));
    }

    public static float f(float f, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        return B0.a.a(f, f3, f4);
    }

    public final boolean b(CharSequence charSequence) {
        boolean z2 = ViewCompat.getLayoutDirection(this.f1887a) == 1;
        if (this.f1866D) {
            return (z2 ? TextDirectionHeuristicsCompat.FIRSTSTRONG_RTL : TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR).isRtl(charSequence, 0, charSequence.length());
        }
        return z2;
    }

    public final void c(float f, boolean z2) {
        float f3;
        float f4;
        Typeface typeface;
        boolean z3;
        Layout.Alignment alignment;
        if (this.f1863A == null) {
            return;
        }
        float fWidth = this.f1892d.width();
        float fWidth2 = this.f1890c.width();
        if (Math.abs(f - 1.0f) < 1.0E-5f) {
            f3 = this.f1898i;
            f4 = this.f1883V;
            this.f1868F = 1.0f;
            typeface = this.f1907r;
        } else {
            float f5 = this.f1897h;
            float f6 = this.f1884W;
            Typeface typeface2 = this.f1910u;
            if (Math.abs(f - 0.0f) < 1.0E-5f) {
                this.f1868F = 1.0f;
            } else {
                this.f1868F = f(this.f1897h, this.f1898i, f, this.f1878Q) / this.f1897h;
            }
            float f7 = this.f1898i / this.f1897h;
            fWidth = (z2 || fWidth2 * f7 <= fWidth) ? fWidth2 : Math.min(fWidth / f7, fWidth2);
            f3 = f5;
            f4 = f6;
            typeface = typeface2;
        }
        TextPaint textPaint = this.f1875N;
        if (fWidth > 0.0f) {
            boolean z4 = this.f1869G != f3;
            boolean z5 = this.f1885X != f4;
            boolean z6 = this.f1913x != typeface;
            StaticLayout staticLayout = this.f1886Y;
            boolean z7 = z4 || z5 || (staticLayout != null && (fWidth > ((float) staticLayout.getWidth()) ? 1 : (fWidth == ((float) staticLayout.getWidth()) ? 0 : -1)) != 0) || z6 || this.f1874M;
            this.f1869G = f3;
            this.f1885X = f4;
            this.f1913x = typeface;
            this.f1874M = false;
            textPaint.setLinearText(this.f1868F != 1.0f);
            z3 = z7;
        } else {
            z3 = false;
        }
        if (this.f1864B == null || z3) {
            textPaint.setTextSize(this.f1869G);
            textPaint.setTypeface(this.f1913x);
            textPaint.setLetterSpacing(this.f1885X);
            boolean zB = b(this.f1863A);
            this.f1865C = zB;
            int i3 = this.f1893d0;
            if (i3 <= 1 || zB) {
                i3 = 1;
            }
            if (i3 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else {
                int absoluteGravity = GravityCompat.getAbsoluteGravity(this.f, zB ? 1 : 0) & 7;
                if (absoluteGravity == 1) {
                    alignment = Layout.Alignment.ALIGN_CENTER;
                } else if (absoluteGravity != 5) {
                    alignment = this.f1865C ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
                } else {
                    alignment = this.f1865C ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_OPPOSITE;
                }
            }
            k kVar = new k(this.f1863A, textPaint, (int) fWidth);
            kVar.f1933k = this.f1915z;
            kVar.f1932j = zB;
            kVar.f1929e = alignment;
            kVar.f1931i = false;
            kVar.f = i3;
            kVar.g = this.f1895e0;
            kVar.f1930h = this.f1896f0;
            StaticLayout staticLayout2 = (StaticLayout) Preconditions.checkNotNull(kVar.a());
            this.f1886Y = staticLayout2;
            this.f1864B = staticLayout2.getText();
        }
    }

    public final float d() {
        float f = this.f1898i;
        TextPaint textPaint = this.f1876O;
        textPaint.setTextSize(f);
        textPaint.setTypeface(this.f1907r);
        textPaint.setLetterSpacing(this.f1883V);
        return -textPaint.ascent();
    }

    public final int e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.f1873L;
        return iArr != null ? colorStateList.getColorForState(iArr, 0) : colorStateList.getDefaultColor();
    }

    public final void g(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 31) {
            Typeface typeface = this.f1909t;
            if (typeface != null) {
                this.f1908s = com.bumptech.glide.c.x(configuration, typeface);
            }
            Typeface typeface2 = this.f1912w;
            if (typeface2 != null) {
                this.f1911v = com.bumptech.glide.c.x(configuration, typeface2);
            }
            Typeface typeface3 = this.f1908s;
            if (typeface3 == null) {
                typeface3 = this.f1909t;
            }
            this.f1907r = typeface3;
            Typeface typeface4 = this.f1911v;
            if (typeface4 == null) {
                typeface4 = this.f1912w;
            }
            this.f1910u = typeface4;
            h(true);
        }
    }

    public final void h(boolean z2) {
        float fMeasureText;
        StaticLayout staticLayout;
        TextInputLayout textInputLayout = this.f1887a;
        if ((textInputLayout.getHeight() <= 0 || textInputLayout.getWidth() <= 0) && !z2) {
            return;
        }
        c(1.0f, z2);
        CharSequence charSequence = this.f1864B;
        TextPaint textPaint = this.f1875N;
        if (charSequence != null && (staticLayout = this.f1886Y) != null) {
            this.f1891c0 = TextUtils.ellipsize(charSequence, textPaint, staticLayout.getWidth(), this.f1915z);
        }
        CharSequence charSequence2 = this.f1891c0;
        if (charSequence2 != null) {
            this.Z = textPaint.measureText(charSequence2, 0, charSequence2.length());
        } else {
            this.Z = 0.0f;
        }
        int absoluteGravity = GravityCompat.getAbsoluteGravity(this.g, this.f1865C ? 1 : 0);
        int i3 = absoluteGravity & 112;
        Rect rect = this.f1892d;
        if (i3 == 48) {
            this.f1902m = rect.top;
        } else if (i3 != 80) {
            this.f1902m = rect.centerY() - ((textPaint.descent() - textPaint.ascent()) / 2.0f);
        } else {
            this.f1902m = textPaint.ascent() + rect.bottom;
        }
        int i4 = absoluteGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i4 == 1) {
            this.f1904o = rect.centerX() - (this.Z / 2.0f);
        } else if (i4 != 5) {
            this.f1904o = rect.left;
        } else {
            this.f1904o = rect.right - this.Z;
        }
        c(0.0f, z2);
        StaticLayout staticLayout2 = this.f1886Y;
        float height = staticLayout2 != null ? staticLayout2.getHeight() : 0.0f;
        StaticLayout staticLayout3 = this.f1886Y;
        if (staticLayout3 == null || this.f1893d0 <= 1) {
            CharSequence charSequence3 = this.f1864B;
            fMeasureText = charSequence3 != null ? textPaint.measureText(charSequence3, 0, charSequence3.length()) : 0.0f;
        } else {
            fMeasureText = staticLayout3.getWidth();
        }
        StaticLayout staticLayout4 = this.f1886Y;
        if (staticLayout4 != null) {
            staticLayout4.getLineCount();
        }
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(this.f, this.f1865C ? 1 : 0);
        int i5 = absoluteGravity2 & 112;
        Rect rect2 = this.f1890c;
        if (i5 == 48) {
            this.f1901l = rect2.top;
        } else if (i5 != 80) {
            this.f1901l = rect2.centerY() - (height / 2.0f);
        } else {
            this.f1901l = textPaint.descent() + (rect2.bottom - height);
        }
        int i6 = absoluteGravity2 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i6 == 1) {
            this.f1903n = rect2.centerX() - (fMeasureText / 2.0f);
        } else if (i6 != 5) {
            this.f1903n = rect2.left;
        } else {
            this.f1903n = rect2.right - fMeasureText;
        }
        Bitmap bitmap = this.f1867E;
        if (bitmap != null) {
            bitmap.recycle();
            this.f1867E = null;
        }
        l(this.b);
        float f = this.b;
        float f3 = f(rect2.left, rect.left, f, this.f1877P);
        RectF rectF = this.f1894e;
        rectF.left = f3;
        rectF.top = f(this.f1901l, this.f1902m, f, this.f1877P);
        rectF.right = f(rect2.right, rect.right, f, this.f1877P);
        rectF.bottom = f(rect2.bottom, rect.bottom, f, this.f1877P);
        this.f1905p = f(this.f1903n, this.f1904o, f, this.f1877P);
        this.f1906q = f(this.f1901l, this.f1902m, f, this.f1877P);
        l(f);
        L.a aVar = B0.a.b;
        this.f1888a0 = 1.0f - f(0.0f, 1.0f, 1.0f - f, aVar);
        ViewCompat.postInvalidateOnAnimation(textInputLayout);
        this.f1889b0 = f(1.0f, 0.0f, f, aVar);
        ViewCompat.postInvalidateOnAnimation(textInputLayout);
        ColorStateList colorStateList = this.f1900k;
        ColorStateList colorStateList2 = this.f1899j;
        if (colorStateList != colorStateList2) {
            textPaint.setColor(a(e(colorStateList2), e(this.f1900k), f));
        } else {
            textPaint.setColor(e(colorStateList));
        }
        float f4 = this.f1883V;
        float f5 = this.f1884W;
        if (f4 != f5) {
            textPaint.setLetterSpacing(f(f5, f4, f, aVar));
        } else {
            textPaint.setLetterSpacing(f4);
        }
        this.f1870H = B0.a.a(0.0f, this.f1879R, f);
        this.f1871I = B0.a.a(0.0f, this.f1880S, f);
        this.f1872J = B0.a.a(0.0f, this.f1881T, f);
        int iA = a(0, e(this.f1882U), f);
        this.K = iA;
        textPaint.setShadowLayer(this.f1870H, this.f1871I, this.f1872J, iA);
        ViewCompat.postInvalidateOnAnimation(textInputLayout);
    }

    public final void i(ColorStateList colorStateList) {
        if (this.f1900k == colorStateList && this.f1899j == colorStateList) {
            return;
        }
        this.f1900k = colorStateList;
        this.f1899j = colorStateList;
        h(false);
    }

    public final boolean j(Typeface typeface) {
        V0.a aVar = this.f1914y;
        if (aVar != null) {
            aVar.f2237o = true;
        }
        if (this.f1909t == typeface) {
            return false;
        }
        this.f1909t = typeface;
        Typeface typefaceX = com.bumptech.glide.c.x(this.f1887a.getContext().getResources().getConfiguration(), typeface);
        this.f1908s = typefaceX;
        if (typefaceX == null) {
            typefaceX = this.f1909t;
        }
        this.f1907r = typefaceX;
        return true;
    }

    public final void k(float f) {
        float fClamp = MathUtils.clamp(f, 0.0f, 1.0f);
        if (fClamp != this.b) {
            this.b = fClamp;
            Rect rect = this.f1890c;
            float f3 = rect.left;
            Rect rect2 = this.f1892d;
            float f4 = f(f3, rect2.left, fClamp, this.f1877P);
            RectF rectF = this.f1894e;
            rectF.left = f4;
            rectF.top = f(this.f1901l, this.f1902m, fClamp, this.f1877P);
            rectF.right = f(rect.right, rect2.right, fClamp, this.f1877P);
            rectF.bottom = f(rect.bottom, rect2.bottom, fClamp, this.f1877P);
            this.f1905p = f(this.f1903n, this.f1904o, fClamp, this.f1877P);
            this.f1906q = f(this.f1901l, this.f1902m, fClamp, this.f1877P);
            l(fClamp);
            L.a aVar = B0.a.b;
            this.f1888a0 = 1.0f - f(0.0f, 1.0f, 1.0f - fClamp, aVar);
            TextInputLayout textInputLayout = this.f1887a;
            ViewCompat.postInvalidateOnAnimation(textInputLayout);
            this.f1889b0 = f(1.0f, 0.0f, fClamp, aVar);
            ViewCompat.postInvalidateOnAnimation(textInputLayout);
            ColorStateList colorStateList = this.f1900k;
            ColorStateList colorStateList2 = this.f1899j;
            TextPaint textPaint = this.f1875N;
            if (colorStateList != colorStateList2) {
                textPaint.setColor(a(e(colorStateList2), e(this.f1900k), fClamp));
            } else {
                textPaint.setColor(e(colorStateList));
            }
            float f5 = this.f1883V;
            float f6 = this.f1884W;
            if (f5 != f6) {
                textPaint.setLetterSpacing(f(f6, f5, fClamp, aVar));
            } else {
                textPaint.setLetterSpacing(f5);
            }
            this.f1870H = B0.a.a(0.0f, this.f1879R, fClamp);
            this.f1871I = B0.a.a(0.0f, this.f1880S, fClamp);
            this.f1872J = B0.a.a(0.0f, this.f1881T, fClamp);
            int iA = a(0, e(this.f1882U), fClamp);
            this.K = iA;
            textPaint.setShadowLayer(this.f1870H, this.f1871I, this.f1872J, iA);
            ViewCompat.postInvalidateOnAnimation(textInputLayout);
        }
    }

    public final void l(float f) {
        c(f, false);
        ViewCompat.postInvalidateOnAnimation(this.f1887a);
    }

    public final void m(Typeface typeface) {
        boolean z2;
        boolean zJ = j(typeface);
        if (this.f1912w != typeface) {
            this.f1912w = typeface;
            Typeface typefaceX = com.bumptech.glide.c.x(this.f1887a.getContext().getResources().getConfiguration(), typeface);
            this.f1911v = typefaceX;
            if (typefaceX == null) {
                typefaceX = this.f1912w;
            }
            this.f1910u = typefaceX;
            z2 = true;
        } else {
            z2 = false;
        }
        if (zJ || z2) {
            h(false);
        }
    }
}
