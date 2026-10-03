.class public final Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/data/RenpySaveNaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J.\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;",
        "",
        "page",
        "",
        "slot",
        "kind",
        "Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;",
        "<init>",
        "(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)V",
        "getPage",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSlot",
        "()I",
        "getKind",
        "()Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

.field private final page:Ljava/lang/Integer;

.field private final slot:I


# direct methods
.method public constructor <init>(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)V
    .locals 1

    .line 1
    const-string v0, "kind"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 10
    .line 11
    iput p2, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;ILjava/lang/Object;)Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->copy(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;
    .locals 1

    .line 1
    const-string v0, "kind"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2, p3}, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;-><init>(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)V

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
    instance-of v1, p1, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;

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
    check-cast p1, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

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
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 25
    .line 26
    iget v3, p1, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 34
    .line 35
    if-eq v1, p1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    return v0
.end method

.method public final getKind()Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPage()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSlot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    const/16 v1, 0x1f

    .line 12
    .line 13
    mul-int/2addr v0, v1

    .line 14
    iget v2, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v1, v0

    .line 27
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->page:Ljava/lang/Integer;

    .line 2
    .line 3
    iget v1, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->slot:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;->kind:Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "Slot(page="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", slot="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", kind="

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ")"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
