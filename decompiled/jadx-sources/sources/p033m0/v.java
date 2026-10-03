package p033m0;

import android.graphics.Bitmap;
import java.security.MessageDigest;
import p009d0.f;
import p016g0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v extends AbstractC0355e {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(f.f3868a);

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // p033m0.AbstractC0355e
    public final Bitmap c(b bVar, Bitmap bitmap, int i3, int i4) {
        return z.b(bVar, bitmap, i3, i4);
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        return obj instanceof v;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return 1572326941;
    }
}
