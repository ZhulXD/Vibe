.class public final Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u001c\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;",
        "",
        "<init>",
        "()V",
        "DIR_ACCESS_ID_MULTIPLIER",
        "",
        "fromDirAccessId",
        "Lkotlin/Pair;",
        "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
        "dirAccessId",
        "fromNative",
        "nativeAccessType",
        "storageScope",
        "Lorg/godotengine/godot/io/StorageScope;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;-><init>()V

    return-void
.end method

.method private final fromNative(I)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 3

    .line 1
    invoke-static {}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 2
    invoke-virtual {v1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->getNativeValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic fromNative$default(Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;ILorg/godotengine/godot/io/StorageScope;ILjava/lang/Object;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final fromDirAccessId(I)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    rem-int/lit8 v0, p1, 0xa

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0xa

    .line 4
    .line 5
    new-instance v1, Lkotlin/Pair;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(I)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public final fromNative(ILorg/godotengine/godot/io/StorageScope;)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;->fromNative(I)Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported access type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_0
    sget-object p1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_RESOURCES:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    if-ne v0, p1, :cond_2

    .line 6
    sget-object p2, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    invoke-virtual {p2}, Lorg/godotengine/godot/Godot$Companion;->isEditorBuild$lib_templateRelease()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    sget-object p1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    :cond_1
    return-object p1

    :cond_2
    if-eqz p2, :cond_7

    .line 8
    sget-object v0, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_6

    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 9
    :cond_4
    sget-object v1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    goto :goto_0

    :cond_5
    move-object v1, p1

    :cond_6
    :goto_0
    if-eqz v1, :cond_7

    return-object v1

    .line 10
    :cond_7
    sget-object p1, Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;->ACCESS_FILESYSTEM:Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;

    return-object p1
.end method
