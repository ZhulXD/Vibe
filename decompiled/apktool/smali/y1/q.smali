.class public final synthetic Ly1/q;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le/g;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lcom/minhub/gamehub/game/GameActivity;


# direct methods
.method public synthetic constructor <init>(Le/g;Landroid/widget/EditText;Lcom/minhub/gamehub/game/GameActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/q;->a:Le/g;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/q;->b:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/q;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ly1/q;->a:Le/g;

    .line 2
    .line 3
    iget-object p1, p1, Le/g;->d:Le/e;

    .line 4
    .line 5
    iget-object p1, p1, Le/e;->i:Landroid/widget/Button;

    .line 6
    .line 7
    iget-object v0, p0, Ly1/q;->b:Landroid/widget/EditText;

    .line 8
    .line 9
    iget-object v1, p0, Ly1/q;->c:Lcom/minhub/gamehub/game/GameActivity;

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Ly1/s;->c(Landroid/widget/EditText;Landroid/widget/Button;Lcom/minhub/gamehub/game/GameActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, LC1/N;

    .line 15
    .line 16
    invoke-direct {v2, v0, p1, v1}, LC1/N;-><init>(Landroid/widget/EditText;Landroid/widget/Button;Lcom/minhub/gamehub/game/GameActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
