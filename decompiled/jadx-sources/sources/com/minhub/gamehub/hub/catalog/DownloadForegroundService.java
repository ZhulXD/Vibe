package com.minhub.gamehub.hub.catalog;

import A1.C0033n;
import A1.C0035p;
import android.R;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import com.minhub.gamehub.hub.OnlineDownloadsActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\"\u0010\u0010\u001a\u00020\u00112\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\"\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\u000fH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001d"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;", "Landroid/app/Service;", "<init>", "()V", "notifManager", "Landroid/app/NotificationManager;", "getNotifManager", "()Landroid/app/NotificationManager;", "notifManager$delegate", "Lkotlin/Lazy;", "onBind", "Landroid/os/IBinder;", "intent", "Landroid/content/Intent;", "onCreate", "", "onStartCommand", "", "flags", "startId", "buildNotification", "Landroid/app/Notification;", "title", "", NotificationCompat.CATEGORY_PROGRESS, "indeterminate", "", "ensureNotificationChannel", "Companion", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDownloadForegroundService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadForegroundService.kt\ncom/minhub/gamehub/hub/catalog/DownloadForegroundService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n774#2:114\n865#2,2:115\n774#2:117\n865#2,2:118\n*S KotlinDebug\n*F\n+ 1 DownloadForegroundService.kt\ncom/minhub/gamehub/hub/catalog/DownloadForegroundService\n*L\n37#1:114\n37#1:115,2\n38#1:117\n38#1:118,2\n*E\n"})
public final class DownloadForegroundService extends Service {
    private static final String CHANNEL_ID = "minhub_downloads";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int NOTIF_ID = 1001;

    /* JADX INFO: renamed from: notifManager$delegate, reason: from kotlin metadata */
    private final Lazy notifManager = LazyKt.lazy(new C0033n(9, this));

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;", "", "<init>", "()V", "NOTIF_ID", "", "CHANNEL_ID", "", "start", "", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void start(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, (Class<?>) DownloadForegroundService.class);
            if (Build.VERSION.SDK_INT >= 26) {
                context.startForegroundService(intent);
            } else {
                context.startService(intent);
            }
        }

        private Companion() {
        }
    }

    private final Notification buildNotification(String title, int progress, boolean indeterminate) {
        String string;
        Intent intent = new Intent(this, (Class<?>) OnlineDownloadsActivity.class);
        intent.setFlags(536870912);
        Unit unit = Unit.INSTANCE;
        PendingIntent activity = PendingIntent.getActivity(this, 0, intent, 201326592);
        NotificationCompat.Builder contentTitle = new NotificationCompat.Builder(this, CHANNEL_ID).setSmallIcon(R.drawable.stat_sys_download).setContentTitle(title);
        if (indeterminate) {
            string = getString(com.minhub.gamehub.R.string.download_notif_queued);
        } else {
            string = progress + "%";
        }
        Notification notificationBuild = contentTitle.setContentText(string).setProgress(100, progress, indeterminate).setOngoing(true).setOnlyAlertOnce(true).setContentIntent(activity).setForegroundServiceBehavior(1).build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "build(...)");
        return notificationBuild;
    }

    public static /* synthetic */ Notification buildNotification$default(DownloadForegroundService downloadForegroundService, String str, int i3, boolean z2, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z2 = false;
        }
        return downloadForegroundService.buildNotification(str, i3, z2);
    }

    private final void ensureNotificationChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            androidx.core.view.accessibility.a.q();
            NotificationChannel notificationChannelC = androidx.core.view.accessibility.a.c(getString(com.minhub.gamehub.R.string.download_notif_channel_name));
            notificationChannelC.setDescription(getString(com.minhub.gamehub.R.string.download_notif_channel_desc));
            notificationChannelC.setShowBadge(false);
            getNotifManager().createNotificationChannel(notificationChannelC);
        }
    }

    private final NotificationManager getNotifManager() {
        return (NotificationManager) this.notifManager.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NotificationManager notifManager_delegate$lambda$0(DownloadForegroundService downloadForegroundService) {
        Object systemService = downloadForegroundService.getSystemService("notification");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
        return (NotificationManager) systemService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onStartCommand$lambda$3(DownloadForegroundService downloadForegroundService, List jobs) {
        Intrinsics.checkNotNullParameter(jobs, "jobs");
        ArrayList arrayList = new ArrayList();
        for (Object obj : jobs) {
            if (((CatalogDownloadJob) obj).getState() == CatalogDownloadState.RUNNING) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : jobs) {
            if (((CatalogDownloadJob) obj2).getState() == CatalogDownloadState.QUEUED) {
                arrayList2.add(obj2);
            }
        }
        if (arrayList.isEmpty() && arrayList2.isEmpty()) {
            downloadForegroundService.stopForeground(1);
            downloadForegroundService.stopSelf();
            return Unit.INSTANCE;
        }
        CatalogDownloadJob catalogDownloadJob = (CatalogDownloadJob) CollectionsKt.firstOrNull((List) arrayList);
        if (catalogDownloadJob == null) {
            catalogDownloadJob = (CatalogDownloadJob) CollectionsKt.first((List) arrayList2);
        }
        int size = arrayList2.size() + arrayList.size();
        String string = size > 1 ? downloadForegroundService.getString(com.minhub.gamehub.R.string.download_notif_title_multi, catalogDownloadJob.getTitle(), Integer.valueOf(size)) : downloadForegroundService.getString(com.minhub.gamehub.R.string.download_notif_title, catalogDownloadJob.getTitle());
        Intrinsics.checkNotNull(string);
        downloadForegroundService.getNotifManager().notify(1001, downloadForegroundService.buildNotification(string, catalogDownloadJob.getProgress(), catalogDownloadJob.getState() == CatalogDownloadState.QUEUED));
        return Unit.INSTANCE;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ensureNotificationChannel();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        String string = getString(com.minhub.gamehub.R.string.download_notif_preparing);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        startForeground(1001, buildNotification(string, 0, true));
        CatalogDownloadQueue.INSTANCE.getInstance(this).observe(new C0035p(15, this));
        return 1;
    }
}
