.class public final enum Ly1/Z;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final enum b:Ly1/Z;

.field public static final enum c:Ly1/Z;

.field public static final synthetic d:[Ly1/Z;

.field public static final synthetic e:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ly1/Z;

    .line 2
    .line 3
    const-string v1, "DIRECT_URL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Ly1/Z;->b:Ly1/Z;

    .line 10
    .line 11
    new-instance v1, Ly1/Z;

    .line 12
    .line 13
    const-string v2, "INJECTED_HTML"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Ly1/Z;->c:Ly1/Z;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ly1/Z;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Ly1/Z;->d:[Ly1/Z;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Ly1/Z;->e:Lkotlin/enums/EnumEntries;

    .line 32
    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly1/Z;
    .locals 1

    .line 1
    const-class v0, Ly1/Z;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ly1/Z;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ly1/Z;
    .locals 1

    .line 1
    sget-object v0, Ly1/Z;->d:[Ly1/Z;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ly1/Z;

    .line 8
    .line 9
    return-object v0
.end method
