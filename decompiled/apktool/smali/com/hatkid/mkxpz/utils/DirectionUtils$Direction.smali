.class public final enum Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hatkid/mkxpz/utils/DirectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "UP",
        "UP_RIGHT",
        "RIGHT",
        "DOWN_RIGHT",
        "DOWN",
        "DOWN_LEFT",
        "LEFT",
        "UP_LEFT",
        "UNKNOWN",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

.field public static final enum UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;


# direct methods
.method private static final synthetic $values()[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 9

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 2
    .line 3
    sget-object v1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 4
    .line 5
    sget-object v2, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 6
    .line 7
    sget-object v3, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 8
    .line 9
    sget-object v4, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 10
    .line 11
    sget-object v5, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 12
    .line 13
    sget-object v6, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 14
    .line 15
    sget-object v7, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 16
    .line 17
    sget-object v8, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 2
    .line 3
    const-string v1, "UP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 10
    .line 11
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 12
    .line 13
    const-string v1, "UP_RIGHT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 20
    .line 21
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 22
    .line 23
    const-string v1, "RIGHT"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 30
    .line 31
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 32
    .line 33
    const-string v1, "DOWN_RIGHT"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 40
    .line 41
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 42
    .line 43
    const-string v1, "DOWN"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 50
    .line 51
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 52
    .line 53
    const-string v1, "DOWN_LEFT"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 60
    .line 61
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 62
    .line 63
    const-string v1, "LEFT"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 70
    .line 71
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 72
    .line 73
    const-string v1, "UP_LEFT"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 80
    .line 81
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 82
    .line 83
    const-string v1, "UNKNOWN"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 91
    .line 92
    invoke-static {}, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$values()[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$VALUES:[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 97
    .line 98
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 103
    .line 104
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
            "Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 1

    .line 1
    const-class v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 1

    .line 1
    sget-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->$VALUES:[Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 8
    .line 9
    return-object v0
.end method
