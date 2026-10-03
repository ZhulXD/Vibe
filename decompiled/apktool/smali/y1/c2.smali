.class public final synthetic Ly1/c2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/minhub/gamehub/game/VxAceCheatActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;ILjava/util/List;Lcom/minhub/gamehub/game/VxAceCheatActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/c2;->b:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/c2;->c:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Ly1/c2;->d:I

    .line 9
    .line 10
    iput-object p4, p0, Ly1/c2;->e:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Ly1/c2;->f:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Lcom/minhub/gamehub/game/VxAceCheatActivity;->o:I

    .line 2
    .line 3
    iget-object p1, p0, Ly1/c2;->c:Ljava/util/List;

    .line 4
    .line 5
    iget v0, p0, Ly1/c2;->d:I

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v1, p0, Ly1/c2;->b:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Ly1/c2;->e:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    add-int/lit8 v4, v2, 0x1

    .line 35
    .line 36
    if-gez v2, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 39
    .line 40
    .line 41
    :cond_0
    check-cast v3, Landroid/widget/TextView;

    .line 42
    .line 43
    if-ne v2, v0, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v2, v1

    .line 48
    :goto_1
    iget-object v5, p0, Ly1/c2;->f:Lcom/minhub/gamehub/game/VxAceCheatActivity;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Lcom/minhub/gamehub/game/VxAceCheatActivity;->n(Z)Landroid/graphics/drawable/GradientDrawable;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    move v2, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method
