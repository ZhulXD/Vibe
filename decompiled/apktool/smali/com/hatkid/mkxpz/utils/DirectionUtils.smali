.class public final Lcom/hatkid/mkxpz/utils/DirectionUtils;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J0\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hatkid/mkxpz/utils/DirectionUtils;",
        "",
        "<init>",
        "()V",
        "getDir",
        "Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;",
        "x",
        "",
        "y",
        "isDiagonal",
        "",
        "angle",
        "",
        "get4dir",
        "get8dir",
        "getAngle",
        "initX",
        "posX",
        "initY",
        "posY",
        "Direction",
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
.field public static final INSTANCE:Lcom/hatkid/mkxpz/utils/DirectionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hatkid/mkxpz/utils/DirectionUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hatkid/mkxpz/utils/DirectionUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hatkid/mkxpz/utils/DirectionUtils;->INSTANCE:Lcom/hatkid/mkxpz/utils/DirectionUtils;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final get4dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 2

    .line 1
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpl-double v0, p1, v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const-wide/high16 v0, 0x4061000000000000L    # 136.0

    .line 11
    .line 12
    cmpg-double v0, p1, v0

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    const-wide v0, 0x4060e00000000000L    # 135.0

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmpl-double v0, p1, v0

    .line 25
    .line 26
    if-lez v0, :cond_1

    .line 27
    .line 28
    const-wide v0, 0x406c400000000000L    # 226.0

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpg-double v0, p1, v0

    .line 34
    .line 35
    if-gez v0, :cond_1

    .line 36
    .line 37
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    const-wide v0, 0x406c200000000000L    # 225.0

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmpl-double v0, p1, v0

    .line 46
    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    const-wide v0, 0x4073c00000000000L    # 316.0

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    cmpg-double v0, p1, v0

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    const-wide/16 v0, 0x0

    .line 62
    .line 63
    cmpl-double v0, p1, v0

    .line 64
    .line 65
    if-ltz v0, :cond_3

    .line 66
    .line 67
    const-wide/high16 v0, 0x4047000000000000L    # 46.0

    .line 68
    .line 69
    cmpg-double v0, p1, v0

    .line 70
    .line 71
    if-ltz v0, :cond_4

    .line 72
    .line 73
    :cond_3
    const-wide v0, 0x4073b00000000000L    # 315.0

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    cmpl-double v0, p1, v0

    .line 79
    .line 80
    if-lez v0, :cond_5

    .line 81
    .line 82
    const-wide v0, 0x4076900000000000L    # 361.0

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    cmpg-double p1, p1, v0

    .line 88
    .line 89
    if-gez p1, :cond_5

    .line 90
    .line 91
    :cond_4
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_5
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 95
    .line 96
    return-object p1
.end method

.method private final get8dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 7

    .line 1
    const-wide v0, 0x4050e00000000000L    # 67.5

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmpl-double v2, p1, v0

    .line 7
    .line 8
    const-wide v3, 0x405c600000000000L    # 113.5

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    if-ltz v2, :cond_0

    .line 14
    .line 15
    cmpg-double v2, p1, v3

    .line 16
    .line 17
    if-gez v2, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    cmpl-double v2, p1, v3

    .line 23
    .line 24
    const-wide v3, 0x4063d00000000000L    # 158.5

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    if-ltz v2, :cond_1

    .line 30
    .line 31
    cmpg-double v2, p1, v3

    .line 32
    .line 33
    if-gez v2, :cond_1

    .line 34
    .line 35
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_1
    cmpl-double v2, p1, v3

    .line 39
    .line 40
    const-wide v3, 0x4069700000000000L    # 203.5

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    if-ltz v2, :cond_2

    .line 46
    .line 47
    cmpg-double v2, p1, v3

    .line 48
    .line 49
    if-gez v2, :cond_2

    .line 50
    .line 51
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    cmpl-double v2, p1, v3

    .line 55
    .line 56
    const-wide v3, 0x406f100000000000L    # 248.5

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    if-ltz v2, :cond_3

    .line 62
    .line 63
    cmpg-double v2, p1, v3

    .line 64
    .line 65
    if-gez v2, :cond_3

    .line 66
    .line 67
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_RIGHT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_3
    cmpl-double v2, p1, v3

    .line 71
    .line 72
    const-wide v3, 0x4072580000000000L    # 293.5

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    if-ltz v2, :cond_4

    .line 78
    .line 79
    cmpg-double v2, p1, v3

    .line 80
    .line 81
    if-gez v2, :cond_4

    .line 82
    .line 83
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_4
    cmpl-double v2, p1, v3

    .line 87
    .line 88
    const-wide v3, 0x4075280000000000L    # 338.5

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    if-ltz v2, :cond_5

    .line 94
    .line 95
    cmpg-double v2, p1, v3

    .line 96
    .line 97
    if-gez v2, :cond_5

    .line 98
    .line 99
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->DOWN_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_5
    const-wide/16 v5, 0x0

    .line 103
    .line 104
    cmpl-double v2, p1, v5

    .line 105
    .line 106
    const-wide v5, 0x4037800000000000L    # 23.5

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    if-ltz v2, :cond_6

    .line 112
    .line 113
    cmpg-double v2, p1, v5

    .line 114
    .line 115
    if-ltz v2, :cond_7

    .line 116
    .line 117
    :cond_6
    cmpl-double v2, p1, v3

    .line 118
    .line 119
    if-ltz v2, :cond_8

    .line 120
    .line 121
    const-wide v2, 0x4076900000000000L    # 361.0

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    cmpg-double v2, p1, v2

    .line 127
    .line 128
    if-gez v2, :cond_8

    .line 129
    .line 130
    :cond_7
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 131
    .line 132
    return-object p1

    .line 133
    :cond_8
    cmpl-double v2, p1, v5

    .line 134
    .line 135
    if-ltz v2, :cond_9

    .line 136
    .line 137
    cmpg-double p1, p1, v0

    .line 138
    .line 139
    if-gez p1, :cond_9

    .line 140
    .line 141
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UP_LEFT:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 142
    .line 143
    return-object p1

    .line 144
    :cond_9
    sget-object p1, Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;->UNKNOWN:Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 145
    .line 146
    return-object p1
.end method

.method public static final getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sub-float/2addr p2, p3

    .line 2
    float-to-double p2, p2

    .line 3
    sub-float/2addr p0, p1

    .line 4
    float-to-double p0, p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    :try_start_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-wide p0, v0

    .line 17
    :goto_0
    cmpg-double p2, p0, v0

    .line 18
    .line 19
    if-gez p2, :cond_0

    .line 20
    .line 21
    const-wide p2, 0x4076800000000000L    # 360.0

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    add-double/2addr p0, p2

    .line 27
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getDir(DZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static final getDir(DZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/hatkid/mkxpz/utils/DirectionUtils;->INSTANCE:Lcom/hatkid/mkxpz/utils/DirectionUtils;

    invoke-direct {p2, p0, p1}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->get8dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p2, Lcom/hatkid/mkxpz/utils/DirectionUtils;->INSTANCE:Lcom/hatkid/mkxpz/utils/DirectionUtils;

    invoke-direct {p2, p0, p1}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->get4dir(D)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0
.end method

.method public static final getDir(FFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, v0, p1, p2}, Lcom/hatkid/mkxpz/utils/DirectionUtils;->getAngle(FFFFZ)Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;

    move-result-object p0

    return-object p0
.end method
