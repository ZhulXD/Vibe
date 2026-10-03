package V0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ColorStateList f2243a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2246e;
    public final float f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f2247h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f2248i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f2249j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2250k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f2251l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2252m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Typeface f2253n;

    public d(Context context, int i3) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, A0.a.K);
        this.f2250k = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        this.f2249j = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 3);
        com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 4);
        com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 5);
        this.f2244c = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.f2245d = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i4 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f2251l = typedArrayObtainStyledAttributes.getResourceId(i4, 0);
        this.b = typedArrayObtainStyledAttributes.getString(i4);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f2243a = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 6);
        this.f2246e = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.f = typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
        this.g = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i3, A0.a.f38x);
        this.f2247h = typedArrayObtainStyledAttributes2.hasValue(0);
        this.f2248i = typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.f2253n;
        int i3 = this.f2244c;
        if (typeface == null && (str = this.b) != null) {
            this.f2253n = Typeface.create(str, i3);
        }
        if (this.f2253n == null) {
            int i4 = this.f2245d;
            if (i4 == 1) {
                this.f2253n = Typeface.SANS_SERIF;
            } else if (i4 == 2) {
                this.f2253n = Typeface.SERIF;
            } else if (i4 != 3) {
                this.f2253n = Typeface.DEFAULT;
            } else {
                this.f2253n = Typeface.MONOSPACE;
            }
            this.f2253n = Typeface.create(this.f2253n, i3);
        }
    }

    public final Typeface b(Context context) {
        if (this.f2252m) {
            return this.f2253n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = ResourcesCompat.getFont(context, this.f2251l);
                this.f2253n = font;
                if (font != null) {
                    this.f2253n = Typeface.create(font, this.f2244c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e2) {
                Log.d("TextAppearance", "Error loading font " + this.b, e2);
            }
        }
        a();
        this.f2252m = true;
        return this.f2253n;
    }

    public final void c(Context context, p000a.a aVar) {
        int i3 = this.f2251l;
        if ((i3 != 0 ? ResourcesCompat.getCachedFont(context, i3) : null) != null) {
            b(context);
        } else {
            a();
        }
        if (i3 == 0) {
            this.f2252m = true;
        }
        if (this.f2252m) {
            aVar.x(this.f2253n, true);
            return;
        }
        try {
            ResourcesCompat.getFont(context, i3, new b(this, aVar), null);
        } catch (Resources.NotFoundException unused) {
            this.f2252m = true;
            aVar.w(1);
        } catch (Exception e2) {
            Log.d("TextAppearance", "Error loading font " + this.b, e2);
            this.f2252m = true;
            aVar.w(-3);
        }
    }

    public final void d(Context context, TextPaint textPaint, p000a.a aVar) {
        e(context, textPaint, aVar);
        ColorStateList colorStateList = this.f2249j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : ViewCompat.MEASURED_STATE_MASK);
        ColorStateList colorStateList2 = this.f2243a;
        textPaint.setShadowLayer(this.g, this.f2246e, this.f, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void e(Context context, TextPaint textPaint, p000a.a aVar) {
        int i3 = this.f2251l;
        if ((i3 != 0 ? ResourcesCompat.getCachedFont(context, i3) : null) != null) {
            f(context, textPaint, b(context));
            return;
        }
        a();
        f(context, textPaint, this.f2253n);
        c(context, new c(this, context, textPaint, aVar));
    }

    public final void f(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceX = com.bumptech.glide.c.x(context.getResources().getConfiguration(), typeface);
        if (typefaceX != null) {
            typeface = typefaceX;
        }
        textPaint.setTypeface(typeface);
        int i3 = (~typeface.getStyle()) & this.f2244c;
        textPaint.setFakeBoldText((i3 & 1) != 0);
        textPaint.setTextSkewX((i3 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f2250k);
        if (this.f2247h) {
            textPaint.setLetterSpacing(this.f2248i);
        }
    }
}
