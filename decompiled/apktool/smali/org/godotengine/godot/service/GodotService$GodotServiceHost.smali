.class final Lorg/godotengine/godot/service/GodotService$GodotServiceHost;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/godotengine/godot/GodotHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/service/GodotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GodotServiceHost"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0007H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/godotengine/godot/service/GodotService$GodotServiceHost;",
        "Lorg/godotengine/godot/GodotHost;",
        "<init>",
        "(Lorg/godotengine/godot/service/GodotService;)V",
        "getActivity",
        "",
        "getGodot",
        "Lorg/godotengine/godot/Godot;",
        "getCommandLine",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "runOnHostThread",
        "",
        "action",
        "Ljava/lang/Runnable;",
        "onGodotForceQuit",
        "instance",
        "onGodotRestartRequested",
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
.field final synthetic this$0:Lorg/godotengine/godot/service/GodotService;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/service/GodotService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->getActivity()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getActivity()Ljava/lang/Void;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommandLine()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getCommandLineParams$p(Lorg/godotengine/godot/service/GodotService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCommandLine()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->getCommandLine()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGodot()Lorg/godotengine/godot/Godot;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getGodot(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onGodotForceQuit(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->getGodot()Lorg/godotengine/godot/Godot;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Force quitting Godot service"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    .line 22
    .line 23
    invoke-static {p1}, Lorg/godotengine/godot/service/GodotService;->access$forceQuitService(Lorg/godotengine/godot/service/GodotService;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onGodotRestartRequested(Lorg/godotengine/godot/Godot;)V
    .locals 1

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->getGodot()Lorg/godotengine/godot/Godot;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Restarting Godot service"

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    .line 22
    .line 23
    invoke-static {p1}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineRestartRequested()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public runOnHostThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    .line 11
    .line 12
    invoke-static {v1}, Lorg/godotengine/godot/service/GodotService;->access$getHandler$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$GodotServiceHost;->this$0:Lorg/godotengine/godot/service/GodotService;

    .line 31
    .line 32
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getHandler$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$IncomingHandler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
