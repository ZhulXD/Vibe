.class public final enum LM1/f;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:LM1/f;

.field public static final enum c:LM1/f;

.field public static final synthetic d:[LM1/f;

.field public static final synthetic e:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LM1/f;

    .line 2
    .line 3
    const-string v1, "REQUIRED_IN_PRIVATE_DIR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, LM1/f;

    .line 10
    .line 11
    const-string v2, "REQUIRED_AT_ROOT"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, LM1/f;->b:LM1/f;

    .line 18
    .line 19
    new-instance v2, LM1/f;

    .line 20
    .line 21
    const-string v3, "FORBIDDEN"

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v2, LM1/f;->c:LM1/f;

    .line 28
    .line 29
    filled-new-array {v0, v1, v2}, [LM1/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, LM1/f;->d:[LM1/f;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, LM1/f;->e:Lkotlin/enums/EnumEntries;

    .line 40
    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LM1/f;
    .locals 1

    .line 1
    const-class v0, LM1/f;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LM1/f;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LM1/f;
    .locals 1

    .line 1
    sget-object v0, LM1/f;->d:[LM1/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LM1/f;

    .line 8
    .line 9
    return-object v0
.end method
