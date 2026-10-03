package org.godotengine.godot.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ProcessPhoenix extends Activity {
    private static final String KEY_MAIN_PROCESS_PID = "phoenix_main_process_pid";
    private static final String KEY_RESTART_ACTIVITY_OPTIONS = "phoenix_restart_activity_options";
    private static final String KEY_RESTART_INTENTS = "phoenix_restart_intents";

    public static void forceQuit(Activity activity) {
        forceQuit(activity, Process.myPid());
    }

    private static Intent getRestartIntent(Context context) {
        String packageName = context.getPackageName();
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(packageName);
        if (launchIntentForPackage != null) {
            return launchIntentForPackage;
        }
        throw new IllegalStateException(E.b.m("Unable to determine default activity for ", packageName, ". Does an activity specify the DEFAULT category in its intent filter?"));
    }

    public static boolean isPhoenixProcess(Context context) {
        int iMyPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == iMyPid && runningAppProcessInfo.processName.endsWith(":phoenix")) {
                return true;
            }
        }
        return false;
    }

    public static void triggerRebirth(Context context) {
        triggerRebirth(context, getRestartIntent(context));
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(KEY_RESTART_INTENTS);
        startActivities((Intent[]) parcelableArrayListExtra.toArray(new Intent[parcelableArrayListExtra.size()]), intent.getBundleExtra(KEY_RESTART_ACTIVITY_OPTIONS));
        forceQuit(this, intent.getIntExtra(KEY_MAIN_PROCESS_PID, -1));
    }

    public static void forceQuit(Activity activity, int i3) {
        Process.killProcess(i3);
        activity.finishAndRemoveTask();
        Runtime.getRuntime().exit(0);
    }

    public static void triggerRebirth(Context context, Intent... intentArr) {
        triggerRebirth(context, null, intentArr);
    }

    public static void triggerRebirth(Context context, Bundle bundle, Intent... intentArr) {
        if (intentArr.length >= 1) {
            intentArr[0].addFlags(268468224);
            Intent intent = new Intent(context, (Class<?>) ProcessPhoenix.class);
            intent.addFlags(268435456);
            intent.putParcelableArrayListExtra(KEY_RESTART_INTENTS, new ArrayList<>(Arrays.asList(intentArr)));
            intent.putExtra(KEY_MAIN_PROCESS_PID, Process.myPid());
            if (bundle != null) {
                intent.putExtra(KEY_RESTART_ACTIVITY_OPTIONS, bundle);
            }
            context.startActivity(intent);
            return;
        }
        throw new IllegalArgumentException("intents cannot be empty");
    }
}
