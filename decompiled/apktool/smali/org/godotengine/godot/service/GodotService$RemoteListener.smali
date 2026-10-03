.class final Lorg/godotengine/godot/service/GodotService$RemoteListener;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/service/GodotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u001a\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0016\u001a\u00020\u000eR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/godotengine/godot/service/GodotService$RemoteListener;",
        "",
        "handlerRef",
        "Ljava/lang/ref/WeakReference;",
        "Lorg/godotengine/godot/service/GodotService$IncomingHandler;",
        "replyTo",
        "Landroid/os/Messenger;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;Landroid/os/Messenger;)V",
        "getHandlerRef",
        "()Ljava/lang/ref/WeakReference;",
        "getReplyTo",
        "()Landroid/os/Messenger;",
        "onEngineError",
        "",
        "error",
        "Lorg/godotengine/godot/service/GodotService$EngineError;",
        "extras",
        "Landroid/os/Bundle;",
        "onEngineStatusUpdate",
        "status",
        "Lorg/godotengine/godot/service/GodotService$EngineStatus;",
        "onEngineRestartRequested",
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


# instance fields
.field private final handlerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/GodotService$IncomingHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final replyTo:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/Messenger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/GodotService$IncomingHandler;",
            ">;",
            "Landroid/os/Messenger;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "handlerRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "replyTo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->handlerRef:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p2, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->replyTo:Landroid/os/Messenger;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic onEngineError$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineError(Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic onEngineStatusUpdate$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate(Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final getHandlerRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/GodotService$IncomingHandler;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->handlerRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReplyTo()Landroid/os/Messenger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->replyTo:Landroid/os/Messenger;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onEngineError(Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->replyTo:Landroid/os/Messenger;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x64

    .line 13
    .line 14
    iput v2, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "engineError"

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    const-string v0, "Unable to send engine error"

    .line 56
    .line 57
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final onEngineRestartRequested()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->replyTo:Landroid/os/Messenger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x66

    .line 5
    .line 6
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "Unable to send restart request"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onEngineStatusUpdate(Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->replyTo:Landroid/os/Messenger;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v2, 0x65

    .line 13
    .line 14
    iput v2, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "engineStatus"

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p2

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "Unable to send engine status update"

    .line 56
    .line 57
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :goto_2
    sget-object p2, Lorg/godotengine/godot/service/GodotService$EngineStatus;->DESTROYED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 61
    .line 62
    if-ne p1, p2, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lorg/godotengine/godot/service/GodotService$RemoteListener;->handlerRef:Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v0, 0x1e

    .line 78
    .line 79
    if-lt p2, v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1}, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->getViewHost()Landroid/view/SurfaceControlViewHost;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const-string v0, "Releasing SurfaceControlViewHost"

    .line 92
    .line 93
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->getViewHost()Landroid/view/SurfaceControlViewHost;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-eqz p2, :cond_2

    .line 101
    .line 102
    invoke-static {p2}, Landroidx/core/view/o;->j(Landroid/view/SurfaceControlViewHost;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    const/4 p2, 0x0

    .line 106
    invoke-virtual {p1, p2}, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->setViewHost(Landroid/view/SurfaceControlViewHost;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_3
    return-void
.end method
