package p011e;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.LocaleListCompat;
import java.lang.ref.WeakReference;
import p041q.a;
import p041q.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p {
    public static final n b = new n(new o(0));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f4152c = -100;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static LocaleListCompat f4153d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static LocaleListCompat f4154e = null;
    public static Boolean f = null;
    public static boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final f f4155h = new f(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f4156i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f4157j = new Object();

    public static boolean d(Context context) {
        if (f == null) {
            try {
                int i3 = H.b;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) H.class), G.a() | 128).metaData;
                if (bundle != null) {
                    f = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f = Boolean.FALSE;
            }
        }
        return f.booleanValue();
    }

    public static void g(B b3) {
        synchronized (f4156i) {
            try {
                f fVar = f4155h;
                fVar.getClass();
                a aVar = new a(fVar);
                while (aVar.hasNext()) {
                    p pVar = (p) ((WeakReference) aVar.next()).get();
                    if (pVar == b3 || pVar == null) {
                        aVar.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void b();

    public abstract void e();

    public abstract void f();

    public abstract boolean i(int i3);

    public abstract void j(int i3);

    public abstract void k(View view);

    public abstract void l(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void m(CharSequence charSequence);
}
