package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableImageSourceView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class A extends ImageButton implements TintableBackgroundView, TintableImageSourceView {
    public final C0310q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final S.F f4653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4654d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(Context context, AttributeSet attributeSet, int i3) {
        super(context, attributeSet, i3);
        W0.a(context);
        this.f4654d = false;
        V0.a(this, getContext());
        C0310q c0310q = new C0310q(this);
        this.b = c0310q;
        c0310q.d(attributeSet, i3);
        S.F f = new S.F(this);
        this.f4653c = f;
        f.c(attributeSet, i3);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.a();
        }
        S.F f = this.f4653c;
        if (f != null) {
            f.a();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public ColorStateList getSupportBackgroundTintList() {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            return c0310q.b();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            return c0310q.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public ColorStateList getSupportImageTintList() {
        X0 x2;
        S.F f = this.f4653c;
        if (f == null || (x2 = (X0) f.f1958c) == null) {
            return null;
        }
        return x2.f4793a;
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public PorterDuff.Mode getSupportImageTintMode() {
        X0 x2;
        S.F f = this.f4653c;
        if (f == null || (x2 = (X0) f.f1958c) == null) {
            return null;
        }
        return x2.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return !(((ImageView) this.f4653c.b).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i3) {
        super.setBackgroundResource(i3);
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.f(i3);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        S.F f = this.f4653c;
        if (f != null) {
            f.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        S.F f = this.f4653c;
        if (f != null && drawable != null && !this.f4654d) {
            f.f1957a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (f != null) {
            f.a();
            if (this.f4654d) {
                return;
            }
            ImageView imageView = (ImageView) f.b;
            if (imageView.getDrawable() != null) {
                imageView.getDrawable().setLevel(f.f1957a);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i3) {
        super.setImageLevel(i3);
        this.f4654d = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i3) {
        S.F f = this.f4653c;
        ImageView imageView = (ImageView) f.b;
        if (i3 != 0) {
            Drawable drawableV = com.bumptech.glide.d.v(imageView.getContext(), i3);
            if (drawableV != null) {
                AbstractC0309p0.a(drawableV);
            }
            imageView.setImageDrawable(drawableV);
        } else {
            imageView.setImageDrawable(null);
        }
        f.a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        S.F f = this.f4653c;
        if (f != null) {
            f.a();
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.h(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0310q c0310q = this.b;
        if (c0310q != null) {
            c0310q.i(mode);
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintList(ColorStateList colorStateList) {
        S.F f = this.f4653c;
        if (f != null) {
            if (((X0) f.f1958c) == null) {
                f.f1958c = new X0();
            }
            X0 x2 = (X0) f.f1958c;
            x2.f4793a = colorStateList;
            x2.f4795d = true;
            f.a();
        }
    }

    @Override // androidx.core.widget.TintableImageSourceView
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        S.F f = this.f4653c;
        if (f != null) {
            if (((X0) f.f1958c) == null) {
                f.f1958c = new X0();
            }
            X0 x2 = (X0) f.f1958c;
            x2.b = mode;
            x2.f4794c = true;
            f.a();
        }
    }
}
