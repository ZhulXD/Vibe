.class public final synthetic LC1/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:LC1/Z;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/AddGameActivity;LC1/Z;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/m;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/m;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/m;->d:LC1/Z;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, LC1/m;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, LC1/m;->d:LC1/Z;

    .line 5
    .line 6
    iget-object v3, p0, LC1/m;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    iput-object v2, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->u:LC1/Z;

    .line 26
    .line 27
    iget-object v0, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->e:Lw1/a;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "b"

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :cond_0
    iget-object v0, v0, Lw1/a;->n:Landroid/widget/ProgressBar;

    .line 38
    .line 39
    const/16 v2, 0x8

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v1}, Lcom/minhub/gamehub/hub/AddGameActivity;->m(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->w()V

    .line 48
    .line 49
    .line 50
    const v0, 0x7f120081

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v3}, Lcom/minhub/gamehub/hub/AddGameActivity;->t()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v4, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 72
    .line 73
    new-instance v5, LC1/c;

    .line 74
    .line 75
    const/4 v6, 0x2

    .line 76
    invoke-direct {v5, v3, v0, v6}, LC1/c;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;Ljava/util/List;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v4, "MinHub"

    .line 85
    .line 86
    const-string v5, "Full catalog fetch failed"

    .line 87
    .line 88
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    iget-object v0, v3, Lcom/minhub/gamehub/hub/AddGameActivity;->f:Landroid/os/Handler;

    .line 92
    .line 93
    new-instance v4, LC1/m;

    .line 94
    .line 95
    invoke-direct {v4, v3, v2, v1}, LC1/m;-><init>(Lcom/minhub/gamehub/hub/AddGameActivity;LC1/Z;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void

    .line 102
    nop

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
