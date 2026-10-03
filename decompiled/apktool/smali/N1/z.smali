.class public final enum LN1/z;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LN1/z;

.field public static final enum c:LN1/z;

.field public static final enum d:LN1/z;

.field public static final enum e:LN1/z;

.field public static final enum f:LN1/z;

.field public static final enum g:LN1/z;

.field public static final synthetic h:[LN1/z;

.field public static final synthetic i:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LN1/z;

    .line 2
    .line 3
    const-string v1, "VERIFIED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LN1/z;->b:LN1/z;

    .line 10
    .line 11
    new-instance v1, LN1/z;

    .line 12
    .line 13
    const-string v2, "INVALID_SIGNATURE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, LN1/z;->c:LN1/z;

    .line 20
    .line 21
    new-instance v2, LN1/z;

    .line 22
    .line 23
    const-string v3, "MALFORMED_KEY"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, LN1/z;->d:LN1/z;

    .line 30
    .line 31
    new-instance v3, LN1/z;

    .line 32
    .line 33
    const-string v4, "MALFORMED_SIGNATURE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, LN1/z;->e:LN1/z;

    .line 40
    .line 41
    new-instance v4, LN1/z;

    .line 42
    .line 43
    const-string v5, "MALFORMED_MANIFEST"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v4, LN1/z;->f:LN1/z;

    .line 50
    .line 51
    new-instance v5, LN1/z;

    .line 52
    .line 53
    const-string v6, "UNAVAILABLE"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v5, LN1/z;->g:LN1/z;

    .line 60
    .line 61
    filled-new-array/range {v0 .. v5}, [LN1/z;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, LN1/z;->h:[LN1/z;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, LN1/z;->i:Lkotlin/enums/EnumEntries;

    .line 72
    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN1/z;
    .locals 1

    .line 1
    const-class v0, LN1/z;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LN1/z;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LN1/z;
    .locals 1

    .line 1
    sget-object v0, LN1/z;->h:[LN1/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LN1/z;

    .line 8
    .line 9
    return-object v0
.end method
