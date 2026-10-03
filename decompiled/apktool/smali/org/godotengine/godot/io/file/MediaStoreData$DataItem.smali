.class final Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/file/MediaStoreData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\nH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\nH\u00c6\u0003J\t\u0010 \u001a\u00020\nH\u00c6\u0003JO\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020\nH\u00d6\u0001J\t\u0010&\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0017R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\'"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;",
        "",
        "id",
        "",
        "uri",
        "Landroid/net/Uri;",
        "displayName",
        "",
        "relativePath",
        "size",
        "",
        "dateModified",
        "mediaType",
        "<init>",
        "(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V",
        "getId",
        "()J",
        "getUri",
        "()Landroid/net/Uri;",
        "getDisplayName",
        "()Ljava/lang/String;",
        "getRelativePath",
        "getSize",
        "()I",
        "getDateModified",
        "getMediaType",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final dateModified:I

.field private final displayName:Ljava/lang/String;

.field private final id:J

.field private final mediaType:I

.field private final relativePath:Ljava/lang/String;

.field private final size:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "displayName"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "relativePath"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-wide p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 20
    .line 21
    iput-object p3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 22
    .line 23
    iput-object p4, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p5, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 26
    .line 27
    iput p6, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 28
    .line 29
    iput p7, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 30
    .line 31
    iput p8, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic copy$default(Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Object;)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    .locals 9

    .line 1
    and-int/lit8 v0, p9, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 6
    .line 7
    :cond_0
    move-wide v1, p1

    .line 8
    and-int/lit8 p1, p9, 0x2

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 13
    .line 14
    :cond_1
    move-object v3, p3

    .line 15
    and-int/lit8 p1, p9, 0x4

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p4, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 20
    .line 21
    :cond_2
    move-object v4, p4

    .line 22
    and-int/lit8 p1, p9, 0x8

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p5, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 27
    .line 28
    :cond_3
    move-object v5, p5

    .line 29
    and-int/lit8 p1, p9, 0x10

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    iget p6, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 34
    .line 35
    :cond_4
    move v6, p6

    .line 36
    and-int/lit8 p1, p9, 0x20

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    iget p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 41
    .line 42
    move v7, p1

    .line 43
    goto :goto_0

    .line 44
    :cond_5
    move/from16 v7, p7

    .line 45
    .line 46
    :goto_0
    and-int/lit8 p1, p9, 0x40

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    iget p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 51
    .line 52
    move v8, p1

    .line 53
    :goto_1
    move-object v0, p0

    .line 54
    goto :goto_2

    .line 55
    :cond_6
    move/from16 v8, p8

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :goto_2
    invoke-virtual/range {v0 .. v8}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->copy(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;
    .locals 10

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "displayName"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "relativePath"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 17
    .line 18
    move-wide v2, p1

    .line 19
    move-object v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move-object v6, p5

    .line 22
    move/from16 v7, p6

    .line 23
    .line 24
    move/from16 v8, p7

    .line 25
    .line 26
    move/from16 v9, p8

    .line 27
    .line 28
    invoke-direct/range {v1 .. v9}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

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
    check-cast p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 14
    .line 15
    iget-wide v5, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 23
    .line 24
    iget-object v3, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    iget-object v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_5

    .line 53
    .line 54
    return v2

    .line 55
    :cond_5
    iget v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 56
    .line 57
    iget v3, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_6

    .line 60
    .line 61
    return v2

    .line 62
    :cond_6
    iget v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 63
    .line 64
    iget v3, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 65
    .line 66
    if-eq v1, v3, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    iget v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 70
    .line 71
    iget p1, p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 72
    .line 73
    if-eq v1, p1, :cond_8

    .line 74
    .line 75
    return v2

    .line 76
    :cond_8
    return v0
.end method

.method public final getDateModified()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMediaType()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRelativePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/2addr v2, v1

    .line 18
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 31
    .line 32
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    add-int/2addr v1, v0

    .line 49
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->id:J

    .line 2
    .line 3
    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->uri:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->displayName:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->relativePath:Ljava/lang/String;

    .line 8
    .line 9
    iget v5, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->size:I

    .line 10
    .line 11
    iget v6, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->dateModified:I

    .line 12
    .line 13
    iget v7, p0, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->mediaType:I

    .line 14
    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v9, "DataItem(id="

    .line 18
    .line 19
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", uri="

    .line 26
    .line 27
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ", displayName="

    .line 34
    .line 35
    const-string v1, ", relativePath="

    .line 36
    .line 37
    invoke-static {v8, v0, v3, v1, v4}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, ", size="

    .line 41
    .line 42
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", dateModified="

    .line 49
    .line 50
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", mediaType="

    .line 57
    .line 58
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ")"

    .line 65
    .line 66
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method
