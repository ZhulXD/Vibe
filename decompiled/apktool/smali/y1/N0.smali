.class public final enum Ly1/N0;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final d:Ly1/c0;

.field public static final enum e:Ly1/N0;

.field public static final enum f:Ly1/N0;

.field public static final synthetic g:[Ly1/N0;

.field public static final synthetic h:Lkotlin/enums/EnumEntries;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ly1/N0;

    .line 2
    .line 3
    const-string v1, "60"

    .line 4
    .line 5
    const/16 v2, 0x3c

    .line 6
    .line 7
    const-string v3, "CAP_60"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v2, v1}, Ly1/N0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ly1/N0;->e:Ly1/N0;

    .line 14
    .line 15
    new-instance v1, Ly1/N0;

    .line 16
    .line 17
    const-string v2, "30"

    .line 18
    .line 19
    const/16 v3, 0x1e

    .line 20
    .line 21
    const-string v5, "CAP_30"

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-direct {v1, v5, v6, v3, v2}, Ly1/N0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ly1/N0;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const-string v5, "0"

    .line 31
    .line 32
    const-string v6, "UNLIMITED"

    .line 33
    .line 34
    invoke-direct {v2, v6, v3, v4, v5}, Ly1/N0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v2, Ly1/N0;->f:Ly1/N0;

    .line 38
    .line 39
    filled-new-array {v0, v1, v2}, [Ly1/N0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Ly1/N0;->g:[Ly1/N0;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Ly1/N0;->h:Lkotlin/enums/EnumEntries;

    .line 50
    .line 51
    new-instance v0, Ly1/c0;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Ly1/N0;->d:Ly1/c0;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Ly1/N0;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput p3, p0, Ly1/N0;->c:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly1/N0;
    .locals 1

    .line 1
    const-class v0, Ly1/N0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ly1/N0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ly1/N0;
    .locals 1

    .line 1
    sget-object v0, Ly1/N0;->g:[Ly1/N0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ly1/N0;

    .line 8
    .line 9
    return-object v0
.end method
