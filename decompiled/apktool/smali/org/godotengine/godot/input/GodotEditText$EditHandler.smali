.class Lorg/godotengine/godot/input/GodotEditText$EditHandler;
.super Landroid/os/Handler;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/input/GodotEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditHandler"
.end annotation


# instance fields
.field private final mEdit:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/input/GodotEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/godotengine/godot/input/GodotEditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;->mEdit:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/input/GodotEditText$EditHandler;->mEdit:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/godotengine/godot/input/GodotEditText;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lorg/godotengine/godot/input/GodotEditText;->a(Lorg/godotengine/godot/input/GodotEditText;Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
