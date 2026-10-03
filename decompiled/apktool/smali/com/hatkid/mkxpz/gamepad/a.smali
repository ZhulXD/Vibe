.class public final synthetic Lcom/hatkid/mkxpz/gamepad/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hatkid/mkxpz/gamepad/a;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hatkid/mkxpz/gamepad/a;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/hatkid/mkxpz/gamepad/a;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/hatkid/mkxpz/gamepad/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ld1/i;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p2, v1, :cond_2

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p1, Ld1/i;->o:J

    .line 23
    .line 24
    sub-long/2addr v2, v4

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    cmp-long p2, v2, v4

    .line 28
    .line 29
    if-ltz p2, :cond_0

    .line 30
    .line 31
    const-wide/16 v4, 0x12c

    .line 32
    .line 33
    cmp-long p2, v2, v4

    .line 34
    .line 35
    if-lez p2, :cond_1

    .line 36
    .line 37
    :cond_0
    iput-boolean v0, p1, Ld1/i;->m:Z

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Ld1/i;->t()V

    .line 40
    .line 41
    .line 42
    iput-boolean v1, p1, Ld1/i;->m:Z

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, p1, Ld1/i;->o:J

    .line 49
    .line 50
    :cond_2
    return v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/hatkid/mkxpz/gamepad/a;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;

    .line 54
    .line 55
    invoke-static {v0, p1, p2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;->a(Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
