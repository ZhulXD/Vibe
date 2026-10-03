.class public final Lcom/minhub/gamehub/data/TranslationOverlayResult;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/TranslationOverlayResult;",
        "",
        "success",
        "",
        "message",
        "",
        "overwrittenFiles",
        "",
        "addedFiles",
        "<init>",
        "(ZLjava/lang/String;II)V",
        "getSuccess",
        "()Z",
        "getMessage",
        "()Ljava/lang/String;",
        "getOverwrittenFiles",
        "()I",
        "getAddedFiles",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final addedFiles:I

.field private final message:Ljava/lang/String;

.field private final overwrittenFiles:I

.field private final success:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;II)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 3
    iput-object p2, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 5
    iput p4, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 6
    const-string p2, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/data/TranslationOverlayResult;-><init>(ZLjava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/data/TranslationOverlayResult;ZLjava/lang/String;IIILjava/lang/Object;)Lcom/minhub/gamehub/data/TranslationOverlayResult;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/data/TranslationOverlayResult;->copy(ZLjava/lang/String;II)Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ZLjava/lang/String;II)Lcom/minhub/gamehub/data/TranslationOverlayResult;
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/minhub/gamehub/data/TranslationOverlayResult;-><init>(ZLjava/lang/String;II)V

    .line 9
    .line 10
    .line 11
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
    instance-of v1, p1, Lcom/minhub/gamehub/data/TranslationOverlayResult;

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
    check-cast p1, Lcom/minhub/gamehub/data/TranslationOverlayResult;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 32
    .line 33
    iget v3, p1, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 39
    .line 40
    iget p1, p1, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 41
    .line 42
    if-eq v1, p1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final getAddedFiles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOverwrittenFiles()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-object v2, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->success:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->message:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->overwrittenFiles:I

    .line 6
    .line 7
    iget v3, p0, Lcom/minhub/gamehub/data/TranslationOverlayResult;->addedFiles:I

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v5, "TranslationOverlayResult(success="

    .line 12
    .line 13
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", message="

    .line 20
    .line 21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, ", overwrittenFiles="

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", addedFiles="

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ")"

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method
