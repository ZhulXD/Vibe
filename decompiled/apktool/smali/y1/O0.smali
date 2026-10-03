.class public final enum Ly1/O0;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final c:Ly1/c0;

.field public static final enum d:Ly1/O0;

.field public static final enum e:Ly1/O0;

.field public static final synthetic f:[Ly1/O0;

.field public static final synthetic g:Lkotlin/enums/EnumEntries;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ly1/O0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "vulkan"

    .line 5
    .line 6
    const-string v3, "VULKAN"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ly1/O0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Ly1/O0;->d:Ly1/O0;

    .line 12
    .line 13
    new-instance v1, Ly1/O0;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "opengl"

    .line 17
    .line 18
    const-string v4, "OPENGL"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Ly1/O0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Ly1/O0;->e:Ly1/O0;

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ly1/O0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Ly1/O0;->f:[Ly1/O0;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Ly1/O0;->g:Lkotlin/enums/EnumEntries;

    .line 36
    .line 37
    new-instance v0, Ly1/c0;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Ly1/O0;->c:Ly1/c0;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ly1/O0;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly1/O0;
    .locals 1

    .line 1
    const-class v0, Ly1/O0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ly1/O0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ly1/O0;
    .locals 1

    .line 1
    sget-object v0, Ly1/O0;->f:[Ly1/O0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ly1/O0;

    .line 8
    .line 9
    return-object v0
.end method
