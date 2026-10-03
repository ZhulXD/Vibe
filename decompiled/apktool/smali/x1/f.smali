.class public final synthetic Lx1/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LB1/m;

.field public final synthetic c:F

.field public final synthetic d:Lcom/minhub/gamehub/editor/EditModeOverlay;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(LB1/m;FLcom/minhub/gamehub/editor/EditModeOverlay;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/f;->b:LB1/m;

    .line 5
    .line 6
    iput p2, p0, Lx1/f;->c:F

    .line 7
    .line 8
    iput-object p3, p0, Lx1/f;->d:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 9
    .line 10
    iput p4, p0, Lx1/f;->e:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget v0, Lcom/minhub/gamehub/editor/EditModeOverlay;->l:I

    .line 2
    .line 3
    iget-object v0, p0, Lx1/f;->b:LB1/m;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    div-float/2addr v1, v2

    .line 13
    iget v3, p0, Lx1/f;->c:F

    .line 14
    .line 15
    sub-float/2addr v3, v1

    .line 16
    iget-object v1, p0, Lx1/f;->d:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-float v4, v4

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    int-to-float v5, v5

    .line 28
    sub-float/2addr v4, v5

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v3, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    int-to-float v3, v3

    .line 42
    div-float/2addr v3, v2

    .line 43
    iget v2, p0, Lx1/f;->e:F

    .line 44
    .line 45
    sub-float/2addr v2, v3

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    int-to-float v4, v4

    .line 56
    sub-float/2addr v3, v4

    .line 57
    invoke-static {v2, v5, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->a()V

    .line 65
    .line 66
    .line 67
    iget-object v0, v1, Lcom/minhub/gamehub/editor/EditModeOverlay;->e:Lkotlin/jvm/functions/Function1;

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method
