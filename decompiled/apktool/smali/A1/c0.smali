.class public final enum LA1/c0;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LA1/c0;

.field public static final enum c:LA1/c0;

.field public static final enum d:LA1/c0;

.field public static final synthetic e:[LA1/c0;

.field public static final synthetic f:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, LA1/c0;

    .line 2
    .line 3
    const-string v1, "DETAIL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LA1/c0;->b:LA1/c0;

    .line 10
    .line 11
    new-instance v1, LA1/c0;

    .line 12
    .line 13
    const-string v2, "FAVORITE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, LA1/c0;

    .line 20
    .line 21
    const-string v3, "RECENT"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v3, LA1/c0;

    .line 28
    .line 29
    const-string v4, "DEEP_LINK"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, LA1/c0;

    .line 36
    .line 37
    const-string v5, "NOTIFICATION"

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v5, LA1/c0;

    .line 44
    .line 45
    const-string v6, "SPLASH"

    .line 46
    .line 47
    const/4 v7, 0x5

    .line 48
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    sput-object v5, LA1/c0;->c:LA1/c0;

    .line 52
    .line 53
    new-instance v6, LA1/c0;

    .line 54
    .line 55
    const-string v7, "NATIVE_REDISPATCH"

    .line 56
    .line 57
    const/4 v8, 0x6

    .line 58
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    sput-object v6, LA1/c0;->d:LA1/c0;

    .line 62
    .line 63
    new-instance v7, LA1/c0;

    .line 64
    .line 65
    const-string v8, "WEB_REDISPATCH"

    .line 66
    .line 67
    const/4 v9, 0x7

    .line 68
    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    new-instance v8, LA1/c0;

    .line 72
    .line 73
    const-string v9, "SETTINGS"

    .line 74
    .line 75
    const/16 v10, 0x8

    .line 76
    .line 77
    invoke-direct {v8, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    new-instance v9, LA1/c0;

    .line 81
    .line 82
    const-string v10, "DOWNLOAD"

    .line 83
    .line 84
    const/16 v11, 0x9

    .line 85
    .line 86
    invoke-direct {v9, v10, v11}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    new-instance v10, LA1/c0;

    .line 90
    .line 91
    const-string v11, "BROWSER"

    .line 92
    .line 93
    const/16 v12, 0xa

    .line 94
    .line 95
    invoke-direct {v10, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    filled-new-array/range {v0 .. v10}, [LA1/c0;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, LA1/c0;->e:[LA1/c0;

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, LA1/c0;->f:Lkotlin/enums/EnumEntries;

    .line 109
    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA1/c0;
    .locals 1

    .line 1
    const-class v0, LA1/c0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LA1/c0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LA1/c0;
    .locals 1

    .line 1
    sget-object v0, LA1/c0;->e:[LA1/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LA1/c0;

    .line 8
    .line 9
    return-object v0
.end method
