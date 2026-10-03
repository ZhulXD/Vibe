package p033m0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;
import p009d0.m;
import p014f0.F;
import p016g0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t implements m {
    public final m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5140c;

    public t(m mVar, boolean z2) {
        this.b = mVar;
        this.f5140c = z2;
    }

    @Override // p009d0.m
    public final F a(Context context, F f, int i3, int i4) {
        b bVar = com.bumptech.glide.b.a(context).b;
        Drawable drawable = (Drawable) f.get();
        C0354d c0354dA = s.a(bVar, drawable, i3, i4);
        if (c0354dA != null) {
            F fA = this.b.a(context, c0354dA, i3, i4);
            if (!fA.equals(c0354dA)) {
                return new C0354d(context.getResources(), fA);
            }
            fA.e();
            return f;
        }
        if (!this.f5140c) {
            return f;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        this.b.b(messageDigest);
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            return this.b.equals(((t) obj).b);
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return this.b.hashCode();
    }
}
