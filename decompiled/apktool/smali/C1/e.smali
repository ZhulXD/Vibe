.class public final synthetic LC1/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/e;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/e;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LC1/e;->b:I

    .line 2
    .line 3
    const-wide/16 v1, 0x12c

    .line 4
    .line 5
    const/16 v3, 0x64

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, LC1/e;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget-object v0, LC1/Q;->b:LC1/Q;

    .line 14
    .line 15
    invoke-virtual {v5, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f1201b4

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v5, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    invoke-virtual {v5, v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance v3, LC1/e;

    .line 39
    .line 40
    invoke-direct {v3, v5, v4}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    sget-object v0, LC1/Q;->d:LC1/Q;

    .line 48
    .line 49
    invoke-virtual {v5, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    invoke-virtual {v5, v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v3, LC1/e;

    .line 59
    .line 60
    const/4 v4, 0x7

    .line 61
    invoke-direct {v3, v5, v4}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_3
    sget-object v0, LC1/Q;->d:LC1/Q;

    .line 69
    .line 70
    invoke-virtual {v5, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_4
    invoke-virtual {v5, v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance v3, LC1/e;

    .line 80
    .line 81
    const/4 v4, 0x5

    .line 82
    invoke-direct {v3, v5, v4}, LC1/e;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_5
    const/16 v0, 0x5a

    .line 90
    .line 91
    invoke-virtual {v5, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_6
    const/16 v0, 0x28

    .line 96
    .line 97
    invoke-virtual {v5, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->D(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_7
    sget-object v0, LC1/Q;->d:LC1/Q;

    .line 102
    .line 103
    invoke-virtual {v5, v0}, Lcom/minhub/gamehub/hub/AddGameActivity;->B(LC1/Q;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_8
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 108
    .line 109
    :try_start_0
    invoke-virtual {v5}, Lcom/minhub/gamehub/hub/AddGameActivity;->t()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->setFullCatalogItems(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v4}, Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;->setHasHydratedFullCatalog(Z)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v5, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v2, LC1/c;

    .line 124
    .line 125
    invoke-direct {v2, v5, v0, v4}, LC1/c;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/util/List;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v2, "Preemptive hydration failed (non-critical): "

    .line 140
    .line 141
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "MinHub"

    .line 152
    .line 153
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    :goto_0
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
