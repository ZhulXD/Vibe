.class public final synthetic LS/u;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyDownListener;
.implements Lcom/hatkid/mkxpz/gamepad/Gamepad$OnKeyUpListener;
.implements Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyDownListener;
.implements Lcom/hatkid/mkxpz/gamepad/GamepadButton$OnKeyUpListener;
.implements Ld1/z;


# static fields
.field public static final b:LS/u;

.field public static final c:LS/u;

.field public static final d:LS/u;

.field public static final e:LS/u;

.field public static final f:LS/u;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LS/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LS/u;->b:LS/u;

    .line 8
    .line 9
    new-instance v0, LS/u;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, LS/u;->c:LS/u;

    .line 16
    .line 17
    new-instance v0, LS/u;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, LS/u;->d:LS/u;

    .line 24
    .line 25
    new-instance v0, LS/u;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, LS/u;->e:LS/u;

    .line 32
    .line 33
    new-instance v0, LS/u;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, v1}, LS/u;-><init>(I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, LS/u;->f:LS/u;

    .line 40
    .line 41
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LS/u;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKeyDown(I)V
    .locals 1

    .line 1
    iget v0, p0, LS/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    invoke-static {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->d(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_2
    invoke-static {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->b(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_3
    invoke-static {p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->d(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(I)V
    .locals 1

    .line 1
    iget v0, p0, LS/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    invoke-static {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadDPad;->c(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_2
    invoke-static {p1}, Lcom/hatkid/mkxpz/gamepad/GamepadButton;->a(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_3
    invoke-static {p1}, Lcom/hatkid/mkxpz/gamepad/Gamepad;->e(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
