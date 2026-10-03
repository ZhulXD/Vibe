.class public final synthetic Lt1/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lt1/b;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lt1/b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lt1/a;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lt1/a;->c:Lt1/b;

    .line 4
    .line 5
    iput-object p2, p0, Lt1/a;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lt1/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt1/a;->c:Lt1/b;

    .line 7
    .line 8
    iget-object v1, v0, Lt1/b;->a:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->getEnabledButtonIds()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lt1/a;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lt1/b;->a:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    iget-object v0, p0, Lt1/a;->c:Lt1/b;

    .line 29
    .line 30
    iget-object v1, v0, Lt1/b;->a:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->getEnabledButtonIds()Ljava/util/Set;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lt1/a;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lt1/b;->a:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
