.class public final synthetic Ly1/s0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Ly1/X0;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Ly1/x0;

.field public final synthetic e:Le/g;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Ly1/s0;->b:Ly1/X0;

    .line 5
    .line 6
    iput-object p1, p0, Ly1/s0;->c:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p4, p0, Ly1/s0;->d:Ly1/x0;

    .line 9
    .line 10
    iput-object p2, p0, Ly1/s0;->e:Le/g;

    .line 11
    .line 12
    iput-object p3, p0, Ly1/s0;->f:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Ly1/s0;->e:Le/g;

    .line 2
    .line 3
    iget-object p2, p0, Ly1/s0;->f:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object p3, p0, Ly1/s0;->c:Landroid/widget/EditText;

    .line 6
    .line 7
    iget-object v0, p0, Ly1/s0;->d:Ly1/x0;

    .line 8
    .line 9
    iget-object v1, p0, Ly1/s0;->b:Ly1/X0;

    .line 10
    .line 11
    invoke-static {p3, p1, p2, v0, v1}, Ly1/x0;->c(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method
