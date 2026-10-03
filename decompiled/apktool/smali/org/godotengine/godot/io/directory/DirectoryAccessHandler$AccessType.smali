.class final enum Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0082\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        "",
        "nativeValue",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getNativeValue",
        "()I",
        "ACCESS_RESOURCES",
        "ACCESS_USERDATA",
        "ACCESS_FILESYSTEM",
        "generateDirAccessId",
        "dirId",
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

.field private static final synthetic $VALUES:[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final enum ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final enum ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final enum ACCESS_USERDATA:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

.field public static final Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

.field public static final DIR_ACCESS_ID_MULTIPLIER:I = 0xa


# instance fields
.field private final nativeValue:I


# direct methods
.method private static final synthetic $values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 2
    .line 3
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_USERDATA:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 4
    .line 5
    sget-object v2, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 2
    .line 3
    const-string v1, "ACCESS_RESOURCES"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 10
    .line 11
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 12
    .line 13
    const-string v1, "ACCESS_USERDATA"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_USERDATA:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 20
    .line 21
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 22
    .line 23
    const-string v1, "ACCESS_FILESYSTEM"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 30
    .line 31
    invoke-static {}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$VALUES:[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 42
    .line 43
    new-instance v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->Companion:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;

    .line 50
    .line 51
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
    iput p3, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->nativeValue:I

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
            "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 1

    .line 1
    const-class v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->$VALUES:[Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final generateDirAccessId(I)I
    .locals 1

    .line 1
    mul-int/lit8 p1, p1, 0xa

    .line 2
    .line 3
    iget v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->nativeValue:I

    .line 4
    .line 5
    add-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public final getNativeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->nativeValue:I

    .line 2
    .line 3
    return v0
.end method
