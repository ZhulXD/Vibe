.class public final synthetic Ly1/n0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ly1/x0;

.field public final synthetic e:Ljava/util/LinkedHashMap;

.field public final synthetic f:LP/H0;

.field public final synthetic g:Landroid/widget/LinearLayout;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/n0;->b:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/n0;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/n0;->d:Ly1/x0;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/n0;->e:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/n0;->f:LP/H0;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/n0;->g:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iput-object p7, p0, Ly1/n0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    iget-object v5, p0, Ly1/n0;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iget-object v6, p0, Ly1/n0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v0, p0, Ly1/n0;->b:Landroid/widget/EditText;

    .line 6
    .line 7
    iget-object v1, p0, Ly1/n0;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-object v2, p0, Ly1/n0;->d:Ly1/x0;

    .line 10
    .line 11
    iget-object v3, p0, Ly1/n0;->e:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    iget-object v4, p0, Ly1/n0;->f:LP/H0;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Ly1/x0;->e(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method
