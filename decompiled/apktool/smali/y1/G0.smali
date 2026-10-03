.class public final synthetic Ly1/G0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GodotGameActivity;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;IFIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/G0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 5
    .line 6
    iput p2, p0, Ly1/G0;->c:I

    .line 7
    .line 8
    iput p3, p0, Ly1/G0;->d:F

    .line 9
    .line 10
    iput p4, p0, Ly1/G0;->e:I

    .line 11
    .line 12
    iput p5, p0, Ly1/G0;->f:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Ly1/G0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 9
    .line 10
    const-string v3, "joyaxis"

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget v4, p0, Ly1/G0;->c:I

    .line 15
    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget v5, p0, Ly1/G0;->d:F

    .line 21
    .line 22
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v2, v3, v4}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget v2, p0, Ly1/G0;->e:I

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v4, p0, Ly1/G0;->f:F

    .line 44
    .line 45
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v3, v0}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    .line 58
    return-object v0
.end method
