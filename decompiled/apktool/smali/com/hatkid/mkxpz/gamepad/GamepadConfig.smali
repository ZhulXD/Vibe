.class public Lcom/hatkid/mkxpz/gamepad/GamepadConfig;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public diagonalMovement:Ljava/lang/Boolean;

.field public final keycodeA:Ljava/lang/Integer;

.field public final keycodeALT:Ljava/lang/Integer;

.field public final keycodeB:Ljava/lang/Integer;

.field public final keycodeC:Ljava/lang/Integer;

.field public final keycodeCTRL:Ljava/lang/Integer;

.field public final keycodeL:Ljava/lang/Integer;

.field public final keycodeR:Ljava/lang/Integer;

.field public final keycodeSHIFT:Ljava/lang/Integer;

.field public final keycodeX:Ljava/lang/Integer;

.field public final keycodeY:Ljava/lang/Integer;

.field public final keycodeZ:Ljava/lang/Integer;

.field public opacity:Ljava/lang/Integer;

.field public scale:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1e

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->opacity:Ljava/lang/Integer;

    .line 11
    .line 12
    const/16 v0, 0x64

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->scale:Ljava/lang/Integer;

    .line 19
    .line 20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->diagonalMovement:Ljava/lang/Boolean;

    .line 23
    .line 24
    const/16 v0, 0x36

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeA:Ljava/lang/Integer;

    .line 31
    .line 32
    const/16 v0, 0x34

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeB:Ljava/lang/Integer;

    .line 39
    .line 40
    const/16 v0, 0x1f

    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeC:Ljava/lang/Integer;

    .line 47
    .line 48
    const/16 v0, 0x1d

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeX:Ljava/lang/Integer;

    .line 55
    .line 56
    const/16 v0, 0x2f

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeY:Ljava/lang/Integer;

    .line 63
    .line 64
    const/16 v0, 0x20

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeZ:Ljava/lang/Integer;

    .line 71
    .line 72
    const/16 v0, 0x2d

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeL:Ljava/lang/Integer;

    .line 79
    .line 80
    const/16 v0, 0x33

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeR:Ljava/lang/Integer;

    .line 87
    .line 88
    const/16 v0, 0x71

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeCTRL:Ljava/lang/Integer;

    .line 95
    .line 96
    const/16 v0, 0x39

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeALT:Ljava/lang/Integer;

    .line 103
    .line 104
    const/16 v0, 0x3b

    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/hatkid/mkxpz/gamepad/GamepadConfig;->keycodeSHIFT:Ljava/lang/Integer;

    .line 111
    .line 112
    return-void
.end method
