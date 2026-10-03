.class public final synthetic LC1/s1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LC1/s1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LC1/s1;->c:Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

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
    .locals 2

    .line 1
    iget v0, p0, LC1/s1;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LC1/s1;->c:Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->p(Landroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->m()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
