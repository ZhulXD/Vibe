.class public final enum LA1/j;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LA1/j;

.field public static final enum c:LA1/j;

.field public static final enum d:LA1/j;

.field public static final enum e:LA1/j;

.field public static final synthetic f:[LA1/j;

.field public static final synthetic g:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LA1/j;

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
    sput-object v0, LA1/j;->b:LA1/j;

    .line 10
    .line 11
    new-instance v1, LA1/j;

    .line 12
    .line 13
    const-string v2, "ALREADY_STOPPED"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, LA1/j;->c:LA1/j;

    .line 20
    .line 21
    new-instance v2, LA1/j;

    .line 22
    .line 23
    const-string v3, "ALREADY_STOPPING"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, LA1/j;->d:LA1/j;

    .line 30
    .line 31
    new-instance v3, LA1/j;

    .line 32
    .line 33
    const-string v4, "REJECTED_STALE"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    new-instance v4, LA1/j;

    .line 40
    .line 41
    const-string v5, "FAILED"

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v4, LA1/j;->e:LA1/j;

    .line 48
    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [LA1/j;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, LA1/j;->f:[LA1/j;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, LA1/j;->g:Lkotlin/enums/EnumEntries;

    .line 60
    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA1/j;
    .locals 1

    .line 1
    const-class v0, LA1/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LA1/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LA1/j;
    .locals 1

    .line 1
    sget-object v0, LA1/j;->f:[LA1/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LA1/j;

    .line 8
    .line 9
    return-object v0
.end method
