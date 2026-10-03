.class public final LC1/U1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LC1/V1;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/U1;->a:I

    iput-object p1, p0, LC1/U1;->b:Ljava/lang/Object;

    iput-object p2, p0, LC1/U1;->c:Ljava/lang/Object;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(LS/v;Lq/e;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/U1;->a:I

    .line 2
    iput-object p1, p0, LC1/U1;->c:Ljava/lang/Object;

    iput-object p2, p0, LC1/U1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, LC1/U1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/U1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lq/e;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lq/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, LC1/U1;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, LS/v;

    .line 16
    .line 17
    iget-object v0, v0, LS/v;->o:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    const-string v0, "animation"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, LC1/U1;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, LC1/V1;

    .line 31
    .line 32
    iget-object v0, p1, LC1/V1;->b:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p1, LC1/V1;->f:Z

    .line 40
    .line 41
    iget-object p1, p0, LC1/U1;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, LC1/U1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, LC1/U1;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, LS/v;

    .line 13
    .line 14
    iget-object v0, v0, LS/v;->o:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
