package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.core.os.UserManagerCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p046s.g;
import p046s.h;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class PackageManagerCompat {

    @SuppressLint({"ActionValue"})
    public static final String ACTION_PERMISSION_REVOCATION_SETTINGS = "android.intent.action.AUTO_REVOKE_PERMISSIONS";
    public static final String LOG_TAG = "PackageManagerCompat";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api30Impl {
        private Api30Impl() {
        }

        public static boolean areUnusedAppRestrictionsEnabled(Context context) {
            return !context.getPackageManager().isAutoRevokeWhitelisted();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface UnusedAppRestrictionsStatus {
    }

    private PackageManagerCompat() {
    }

    public static boolean areUnusedAppRestrictionsAvailable(PackageManager packageManager) {
        int i3 = Build.VERSION.SDK_INT;
        return (i3 >= 30) || ((i3 < 30) && (getPermissionRevocationVerifierApp(packageManager) != null));
    }

    public static String getPermissionRevocationVerifierApp(PackageManager packageManager) {
        String str = null;
        Iterator<ResolveInfo> it = packageManager.queryIntentActivities(new Intent(ACTION_PERMISSION_REVOCATION_SETTINGS).setData(Uri.fromParts("package", "com.example", null)), 0).iterator();
        while (it.hasNext()) {
            String str2 = it.next().activityInfo.packageName;
            if (packageManager.checkPermission("android.permission.PACKAGE_VERIFICATION_AGENT", str2) == 0) {
                if (str != null) {
                    return str;
                }
                str = str2;
            }
        }
        return str;
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.core.content.e, java.lang.Runnable] */
    public static p020h1.a getUnusedAppRestrictionsStatus(Context context) {
        h hVar = new h();
        if (!UserManagerCompat.isUserUnlocked(context)) {
            hVar.g(0);
            Log.e(LOG_TAG, "User is in locked direct boot mode");
            return hVar;
        }
        if (!areUnusedAppRestrictionsAvailable(context.getPackageManager())) {
            hVar.g(1);
            return hVar;
        }
        int i3 = context.getApplicationInfo().targetSdkVersion;
        if (i3 < 30) {
            hVar.g(0);
            Log.e(LOG_TAG, "Target SDK version below API 30");
            return hVar;
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 31) {
            if (Api30Impl.areUnusedAppRestrictionsEnabled(context)) {
                hVar.g(Integer.valueOf(i3 >= 31 ? 5 : 4));
                return hVar;
            }
            hVar.g(2);
            return hVar;
        }
        if (i4 == 30) {
            hVar.g(Integer.valueOf(Api30Impl.areUnusedAppRestrictionsEnabled(context) ? 4 : 2));
            return hVar;
        }
        final UnusedAppRestrictionsBackportServiceConnection unusedAppRestrictionsBackportServiceConnection = new UnusedAppRestrictionsBackportServiceConnection(context);
        ?? r7 = new Runnable() { // from class: androidx.core.content.e
            @Override // java.lang.Runnable
            public final void run() {
                unusedAppRestrictionsBackportServiceConnection.disconnectFromService();
            }
        };
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        executorServiceNewSingleThreadExecutor.getClass();
        p046s.c cVar = hVar.f5314c;
        p046s.c cVar2 = p046s.c.f5304d;
        if (cVar != cVar2) {
            p046s.c cVar3 = new p046s.c(r7, executorServiceNewSingleThreadExecutor);
            do {
                cVar3.f5306c = cVar;
                if (!g.g.g(hVar, cVar, cVar3)) {
                    cVar = hVar.f5314c;
                }
            } while (cVar != cVar2);
            g.c(r7, executorServiceNewSingleThreadExecutor);
        } else {
            g.c(r7, executorServiceNewSingleThreadExecutor);
        }
        unusedAppRestrictionsBackportServiceConnection.connectAndFetchResult(hVar);
        return hVar;
    }
}
