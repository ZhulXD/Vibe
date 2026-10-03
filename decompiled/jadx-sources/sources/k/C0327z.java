package k;

import A1.C0009b;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.core.util.Preconditions;

/* JADX INFO: renamed from: k.z, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0327z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4947a;
    public final C0009b b;

    public C0327z(TextView textView) {
        this.f4947a = textView;
        C0009b c0009b = new C0009b();
        Preconditions.checkNotNull(textView, "textView cannot be null");
        c0009b.b = new H.g(textView);
        this.b = c0009b;
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((com.bumptech.glide.c) this.b.b).n(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i3) {
        TypedArray typedArrayObtainStyledAttributes = this.f4947a.getContext().obtainStyledAttributes(attributeSet, p008d.a.f3846i, i3, 0);
        try {
            boolean z2 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            d(z2);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z2) {
        ((com.bumptech.glide.c) this.b.b).Q(z2);
    }

    public final void d(boolean z2) {
        ((com.bumptech.glide.c) this.b.b).R(z2);
    }
}
