.class public final synthetic LC1/J1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/J1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/J1;->c:Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, LC1/J1;->b:I

    .line 2
    .line 3
    iget-object v0, p0, LC1/J1;->c:Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 9
    .line 10
    sget p1, Lcom/minhub/gamehub/hub/ImageViewerActivity;->e:I

    .line 11
    .line 12
    iget-object p1, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "item"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getThumbnailUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v3, v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v1, v3

    .line 40
    :goto_0
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/16 v2, 0x14

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-static {v0, p1, v3, v1, v2}, LY0/e;->o(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_0
    sget p1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 52
    .line 53
    new-instance p1, Landroid/content/Intent;

    .line 54
    .line 55
    const-class v1, Lcom/minhub/gamehub/hub/HubActivity;

    .line 56
    .line 57
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    const/high16 v1, 0x24000000

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_1
    sget p1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
