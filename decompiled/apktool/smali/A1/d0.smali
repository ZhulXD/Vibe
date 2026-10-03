.class public final enum LA1/d0;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LA1/d0;

.field public static final enum c:LA1/d0;

.field public static final enum d:LA1/d0;

.field public static final enum e:LA1/d0;

.field public static final enum f:LA1/d0;

.field public static final enum g:LA1/d0;

.field public static final synthetic h:[LA1/d0;

.field public static final synthetic i:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, LA1/d0;

    .line 2
    .line 3
    const-string v1, "INVALID_TARGET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LA1/d0;->b:LA1/d0;

    .line 10
    .line 11
    new-instance v1, LA1/d0;

    .line 12
    .line 13
    const-string v2, "UNSUPPORTED_ENGINE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, LA1/d0;

    .line 20
    .line 21
    const-string v3, "MISSING_GAME_PATH"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, LA1/d0;->c:LA1/d0;

    .line 28
    .line 29
    new-instance v3, LA1/d0;

    .line 30
    .line 31
    const-string v4, "RUNTIME_UNAVAILABLE"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, LA1/d0;

    .line 38
    .line 39
    const-string v5, "RUNTIME_NOT_TRUSTED"

    .line 40
    .line 41
    const/4 v6, 0x4

    .line 42
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, LA1/d0;

    .line 46
    .line 47
    const-string v6, "DOWNLOAD_FAILED"

    .line 48
    .line 49
    const/4 v7, 0x5

    .line 50
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    new-instance v6, LA1/d0;

    .line 54
    .line 55
    const-string v7, "INSTALL_FAILED"

    .line 56
    .line 57
    const/4 v8, 0x6

    .line 58
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v7, LA1/d0;

    .line 62
    .line 63
    const-string v8, "CLOSE_TIMEOUT_PROCESS_ALIVE"

    .line 64
    .line 65
    const/4 v9, 0x7

    .line 66
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    new-instance v8, LA1/d0;

    .line 70
    .line 71
    const-string v9, "CLOSE_TIMEOUT_PROCESS_UNVERIFIED"

    .line 72
    .line 73
    const/16 v10, 0x8

    .line 74
    .line 75
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    sput-object v8, LA1/d0;->d:LA1/d0;

    .line 79
    .line 80
    new-instance v9, LA1/d0;

    .line 81
    .line 82
    const-string v10, "REGISTRY_IO"

    .line 83
    .line 84
    const/16 v11, 0x9

    .line 85
    .line 86
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    sput-object v9, LA1/d0;->e:LA1/d0;

    .line 90
    .line 91
    new-instance v10, LA1/d0;

    .line 92
    .line 93
    const-string v11, "REGISTRY_CORRUPT"

    .line 94
    .line 95
    const/16 v12, 0xa

    .line 96
    .line 97
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    sput-object v10, LA1/d0;->f:LA1/d0;

    .line 101
    .line 102
    new-instance v11, LA1/d0;

    .line 103
    .line 104
    const-string v12, "UNKNOWN_SESSION"

    .line 105
    .line 106
    const/16 v13, 0xb

    .line 107
    .line 108
    invoke-direct {v11, v12, v13}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    new-instance v12, LA1/d0;

    .line 112
    .line 113
    const-string v13, "PROCESS_IDENTITY_MISMATCH"

    .line 114
    .line 115
    const/16 v14, 0xc

    .line 116
    .line 117
    invoke-direct {v12, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    new-instance v13, LA1/d0;

    .line 121
    .line 122
    const-string v14, "ACTIVITY_START_FAILED"

    .line 123
    .line 124
    const/16 v15, 0xd

    .line 125
    .line 126
    invoke-direct {v13, v14, v15}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    sput-object v13, LA1/d0;->g:LA1/d0;

    .line 130
    .line 131
    filled-new-array/range {v0 .. v13}, [LA1/d0;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    sput-object v0, LA1/d0;->h:[LA1/d0;

    .line 136
    .line 137
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, LA1/d0;->i:Lkotlin/enums/EnumEntries;

    .line 142
    .line 143
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA1/d0;
    .locals 1

    .line 1
    const-class v0, LA1/d0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LA1/d0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LA1/d0;
    .locals 1

    .line 1
    sget-object v0, LA1/d0;->h:[LA1/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LA1/d0;

    .line 8
    .line 9
    return-object v0
.end method
