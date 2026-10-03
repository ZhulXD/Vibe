.class public final synthetic Ly1/x;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/GameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/x;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/x;->c:Lcom/minhub/gamehub/game/GameActivity;

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
    .locals 2

    .line 1
    iget v0, p0, Ly1/x;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Ly1/x;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
