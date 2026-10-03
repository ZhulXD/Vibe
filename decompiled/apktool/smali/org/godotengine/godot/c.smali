.class public final synthetic Lorg/godotengine/godot/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lorg/godotengine/godot/Godot;


# direct methods
.method public synthetic constructor <init>(Lorg/godotengine/godot/Godot;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/godotengine/godot/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/godotengine/godot/c;->c:Lorg/godotengine/godot/Godot;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/c;->c:Lorg/godotengine/godot/Godot;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot;->destroyAndKillProcess()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lorg/godotengine/godot/c;->c:Lorg/godotengine/godot/Godot;

    .line 13
    .line 14
    invoke-static {v0}, Lorg/godotengine/godot/Godot$onInitRenderView$2;->a(Lorg/godotengine/godot/Godot;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lorg/godotengine/godot/c;->c:Lorg/godotengine/godot/Godot;

    .line 19
    .line 20
    invoke-static {v0}, Lorg/godotengine/godot/Godot;->t(Lorg/godotengine/godot/Godot;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object v0, p0, Lorg/godotengine/godot/c;->c:Lorg/godotengine/godot/Godot;

    .line 25
    .line 26
    invoke-static {v0}, Lorg/godotengine/godot/Godot;->c(Lorg/godotengine/godot/Godot;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_3
    iget-object v0, p0, Lorg/godotengine/godot/c;->c:Lorg/godotengine/godot/Godot;

    .line 31
    .line 32
    invoke-static {v0}, Lorg/godotengine/godot/Godot;->b(Lorg/godotengine/godot/Godot;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
