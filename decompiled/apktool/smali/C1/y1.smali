.class public final synthetic LC1/y1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/LoginActivity;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/LoginActivity;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, LC1/y1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/y1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    .line 4
    .line 5
    iput-object p2, p0, LC1/y1;->d:Ljava/lang/String;

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
    .locals 5

    .line 1
    iget v0, p0, LC1/y1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/y1;->d:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, LC1/y1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 11
    .line 12
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 13
    .line 14
    sget-object v0, Lcom/minhub/gamehub/hub/auth/AuthHttp;->INSTANCE:Lcom/minhub/gamehub/hub/auth/AuthHttp;

    .line 15
    .line 16
    const-string v3, "https://auth.h-game18.xyz/patreon/redeem"

    .line 17
    .line 18
    const-string v4, "code"

    .line 19
    .line 20
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/16 v4, 0x3a98

    .line 29
    .line 30
    invoke-virtual {v0, v3, v1, v4, v4}, Lcom/minhub/gamehub/hub/auth/AuthHttp;->postForm(Ljava/lang/String;Ljava/util/Map;II)Lcom/minhub/gamehub/hub/auth/AuthHttp$Result;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    new-instance v1, LC1/k;

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    invoke-direct {v1, v3, v2, v0}, LC1/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    .line 76
    .line 77
    const-string v3, "android.intent.action.VIEW"

    .line 78
    .line 79
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "LoginActivity"

    .line 92
    .line 93
    const-string v3, "Cannot launch Patreon OAuth"

    .line 94
    .line 95
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v3, "Cannot open browser: "

    .line 105
    .line 106
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->t(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 121
    .line 122
    .line 123
    :cond_1
    :goto_1
    return-void

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
