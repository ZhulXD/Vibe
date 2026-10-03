.class public final enum Lorg/godotengine/godot/io/StorageScope;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/StorageScope$Identifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/io/StorageScope;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0080\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/godotengine/godot/io/StorageScope;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ASSETS",
        "APP",
        "SHARED",
        "SAF",
        "UNKNOWN",
        "Identifier",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/io/StorageScope;

.field public static final enum APP:Lorg/godotengine/godot/io/StorageScope;

.field public static final enum ASSETS:Lorg/godotengine/godot/io/StorageScope;

.field public static final enum SAF:Lorg/godotengine/godot/io/StorageScope;

.field public static final enum SHARED:Lorg/godotengine/godot/io/StorageScope;

.field public static final enum UNKNOWN:Lorg/godotengine/godot/io/StorageScope;


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/io/StorageScope;
    .locals 5

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    .line 2
    .line 3
    sget-object v1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 4
    .line 5
    sget-object v2, Lorg/godotengine/godot/io/StorageScope;->SHARED:Lorg/godotengine/godot/io/StorageScope;

    .line 6
    .line 7
    sget-object v3, Lorg/godotengine/godot/io/StorageScope;->SAF:Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    sget-object v4, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/godotengine/godot/io/StorageScope;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/StorageScope;

    .line 2
    .line 3
    const-string v1, "ASSETS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/io/StorageScope;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    .line 10
    .line 11
    new-instance v0, Lorg/godotengine/godot/io/StorageScope;

    .line 12
    .line 13
    const-string v1, "APP"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/io/StorageScope;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 20
    .line 21
    new-instance v0, Lorg/godotengine/godot/io/StorageScope;

    .line 22
    .line 23
    const-string v1, "SHARED"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/io/StorageScope;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->SHARED:Lorg/godotengine/godot/io/StorageScope;

    .line 30
    .line 31
    new-instance v0, Lorg/godotengine/godot/io/StorageScope;

    .line 32
    .line 33
    const-string v1, "SAF"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/io/StorageScope;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->SAF:Lorg/godotengine/godot/io/StorageScope;

    .line 40
    .line 41
    new-instance v0, Lorg/godotengine/godot/io/StorageScope;

    .line 42
    .line 43
    const-string v1, "UNKNOWN"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lorg/godotengine/godot/io/StorageScope;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 50
    .line 51
    invoke-static {}, Lorg/godotengine/godot/io/StorageScope;->$values()[Lorg/godotengine/godot/io/StorageScope;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->$VALUES:[Lorg/godotengine/godot/io/StorageScope;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lorg/godotengine/godot/io/StorageScope;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 62
    .line 63
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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/godotengine/godot/io/StorageScope;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;
    .locals 1

    .line 1
    const-class v0, Lorg/godotengine/godot/io/StorageScope;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/godotengine/godot/io/StorageScope;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->$VALUES:[Lorg/godotengine/godot/io/StorageScope;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/godotengine/godot/io/StorageScope;

    .line 8
    .line 9
    return-object v0
.end method
