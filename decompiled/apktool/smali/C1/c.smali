.class public final synthetic LC1/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/util/List;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/c;->b:I

    iput-object p1, p0, LC1/c;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    iput-object p2, p0, LC1/c;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/minhub/gamehub/hub/AddGameActivity;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LC1/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/c;->d:Ljava/util/List;

    iput-object p2, p0, LC1/c;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, LC1/c;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "b"

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, p0, LC1/c;->d:Ljava/util/List;

    .line 10
    .line 11
    iget-object v6, p0, LC1/c;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 17
    .line 18
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    if-nez v7, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->setFullCatalogItems(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->setHasHydratedFullCatalog(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v5, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 39
    .line 40
    iput-boolean v4, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 41
    .line 42
    iget-object v0, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 43
    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v2, v0

    .line 51
    :goto_0
    iget-object v0, v2, Lw1/a;->n:Landroid/widget/ProgressBar;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->m(Z)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void

    .line 63
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {v6}, Landroid/app/Activity;->isDestroyed()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iput-object v5, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->s:Ljava/util/List;

    .line 78
    .line 79
    iput-boolean v4, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->x:Z

    .line 80
    .line 81
    iget-object v0, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 82
    .line 83
    invoke-static {v0}, LC1/U;->c(LC1/Z;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v6, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->m(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 93
    .line 94
    .line 95
    :cond_2
    return-void

    .line 96
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz v5, :cond_4

    .line 100
    .line 101
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    :cond_3
    move v4, v0

    .line 108
    goto :goto_1

    .line 109
    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    check-cast v7, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 124
    .line 125
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    sget-object v9, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->QUEUED:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 130
    .line 131
    if-eq v8, v9, :cond_6

    .line 132
    .line 133
    invoke-virtual {v7}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;->getState()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    sget-object v8, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;->RUNNING:Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;

    .line 138
    .line 139
    if-ne v7, v8, :cond_5

    .line 140
    .line 141
    :cond_6
    :goto_1
    iget-object v5, v6, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 142
    .line 143
    if-nez v5, :cond_7

    .line 144
    .line 145
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move-object v2, v5

    .line 150
    :goto_2
    iget-object v2, v2, Lw1/a;->u:Landroid/view/View;

    .line 151
    .line 152
    if-eqz v4, :cond_8

    .line 153
    .line 154
    move v1, v0

    .line 155
    :cond_8
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
