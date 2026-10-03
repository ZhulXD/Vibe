.class public final synthetic Ly1/j0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le/g;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ly1/X0;

.field public final synthetic d:Ly1/x0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ly1/j0;->a:Le/g;

    .line 5
    .line 6
    iput-object p1, p0, Ly1/j0;->b:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p5, p0, Ly1/j0;->c:Ly1/X0;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/j0;->d:Ly1/x0;

    .line 11
    .line 12
    iput-object p3, p0, Ly1/j0;->e:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 7

    .line 1
    iget-object v4, p0, Ly1/j0;->a:Le/g;

    .line 2
    .line 3
    iget-object p1, v4, Le/g;->d:Le/e;

    .line 4
    .line 5
    iget-object p1, p1, Le/e;->i:Landroid/widget/Button;

    .line 6
    .line 7
    new-instance v0, LC1/i;

    .line 8
    .line 9
    const/4 v6, 0x2

    .line 10
    iget-object v1, p0, Ly1/j0;->c:Ly1/X0;

    .line 11
    .line 12
    iget-object v2, p0, Ly1/j0;->b:Landroid/widget/EditText;

    .line 13
    .line 14
    iget-object v3, p0, Ly1/j0;->d:Ly1/x0;

    .line 15
    .line 16
    iget-object v5, p0, Ly1/j0;->e:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    invoke-direct/range {v0 .. v6}, LC1/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
