.class public final LC1/p1;
.super LP/W;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 1

    .line 1
    const-string v0, "urls"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, LP/W;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LC1/p1;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-boolean p2, p0, LC1/p1;->e:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, LC1/p1;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(LP/y0;I)V
    .locals 5

    .line 1
    check-cast p1, LC1/o1;

    .line 2
    .line 3
    iget-object v0, p1, LC1/o1;->u:LC1/l2;

    .line 4
    .line 5
    const-string v1, "holder"

    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, LC1/p1;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string p2, "get(...)"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Ljava/lang/String;

    .line 22
    .line 23
    iget-boolean p2, p0, LC1/p1;->e:Z

    .line 24
    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/c;->g(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/b;->c(Landroid/view/View;)Lcom/bumptech/glide/n;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/bumptech/glide/k;

    .line 40
    .line 41
    iget-object v2, p2, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/b;

    .line 42
    .line 43
    iget-object v3, p2, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    .line 44
    .line 45
    const-class v4, Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    invoke-direct {v1, v2, p2, v4, v3}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/n;Ljava/lang/Class;Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->v(Landroid/widget/ImageView;)Lv0/a;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final f(Landroid/view/ViewGroup;)LP/y0;
    .locals 2

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LC1/l2;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "getContext(...)"

    .line 13
    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, LC1/l2;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, LC1/o1;

    .line 30
    .line 31
    invoke-direct {p1, v0}, LC1/o1;-><init>(LC1/l2;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method
