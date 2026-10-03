.class public final enum Lorg/godotengine/godot/xr/XRMode;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/xr/XRMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/godotengine/godot/xr/XRMode;

.field public static final enum OPENXR:Lorg/godotengine/godot/xr/XRMode;

.field public static final enum REGULAR:Lorg/godotengine/godot/xr/XRMode;


# instance fields
.field public final cmdLineArg:Ljava/lang/String;

.field final index:I

.field public final inputFallbackMapping:Ljava/lang/String;

.field final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lorg/godotengine/godot/xr/XRMode;
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    .line 2
    .line 3
    sget-object v1, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lorg/godotengine/godot/xr/XRMode;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lorg/godotengine/godot/xr/XRMode;

    .line 2
    .line 3
    const-string v5, "--xr_mode_regular"

    .line 4
    .line 5
    const-string v6, "Default Android Gamepad"

    .line 6
    .line 7
    const-string v1, "REGULAR"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const-string v4, "Regular"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lorg/godotengine/godot/xr/XRMode;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/godotengine/godot/xr/XRMode;->REGULAR:Lorg/godotengine/godot/xr/XRMode;

    .line 17
    .line 18
    new-instance v1, Lorg/godotengine/godot/xr/XRMode;

    .line 19
    .line 20
    const-string v6, "--xr_mode_openxr"

    .line 21
    .line 22
    const-string v7, ""

    .line 23
    .line 24
    const-string v2, "OPENXR"

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x1

    .line 28
    const-string v5, "OpenXR"

    .line 29
    .line 30
    invoke-direct/range {v1 .. v7}, Lorg/godotengine/godot/xr/XRMode;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lorg/godotengine/godot/xr/XRMode;->OPENXR:Lorg/godotengine/godot/xr/XRMode;

    .line 34
    .line 35
    invoke-static {}, Lorg/godotengine/godot/xr/XRMode;->$values()[Lorg/godotengine/godot/xr/XRMode;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lorg/godotengine/godot/xr/XRMode;->$VALUES:[Lorg/godotengine/godot/xr/XRMode;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/godotengine/godot/xr/XRMode;->index:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/godotengine/godot/xr/XRMode;->label:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lorg/godotengine/godot/xr/XRMode;->cmdLineArg:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lorg/godotengine/godot/xr/XRMode;->inputFallbackMapping:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/xr/XRMode;
    .locals 1

    .line 1
    const-class v0, Lorg/godotengine/godot/xr/XRMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/godotengine/godot/xr/XRMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/godotengine/godot/xr/XRMode;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/xr/XRMode;->$VALUES:[Lorg/godotengine/godot/xr/XRMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/godotengine/godot/xr/XRMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/godotengine/godot/xr/XRMode;

    .line 8
    .line 9
    return-object v0
.end method
