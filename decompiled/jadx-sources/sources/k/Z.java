package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.util.TypedValueCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4796a;
    public X0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public X0 f4797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public X0 f4798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public X0 f4799e;
    public X0 f;
    public X0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public X0 f4800h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0295i0 f4801i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4802j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4803k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f4804l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4805m;

    public Z(TextView textView) {
        this.f4796a = textView;
        this.f4801i = new C0295i0(textView);
    }

    public static X0 c(Context context, C0321w c0321w, int i3) {
        ColorStateList colorStateListF;
        synchronized (c0321w) {
            colorStateListF = c0321w.f4935a.f(context, i3);
        }
        if (colorStateListF == null) {
            return null;
        }
        X0 x2 = new X0();
        x2.f4795d = true;
        x2.f4793a = colorStateListF;
        return x2;
    }

    public final void a(Drawable drawable, X0 x2) {
        if (drawable == null || x2 == null) {
            return;
        }
        C0321w.e(drawable, x2, this.f4796a.getDrawableState());
    }

    public final void b() {
        X0 x2 = this.b;
        TextView textView = this.f4796a;
        if (x2 != null || this.f4797c != null || this.f4798d != null || this.f4799e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.f4797c);
            a(compoundDrawables[2], this.f4798d);
            a(compoundDrawables[3], this.f4799e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    public final ColorStateList d() {
        X0 x2 = this.f4800h;
        if (x2 != null) {
            return x2.f4793a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        X0 x2 = this.f4800h;
        if (x2 != null) {
            return x2.b;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:228:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:230:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:233:0x03b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:234:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:236:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:239:? A[RETURN, SYNTHETIC] */
    public final void f(AttributeSet attributeSet, int i3) {
        boolean z2;
        boolean z3;
        String string;
        String string2;
        int i4;
        float dimensionPixelSize;
        int i5;
        ColorStateList colorStateList;
        int resourceId;
        int i6;
        int resourceId2;
        TextView textView = this.f4796a;
        Context context = textView.getContext();
        C0321w c0321wA = C0321w.a();
        int[] iArr = p008d.a.f3845h;
        Z0 z0E = Z0.e(context, attributeSet, iArr, i3);
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, z0E.b, i3, 0);
        TypedArray typedArray = z0E.b;
        int resourceId3 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = c(context, c0321wA, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.f4797c = c(context, c0321wA, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.f4798d = c(context, c0321wA, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.f4799e = c(context, c0321wA, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f = c(context, c0321wA, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.g = c(context, c0321wA, typedArray.getResourceId(6, 0));
        }
        z0E.f();
        boolean z4 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = p008d.a.f3860w;
        if (resourceId3 != -1) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId3, iArr2);
            Z0 z5 = new Z0(context, typedArrayObtainStyledAttributes);
            if (z4 || !typedArrayObtainStyledAttributes.hasValue(14)) {
                z2 = false;
                z3 = false;
            } else {
                z3 = typedArrayObtainStyledAttributes.getBoolean(14, false);
                z2 = true;
            }
            m(context, z5);
            int i7 = Build.VERSION.SDK_INT;
            string2 = typedArrayObtainStyledAttributes.hasValue(15) ? typedArrayObtainStyledAttributes.getString(15) : null;
            string = (i7 < 26 || !typedArrayObtainStyledAttributes.hasValue(13)) ? null : typedArrayObtainStyledAttributes.getString(13);
            z5.f();
        } else {
            z2 = false;
            z3 = false;
            string = null;
            string2 = null;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i3, 0);
        Z0 z6 = new Z0(context, typedArrayObtainStyledAttributes2);
        if (!z4 && typedArrayObtainStyledAttributes2.hasValue(14)) {
            z3 = typedArrayObtainStyledAttributes2.getBoolean(14, false);
            z2 = true;
        }
        boolean z7 = z3;
        int i8 = Build.VERSION.SDK_INT;
        if (typedArrayObtainStyledAttributes2.hasValue(15)) {
            string2 = typedArrayObtainStyledAttributes2.getString(15);
        }
        if (i8 >= 26 && typedArrayObtainStyledAttributes2.hasValue(13)) {
            string = typedArrayObtainStyledAttributes2.getString(13);
        }
        if (i8 >= 28 && typedArrayObtainStyledAttributes2.hasValue(0) && typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m(context, z6);
        z6.f();
        if (!z4 && z2) {
            textView.setAllCaps(z7);
        }
        Typeface typeface = this.f4804l;
        if (typeface != null) {
            if (this.f4803k == -1) {
                textView.setTypeface(typeface, this.f4802j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (string != null) {
            X.d(textView, string);
        }
        if (string2 != null) {
            W.b(textView, W.a(string2));
        }
        C0295i0 c0295i0 = this.f4801i;
        Context context2 = c0295i0.f4837j;
        int[] iArr3 = p008d.a.f3846i;
        TypedArray typedArrayObtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr3, i3, 0);
        TextView textView2 = c0295i0.f4836i;
        ViewCompat.saveAttributeDataForStyleable(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes3, i3, 0);
        if (typedArrayObtainStyledAttributes3.hasValue(5)) {
            c0295i0.f4831a = typedArrayObtainStyledAttributes3.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes3.hasValue(4) ? typedArrayObtainStyledAttributes3.getDimension(4, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes3.hasValue(2) ? typedArrayObtainStyledAttributes3.getDimension(2, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes3.hasValue(1) ? typedArrayObtainStyledAttributes3.getDimension(1, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes3.hasValue(3) && (resourceId2 = typedArrayObtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes3.getResources().obtainTypedArray(resourceId2);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i9 = 0; i9 < length; i9++) {
                    iArr4[i9] = typedArrayObtainTypedArray.getDimensionPixelSize(i9, -1);
                }
                c0295i0.f = C0295i0.b(iArr4);
                c0295i0.i();
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes3.recycle();
        if (!c0295i0.j()) {
            c0295i0.f4831a = 0;
        } else if (c0295i0.f4831a == 1) {
            if (!c0295i0.g) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    i6 = 2;
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i6 = 2;
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(i6, 112.0f, displayMetrics);
                }
                float f = dimension3;
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                c0295i0.k(dimension2, f, dimension);
            }
            c0295i0.h();
        }
        if (q1.f4903c && c0295i0.f4831a != 0) {
            int[] iArr5 = c0295i0.f;
            if (iArr5.length > 0) {
                if (X.a(textView) != -1.0f) {
                    X.b(textView, Math.round(c0295i0.f4833d), Math.round(c0295i0.f4834e), Math.round(c0295i0.f4832c), 0);
                } else {
                    X.c(textView, iArr5, 0);
                }
            }
        }
        TypedArray typedArrayObtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr3);
        int resourceId4 = typedArrayObtainStyledAttributes4.getResourceId(8, -1);
        Drawable drawableB = resourceId4 != -1 ? c0321wA.b(context, resourceId4) : null;
        int resourceId5 = typedArrayObtainStyledAttributes4.getResourceId(13, -1);
        Drawable drawableB2 = resourceId5 != -1 ? c0321wA.b(context, resourceId5) : null;
        int resourceId6 = typedArrayObtainStyledAttributes4.getResourceId(9, -1);
        Drawable drawableB3 = resourceId6 != -1 ? c0321wA.b(context, resourceId6) : null;
        int resourceId7 = typedArrayObtainStyledAttributes4.getResourceId(6, -1);
        Drawable drawableB4 = resourceId7 != -1 ? c0321wA.b(context, resourceId7) : null;
        int resourceId8 = typedArrayObtainStyledAttributes4.getResourceId(10, -1);
        Drawable drawableB5 = resourceId8 != -1 ? c0321wA.b(context, resourceId8) : null;
        int resourceId9 = typedArrayObtainStyledAttributes4.getResourceId(7, -1);
        Drawable drawableB6 = resourceId9 != -1 ? c0321wA.b(context, resourceId9) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawableB5 == null) {
                drawableB5 = compoundDrawablesRelative[0];
            }
            if (drawableB2 == null) {
                drawableB2 = compoundDrawablesRelative[1];
            }
            if (drawableB6 == null) {
                drawableB6 = compoundDrawablesRelative[2];
            }
            if (drawableB4 == null) {
                drawableB4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative2[0];
            if (drawable == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawablesRelative2[1];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawablesRelative2[3];
                }
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawableB2, compoundDrawablesRelative2[2], drawableB4);
            }
        }
        if (typedArrayObtainStyledAttributes4.hasValue(11)) {
            if (!typedArrayObtainStyledAttributes4.hasValue(11) || (resourceId = typedArrayObtainStyledAttributes4.getResourceId(11, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(context, resourceId)) == null) {
                colorStateList = typedArrayObtainStyledAttributes4.getColorStateList(11);
            }
            TextViewCompat.setCompoundDrawableTintList(textView, colorStateList);
        }
        if (typedArrayObtainStyledAttributes4.hasValue(12)) {
            TextViewCompat.setCompoundDrawableTintMode(textView, AbstractC0309p0.c(typedArrayObtainStyledAttributes4.getInt(12, -1), null));
        }
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(15, -1);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes4.getDimensionPixelSize(18, -1);
        if (typedArrayObtainStyledAttributes4.hasValue(19)) {
            TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes4.peekValue(19);
            if (typedValuePeekValue == null || typedValuePeekValue.type != 5) {
                i4 = -1;
                dimensionPixelSize = typedArrayObtainStyledAttributes4.getDimensionPixelSize(19, -1);
            } else {
                int unitFromComplexDimension = TypedValueCompat.getUnitFromComplexDimension(typedValuePeekValue.data);
                dimensionPixelSize = TypedValue.complexToFloat(typedValuePeekValue.data);
                i5 = unitFromComplexDimension;
                i4 = -1;
            }
            typedArrayObtainStyledAttributes4.recycle();
            if (dimensionPixelSize2 != i4) {
                TextViewCompat.setFirstBaselineToTopHeight(textView, dimensionPixelSize2);
            }
            if (dimensionPixelSize3 != i4) {
                TextViewCompat.setLastBaselineToBottomHeight(textView, dimensionPixelSize3);
            }
            if (dimensionPixelSize != -1.0f) {
                if (i5 == i4) {
                    TextViewCompat.setLineHeight(textView, (int) dimensionPixelSize);
                } else {
                    TextViewCompat.setLineHeight(textView, i5, dimensionPixelSize);
                }
            }
        }
        i4 = -1;
        dimensionPixelSize = -1.0f;
        i5 = i4;
        typedArrayObtainStyledAttributes4.recycle();
        if (dimensionPixelSize2 != i4) {
            TextViewCompat.setFirstBaselineToTopHeight(textView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != i4) {
            TextViewCompat.setLastBaselineToBottomHeight(textView, dimensionPixelSize3);
        }
        if (dimensionPixelSize != -1.0f) {
            if (i5 == i4) {
                TextViewCompat.setLineHeight(textView, (int) dimensionPixelSize);
            } else {
                TextViewCompat.setLineHeight(textView, i5, dimensionPixelSize);
            }
        }
    }

    public final void g(Context context, int i3) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i3, p008d.a.f3860w);
        Z0 z2 = new Z0(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f4796a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        int i4 = Build.VERSION.SDK_INT;
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m(context, z2);
        if (i4 >= 26 && typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            X.d(textView, string);
        }
        z2.f();
        Typeface typeface = this.f4804l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f4802j);
        }
    }

    public final void h(int i3, int i4, int i5, int i6) {
        C0295i0 c0295i0 = this.f4801i;
        if (c0295i0.j()) {
            DisplayMetrics displayMetrics = c0295i0.f4837j.getResources().getDisplayMetrics();
            c0295i0.k(TypedValue.applyDimension(i6, i3, displayMetrics), TypedValue.applyDimension(i6, i4, displayMetrics), TypedValue.applyDimension(i6, i5, displayMetrics));
            if (c0295i0.h()) {
                c0295i0.a();
            }
        }
    }

    public final void i(int[] iArr, int i3) {
        C0295i0 c0295i0 = this.f4801i;
        if (c0295i0.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i3 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = c0295i0.f4837j.getResources().getDisplayMetrics();
                    for (int i4 = 0; i4 < length; i4++) {
                        iArrCopyOf[i4] = Math.round(TypedValue.applyDimension(i3, iArr[i4], displayMetrics));
                    }
                }
                c0295i0.f = C0295i0.b(iArrCopyOf);
                if (!c0295i0.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                c0295i0.g = false;
            }
            if (c0295i0.h()) {
                c0295i0.a();
            }
        }
    }

    public final void j(int i3) {
        C0295i0 c0295i0 = this.f4801i;
        if (c0295i0.j()) {
            if (i3 == 0) {
                c0295i0.f4831a = 0;
                c0295i0.f4833d = -1.0f;
                c0295i0.f4834e = -1.0f;
                c0295i0.f4832c = -1.0f;
                c0295i0.f = new int[0];
                c0295i0.b = false;
                return;
            }
            if (i3 != 1) {
                throw new IllegalArgumentException(E.b.i(i3, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = c0295i0.f4837j.getResources().getDisplayMetrics();
            c0295i0.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (c0295i0.h()) {
                c0295i0.a();
            }
        }
    }

    public final void k(ColorStateList colorStateList) {
        if (this.f4800h == null) {
            this.f4800h = new X0();
        }
        X0 x2 = this.f4800h;
        x2.f4793a = colorStateList;
        x2.f4795d = colorStateList != null;
        this.b = x2;
        this.f4797c = x2;
        this.f4798d = x2;
        this.f4799e = x2;
        this.f = x2;
        this.g = x2;
    }

    public final void l(PorterDuff.Mode mode) {
        if (this.f4800h == null) {
            this.f4800h = new X0();
        }
        X0 x2 = this.f4800h;
        x2.b = mode;
        x2.f4794c = mode != null;
        this.b = x2;
        this.f4797c = x2;
        this.f4798d = x2;
        this.f4799e = x2;
        this.f = x2;
        this.g = x2;
    }

    public final void m(Context context, Z0 z2) {
        String string;
        int i3 = this.f4802j;
        TypedArray typedArray = z2.b;
        this.f4802j = typedArray.getInt(2, i3);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 28) {
            int i5 = typedArray.getInt(11, -1);
            this.f4803k = i5;
            if (i5 != -1) {
                this.f4802j &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f4805m = false;
                int i6 = typedArray.getInt(1, 1);
                if (i6 == 1) {
                    this.f4804l = Typeface.SANS_SERIF;
                    return;
                } else if (i6 == 2) {
                    this.f4804l = Typeface.SERIF;
                    return;
                } else {
                    if (i6 != 3) {
                        return;
                    }
                    this.f4804l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f4804l = null;
        int i7 = typedArray.hasValue(12) ? 12 : 10;
        int i8 = this.f4803k;
        int i9 = this.f4802j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceD = z2.d(i7, this.f4802j, new V(this, i8, i9, new WeakReference(this.f4796a)));
                if (typefaceD != null) {
                    if (i4 < 28 || this.f4803k == -1) {
                        this.f4804l = typefaceD;
                    } else {
                        this.f4804l = Y.a(Typeface.create(typefaceD, 0), this.f4803k, (this.f4802j & 2) != 0);
                    }
                }
                this.f4805m = this.f4804l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f4804l != null || (string = typedArray.getString(i7)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f4803k == -1) {
            this.f4804l = Typeface.create(string, this.f4802j);
        } else {
            this.f4804l = Y.a(Typeface.create(string, 0), this.f4803k, (this.f4802j & 2) != 0);
        }
    }
}
