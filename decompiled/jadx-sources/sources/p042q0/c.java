package p042q0;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.b;
import java.security.MessageDigest;
import p009d0.m;
import p014f0.F;
import p033m0.C0354d;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements m {
    public final m b;

    public c(m mVar) {
        f.c(mVar, "Argument must not be null");
        this.b = mVar;
    }

    @Override // p009d0.m
    public final F a(Context context, F f, int i3, int i4) {
        b bVar = (b) f.get();
        F c0354d = new C0354d(((f) bVar.b.b).f5284l, b.a(context).b);
        m mVar = this.b;
        F fA = mVar.a(context, c0354d, i3, i4);
        if (!c0354d.equals(fA)) {
            c0354d.e();
        }
        ((f) bVar.b.b).c(mVar, (Bitmap) fA.get());
        return f;
    }

    @Override // p009d0.f
    public final void b(MessageDigest messageDigest) {
        this.b.b(messageDigest);
    }

    @Override // p009d0.f
    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            return this.b.equals(((c) obj).b);
        }
        return false;
    }

    @Override // p009d0.f
    public final int hashCode() {
        return this.b.hashCode();
    }
}
