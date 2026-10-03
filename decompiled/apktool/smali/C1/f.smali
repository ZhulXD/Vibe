.class public final synthetic LC1/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:Lk/m1;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;Lk/m1;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/f;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/f;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/f;->d:Lk/m1;

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
    iget v0, p0, LC1/f;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/f;->d:Lk/m1;

    .line 4
    .line 5
    iget-object v2, p0, LC1/f;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 11
    .line 12
    iget-object v0, v1, Lk/m1;->a:Landroid/widget/TextView;

    .line 13
    .line 14
    const-string v3, "tvEngineChevron"

    .line 15
    .line 16
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lk/m1;->c:Landroid/view/View;

    .line 20
    .line 21
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 22
    .line 23
    const-string v3, "scrollEngineOptions"

    .line 24
    .line 25
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->p(Landroid/widget/TextView;Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 35
    .line 36
    iget-object v0, v1, Lk/m1;->f:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v3, "tvLanguageChevron"

    .line 41
    .line 42
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v1, Lk/m1;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 48
    .line 49
    const-string v3, "scrollLanguageOptions"

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->p(Landroid/widget/TextView;Landroid/view/View;)V

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
        :pswitch_0
    .end packed-switch
.end method
