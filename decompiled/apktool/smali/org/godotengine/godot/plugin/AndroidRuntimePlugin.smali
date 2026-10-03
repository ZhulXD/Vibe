.class public final Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;
.super Lorg/godotengine/godot/plugin/GodotPlugin;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0017J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0014H\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;",
        "Lorg/godotengine/godot/plugin/GodotPlugin;",
        "godot",
        "Lorg/godotengine/godot/Godot;",
        "<init>",
        "(Lorg/godotengine/godot/Godot;)V",
        "getPluginName",
        "",
        "getApplicationContext",
        "Landroid/content/Context;",
        "getActivity",
        "Landroid/app/Activity;",
        "createRunnableFromGodotCallable",
        "Ljava/lang/Runnable;",
        "godotCallable",
        "Lorg/godotengine/godot/variant/Callable;",
        "createCallableFromGodotCallable",
        "Ljava/util/concurrent/Callable;",
        "",
        "updatePersistableUriPermission",
        "",
        "uriString",
        "persist",
        "Companion",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidRuntimePlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidRuntimePlugin.kt\norg/godotengine/godot/plugin/AndroidRuntimePlugin\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,170:1\n29#2:171\n*S KotlinDebug\n*F\n+ 1 AndroidRuntimePlugin.kt\norg/godotengine/godot/plugin/AndroidRuntimePlugin\n*L\n156#1:171\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->Companion:Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;

    .line 8
    .line 9
    const-string v0, "AndroidRuntimePlugin"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    const-string v0, "godot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lorg/godotengine/godot/plugin/GodotPlugin;-><init>(Lorg/godotengine/godot/Godot;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lorg/godotengine/godot/variant/Callable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->createRunnableFromGodotCallable$lambda$0(Lorg/godotengine/godot/variant/Callable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->createCallableFromGodotCallable$lambda$1(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final createCallableFromGodotCallable$lambda$1(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/variant/Callable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static final createProxyFromGodotCallable(Ljava/lang/String;Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation build Lc/a;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->Companion:Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;->access$createProxyFromGodotCallable(Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;Ljava/lang/String;Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final createProxyFromGodotObjectID(J[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation build Lc/a;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->Companion:Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;->access$createProxyFromGodotObjectID(Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;J[Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final createRunnableFromGodotCallable$lambda$0(Lorg/godotengine/godot/variant/Callable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/variant/Callable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final generateProxyInstance([Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 1
    .annotation build Lc/a;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->Companion:Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;->access$generateProxyInstance(Lorg/godotengine/godot/plugin/AndroidRuntimePlugin$Companion;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final createCallableFromGodotCallable(Lorg/godotengine/godot/variant/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/godotengine/godot/variant/Callable;",
            ")",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 1
    const-string v0, "godotCallable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lg2/a;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lg2/a;-><init>(Lorg/godotengine/godot/variant/Callable;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final createRunnableFromGodotCallable(Lorg/godotengine/godot/variant/Callable;)Ljava/lang/Runnable;
    .locals 2
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 1
    const-string v0, "godotCallable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LC1/g1;

    .line 7
    .line 8
    const/16 v1, 0xf

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AndroidRuntime"

    .line 2
    .line 3
    return-object v0
.end method

.method public final updatePersistableUriPermission(Ljava/lang/String;Z)Z
    .locals 2
    .annotation runtime Lorg/godotengine/godot/plugin/UsedByGodot;
    .end annotation

    .line 1
    const-string v0, "uriString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "Uri.parse(this)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/godotengine/godot/plugin/GodotPlugin;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x3

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :goto_1
    sget-object p2, Lorg/godotengine/godot/plugin/AndroidRuntimePlugin;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "Error updating persistable permission: "

    .line 40
    .line 41
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    return p1
.end method
