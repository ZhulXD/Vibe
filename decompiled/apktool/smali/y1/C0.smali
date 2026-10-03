.class public final synthetic Ly1/C0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;II)V
    .locals 0

    .line 1
    iput p3, p0, Ly1/C0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/C0;->c:Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    iput p2, p0, Ly1/C0;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ly1/C0;->b:I

    .line 2
    .line 3
    iget v1, p0, Ly1/C0;->d:I

    .line 4
    .line 5
    iget-object v2, p0, Ly1/C0;->c:Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 11
    .line 12
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v3, Lcom/minhub/gamehub/hub/GameDetailActivity;

    .line 17
    .line 18
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "game_id"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "putExtra(...)"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->p(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_0
    check-cast v2, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 39
    .line 40
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {v2, v0, v1}, Lcom/minhub/gamehub/game/GodotGameActivity;->s(II)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_1
    check-cast v2, Lcom/minhub/gamehub/game/GodotGameActivity;

    .line 50
    .line 51
    sget v0, Lcom/minhub/gamehub/game/GodotGameActivity;->q:I

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {v2, v0, v1}, Lcom/minhub/gamehub/game/GodotGameActivity;->s(II)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    return-object v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
