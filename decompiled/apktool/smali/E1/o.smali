.class public final synthetic LE1/o;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LE1/w;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(LE1/w;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p3, p0, LE1/o;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LE1/o;->c:LE1/w;

    .line 4
    .line 5
    iput-object p2, p0, LE1/o;->d:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, LE1/o;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Ly1/v1;->h:Ly1/v1;

    .line 7
    .line 8
    new-instance v0, LE1/q;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v2, p0, LE1/o;->c:LE1/w;

    .line 12
    .line 13
    iget-object v3, p0, LE1/o;->d:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v0, v2, v3, v1}, LE1/q;-><init>(LE1/w;Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v2, p1, v1, v0}, LE1/w;->f(Ly1/v1;LL1/a;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    sget-object p1, Ly1/v1;->g:Ly1/v1;

    .line 24
    .line 25
    new-instance v0, LE1/q;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, LE1/o;->c:LE1/w;

    .line 29
    .line 30
    iget-object v3, p0, LE1/o;->d:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {v0, v2, v3, v1}, LE1/q;-><init>(LE1/w;Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v2, p1, v1, v0}, LE1/w;->f(Ly1/v1;LL1/a;Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    iget-object p1, p0, LE1/o;->c:LE1/w;

    .line 41
    .line 42
    iget-object v0, p1, LE1/w;->b:LM1/g;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v0, LM1/g;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroid/widget/Button;

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, LE1/w;->b:LM1/g;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, LM1/g;->f:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Landroid/widget/TextView;

    .line 63
    .line 64
    const v1, 0x7f1203a6

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "getViewLifecycleOwner(...)"

    .line 79
    .line 80
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, LC1/i1;

    .line 88
    .line 89
    const/4 v2, 0x3

    .line 90
    iget-object v3, p0, LE1/o;->d:Landroid/content/Context;

    .line 91
    .line 92
    const/4 v4, 0x0

    .line 93
    invoke-direct {v1, p1, v3, v4, v2}, LC1/i1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x3

    .line 97
    invoke-static {v0, v4, v1, p1}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
