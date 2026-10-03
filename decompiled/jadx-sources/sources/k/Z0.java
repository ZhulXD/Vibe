package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4806a;
    public final TypedArray b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f4807c;

    public Z0(Context context, TypedArray typedArray) {
        this.f4806a = context;
        this.b = typedArray;
    }

    public static Z0 e(Context context, AttributeSet attributeSet, int[] iArr, int i3) {
        return new Z0(context, context.obtainStyledAttributes(attributeSet, iArr, i3, 0));
    }

    public final ColorStateList a(int i3) {
        int resourceId;
        ColorStateList colorStateList;
        TypedArray typedArray = this.b;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0 || (colorStateList = ContextCompat.getColorStateList(this.f4806a, resourceId)) == null) ? typedArray.getColorStateList(i3) : colorStateList;
    }

    public final Drawable b(int i3) {
        int resourceId;
        TypedArray typedArray = this.b;
        return (!typedArray.hasValue(i3) || (resourceId = typedArray.getResourceId(i3, 0)) == 0) ? typedArray.getDrawable(i3) : com.bumptech.glide.d.v(this.f4806a, resourceId);
    }

    public final Drawable c(int i3) {
        int resourceId;
        Drawable drawableD;
        if (!this.b.hasValue(i3) || (resourceId = this.b.getResourceId(i3, 0)) == 0) {
            return null;
        }
        C0321w c0321wA = C0321w.a();
        Context context = this.f4806a;
        synchronized (c0321wA) {
            drawableD = c0321wA.f4935a.d(context, resourceId, true);
        }
        return drawableD;
    }

    public final Typeface d(int i3, int i4, V v2) {
        int resourceId = this.b.getResourceId(i3, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f4807c == null) {
            this.f4807c = new TypedValue();
        }
        return ResourcesCompat.getFont(this.f4806a, resourceId, this.f4807c, i4, v2);
    }

    public final void f() {
        this.b.recycle();
    }
}
