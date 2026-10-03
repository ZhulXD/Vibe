.class public final synthetic LC1/B1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/LoginActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/LoginActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/B1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/B1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

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
    .locals 4

    .line 1
    iget v0, p0, LC1/B1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/B1;->c:Lcom/minhub/gamehub/hub/LoginActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/LoginActivity;->o()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/hub/LoginActivity;->r(Z)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_1
    sget v0, Lcom/minhub/gamehub/hub/LoginActivity;->l:I

    .line 26
    .line 27
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v2, "android.intent.action.VIEW"

    .line 30
    .line 31
    const-string v3, "https://h-game18.xyz/get-password-new/"

    .line 32
    .line 33
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string v1, "LoginActivity"

    .line 46
    .line 47
    const-string v2, "Cannot open password page"

    .line 48
    .line 49
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    .line 54
    return-object v0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
