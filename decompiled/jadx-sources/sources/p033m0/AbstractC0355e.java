package p033m0;

import android.content.Context;
import android.graphics.Bitmap;
import p009d0.m;
import p014f0.F;
import p016g0.b;
import p063y0.n;

/* JADX INFO: renamed from: m0.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0355e implements m {
    @Override // p009d0.m
    public final F a(Context context, F f, int i3, int i4) {
        if (!n.i(i3, i4)) {
            throw new IllegalArgumentException("Cannot apply transformation on width: " + i3 + " or height: " + i4 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
        }
        b bVar = com.bumptech.glide.b.a(context).b;
        Bitmap bitmap = (Bitmap) f.get();
        if (i3 == Integer.MIN_VALUE) {
            i3 = bitmap.getWidth();
        }
        if (i4 == Integer.MIN_VALUE) {
            i4 = bitmap.getHeight();
        }
        Bitmap bitmapC = c(bVar, bitmap, i3, i4);
        return bitmap.equals(bitmapC) ? f : C0354d.b(bitmapC, bVar);
    }

    public abstract Bitmap c(b bVar, Bitmap bitmap, int i3, int i4);
}
