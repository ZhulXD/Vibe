.class public final synthetic Ly1/E0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:LB1/u;

.field public final synthetic c:Lcom/minhub/gamehub/game/GodotGameActivity;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(LB1/u;Lcom/minhub/gamehub/game/GodotGameActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/E0;->b:LB1/u;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/E0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 7
    .line 8
    iput-boolean p3, p0, Ly1/E0;->d:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Ly1/E0;->b:LB1/u;

    .line 9
    .line 10
    iget-object v2, v1, LB1/u;->d:LB1/v;

    .line 11
    .line 12
    iget v1, v1, LB1/u;->e:I

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Ly1/E0;->c:Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 19
    .line 20
    iget-boolean v4, p0, Ly1/E0;->d:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v2, v5, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v2, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    const/high16 v3, 0x3f800000    # 1.0f

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v3, 0x0

    .line 42
    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "joyaxis"

    .line 51
    .line 52
    invoke-virtual {v2, v1, v0}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, v3, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "joybutton"

    .line 73
    .line 74
    invoke-virtual {v2, v1, v0}, Ly1/V0;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 78
    .line 79
    return-object v0
.end method
