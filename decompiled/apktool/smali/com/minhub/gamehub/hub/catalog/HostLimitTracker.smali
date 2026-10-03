.class public final Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;,
        Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u00072\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;",
        "",
        "<init>",
        "()V",
        "PREFS",
        "",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "context",
        "Landroid/content/Context;",
        "markLimited",
        "",
        "host",
        "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;",
        "status",
        "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;",
        "clear",
        "detectLimit",
        "url",
        "errorMessage",
        "Host",
        "Status",
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


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;

.field private static final PREFS:Ljava/lang/String; = "minhub_host_limits"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "minhub_host_limits"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method


# virtual methods
.method public final clear(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "host"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final detectLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;
    .locals 2

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v1, "toLowerCase(...)"

    .line 16
    .line 17
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p2, v0

    .line 22
    :goto_0
    if-nez p2, :cond_1

    .line 23
    .line 24
    const-string p2, ""

    .line 25
    .line 26
    :cond_1
    const-string v1, "bandwidth"

    .line 27
    .line 28
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    const-string v1, "quota"

    .line 35
    .line 36
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string v1, "file_rate_limited"

    .line 43
    .line 44
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    const-string v1, "rate limit"

    .line 51
    .line 52
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    const-string v1, "rate-limit"

    .line 59
    .line 60
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    const-string v1, "429"

    .line 67
    .line 68
    invoke-static {p2, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    :cond_2
    const-string p2, "pixeldrain"

    .line 75
    .line 76
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->PIXELDRAIN:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 83
    .line 84
    return-object p1

    .line 85
    :cond_3
    const-string p2, "gofile"

    .line 86
    .line 87
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    sget-object p1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->GOFILE:Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_4
    return-object v0
.end method

.method public final markLimited(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "host"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "HostLimit: marked "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p1, " limited"

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string p2, "MinHub-DL"

    .line 58
    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final status(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;)Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;
    .locals 12

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "host"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    cmp-long v0, v8, v4

    .line 26
    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 30
    .line 31
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    const-wide/16 v5, 0x0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;-><init>(ZJJ)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getResetWindowMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    add-long v10, v3, v8

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    cmp-long v0, v3, v10

    .line 51
    .line 52
    if-ltz v0, :cond_1

    .line 53
    .line 54
    invoke-direct/range {p0 .. p1}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;->getId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 74
    .line 75
    const-wide/16 v3, 0x0

    .line 76
    .line 77
    const-wide/16 v5, 0x0

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-direct/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;-><init>(ZJJ)V

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_1
    new-instance v6, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;

    .line 85
    .line 86
    const/4 v7, 0x1

    .line 87
    invoke-direct/range {v6 .. v11}, Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;-><init>(ZJJ)V

    .line 88
    .line 89
    .line 90
    return-object v6
.end method
