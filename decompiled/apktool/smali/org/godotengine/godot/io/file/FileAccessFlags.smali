.class public final enum Lorg/godotengine/godot/io/file/FileAccessFlags;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;,
        Lorg/godotengine/godot/io/file/FileAccessFlags$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0080\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "",
        "nativeValue",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getNativeValue",
        "()I",
        "READ",
        "WRITE",
        "READ_WRITE",
        "WRITE_READ",
        "getMode",
        "",
        "shouldTruncate",
        "",
        "Companion",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final Companion:Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

.field public static final enum READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final enum READ_WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final enum WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

.field public static final enum WRITE_READ:Lorg/godotengine/godot/io/file/FileAccessFlags;


# instance fields
.field private final nativeValue:I


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 4

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 2
    .line 3
    sget-object v1, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 4
    .line 5
    sget-object v2, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ_WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 6
    .line 7
    sget-object v3, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE_READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 2
    .line 3
    const-string v1, "READ"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 11
    .line 12
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 13
    .line 14
    const-string v1, "WRITE"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 21
    .line 22
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 23
    .line 24
    const-string v1, "READ_WRITE"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ_WRITE:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 31
    .line 32
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 33
    .line 34
    const-string v1, "WRITE_READ"

    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lorg/godotengine/godot/io/file/FileAccessFlags;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->WRITE_READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 41
    .line 42
    invoke-static {}, Lorg/godotengine/godot/io/file/FileAccessFlags;->$values()[Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$VALUES:[Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 53
    .line 54
    new-instance v0, Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->Companion:Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;

    .line 61
    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/godotengine/godot/io/file/FileAccessFlags;->nativeValue:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lorg/godotengine/godot/io/file/FileAccessFlags;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 1

    .line 1
    const-class v0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/godotengine/godot/io/file/FileAccessFlags;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags;->$VALUES:[Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMode()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 23
    .line 24
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    const-string v0, "rw"

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_2
    const-string v0, "w"

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_3
    const-string v0, "r"

    .line 35
    .line 36
    return-object v0
.end method

.method public final getNativeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/FileAccessFlags;->nativeValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final shouldTruncate()Z
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/FileAccessFlags$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v0, v2, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x4

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 23
    .line 24
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    return v1

    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    return v0
.end method
