.class public final synthetic Ly1/i0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ly1/x0;

.field public final synthetic c:Ly1/X0;

.field public final synthetic d:Ljava/util/LinkedHashMap;

.field public final synthetic e:I

.field public final synthetic f:Landroid/widget/LinearLayout;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic i:LP/H0;


# direct methods
.method public synthetic constructor <init>(ILP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;Ly1/X0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p7, p0, Ly1/i0;->b:Ly1/x0;

    .line 5
    .line 6
    iput-object p8, p0, Ly1/i0;->c:Ly1/X0;

    .line 7
    .line 8
    iput-object p4, p0, Ly1/i0;->d:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    iput p1, p0, Ly1/i0;->e:I

    .line 11
    .line 12
    iput-object p3, p0, Ly1/i0;->f:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p5, p0, Ly1/i0;->g:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Ly1/i0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    iput-object p2, p0, Ly1/i0;->i:LP/H0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget v1, p0, Ly1/i0;->e:I

    .line 2
    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v4, p0, Ly1/i0;->d:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Li1/s;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Li1/s;->f()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    new-instance v0, Ly1/k0;

    .line 24
    .line 25
    iget-object v2, p0, Ly1/i0;->i:LP/H0;

    .line 26
    .line 27
    iget-object v3, p0, Ly1/i0;->f:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget-object v5, p0, Ly1/i0;->g:Ljava/util/List;

    .line 30
    .line 31
    iget-object v6, p0, Ly1/i0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 32
    .line 33
    iget-object v7, p0, Ly1/i0;->b:Ly1/x0;

    .line 34
    .line 35
    iget-object v8, p0, Ly1/i0;->c:Ly1/X0;

    .line 36
    .line 37
    invoke-direct/range {v0 .. v8}, Ly1/k0;-><init>(ILP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;Ly1/X0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v8, p1, v0}, Ly1/x0;->b(Ly1/X0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
