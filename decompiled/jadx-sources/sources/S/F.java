package S;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;
import k.AbstractC0309p0;
import k.C0321w;
import k.X0;
import k.Z0;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1957a;
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1958c;

    public F(String text, p066z1.l form, int i3) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(form, "form");
        this.b = text;
        this.f1958c = form;
        this.f1957a = i3;
    }

    public void a() {
        X0 x2;
        ImageView imageView = (ImageView) this.b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            AbstractC0309p0.a(drawable);
        }
        if (drawable == null || (x2 = (X0) this.f1958c) == null) {
            return;
        }
        C0321w.e(drawable, x2, imageView.getDrawableState());
    }

    public byte[] b(String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        int iOrdinal = ((p066z1.l) this.f1958c).ordinal();
        int i3 = 0;
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal != 2) {
                throw new NoWhenBranchMatchedException();
            }
            int length = content.length();
            byte[] bArr = new byte[length];
            while (i3 < length) {
                bArr[i3] = (byte) content.charAt(i3);
                i3++;
            }
            return bArr;
        }
        byte[] bytes = content.getBytes(Charsets.UTF_16LE);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        byte[] bArrPlus = ArraysKt.plus(new byte[]{-1, -2}, bytes);
        int length2 = bArrPlus.length;
        byte[] bArr2 = new byte[length2];
        while (i3 < length2) {
            bArr2[i3] = (byte) (bArrPlus[i3] ^ this.f1957a);
            i3++;
        }
        return bArr2;
    }

    public void c(AttributeSet attributeSet, int i3) {
        int resourceId;
        ImageView imageView = (ImageView) this.b;
        Context context = imageView.getContext();
        int[] iArr = p008d.a.f;
        Z0 z0E = Z0.e(context, attributeSet, iArr, i3);
        TypedArray typedArray = z0E.b;
        ViewCompat.saveAttributeDataForStyleable(imageView, imageView.getContext(), iArr, attributeSet, z0E.b, i3, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = com.bumptech.glide.d.v(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                AbstractC0309p0.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                ImageViewCompat.setImageTintList(imageView, z0E.a(2));
            }
            if (typedArray.hasValue(3)) {
                ImageViewCompat.setImageTintMode(imageView, AbstractC0309p0.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            z0E.f();
        }
    }

    public F(ImageView imageView) {
        this.f1957a = 0;
        this.b = imageView;
    }
}
