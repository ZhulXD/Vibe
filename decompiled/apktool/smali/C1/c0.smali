.class public final enum LC1/c0;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum c:LC1/c0;

.field public static final synthetic d:[LC1/c0;

.field public static final synthetic e:Lkotlin/enums/EnumEntries;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, LC1/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "ALL"

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, LC1/c0;->c:LC1/c0;

    .line 11
    .line 12
    new-instance v1, LC1/c0;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const-string v3, "English"

    .line 16
    .line 17
    const-string v4, "ENGLISH"

    .line 18
    .line 19
    invoke-direct {v1, v4, v2, v3}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, LC1/c0;

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, "Vi\u1ec7t H\u00f3a"

    .line 26
    .line 27
    const-string v5, "VIETNAMESE"

    .line 28
    .line 29
    invoke-direct {v2, v5, v3, v4}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v3, LC1/c0;

    .line 33
    .line 34
    const/4 v4, 0x3

    .line 35
    const-string v5, "Indonesia"

    .line 36
    .line 37
    const-string v6, "INDONESIAN"

    .line 38
    .line 39
    invoke-direct {v3, v6, v4, v5}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, LC1/c0;

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    const-string v6, "Japanese"

    .line 46
    .line 47
    const-string v7, "JAPANESE"

    .line 48
    .line 49
    invoke-direct {v4, v7, v5, v6}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, LC1/c0;

    .line 53
    .line 54
    const/4 v6, 0x5

    .line 55
    const-string v7, "Chinese"

    .line 56
    .line 57
    const-string v8, "CHINESE"

    .line 58
    .line 59
    invoke-direct {v5, v8, v6, v7}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v6, LC1/c0;

    .line 63
    .line 64
    const/4 v7, 0x6

    .line 65
    const-string v8, "Korean"

    .line 66
    .line 67
    const-string v9, "KOREAN"

    .line 68
    .line 69
    invoke-direct {v6, v9, v7, v8}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    new-instance v7, LC1/c0;

    .line 73
    .line 74
    const/4 v8, 0x7

    .line 75
    const-string v9, "Russian"

    .line 76
    .line 77
    const-string v10, "RUSSIAN"

    .line 78
    .line 79
    invoke-direct {v7, v10, v8, v9}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v8, LC1/c0;

    .line 83
    .line 84
    const/16 v9, 0x8

    .line 85
    .line 86
    const-string v10, "Portugu\u00eas"

    .line 87
    .line 88
    const-string v11, "PORTUGUESE"

    .line 89
    .line 90
    invoke-direct {v8, v11, v9, v10}, LC1/c0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    filled-new-array/range {v0 .. v8}, [LC1/c0;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, LC1/c0;->d:[LC1/c0;

    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, LC1/c0;->e:Lkotlin/enums/EnumEntries;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, LC1/c0;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC1/c0;
    .locals 1

    .line 1
    const-class v0, LC1/c0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LC1/c0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LC1/c0;
    .locals 1

    .line 1
    sget-object v0, LC1/c0;->d:[LC1/c0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LC1/c0;

    .line 8
    .line 9
    return-object v0
.end method
