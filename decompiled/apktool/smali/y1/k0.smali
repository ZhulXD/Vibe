.class public final synthetic Ly1/k0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ly1/x0;

.field public final synthetic c:Ljava/util/LinkedHashMap;

.field public final synthetic d:I

.field public final synthetic e:Ly1/X0;

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
    iput-object p7, p0, Ly1/k0;->b:Ly1/x0;

    .line 5
    .line 6
    iput-object p4, p0, Ly1/k0;->c:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    iput p1, p0, Ly1/k0;->d:I

    .line 9
    .line 10
    iput-object p8, p0, Ly1/k0;->e:Ly1/X0;

    .line 11
    .line 12
    iput-object p3, p0, Ly1/k0;->f:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p5, p0, Ly1/k0;->g:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Ly1/k0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    iput-object p2, p0, Ly1/k0;->i:LP/H0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Li1/s;

    .line 2
    .line 3
    const-string v0, "nv"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v6, p0, Ly1/k0;->b:Ly1/x0;

    .line 9
    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Li1/s;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Ly1/k0;->e:Ly1/X0;

    .line 18
    .line 19
    iget-object v1, v1, Ly1/X0;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v3, p0, Ly1/k0;->c:Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    iget v1, p0, Ly1/k0;->d:I

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v1, p0, Ly1/k0;->i:LP/H0;

    .line 47
    .line 48
    iget-object v2, p0, Ly1/k0;->f:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    iget-object v4, p0, Ly1/k0;->g:Ljava/util/List;

    .line 51
    .line 52
    iget-object v5, p0, Ly1/k0;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    invoke-static/range {v1 .. v6}, Ly1/x0;->f(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 58
    .line 59
    return-object p1
.end method
