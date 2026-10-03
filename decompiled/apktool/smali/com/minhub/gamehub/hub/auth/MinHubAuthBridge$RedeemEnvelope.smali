.class final Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemEnvelope"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;",
        "",
        "success",
        "",
        "message",
        "",
        "data",
        "Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;",
        "<init>",
        "(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)V",
        "getSuccess",
        "()Z",
        "getMessage",
        "()Ljava/lang/String;",
        "getData",
        "()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

.field private final message:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;-><init>(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 4
    iput-object p2, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;-><init>(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->copy(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;-><init>(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)V

    .line 4
    .line 5
    .line 6
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
    instance-of v1, p1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;

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
    check-cast p1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public final getData()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_1
    add-int/2addr v0, v2

    .line 33
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->success:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->message:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;->data:Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "RedeemEnvelope(success="

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", message="

    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", data="

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
