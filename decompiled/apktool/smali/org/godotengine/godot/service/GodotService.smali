.class public Lorg/godotengine/godot/service/GodotService;
.super Landroid/app/Service;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/service/GodotService$Companion;,
        Lorg/godotengine/godot/service/GodotService$EngineError;,
        Lorg/godotengine/godot/service/GodotService$EngineStatus;,
        Lorg/godotengine/godot/service/GodotService$GodotServiceHost;,
        Lorg/godotengine/godot/service/GodotService$IncomingHandler;,
        Lorg/godotengine/godot/service/GodotService$RemoteListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 /2\u00020\u0001:\u0006/01234B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\"\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u0016\u0010\u001e\u001a\u00020\u00172\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00060 H\u0015J\u0008\u0010!\u001a\u00020\"H\u0002J\u0008\u0010#\u001a\u00020\u0017H\u0016J\u0008\u0010$\u001a\u00020\u0017H\u0002J\u0014\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010\'\u001a\u00020\"2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001f\u0010(\u001a\u0004\u0018\u00010)2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010*H\u0002\u00a2\u0006\u0002\u0010+J\u0008\u0010,\u001a\u00020\u0017H\u0002J\u0008\u0010-\u001a\u00020\u0017H\u0002J\u0008\u0010.\u001a\u00020\u0017H\u0002R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00060\rR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lorg/godotengine/godot/service/GodotService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "commandLineParams",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "handler",
        "Lorg/godotengine/godot/service/GodotService$IncomingHandler;",
        "messenger",
        "Landroid/os/Messenger;",
        "godotHost",
        "Lorg/godotengine/godot/service/GodotService$GodotServiceHost;",
        "godot",
        "Lorg/godotengine/godot/Godot;",
        "getGodot",
        "()Lorg/godotengine/godot/Godot;",
        "godot$delegate",
        "Lkotlin/Lazy;",
        "listener",
        "Lorg/godotengine/godot/service/GodotService$RemoteListener;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "updateCommandLineParams",
        "args",
        "",
        "performEngineInitialization",
        "",
        "onDestroy",
        "forceQuitService",
        "onBind",
        "Landroid/os/IBinder;",
        "onUnbind",
        "initEngine",
        "Landroid/widget/FrameLayout;",
        "",
        "([Ljava/lang/String;)Landroid/widget/FrameLayout;",
        "startEngine",
        "stopEngine",
        "destroyEngine",
        "Companion",
        "EngineStatus",
        "EngineError",
        "RemoteListener",
        "IncomingHandler",
        "GodotServiceHost",
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


# static fields
.field public static final Companion:Lorg/godotengine/godot/service/GodotService$Companion;

.field public static final EXTRA_MSG_PAYLOAD:Ljava/lang/String; = "extraMsgPayload"

.field public static final KEY_COMMAND_LINE_PARAMETERS:Ljava/lang/String; = "commandLineParameters"

.field public static final KEY_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field public static final KEY_ENGINE_ERROR:Ljava/lang/String; = "engineError"

.field public static final KEY_ENGINE_STATUS:Ljava/lang/String; = "engineStatus"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_HOST_TOKEN:Ljava/lang/String; = "hostToken"

.field public static final KEY_SURFACE_PACKAGE:Ljava/lang/String; = "surfacePackage"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final MSG_DESTROY_ENGINE:I = 0x3

.field public static final MSG_ENGINE_ERROR:I = 0x64

.field public static final MSG_ENGINE_RESTART_REQUESTED:I = 0x66

.field public static final MSG_ENGINE_STATUS_UPDATE:I = 0x65

.field public static final MSG_INIT_ENGINE:I = 0x0

.field public static final MSG_START_ENGINE:I = 0x1

.field public static final MSG_STOP_ENGINE:I = 0x2

.field public static final MSG_WRAP_ENGINE_WITH_SCVH:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final commandLineParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final godot$delegate:Lkotlin/Lazy;

.field private final godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

.field private final handler:Lorg/godotengine/godot/service/GodotService$IncomingHandler;

.field private listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

