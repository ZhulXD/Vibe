.class public final synthetic Ly1/o0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le/g;

.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ljava/util/LinkedHashMap;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroid/widget/LinearLayout;

.field public final synthetic g:Ly1/x0;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic i:LP/H0;


# direct methods
.method public synthetic constructor <init>(Le/g;Landroid/widget/EditText;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroid/widget/LinearLayout;Ly1/x0;Lkotlin/jvm/internal/Ref$ObjectRef;LP/H0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/o0;->a:Le/g;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/o0;->b:Landroid/widget/EditText;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/o0;->c:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/o0;->d:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/o0;->e:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Ly1/o0;->f:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    iput-object p7, p0, Ly1/o0;->g:Ly1/x0;

    .line 17
    .line 18
    iput-object p8, p0, Ly1/o0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    iput-object p9, p0, Ly1/o0;->i:LP/H0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 8

    .line 1
    iget-object p1, p0, Ly1/o0;->a:Le/g;

    .line 2
    .line 3
    iget-object v0, p1, Le/g;->d:Le/e;

    .line 4
    .line 5
    iget-object v0, v0, Le/e;->i:Landroid/widget/Button;

    .line 6
    .line 7
    new-instance v1, LC1/G0;

    .line 8
    .line 9
    iget-object v4, p0, Ly1/o0;->c:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    iget-object v2, p0, Ly1/o0;->d:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v5, p0, Ly1/o0;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-direct {v1, v4, p1, v2, v5}, LC1/G0;-><init>(Ljava/util/LinkedHashMap;Le/g;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Ly1/o0;->i:LP/H0;

    .line 22
    .line 23
    iget-object v3, p0, Ly1/o0;->f:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    iget-object v6, p0, Ly1/o0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    iget-object v7, p0, Ly1/o0;->g:Ly1/x0;

    .line 28
    .line 29
    invoke-static/range {v2 .. v7}, Ly1/x0;->f(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Ly1/o0;->b:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
