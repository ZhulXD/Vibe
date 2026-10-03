.class public final enum LA1/x0;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LA1/x0;

.field public static final enum c:LA1/x0;

.field public static final synthetic d:[LA1/x0;

.field public static final synthetic e:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LA1/x0;

    .line 2
    .line 3
    const-string v1, "STATUS_CHANGED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, LA1/x0;

    .line 10
    .line 11
    const-string v2, "HEARTBEAT"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v2, LA1/x0;

    .line 18
    .line 19
    const-string v3, "LAUNCH"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v2, LA1/x0;->b:LA1/x0;

    .line 26
    .line 27
    new-instance v3, LA1/x0;

    .line 28
    .line 29
    const-string v4, "CLOSE"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    new-instance v4, LA1/x0;

    .line 36
    .line 37
    const-string v5, "RECOVERY"

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    sput-object v4, LA1/x0;->c:LA1/x0;

    .line 44
    .line 45
    filled-new-array {v0, v1, v2, v3, v4}, [LA1/x0;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, LA1/x0;->d:[LA1/x0;

    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, LA1/x0;->e:Lkotlin/enums/EnumEntries;

    .line 56
    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LA1/x0;
    .locals 1

    .line 1
    const-class v0, LA1/x0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LA1/x0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LA1/x0;
    .locals 1

    .line 1
    sget-object v0, LA1/x0;->d:[LA1/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LA1/x0;

    .line 8
    .line 9
    return-object v0
.end method