.field private final messenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/service/GodotService$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/service/GodotService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/service/GodotService;->Companion:Lorg/godotengine/godot/service/GodotService$Companion;

    .line 8
    .line 9
    const-string v0, "GodotService"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/godotengine/godot/service/GodotService;->commandLineParams:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lorg/godotengine/godot/service/GodotService$IncomingHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lorg/godotengine/godot/service/GodotService;->handler:Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 22
    .line 23
    new-instance v1, Landroid/os/Messenger;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lorg/godotengine/godot/service/GodotService;->messenger:Landroid/os/Messenger;

    .line 29
    .line 30
    new-instance v0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;-><init>(Lorg/godotengine/godot/service/GodotService;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 36
    .line 37
    new-instance v0, LA1/n;

    .line 38
    .line 39
    const/16 v1, 0xd

    .line 40
    .line 41
    invoke-direct {v0, v1, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lorg/godotengine/godot/service/GodotService;->godot$delegate:Lkotlin/Lazy;

    .line 49
    .line 50
    return-void
.end method

.method public static synthetic a(Lorg/godotengine/godot/service/GodotService;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/service/GodotService;->performEngineInitialization$lambda$1(Lorg/godotengine/godot/service/GodotService;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$destroyEngine(Lorg/godotengine/godot/service/GodotService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->destroyEngine()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$forceQuitService(Lorg/godotengine/godot/service/GodotService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->forceQuitService()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCommandLineParams$p(Lorg/godotengine/godot/service/GodotService;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/godotengine/godot/service/GodotService;->commandLineParams:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getGodot(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$IncomingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/godotengine/godot/service/GodotService;->handler:Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$initEngine(Lorg/godotengine/godot/service/GodotService;[Ljava/lang/String;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/godotengine/godot/service/GodotService;->initEngine([Ljava/lang/String;)Landroid/widget/FrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setListener$p(Lorg/godotengine/godot/service/GodotService;Lorg/godotengine/godot/service/GodotService$RemoteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$startEngine(Lorg/godotengine/godot/service/GodotService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->startEngine()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$stopEngine(Lorg/godotengine/godot/service/GodotService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->stopEngine()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/godotengine/godot/service/GodotService;->godot_delegate$lambda$0(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final destroyEngine()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->onDestroy(Lorg/godotengine/godot/GodotHost;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v2, Lorg/godotengine/godot/service/GodotService$EngineStatus;->DESTROYED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-static {v0, v2, v1, v3, v1}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v1, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 33
    .line 34
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->forceQuitService()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private final forceQuitService()V
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Force quitting service"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService;->godot$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/godotengine/godot/Godot;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final godot_delegate$lambda$0(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v1, "getApplicationContext(...)"

    .line 8
    .line 9
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/Godot$Companion;->getInstance(Landroid/content/Context;)Lorg/godotengine/godot/Godot;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private final initEngine([Ljava/lang/String;)Landroid/widget/FrameLayout;
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/service/GodotService;->updateCommandLineParams(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->performEngineInitialization()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    sget-object p1, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "Unable to initialize Godot engine"

    .line 34
    .line 35
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    sget-object p1, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "Engine initialization complete!"

    .line 42
    .line 43
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lorg/godotengine/godot/Godot;->getContainerLayout$lib_templateRelease()Landroid/widget/FrameLayout;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x2

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    iget-object v2, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 58
    .line 59
    if-eqz v2, :cond_5

    .line 60
    .line 61
    sget-object v3, Lorg/godotengine/godot/service/GodotService$EngineError;->INIT_FAILED:Lorg/godotengine/godot/service/GodotService$EngineError;

    .line 62
    .line 63
    invoke-static {v2, v3, v1, v0, v1}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineError$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_4
    sget-object v2, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "Initialized Godot engine"

    .line 70
    .line 71
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 75
    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    sget-object v3, Lorg/godotengine/godot/service/GodotService$EngineStatus;->INITIALIZED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 79
    .line 80
    invoke-static {v2, v3, v1, v0, v1}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-object p1
.end method

.method private final performEngineInitialization()Z
    .locals 5

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Performing engine initialization"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 13
    .line 14
    invoke-virtual {v1}, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->getCommandLine()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v3, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-interface {v3, v4}, Lorg/godotengine/godot/GodotHost;->getHostPlugins(Lorg/godotengine/godot/Godot;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "getHostPlugins(...)"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lorg/godotengine/godot/Godot;->initEngine(Lorg/godotengine/godot/GodotHost;Ljava/util/List;Ljava/util/Set;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {v0, v1, v3, v2, v3}, Lorg/godotengine/godot/Godot;->onInitRenderView$default(Lorg/godotengine/godot/Godot;Lorg/godotengine/godot/GodotHost;Landroid/widget/FrameLayout;ILjava/lang/Object;)Landroid/widget/FrameLayout;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    return v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v1, "Unable to initialize engine render view"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "Unable to initialize Godot engine layer"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    sget-object v1, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "Engine initialization failed"

    .line 76
    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    sget v0, Lorg/godotengine/godot/R$string;->error_engine_setup_message:I

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    sget v2, Lorg/godotengine/godot/R$string;->text_error_title:I

    .line 112
    .line 113
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    const-string v3, "getString(...)"

    .line 118
    .line 119
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v3, LC1/g1;

    .line 123
    .line 124
    const/16 v4, 0x10

    .line 125
    .line 126
    invoke-direct {v3, v4, p0}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v0, v2, v3}, Lorg/godotengine/godot/Godot;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    return v0
.end method

.method private static final performEngineInitialization$lambda$1(Lorg/godotengine/godot/service/GodotService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p0, v0, v1, v0}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess$default(Lorg/godotengine/godot/Godot;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final startEngine()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "Attempting to start uninitialized Godot engine instance"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Starting Godot engine"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->onStart(Lorg/godotengine/godot/GodotHost;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->onResume(Lorg/godotengine/godot/GodotHost;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    sget-object v1, Lorg/godotengine/godot/service/GodotService$EngineStatus;->STARTED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v1, v3, v2, v3}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method private final stopEngine()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "Attempting to stop uninitialized Godot engine instance"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "Stopping Godot engine"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->onPause(Lorg/godotengine/godot/GodotHost;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->getGodot()Lorg/godotengine/godot/Godot;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService;->godotHost:Lorg/godotengine/godot/service/GodotService$GodotServiceHost;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->onStop(Lorg/godotengine/godot/GodotHost;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService;->listener:Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    sget-object v1, Lorg/godotengine/godot/service/GodotService$EngineStatus;->STOPPED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v0, v1, v3, v2, v3}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/godotengine/godot/service/GodotService;->messenger:Landroid/os/Messenger;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "OnCreate"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "OnDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->destroyEngine()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 1
    sget-object p2, Lorg/godotengine/godot/service/GodotService;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "Processing start command "

    .line 6
    .line 7
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    const-string p2, "extraMsgPayload"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/os/Message;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lorg/godotengine/godot/service/GodotService;->handler:Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x2

    .line 40
    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/service/GodotService;->stopEngine()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method

.method public updateCommandLineParams(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService;->commandLineParams:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService;->commandLineParams:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
