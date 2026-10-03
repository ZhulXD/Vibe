.class public final synthetic Lorg/godotengine/godot/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/godotengine/godot/Godot;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/Godot;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/godotengine/godot/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/godotengine/godot/b;->b:Lorg/godotengine/godot/Godot;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/b;->b:Lorg/godotengine/godot/Godot;

    .line 7
    .line 8
    invoke-static {v0}, Lorg/godotengine/godot/Godot;->y(Lorg/godotengine/godot/Godot;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lorg/godotengine/godot/b;->b:Lorg/godotengine/godot/Godot;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/godotengine/godot/Godot;->v(Lorg/godotengine/godot/Godot;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
