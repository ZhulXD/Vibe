.class final enum Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field public static final enum CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field public static final enum CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field public static final enum ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;


# direct methods
.method private static synthetic $values()[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .locals 3

    .line 1
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 2
    .line 3
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 4
    .line 5
    sget-object v2, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 2
    .line 3
    const-string v1, "CHR_READ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 10
    .line 11
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 12
    .line 13
    const-string v1, "CHR_WRITE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 20
    .line 21
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 22
    .line 23
    const-string v1, "ENABLE_NOTIFICATION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 30
    .line 31
    invoke-static {}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->$values()[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->$VALUES:[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 36
    .line 37
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

.method public static valueOf(Ljava/lang/String;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .locals 1

    .line 1
    const-class v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->$VALUES:[Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 8
    .line 9
    return-object v0
.end method
