package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: renamed from: k.q, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0310q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f4898a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public X0 f4900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public X0 f4901e;
    public X0 f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4899c = -1;
    public final C0321w b = C0321w.a();

    public C0310q(View view) {
        this.f4898a = view;
    }

    public final void a() {
        View view = this.f4898a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.f4900d != null) {
                if (this.f == null) {
                    this.f = new X0();
                }
                X0 x2 = this.f;
                x2.f4793a = null;
                x2.f4795d = false;
                x2.b = null;
                x2.f4794c = false;
                ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
                if (backgroundTintList != null) {
                    x2.f4795d = true;
                    x2.f4793a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = ViewCompat.getBackgroundTintMode(view);
                if (backgroundTintMode != null) {
                    x2.f4794c = true;
                    x2.b = backgroundTintMode;
                }
                if (x2.f4795d || x2.f4794c) {
                    C0321w.e(background, x2, view.getDrawableState());
                    return;
                }
            }
            X0 x3 = this.f4901e;
            if (x3 != null) {
                C0321w.e(background, x3, view.getDrawableState());
                return;
            }
            X0 x4 = this.f4900d;
            if (x4 != null) {
                C0321w.e(background, x4, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        X0 x2 = this.f4901e;
        if (x2 != null) {
            return x2.f4793a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        X0 x2 = this.f4901e;
        if (x2 != null) {
            return x2.b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i3) {
        ColorStateList colorStateListF;
        View view = this.f4898a;
        Context context = view.getContext();
        int[] iArr = p008d.a.f3863z;
        Z0 z0E = Z0.e(context, attributeSet, iArr, i3);
        TypedArray typedArray = z0E.b;
        View view2 = this.f4898a;
        ViewCompat.saveAttributeDataForStyleable(view2, view2.getContext(), iArr, attributeSet, z0E.b, i3, 0);
        try {
            if (typedArray.hasValue(0)) {
                this.f4899c = typedArray.getResourceId(0, -1);
                C0321w c0321w = this.b;
                Context context2 = view.getContext();
                int i4 = this.f4899c;
                synchronized (c0321w) {
                    colorStateListF = c0321w.f4935a.f(context2, i4);
                }
                if (colorStateListF != null) {
                    g(colorStateListF);
                }
            }
            if (typedArray.hasValue(1)) {
                ViewCompat.setBackgroundTintList(view, z0E.a(1));
            }
            if (typedArray.hasValue(2)) {
                ViewCompat.setBackgroundTintMode(view, AbstractC0309p0.c(typedArray.getInt(2, -1), null));
            }
            z0E.f();
        } catch (Throwable th) {
            z0E.f();
            throw th;
        }
    }

    public final void e() {
        this.f4899c = -1;
        g(null);
        a();
    }

    public final void f(int i3) {
        ColorStateList colorStateListF;
        this.f4899c = i3;
        C0321w c0321w = this.b;
        if (c0321w != null) {
            Context context = this.f4898a.getContext();
            synchronized (c0321w) {
                colorStateListF = c0321w.f4935a.f(context, i3);
            }
        } else {
            colorStateListF = null;
        }
        g(colorStateListF);
        a();
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f4900d == null) {
                this.f4900d = new X0();
            }
            X0 x2 = this.f4900d;
            x2.f4793a = colorStateList;
            x2.f4795d = true;
        } else {
            this.f4900d = null;
        }
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f4901e == null) {
            this.f4901e = new X0();
        }
        X0 x2 = this.f4901e;
        x2.f4793a = colorStateList;
        x2.f4795d = true;
        a();
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f4901e == null) {
            this.f4901e = new X0();
        }
        X0 x2 = this.f4901e;
        x2.b = mode;
        x2.f4794c = true;
        a();
    }
}
