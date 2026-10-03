package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.os.Build;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class AlarmManagerCompat {

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api21Impl {
        private Api21Impl() {
        }

        public static AlarmManager.AlarmClockInfo createAlarmClockInfo(long j2, PendingIntent pendingIntent) {
            return new AlarmManager.AlarmClockInfo(j2, pendingIntent);
        }

        public static void setAlarmClock(AlarmManager alarmManager, Object obj, PendingIntent pendingIntent) {
            alarmManager.setAlarmClock((AlarmManager.AlarmClockInfo) obj, pendingIntent);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void setAndAllowWhileIdle(AlarmManager alarmManager, int i3, long j2, PendingIntent pendingIntent) {
            alarmManager.setAndAllowWhileIdle(i3, j2, pendingIntent);
        }

        public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i3, long j2, PendingIntent pendingIntent) {
            alarmManager.setExactAndAllowWhileIdle(i3, j2, pendingIntent);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Api31Impl {
        private Api31Impl() {
        }

        public static boolean canScheduleExactAlarms(AlarmManager alarmManager) {
            return alarmManager.canScheduleExactAlarms();
        }
    }

    private AlarmManagerCompat() {
    }

    public static boolean canScheduleExactAlarms(AlarmManager alarmManager) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.canScheduleExactAlarms(alarmManager);
        }
        return true;
    }

    @SuppressLint({"MissingPermission"})
    public static void setAlarmClock(AlarmManager alarmManager, long j2, PendingIntent pendingIntent, PendingIntent pendingIntent2) {
        Api21Impl.setAlarmClock(alarmManager, Api21Impl.createAlarmClockInfo(j2, pendingIntent), pendingIntent2);
    }

    public static void setAndAllowWhileIdle(AlarmManager alarmManager, int i3, long j2, PendingIntent pendingIntent) {
        Api23Impl.setAndAllowWhileIdle(alarmManager, i3, j2, pendingIntent);
    }

    @Deprecated
    public static void setExact(AlarmManager alarmManager, int i3, long j2, PendingIntent pendingIntent) {
        alarmManager.setExact(i3, j2, pendingIntent);
    }

    public static void setExactAndAllowWhileIdle(AlarmManager alarmManager, int i3, long j2, PendingIntent pendingIntent) {
        Api23Impl.setExactAndAllowWhileIdle(alarmManager, i3, j2, pendingIntent);
    }
}
