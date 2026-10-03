.class public final enum LN1/j;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LN1/j;

.field public static final enum c:LN1/j;

.field public static final enum d:LN1/j;

.field public static final enum e:LN1/j;

.field public static final enum f:LN1/j;

.field public static final enum g:LN1/j;

.field public static final synthetic h:[LN1/j;

.field public static final synthetic i:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, LN1/j;

    .line 2
    .line 3
    const-string v1, "ACCEPTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LN1/j;->b:LN1/j;

    .line 10
    .line 11
    new-instance v1, LN1/j;

    .line 12
    .line 13
    const-string v2, "CORRUPT"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v2, LN1/j;

    .line 20
    .line 21
    const-string v3, "MISMATCH"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, LN1/j;->c:LN1/j;

    .line 28
    .line 29
    new-instance v3, LN1/j;

    .line 30
    .line 31
    const-string v4, "REPLAY"

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v3, LN1/j;->d:LN1/j;

    .line 38
    .line 39
    new-instance v4, LN1/j;

    .line 40
    .line 41
    const-string v5, "REVOKED"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, LN1/j;->e:LN1/j;

    .line 48
    .line 49
    new-instance v5, LN1/j;

    .line 50
    .line 51
    const-string v6, "INVALID"

    .line 52
    .line 53
    const/4 v7, 0x5

    .line 54
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v5, LN1/j;->f:LN1/j;

    .line 58
    .line 59
    new-instance v6, LN1/j;

    .line 60
    .line 61
    const-string v7, "ROLLBACK_UNAUTHORIZED"

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    sput-object v6, LN1/j;->g:LN1/j;

    .line 68
    .line 69
    filled-new-array/range {v0 .. v6}, [LN1/j;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, LN1/j;->h:[LN1/j;

    .line 74
    .line 75
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, LN1/j;->i:Lkotlin/enums/EnumEntries;

    .line 80
    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN1/j;
    .locals 1

    .line 1
    const-class v0, LN1/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LN1/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LN1/j;
    .locals 1

    .line 1
    sget-object v0, LN1/j;->h:[LN1/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LN1/j;

    .line 8
    .line 9
    return-object v0
.end method
