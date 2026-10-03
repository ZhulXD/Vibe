package p027k0;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import com.bumptech.glide.c;
import p009d0.i;
import p025j0.p;
import p025j0.q;
import p060x0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4957a;
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f4958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Class f4959d;

    public d(Context context, q qVar, q qVar2, Class cls) {
        this.f4957a = context.getApplicationContext();
        this.b = qVar;
        this.f4958c = qVar2;
        this.f4959d = cls;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        Uri uri = (Uri) obj;
        return new p(new b(uri), new c(this.f4957a, this.b, this.f4958c, uri, i3, i4, iVar, this.f4959d));
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && c.u((Uri) obj);
    }
}
