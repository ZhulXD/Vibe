.class public final enum Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/input/GodotEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VirtualKeyboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_EMAIL_ADDRESS:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_NUMBER:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_NUMBER_DECIMAL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_PASSWORD:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_PHONE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

.field public static final enum KEYBOARD_TYPE_URL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;


# direct methods
.method private static synthetic $values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 8

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 2
    .line 3
    sget-object v1, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 4
    .line 5
    sget-object v2, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 6
    .line 7
    sget-object v3, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER_DECIMAL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 8
    .line 9
    sget-object v4, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PHONE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 10
    .line 11
    sget-object v5, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_EMAIL_ADDRESS:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 12
    .line 13
    sget-object v6, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PASSWORD:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 14
    .line 15
    sget-object v7, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_URL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 2
    .line 3
    const-string v1, "KEYBOARD_TYPE_DEFAULT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_DEFAULT:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 10
    .line 11
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 12
    .line 13
    const-string v1, "KEYBOARD_TYPE_MULTILINE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_MULTILINE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 20
    .line 21
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 22
    .line 23
    const-string v1, "KEYBOARD_TYPE_NUMBER"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 30
    .line 31
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 32
    .line 33
    const-string v1, "KEYBOARD_TYPE_NUMBER_DECIMAL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_NUMBER_DECIMAL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 40
    .line 41
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 42
    .line 43
    const-string v1, "KEYBOARD_TYPE_PHONE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PHONE:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 50
    .line 51
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 52
    .line 53
    const-string v1, "KEYBOARD_TYPE_EMAIL_ADDRESS"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_EMAIL_ADDRESS:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 60
    .line 61
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 62
    .line 63
    const-string v1, "KEYBOARD_TYPE_PASSWORD"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_PASSWORD:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 70
    .line 71
    new-instance v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 72
    .line 73
    const-string v1, "KEYBOARD_TYPE_URL"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->KEYBOARD_TYPE_URL:Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 80
    .line 81
    invoke-static {}, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->$values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->$VALUES:[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 86
    .line 87
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

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 1

    .line 1
    const-class v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->$VALUES:[Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/godotengine/godot/input/GodotEditText$VirtualKeyboardType;

    .line 8
    .line 9
    return-object v0
.end method
