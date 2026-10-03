package N;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p046s.h f1407a = new p046s.h();
    public static final Object b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Y0.e f1408c = null;

    public static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? j.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static Y0.e b() {
        Y0.e eVar = new Y0.e(12);
        f1408c = eVar;
        f1407a.g(eVar);
        return f1408c;
    }

    public static void c(Context context, boolean z2) {
        k kVarA;
        int i3;
        if (z2 || f1408c == null) {
            synchronized (b) {
                if (!z2) {
                    try {
                        if (f1408c != null) {
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 28 && i4 != 30) {
                    File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length = file.length();
                    int i5 = 0;
                    boolean z3 = file.exists() && length > 0;
                    File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    long length2 = file2.length();
                    boolean z4 = file2.exists() && length2 > 0;
                    try {
                        long jA = a(context);
                        File file3 = new File(context.getFilesDir(), "profileInstalled");
                        if (file3.exists()) {
                            try {
                                kVarA = k.a(file3);
                            } catch (IOException unused) {
                                b();
                                return;
                            }
                        } else {
                            kVarA = null;
                        }
                        if (kVarA != null && kVarA.f1405c == jA && (i3 = kVarA.b) != 2) {
                            i5 = i3;
                        } else if (z3) {
                            i5 = 1;
                        } else if (z4) {
                            i5 = 2;
                        }
                        if (z2 && z4 && i5 != 1) {
                            i5 = 2;
                        }
                        if (kVarA != null && kVarA.b == 2 && i5 == 1 && length < kVarA.f1406d) {
                            i5 = 3;
                        }
                        k kVar = new k(1, i5, jA, length2);
                        if (kVarA == null || !kVarA.equals(kVar)) {
                            try {
                                kVar.b(file3);
                            } catch (IOException unused2) {
                            }
                        }
                        b();
                        return;
                    } catch (PackageManager.NameNotFoundException unused3) {
                        b();
                        return;
                    }
                }
                b();
            }
        }
    }
}
