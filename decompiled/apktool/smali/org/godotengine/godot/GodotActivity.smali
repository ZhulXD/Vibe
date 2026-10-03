.class public abstract Lorg/godotengine/godot/GodotActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/GodotHost;
.implements Lorg/godotengine/godot/feature/PictureInPictureProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/GodotActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u000b\u0008&\u0018\u0000 O2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001OB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0019H\u0004J\u001d\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001c2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0019H\u0004\u00a2\u0006\u0002\u0010\u001dJ\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0015J\u001b\u0010\"\u001a\u00020#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001cH\u0016\u00a2\u0006\u0002\u0010%J\u001a\u0010&\u001a\u00020\u001f2\u0008\u0010\'\u001a\u0004\u0018\u00010!2\u0006\u0010(\u001a\u00020\u0019H\u0004J\u0008\u0010)\u001a\u00020#H\u0015J\u0008\u0010*\u001a\u00020\u001fH\u0014J\u0008\u0010+\u001a\u00020\u001fH\u0014J\u0010\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u00100\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0008\u00101\u001a\u00020\u001fH\u0016J\u0010\u00102\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u0019H\u0014J\u0018\u00104\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0015J\"\u00107\u001a\u00020\u001f2\u0006\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020#2\u0008\u0010:\u001a\u0004\u0018\u00010\u0019H\u0015J+\u0010;\u001a\u00020\u001f2\u0006\u00108\u001a\u00020#2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u001c2\u0006\u0010=\u001a\u00020>H\u0017\u00a2\u0006\u0002\u0010?J\n\u0010@\u001a\u0004\u0018\u00010AH\u0016J\n\u0010B\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010C\u001a\u00020\u0014H\u0014J\u000e\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u000f0EH\u0017J\u0010\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u000206H\u0016J\u0008\u0010H\u001a\u000206H\u0016J\u0008\u0010I\u001a\u000206H\u0014J\u001c\u0010J\u001a\u00020\u001f2\u0008\u0008\u0002\u0010K\u001a\u0002062\n\u0008\u0002\u0010L\u001a\u0004\u0018\u00010\u0008J\u0008\u0010M\u001a\u00020\u001fH\u0016J\u0008\u0010N\u001a\u00020\u001fH\u0014R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014@BX\u0084\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006P"
    }
    d2 = {
        "Lorg/godotengine/godot/GodotActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "Lorg/godotengine/godot/GodotHost;",
        "Lorg/godotengine/godot/feature/PictureInPictureProvider;",
        "<init>",
        "()V",
        "pipAspectRatio",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Landroid/util/Rational;",
        "autoEnterPiP",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "gameViewSourceRectHint",
        "Landroid/graphics/Rect;",
        "commandLineParams",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "minPiPRatio",
        "maxPiPRatio",
        "value",
        "Lorg/godotengine/godot/GodotFragment;",
        "godotFragment",
        "getGodotFragment",
        "()Lorg/godotengine/godot/GodotFragment;",
        "sanitizeLaunchIntent",
        "Landroid/content/Intent;",
        "launchIntent",
        "retrieveCommandLineParamsFromLaunchIntent",
        "",
        "(Landroid/content/Intent;)[Ljava/lang/String;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewGodotInstanceRequested",
        "",
        "args",
        "([Ljava/lang/String;)I",
        "triggerRebirth",
        "bundle",
        "intent",
        "getGodotAppLayout",
        "onDestroy",
        "onStop",
        "onGodotForceQuit",
        "instance",
        "Lorg/godotengine/godot/Godot;",
        "terminateGodotInstance",
        "onGodotRestartRequested",
        "onGodotSetupCompleted",
        "onNewIntent",
        "newIntent",
        "handleStartIntent",
        "newLaunch",
        "",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "onRequestPermissionsResult",
        "permissions",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "getActivity",
        "Landroid/app/Activity;",
        "getGodot",
        "initGodotInstance",
        "getCommandLine",
        "",
        "onPictureInPictureModeChanged",
        "isInPictureInPictureMode",
        "isPiPModeSupported",
        "isPiPEnabled",
        "updatePiPParams",
        "enableAutoEnter",
        "aspectRatio",
        "enterPiPMode",
        "onUserLeaveHint",
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


# static fields
.field public static final Companion:Lorg/godotengine/godot/GodotActivity$Companion;

.field private static final DEFAULT_WINDOW_ID:I

.field private static final EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

.field private static final EXTRA_NEW_LAUNCH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final autoEnterPiP:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final commandLineParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gameViewSourceRectHint:Landroid/graphics/Rect;

.field private godotFragment:Lorg/godotengine/godot/GodotFragment;

.field private final maxPiPRatio:Landroid/util/Rational;

.field private final minPiPRatio:Landroid/util/Rational;

.field private final pipAspectRatio:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/GodotActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/GodotActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/GodotActivity;->Companion:Lorg/godotengine/godot/GodotActivity$Companion;

    .line 8
    .line 9
    const-string v0, "GodotActivity"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "command_line_params"

    .line 14
    .line 15
    sput-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "new_launch_requested"

    .line 18
    .line 19
    sput-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_NEW_LAUNCH:Ljava/lang/String;

    .line 20
    .line 21
    const/16 v0, 0x298

    .line 22
    .line 23
    sput v0, Lorg/godotengine/godot/GodotActivity;->DEFAULT_WINDOW_ID:I

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->pipAspectRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->autoEnterPiP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->gameViewSourceRectHint:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v0, Landroid/util/Rational;

    .line 34
    .line 35
    const/16 v1, 0x64

    .line 36
    .line 37
    const/16 v2, 0xef

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->minPiPRatio:Landroid/util/Rational;

    .line 43
    .line 44
    new-instance v0, Landroid/util/Rational;

    .line 45
    .line 46
    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->maxPiPRatio:Landroid/util/Rational;

    .line 50
    .line 51
    return-void
.end method

.method public static final synthetic access$getEXTRA_COMMAND_LINE_PARAMS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEXTRA_NEW_LAUNCH$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_NEW_LAUNCH:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getEXTRA_COMMAND_LINE_PARAMS()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->Companion:Lorg/godotengine/godot/GodotActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotActivity$Companion;->getEXTRA_COMMAND_LINE_PARAMS()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final getEXTRA_NEW_LAUNCH()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->Companion:Lorg/godotengine/godot/GodotActivity$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotActivity$Companion;->getEXTRA_NEW_LAUNCH()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static synthetic k(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotActivity;->onGodotForceQuit$lambda$3(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l(Lorg/godotengine/godot/GodotActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotActivity;->onCreate$lambda$0(Lorg/godotengine/godot/GodotActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/godotengine/godot/GodotActivity;->onGodotRestartRequested$lambda$6(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Landroid/view/View;Lorg/godotengine/godot/GodotActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p10}, Lorg/godotengine/godot/GodotActivity;->onCreate$lambda$1(Landroid/view/View;Lorg/godotengine/godot/GodotActivity;Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/godotengine/godot/GodotActivity;->triggerRebirth$lambda$2(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onCreate$lambda$0(Lorg/godotengine/godot/GodotActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$addCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotFragment;->onBackPressed()V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method private static final onCreate$lambda$1(Landroid/view/View;Lorg/godotengine/godot/GodotActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p1, Lorg/godotengine/godot/GodotActivity;->gameViewSourceRectHint:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final onGodotForceQuit$lambda$3(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/godotengine/godot/GodotActivity;->terminateGodotInstance(Lorg/godotengine/godot/Godot;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final onGodotRestartRequested$lambda$6(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->getGodot()Lorg/godotengine/godot/Godot;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "Restarting Godot instance..."

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic retrieveCommandLineParamsFromLaunchIntent$default(Lorg/godotengine/godot/GodotActivity;Landroid/content/Intent;ILjava/lang/Object;)[Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/GodotActivity;->retrieveCommandLineParamsFromLaunchIntent(Landroid/content/Intent;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p1, "Super calls with default arguments not supported in this target, function: retrieveCommandLineParamsFromLaunchIntent"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static synthetic sanitizeLaunchIntent$default(Lorg/godotengine/godot/GodotActivity;Landroid/content/Intent;ILjava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    if-nez p3, :cond_1

    .line 2
    .line 3
    and-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/GodotActivity;->sanitizeLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p1, "Super calls with default arguments not supported in this target, function: sanitizeLaunchIntent"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method private final terminateGodotInstance(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->getGodot()Lorg/godotengine/godot/Godot;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    sget-object p1, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "Force quitting Godot instance"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lorg/godotengine/godot/utils/ProcessPhoenix;->forceQuit(Landroid/app/Activity;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final triggerRebirth$lambda$2(Lorg/godotengine/godot/GodotActivity;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 1
    filled-new-array {p2}, [Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;Landroid/os/Bundle;[Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic updatePiPParams$default(Lorg/godotengine/godot/GodotActivity;ZLandroid/util/Rational;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_2

    .line 2
    .line 3
    and-int/lit8 p4, p3, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/godotengine/godot/GodotActivity;->autoEnterPiP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lorg/godotengine/godot/GodotActivity;->pipAspectRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Landroid/util/Rational;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/GodotActivity;->updatePiPParams(ZLandroid/util/Rational;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 30
    .line 31
    const-string p1, "Super calls with default arguments not supported in this target, function: updatePiPParams"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method


# virtual methods
.method public enterPiPMode()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->isPiPModeSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p0, v0, v2, v1, v2}, Lorg/godotengine/godot/GodotActivity;->updatePiPParams$default(Lorg/godotengine/godot/GodotActivity;ZLandroid/util/Rational;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "Entering PiP mode"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getCommandLine()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/godotengine/godot/GodotFragment;->getGodot()Lorg/godotengine/godot/Godot;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getGodotAppLayout()I
    .locals 1

    .line 1
    sget v0, Lorg/godotengine/godot/R$layout;->godot_app_layout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGodotFragment()Lorg/godotengine/godot/GodotFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleStartIntent(Landroid/content/Intent;Z)V
    .locals 3

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget-object p2, Lorg/godotengine/godot/GodotActivity;->EXTRA_NEW_LAUNCH:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "New launch requested, restarting.."

    .line 20
    .line 21
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v1, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "putExtra(...)"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    filled-new-array {p1}, [Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Lorg/godotengine/godot/utils/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public initGodotInstance()Lorg/godotengine/godot/GodotFragment;
    .locals 1

    .line 1
    new-instance v0, Lorg/godotengine/godot/GodotFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/godotengine/godot/GodotFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public isPiPEnabled()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isPiPModeSupported()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->isPiPEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "android.software.picture_in_picture"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/GodotFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getIntent(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/godotengine/godot/GodotActivity;->sanitizeLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object v0, Lorg/godotengine/godot/utils/CommandLineFileParser;->INSTANCE:Lorg/godotengine/godot/utils/CommandLineFileParser;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "_cl_"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "open(...)"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lorg/godotengine/godot/utils/CommandLineFileParser;->parseCommandLine(Ljava/io/InputStream;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object v2, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "Project command line parameters: "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v3, 0x1

    .line 70
    invoke-static {p0, v0, v3, v0}, Lorg/godotengine/godot/GodotActivity;->retrieveCommandLineParamsFromLaunchIntent$default(Lorg/godotengine/godot/GodotActivity;Landroid/content/Intent;ILjava/lang/Object;)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    const-string v6, "toString(...)"

    .line 83
    .line 84
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v7, "Launch intent "

    .line 90
    .line 91
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v4, " with parameters "

    .line 98
    .line 99
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    iget-object v4, p0, Lorg/godotengine/godot/GodotActivity;->commandLineParams:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getGodotAppLayout()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string p1, "<get-onBackPressedDispatcher>(...)"

    .line 132
    .line 133
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v7, Lorg/godotengine/godot/i;

    .line 137
    .line 138
    invoke-direct {v7, p0}, Lorg/godotengine/godot/i;-><init>(Lorg/godotengine/godot/GodotActivity;)V

    .line 139
    .line 140
    .line 141
    const/4 v8, 0x3

    .line 142
    const/4 v9, 0x0

    .line 143
    const/4 v5, 0x0

    .line 144
    const/4 v6, 0x0

    .line 145
    invoke-static/range {v4 .. v9}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1, v3}, Lorg/godotengine/godot/GodotActivity;->handleStartIntent(Landroid/content/Intent;Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    sget v0, Lorg/godotengine/godot/R$id;->godot_fragment_container:I

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    instance-of v0, p1, Lorg/godotengine/godot/GodotFragment;

    .line 169
    .line 170
    if-eqz v0, :cond_0

    .line 171
    .line 172
    const-string v0, "Reusing existing Godot fragment instance."

    .line 173
    .line 174
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    check-cast p1, Lorg/godotengine/godot/GodotFragment;

    .line 178
    .line 179
    iput-object p1, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_0
    const-string v0, "Creating new Godot fragment instance."

    .line 183
    .line 184
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->initGodotInstance()Lorg/godotengine/godot/GodotFragment;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iput-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v1, "beginTransaction(...)"

    .line 202
    .line 203
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    if-eqz p1, :cond_1

    .line 207
    .line 208
    const-string v1, "Removing existing fragment before replacement."

    .line 209
    .line 210
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 214
    .line 215
    .line 216
    :cond_1
    sget p1, Lorg/godotengine/godot/R$id;->godot_fragment_container:I

    .line 217
    .line 218
    iget-object v1, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 219
    .line 220
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 234
    .line 235
    .line 236
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 237
    .line 238
    const/16 v0, 0x1a

    .line 239
    .line 240
    if-lt p1, v0, :cond_2

    .line 241
    .line 242
    sget p1, Lorg/godotengine/godot/R$id;->godot_fragment_container:I

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    if-eqz p1, :cond_2

    .line 249
    .line 250
    new-instance v0, Lorg/godotengine/godot/j;

    .line 251
    .line 252
    const/4 v1, 0x0

    .line 253
    invoke-direct {v0, v1, p1, p0}, Lorg/godotengine/godot/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 257
    .line 258
    .line 259
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Destroying GodotActivity "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "..."

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onGodotForceQuit(Lorg/godotengine/godot/Godot;)V
    .locals 2

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/godotengine/godot/k;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lorg/godotengine/godot/k;-><init>(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V
    .locals 2

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/godotengine/godot/k;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, p1, v1}, Lorg/godotengine/godot/k;-><init>(Lorg/godotengine/godot/GodotActivity;Lorg/godotengine/godot/Godot;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onGodotSetupCompleted()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/godotengine/godot/GodotHost;->onGodotSetupCompleted()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->isPiPEnabled()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v0, "display/window/size/viewport_width"

    .line 11
    .line 12
    invoke-static {v0}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "display/window/size/viewport_height"

    .line 21
    .line 22
    invoke-static {v1}, Lorg/godotengine/godot/GodotLib;->getGlobal(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget-object v2, p0, Lorg/godotengine/godot/GodotActivity;->pipAspectRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    new-instance v3, Landroid/util/Rational;

    .line 33
    .line 34
    invoke-direct {v3, v0, v1}, Landroid/util/Rational;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    sget-object v1, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "Unable to parse viewport dimensions."

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public onNewGodotInstanceRequested([Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "toString(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Restarting with parameters "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance v0, Landroid/content/Intent;

    .line 35
    .line 36
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v1, Landroid/content/ComponentName;

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/high16 v1, 0x10000000

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "putExtra(...)"

    .line 69
    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, p1}, Lorg/godotengine/godot/GodotActivity;->triggerRebirth(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    sget p1, Lorg/godotengine/godot/GodotActivity;->DEFAULT_WINDOW_ID:I

    .line 78
    .line 79
    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "newIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/GodotActivity;->sanitizeLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "getIntent(...)"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, v0}, Lorg/godotengine/godot/GodotActivity;->handleStartIntent(Landroid/content/Intent;Z)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->getGodot()Lorg/godotengine/godot/Godot;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lorg/godotengine/godot/Godot;->onPictureInPictureModeChanged$lib_templateRelease(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->godotFragment:Lorg/godotengine/godot/GodotFragment;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lorg/godotengine/godot/GodotFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    const/16 v0, 0x3e9

    .line 22
    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x3ea

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_1
    sget-object p1, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "Received permissions request result.."

    .line 33
    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    array-length p1, p2

    .line 38
    const/4 v0, 0x0

    .line 39
    move v1, v0

    .line 40
    :goto_0
    if-ge v1, p1, :cond_4

    .line 41
    .line 42
    aget v2, p3, v1

    .line 43
    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v2, v0

    .line 49
    :goto_1
    sget-object v3, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    aget-object v4, p2, v1

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    const-string v2, "granted"

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const-string v2, "denied"

    .line 59
    .line 60
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v6, "Permission "

    .line 63
    .line 64
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, " "

    .line 71
    .line 72
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    :goto_3
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->autoEnterPiP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->enterPiPMode()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final retrieveCommandLineParamsFromLaunchIntent(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "launchIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "getActivityInfo(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    new-array p1, v2, [Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    return-object p1

    .line 45
    :cond_2
    new-array p1, v2, [Ljava/lang/String;

    .line 46
    .line 47
    return-object p1
.end method

.method public final sanitizeLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 1
    const-string v0, "launchIntent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "getActivityInfo(...)"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->EXTRA_COMMAND_LINE_PARAMS:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-object p1
.end method

.method public final triggerRebirth(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "getApplicationContext(...)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot$Companion;->getInstance(Landroid/content/Context;)Lorg/godotengine/godot/Godot;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, LC1/A1;

    .line 22
    .line 23
    const/16 v2, 0x9

    .line 24
    .line 25
    invoke-direct {v1, p0, p1, p2, v2}, LC1/A1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final updatePiPParams(ZLandroid/util/Rational;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->minPiPRatio:Landroid/util/Rational;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->maxPiPRatio:Landroid/util/Rational;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_2

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lorg/godotengine/godot/GodotActivity;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "The bounds of the aspect ratio must be between 2.39:1 and 1:2.39 (inclusive). Coercing to valid range."

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->minPiPRatio:Landroid/util/Rational;

    .line 27
    .line 28
    iget-object v1, p0, Lorg/godotengine/godot/GodotActivity;->maxPiPRatio:Landroid/util/Rational;

    .line 29
    .line 30
    invoke-static {p2, v0, v1}, Lkotlin/ranges/RangesKt;->c(Landroid/util/Rational;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Landroid/util/Rational;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p2, 0x0

    .line 38
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/godotengine/godot/GodotActivity;->isPiPModeSupported()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->autoEnterPiP:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/godotengine/godot/GodotActivity;->pipAspectRatio:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    .line 51
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v1, 0x1a

    .line 57
    .line 58
    if-lt v0, v1, :cond_5

    .line 59
    .line 60
    invoke-static {}, Lm0/o;->b()Landroid/app/PictureInPictureParams$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lorg/godotengine/godot/GodotActivity;->gameViewSourceRectHint:Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lm0/o;->c(Landroid/app/PictureInPictureParams$Builder;Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, p2}, Lm0/o;->d(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/16 v2, 0x1f

    .line 75
    .line 76
    if-lt v0, v2, :cond_3

    .line 77
    .line 78
    invoke-static {v1}, LH0/a;->e(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2, p1}, LH0/a;->r(Landroid/app/PictureInPictureParams$Builder;Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    const/16 p1, 0x21

    .line 86
    .line 87
    if-lt v0, p1, :cond_4

    .line 88
    .line 89
    invoke-static {v1, p2}, LN1/v;->j(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    invoke-static {v1}, Lm0/o;->e(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p0, p1}, Lm0/o;->s(Lorg/godotengine/godot/GodotActivity;Landroid/app/PictureInPictureParams;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method
