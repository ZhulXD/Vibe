package org.godotengine.godot.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.godotengine.godot.Godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class PermissionsUtil {
    public static final int REQUEST_ALL_PERMISSION_REQ_CODE = 1001;
    public static final int REQUEST_CAMERA_PERMISSION = 2;
    public static final int REQUEST_INSTALL_PACKAGES_REQ_CODE = 3002;
    public static final int REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE = 2002;
    public static final int REQUEST_RECORD_AUDIO_PERMISSION = 1;
    public static final int REQUEST_SINGLE_PERMISSION_REQ_CODE = 1002;
    public static final int REQUEST_VIBRATE_PERMISSION = 3;
    private static final String TAG = "PermissionsUtil";

    private PermissionsUtil() {
    }

    public static String[] getGrantedPermissions(Context context) {
        try {
            ArrayList<String> manifestPermissions = getManifestPermissions(context);
            if (manifestPermissions.isEmpty()) {
                return new String[0];
            }
            ArrayList arrayList = new ArrayList();
            int size = manifestPermissions.size();
            int i3 = 0;
            while (i3 < size) {
                String str = manifestPermissions.get(i3);
                i3++;
                String str2 = str;
                try {
                    if (!str2.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                        PermissionInfo permissionInfo = getPermissionInfo(context, str2);
                        if (((Build.VERSION.SDK_INT >= 28 ? permissionInfo.getProtection() : permissionInfo.protectionLevel) & 1) == 1 && ContextCompat.checkSelfPermission(context, str2) == 0) {
                            arrayList.add(str2);
                        }
                    } else if (Build.VERSION.SDK_INT >= 30 && Environment.isExternalStorageManager()) {
                        arrayList.add(str2);
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.w(TAG, "Unable to identify permission " + str2, e2);
                }
            }
            return (String[]) arrayList.toArray(new String[0]);
        } catch (PackageManager.NameNotFoundException e3) {
            Log.e(TAG, "Unable to retrieve manifest permissions", e3);
            return new String[0];
        }
    }

    public static ArrayList<String> getManifestPermissions(Context context) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
        return packageInfo.requestedPermissions == null ? new ArrayList<>() : new ArrayList<>(Arrays.asList(packageInfo.requestedPermissions));
    }

    private static PermissionInfo getPermissionInfo(Context context, String str) {
        return context.getPackageManager().getPermissionInfo(str, 0);
    }

    public static boolean hasManifestPermission(Context context, String str) {
        try {
            ArrayList<String> manifestPermissions = getManifestPermissions(context);
            int size = manifestPermissions.size();
            int i3 = 0;
            while (i3 < size) {
                String str2 = manifestPermissions.get(i3);
                i3++;
                if (str.equals(str2)) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean requestManifestPermissions(Activity activity) {
        return requestManifestPermissions(activity, null);
    }

    public static boolean requestPermission(String str, Activity activity) {
        int i3 = 1;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        str.getClass();
        switch (str) {
            case "RECORD_AUDIO":
                arrayList.add("android.permission.RECORD_AUDIO");
                break;
            case "VIBRATE":
                arrayList.add("android.permission.VIBRATE");
                i3 = 3;
                break;
            case "CAMERA":
                arrayList.add("android.permission.CAMERA");
                if (Godot.getInstance(activity).hasFeature("horizonos")) {
                    arrayList.add("horizonos.permission.AVATAR_CAMERA");
                    arrayList.add("horizonos.permission.HEADSET_CAMERA");
                }
                i3 = 2;
                break;
            default:
                arrayList.add(str);
                i3 = 1002;
                break;
        }
        return requestPermissions(activity, arrayList, i3);
    }

    public static boolean requestPermissions(Activity activity, List<String> list) {
        return requestPermissions(activity, list, 1001);
    }

    public static boolean requestManifestPermissions(Activity activity, Set<String> set) {
        if (activity == null) {
            return false;
        }
        try {
            ArrayList<String> manifestPermissions = getManifestPermissions(activity);
            if (manifestPermissions.isEmpty()) {
                return true;
            }
            if (set != null && !set.isEmpty()) {
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    manifestPermissions.remove(it.next());
                }
            }
            return requestPermissions(activity, manifestPermissions);
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e(TAG, "Unable to retrieve manifest permissions", e2);
            return false;
        }
    }

    private static boolean requestPermissions(Activity activity, List<String> list, int i3) {
        if (list == null || list.isEmpty()) {
            return true;
        }
        HashSet hashSet = new HashSet();
        boolean z2 = false;
        for (String str : list) {
            try {
                if (str.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                    if (Build.VERSION.SDK_INT >= 30 && !Environment.isExternalStorageManager()) {
                        Log.d(TAG, "Requesting permission " + str);
                        try {
                            Intent intent = new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION");
                            intent.setData(Uri.parse("package:" + activity.getPackageName()));
                            activity.startActivityForResult(intent, REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE);
                        } catch (Exception unused) {
                            activity.startActivityForResult(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"), REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE);
                        }
                        z2 = true;
                    }
                } else if (!str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    PermissionInfo permissionInfo = getPermissionInfo(activity, str);
                    if (((Build.VERSION.SDK_INT >= 28 ? permissionInfo.getProtection() : permissionInfo.protectionLevel) & 1) == 1 && ContextCompat.checkSelfPermission(activity, str) != 0) {
                        Log.d(TAG, "Requesting permission " + str);
                        hashSet.add(str);
                    }
                } else if (Build.VERSION.SDK_INT >= 26 && !activity.getPackageManager().canRequestPackageInstalls()) {
                    try {
                        Intent intent2 = new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
                        intent2.setData(Uri.parse("package:" + activity.getPackageName()));
                        activity.startActivityForResult(intent2, REQUEST_INSTALL_PACKAGES_REQ_CODE);
                        z2 = true;
                    } catch (Exception unused2) {
                        Log.e(TAG, "Unable to request permission android.permission.REQUEST_INSTALL_PACKAGES");
                    }
                }
            } catch (PackageManager.NameNotFoundException e2) {
                Log.w(TAG, "Unable to identify permission " + str, e2);
            }
        }
        if (!hashSet.isEmpty()) {
            activity.requestPermissions((String[]) hashSet.toArray(new String[0]), i3);
            z2 = true;
        }
        return !z2;
    }
}
