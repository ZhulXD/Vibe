.class final Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J2\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
        "",
        "dirFile",
        "Ljava/io/File;",
        "files",
        "",
        "current",
        "",
        "<init>",
        "(Ljava/io/File;[Ljava/io/File;I)V",
        "getDirFile",
        "()Ljava/io/File;",
        "getFiles",
        "()[Ljava/io/File;",
        "[Ljava/io/File;",
        "getCurrent",
        "()I",
        "setCurrent",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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


# instance fields
.field private current:I

.field private final dirFile:Ljava/io/File;

.field private final files:[Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;[Ljava/io/File;I)V
    .locals 1

    const-string v0, "dirFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "files"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    iput-object p2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    iput p3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;[Ljava/io/File;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;-><init>(Ljava/io/File;[Ljava/io/File;I)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;Ljava/io/File;[Ljava/io/File;IILjava/lang/Object;)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->copy(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()[Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/io/File;[Ljava/io/File;I)Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;
    .locals 1

    .line 1
    const-string v0, "dirFile"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "files"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2, p3}, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;-><init>(Ljava/io/File;[Ljava/io/File;I)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 36
    .line 37
    iget p1, p1, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 38
    .line 39
    if-eq v1, p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getCurrent()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDirFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFiles()[Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 10
    .line 11
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, v0

    .line 25
    return v1
.end method

.method public final setCurrent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->dirFile:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->files:[Ljava/io/File;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess$DirData;->current:I

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "DirData(dirFile="

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ", files="

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", current="

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ")"

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
