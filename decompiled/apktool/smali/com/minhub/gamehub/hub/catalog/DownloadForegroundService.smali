.class public final Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;
.super Landroid/app/Service;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\"\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\"\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u000fH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "notifManager",
        "Landroid/app/NotificationManager;",
        "getNotifManager",
        "()Landroid/app/NotificationManager;",
        "notifManager$delegate",
        "Lkotlin/Lazy;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "buildNotification",
        "Landroid/app/Notification;",
        "title",
        "",
        "progress",
        "indeterminate",
        "",
        "ensureNotificationChannel",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadForegroundService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadForegroundService.kt\ncom/minhub/gamehub/hub/catalog/DownloadForegroundService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,113:1\n774#2:114\n865#2,2:115\n774#2:117\n865#2,2:118\n*S KotlinDebug\n*F\n+ 1 DownloadForegroundService.kt\ncom/minhub/gamehub/hub/catalog/DownloadForegroundService\n*L\n37#1:114\n37#1:115,2\n38#1:117\n38#1:118,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "minhub_downloads"

.field public static final Companion:Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;

.field private static final NOTIF_ID:I = 0x3e9


# instance fields
.field private final notifManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->Companion:Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LA1/n;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->notifManager$delegate:Lkotlin/Lazy;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->onStartCommand$lambda$3(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->notifManager_delegate$lambda$0(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;)Landroid/app/NotificationManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final buildNotification(Ljava/lang/String;IZ)Landroid/app/Notification;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x20000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    const/high16 v1, 0xc000000

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    .line 24
    const-string v2, "minhub_downloads"

    .line 25
    .line 26
    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const v2, 0x1080081

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    const v1, 0x7f1200db

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, "%"

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const/16 v1, 0x64

    .line 72
    .line 73
    invoke-virtual {p1, v1, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setForegroundServiceBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string p2, "build(...)"

    .line 99
    .line 100
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object p1
.end method

.method public static synthetic buildNotification$default(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;Ljava/lang/String;IZILjava/lang/Object;)Landroid/app/Notification;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->buildNotification(Ljava/lang/String;IZ)Landroid/app/Notification;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final ensureNotificationChannel()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/core/view/accessibility/a;->q()V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f1200d9

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroidx/core/view/accessibility/a;->c(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f1200d8

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroidx/core/view/accessibility/a;->s(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/core/view/accessibility/a;->r(Landroid/app/NotificationChannel;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->getNotifManager()Landroid/app/NotificationManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/a;->t(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method private final getNotifManager()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->notifManager$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final notifManager_delegate$lambda$0(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;)Landroid/app/NotificationManager;
    .locals 1

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroid/app/NotificationManager;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final onStartCommand$lambda$3(Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;Ljava/util/List;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "jobs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object v3, v2

    .line 26
    check-cast v3, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    sget-object v4, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->RUNNING:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 33
    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    move-object v3, v2

    .line 60
    check-cast v3, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    sget-object v4, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->QUEUED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 67
    .line 68
    if-ne v3, v4, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    const/4 v2, 0x1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 91
    .line 92
    .line 93
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p0

    .line 96
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 109
    .line 110
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    add-int/2addr v1, v0

    .line 119
    if-le v1, v2, :cond_6

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getTitle()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const v1, 0x7f1200dd

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getTitle()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    const v1, 0x7f1200dc

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getProgress()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    sget-object v3, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->QUEUED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 168
    .line 169
    if-ne p1, v3, :cond_7

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    const/4 v2, 0x0

    .line 173
    :goto_3
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->getNotifManager()Landroid/app/NotificationManager;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const/16 v3, 0x3e9

    .line 178
    .line 179
    invoke-direct {p0, v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->buildNotification(Ljava/lang/String;IZ)Landroid/app/Notification;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p1, v3, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 184
    .line 185
    .line 186
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 187
    .line 188
    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->ensureNotificationChannel()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    const p1, 0x7f1200da

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string p2, "getString(...)"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 p3, 0x1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/DownloadForegroundService;->buildNotification(Ljava/lang/String;IZ)Landroid/app/Notification;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/16 p2, 0x3e9

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->Companion:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;->getInstance(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, LA1/p;

    .line 31
    .line 32
    const/16 v0, 0xf

    .line 33
    .line 34
    invoke-direct {p2, v0, p0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->observe(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    return p3
.end method
