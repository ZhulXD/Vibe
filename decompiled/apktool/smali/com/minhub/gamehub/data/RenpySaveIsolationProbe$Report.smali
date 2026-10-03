.class public final Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0014J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0014H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;",
        "",
        "ownSlots",
        "",
        "sharedSlots",
        "contestedSlots",
        "foreignSlots",
        "sharesPersistent",
        "",
        "<init>",
        "(IIIIZ)V",
        "getOwnSlots",
        "()I",
        "getSharedSlots",
        "getContestedSlots",
        "getForeignSlots",
        "getSharesPersistent",
        "()Z",
        "isMixed",
        "summary",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final contestedSlots:I

.field private final foreignSlots:I

.field private final ownSlots:I

.field private final sharedSlots:I

.field private final sharesPersistent:Z


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 5
    .line 6
    iput p2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 7
    .line 8
    iput p3, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 9
    .line 10
    iput p4, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;IIIIZILjava/lang/Object;)Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;
    .locals 0

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p7, p6, 0x4

    .line 14
    .line 15
    if-eqz p7, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p7, p6, 0x8

    .line 20
    .line 21
    if-eqz p7, :cond_3

    .line 22
    .line 23
    iget p4, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 24
    .line 25
    :cond_3
    and-int/lit8 p6, p6, 0x10

    .line 26
    .line 27
    if-eqz p6, :cond_4

    .line 28
    .line 29
    iget-boolean p5, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 30
    .line 31
    :cond_4
    move p6, p4

    .line 32
    move p7, p5

    .line 33
    move p4, p2

    .line 34
    move p5, p3

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    invoke-virtual/range {p2 .. p7}, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->copy(IIIIZ)Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIIIZ)Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;
    .locals 6

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;-><init>(IIIIZ)V

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
    instance-of v1, p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;

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
    check-cast p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;

    .line 12
    .line 13
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 14
    .line 15
    iget v3, p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 21
    .line 22
    iget v3, p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 28
    .line 29
    iget v3, p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 35
    .line 36
    iget v3, p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 42
    .line 43
    iget-boolean p1, p1, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 44
    .line 45
    if-eq v1, p1, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    return v0
.end method

.method public final getContestedSlots()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final getForeignSlots()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOwnSlots()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSharedSlots()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSharesPersistent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget v2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 23
    .line 24
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-boolean v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, v0

    .line 35
    return v1
.end method

.method public final isMixed()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final summary()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 2
    .line 3
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 4
    .line 5
    iget v2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 6
    .line 7
    iget v3, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->isMixed()Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const-string v6, " shared="

    .line 16
    .line 17
    const-string v7, " contested="

    .line 18
    .line 19
    const-string v8, "own="

    .line 20
    .line 21
    invoke-static {v8, v0, v1, v6, v7}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, " foreign="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " persistentShared="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " mixed="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->ownSlots:I

    .line 2
    .line 3
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharedSlots:I

    .line 4
    .line 5
    iget v2, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->contestedSlots:I

    .line 6
    .line 7
    iget v3, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->foreignSlots:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;->sharesPersistent:Z

    .line 10
    .line 11
    const-string v5, ", sharedSlots="

    .line 12
    .line 13
    const-string v6, ", contestedSlots="

    .line 14
    .line 15
    const-string v7, "Report(ownSlots="

    .line 16
    .line 17
    invoke-static {v7, v0, v1, v5, v6}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", foreignSlots="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", sharesPersistent="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ")"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
