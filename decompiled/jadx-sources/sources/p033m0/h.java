package p033m0;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;
import p009d0.f;
import p016g0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends AbstractC0355e {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(f.f3868a);

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // p033m0.AbstractC0355e
    public final Bitmap c(b bVar, Bitmap bitmap, int i3, int i4) {
        float width;
        float height;
        Paint paint = z.f5149a;
        if (bitmap.getWidth() == i3 && bitmap.getHeight() == i4) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i4 > bitmap.getHeight() * i3) {
            width = i4 / bitmap.getHeight();
            width2 = (i3 - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i3 / bitmap.getWidth();
            height = (i4 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmapE = bVar.e(i3, i4, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapE.setHasAlpha(bitmap.hasAlpha());
        z.a(bitmap, bitmapE, matrix);
        return bitmapE;
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        return obj instanceof h;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return -599754482;
    }
}
