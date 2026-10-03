package p011e;

import A1.t0;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import java.io.File;
import p025j0.q;
import p025j0.r;
import p027k0.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y implements r {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4166c;

    public y(Context context, Class cls) {
        this.b = context;
        this.f4166c = cls;
    }

    public void a() {
        t0 t0Var = (t0) this.b;
        if (t0Var != null) {
            try {
                ((B) this.f4166c).f4040l.unregisterReceiver(t0Var);
            } catch (IllegalArgumentException unused) {
            }
            this.b = null;
        }
    }

    public abstract IntentFilter b();

    public abstract int c();

    public abstract void d();

    public void e() {
        a();
        IntentFilter intentFilterB = b();
        if (intentFilterB.countActions() == 0) {
            return;
        }
        if (((t0) this.b) == null) {
            this.b = new t0(1, this);
        }
        ((B) this.f4166c).f4040l.registerReceiver((t0) this.b, intentFilterB);
    }

    @Override // p025j0.r
    public q l(p025j0.y yVar) {
        Context context = (Context) this.b;
        Class cls = (Class) this.f4166c;
        return new d(context, yVar.a(File.class, cls), yVar.a(Uri.class, cls), cls);
    }

    public y(B b) {
        this.f4166c = b;
    }
}
