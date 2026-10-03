.class public final synthetic LC1/l;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroidx/core/widget/NestedScrollView;

.field public final synthetic c:Lcom/minhub/gamehub/hub/AddGameActivity;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroid/widget/LinearLayout;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic i:Lkotlin/jvm/internal/FunctionReferenceImpl;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/minhub/gamehub/hub/AddGameActivity;Landroid/widget/TextView;Lkotlin/jvm/functions/Function0;Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/l;->b:Landroidx/core/widget/NestedScrollView;

    .line 5
    .line 6
    iput-object p2, p0, LC1/l;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 7
    .line 8
    iput-object p3, p0, LC1/l;->d:Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object p4, p0, LC1/l;->e:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, LC1/l;->f:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p6, p0, LC1/l;->g:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, LC1/l;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    check-cast p8, Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 19
    .line 20
    iput-object p8, p0, LC1/l;->i:Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 21
    .line 22
    iput-object p9, p0, LC1/l;->j:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    sget p1, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 2
    .line 3
    iget-object v4, p0, LC1/l;->b:Landroidx/core/widget/NestedScrollView;

    .line 4
    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v3, p0, LC1/l;->c:Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 10
    .line 11
    iget-object v6, p0, LC1/l;->d:Landroid/widget/TextView;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3, v6, v4}, Lcom/minhub/gamehub/hub/AddGameActivity;->p(Landroid/widget/TextView;Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, LC1/l;->e:Lkotlin/jvm/functions/Function0;

    .line 20
    .line 21
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, LC1/l;->f:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iget-object v1, p0, LC1/l;->g:Ljava/util/List;

    .line 27
    .line 28
    iget-object v2, p0, LC1/l;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 29
    .line 30
    move-object v7, v4

    .line 31
    iget-object v4, p0, LC1/l;->i:Lkotlin/jvm/internal/FunctionReferenceImpl;

    .line 32
    .line 33
    iget-object v5, p0, LC1/l;->j:Lkotlin/jvm/functions/Function1;

    .line 34
    .line 35
    invoke-static/range {v0 .. v7}, Lcom/minhub/gamehub/hub/AddGameActivity;->o(Landroid/widget/LinearLayout;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/minhub/gamehub/hub/AddGameActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroid/widget/TextView;Landroidx/core/widget/NestedScrollView;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {v7, p1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f1200ff

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, LC1/n;

    .line 53
    .line 54
    move-object v5, v3

    .line 55
    move-object v3, v2

    .line 56
    move-object v2, v1

    .line 57
    const/4 v1, 0x0

    .line 58
    move-object v4, v7

    .line 59
    invoke-direct/range {v0 .. v5}, LC1/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
