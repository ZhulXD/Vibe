.class public final synthetic Ly1/H0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/GodotGameActivity;

.field public final synthetic c:I

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GodotGameActivity;IFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/H0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 5
    .line 6
    iput p2, p0, Ly1/H0;->c:I

    .line 7
    .line 8
    iput p3, p0, Ly1/H0;->d:F

    .line 9
    .line 10
    iput p4, p0, Ly1/H0;->e:F

    .line 11
    .line 12
    iput p5, p0, Ly1/H0;->f:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3
    .line 4
    .line 5
    move-result-object v5

    .line 6
    iget-object v0, p0, Ly1/H0;->b:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Ly1/H0;->c:I

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, p0, Ly1/H0;->d:F

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget v4, p0, Ly1/H0;->e:F

    .line 30
    .line 31
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    iget v6, p0, Ly1/H0;->f:F

    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    move-object v6, v5

    .line 44
    move-object v8, v7

    .line 45
    move-object v10, v5

    .line 46
    move-object v11, v5

    .line 47
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "dispatchMouseEvent"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    .line 58
    return-object v0
.end method
