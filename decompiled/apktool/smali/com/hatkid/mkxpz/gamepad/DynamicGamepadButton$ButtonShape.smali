.class public final enum Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

.field public static final enum CIRCLE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

.field public static final enum RECT_HORIZONTAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

.field public static final enum RECT_VERTICAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

.field public static final enum SQUARE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;


# direct methods
.method private static synthetic $values()[Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;
    .locals 4

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->CIRCLE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 2
    .line 3
    sget-object v1, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->SQUARE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 4
    .line 5
    sget-object v2, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->RECT_HORIZONTAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 6
    .line 7
    sget-object v3, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->RECT_VERTICAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 2
    .line 3
    const-string v1, "CIRCLE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->CIRCLE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 10
    .line 11
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 12
    .line 13
    const-string v1, "SQUARE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->SQUARE:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 20
    .line 21
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 22
    .line 23
    const-string v1, "RECT_HORIZONTAL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->RECT_HORIZONTAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 30
    .line 31
    new-instance v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 32
    .line 33
    const-string v1, "RECT_VERTICAL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->RECT_VERTICAL:Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 40
    .line 41
    invoke-static {}, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->$values()[Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->$VALUES:[Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;
    .locals 1

    .line 1
    const-class v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;
    .locals 1

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->$VALUES:[Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hatkid/mkxpz/gamepad/DynamicGamepadButton$ButtonShape;

    .line 8
    .line 9
    return-object v0
.end method
