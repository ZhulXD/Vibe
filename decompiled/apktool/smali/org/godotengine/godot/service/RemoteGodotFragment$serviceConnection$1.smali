.class public final Lorg/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/godotengine/godot/service/RemoteGodotFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "org/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1",
        "Landroid/content/ServiceConnection;",
        "onServiceConnected",
        "",
        "name",
        "Landroid/content/ComponentName;",
        "service",
        "Landroid/os/IBinder;",
        "onServiceDisconnected",
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
.field final synthetic this$0:Lorg/godotengine/godot/service/RemoteGodotFragment;


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/service/RemoteGodotFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1;->this$0:Lorg/godotengine/godot/service/RemoteGodotFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Connected to service "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1;->this$0:Lorg/godotengine/godot/service/RemoteGodotFragment;

    .line 25
    .line 26
    new-instance v0, Landroid/os/Messenger;

    .line 27
    .line 28
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v0}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$setServiceMessenger$p(Lorg/godotengine/godot/service/RemoteGodotFragment;Landroid/os/Messenger;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1;->this$0:Lorg/godotengine/godot/service/RemoteGodotFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$initGodotEngine(Lorg/godotengine/godot/service/RemoteGodotFragment;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Disconnected from service "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lorg/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1;->this$0:Lorg/godotengine/godot/service/RemoteGodotFragment;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p1, v0}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$setServiceMessenger$p(Lorg/godotengine/godot/service/RemoteGodotFragment;Landroid/os/Messenger;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
