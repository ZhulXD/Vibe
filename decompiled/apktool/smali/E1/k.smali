.class public abstract synthetic LE1/k;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Ly1/F1;->values()[Ly1/F1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    :try_start_0
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    :catch_0
    const/4 v1, 0x2

    .line 13
    :try_start_1
    sget-object v3, Ly1/F1;->c:Ly1/c0;

    .line 14
    .line 15
    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    :catch_1
    const/4 v3, 0x3

    .line 18
    :try_start_2
    sget-object v4, Ly1/F1;->c:Ly1/c0;

    .line 19
    .line 20
    aput v3, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 21
    .line 22
    :catch_2
    const/4 v4, 0x4

    .line 23
    :try_start_3
    sget-object v5, Ly1/F1;->c:Ly1/c0;

    .line 24
    .line 25
    aput v4, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 26
    .line 27
    :catch_3
    invoke-static {}, Lcom/minhub/gamehub/data/GameEngine;->values()[Lcom/minhub/gamehub/data/GameEngine;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v0, v0

    .line 32
    new-array v0, v0, [I

    .line 33
    .line 34
    :try_start_4
    sget-object v5, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    aput v2, v0, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 41
    .line 42
    :catch_4
    :try_start_5
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    aput v1, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 49
    .line 50
    :catch_5
    :try_start_6
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    aput v3, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 57
    .line 58
    :catch_6
    :try_start_7
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->VXACE:Lcom/minhub/gamehub/data/GameEngine;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    aput v4, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 65
    .line 66
    :catch_7
    :try_start_8
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    const/4 v2, 0x5

    .line 73
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 74
    .line 75
    :catch_8
    :try_start_9
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v2, 0x6

    .line 82
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 83
    .line 84
    :catch_9
    :try_start_a
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v2, 0x7

    .line 91
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 92
    .line 93
    :catch_a
    :try_start_b
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->KIRI:Lcom/minhub/gamehub/data/GameEngine;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/16 v2, 0x8

    .line 100
    .line 101
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 102
    .line 103
    :catch_b
    :try_start_c
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/16 v2, 0x9

    .line 110
    .line 111
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 112
    .line 113
    :catch_c
    :try_start_d
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->BROWSE:Lcom/minhub/gamehub/data/GameEngine;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/16 v2, 0xa

    .line 120
    .line 121
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 122
    .line 123
    :catch_d
    sput-object v0, LE1/k;->a:[I

    .line 124
    .line 125
    return-void
.end method
