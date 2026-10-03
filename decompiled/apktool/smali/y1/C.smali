.class public final synthetic Ly1/C;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;

.field public final synthetic d:Lcom/minhub/gamehub/data/Save;


# direct methods
.method public synthetic constructor <init>(ZLcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Save;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ly1/C;->b:Z

    .line 5
    .line 6
    iput-object p2, p0, Ly1/C;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/C;->d:Lcom/minhub/gamehub/data/Save;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/minhub/gamehub/game/GameActivity;->L:I

    .line 2
    .line 3
    iget-boolean v0, p0, Ly1/C;->b:Z

    .line 4
    .line 5
    iget-object v1, p0, Ly1/C;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lw1/d;->O:Landroid/widget/FrameLayout;

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    const v0, 0x7f120251

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Ly1/C;->d:Lcom/minhub/gamehub/data/Save;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Save;->getDisplaySlotLabel()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v3, 0x7f120250

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
