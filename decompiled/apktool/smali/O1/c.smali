.class public final enum LO1/c;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum c:LO1/c;

.field public static final enum d:LO1/c;

.field public static final synthetic e:[LO1/c;

.field public static final synthetic f:Lkotlin/enums/EnumEntries;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LO1/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mv"

    .line 5
    .line 6
    const-string v3, "MV"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, LO1/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, LO1/c;->c:LO1/c;

    .line 12
    .line 13
    new-instance v1, LO1/c;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "mz"

    .line 17
    .line 18
    const-string v4, "MZ"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, LO1/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, LO1/c;->d:LO1/c;

    .line 24
    .line 25
    filled-new-array {v0, v1}, [LO1/c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, LO1/c;->e:[LO1/c;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, LO1/c;->f:Lkotlin/enums/EnumEntries;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, LO1/c;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LO1/c;
    .locals 1

    .line 1
    const-class v0, LO1/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, LO1/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[LO1/c;
    .locals 1

    .line 1
    sget-object v0, LO1/c;->e:[LO1/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [LO1/c;

    .line 8
    .line 9
    return-object v0
.end method
