.class public final synthetic Ly1/u;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/u;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/u;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ly1/u;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ly1/u;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 9
    .line 10
    const v0, 0x7f120400

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->w()V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 43
    .line 44
    return-object v0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
