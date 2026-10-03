.class public final synthetic Ly1/d2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/minhub/gamehub/game/VxAceCheatActivity;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/VxAceCheatActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/d2;->b:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 5
    .line 6
    iput p2, p0, Ly1/d2;->c:I

    .line 7
    .line 8
    iput p3, p0, Ly1/d2;->d:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ly1/d2;->b:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/minhub/gamehub/game/VxAceCheatActivity;->e:Lcom/hatkid/mkxpz/cheat/CheatsManager;

    .line 4
    .line 5
    iget v1, p1, Lcom/minhub/gamehub/game/VxAceCheatActivity;->g:I

    .line 6
    .line 7
    iget v2, p0, Ly1/d2;->c:I

    .line 8
    .line 9
    iget v3, p0, Ly1/d2;->d:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/hatkid/mkxpz/cheat/CheatsManager;->addStatScript(III)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->q(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
