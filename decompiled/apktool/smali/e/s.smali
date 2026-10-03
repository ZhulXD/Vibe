.class public final Le/s;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Le/s;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Le/s;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Le/s;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Le/s;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, LA1/d;

    .line 9
    .line 10
    iget-object v0, p1, LA1/d;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Le/B;

    .line 13
    .line 14
    iget-object v0, v0, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, LA1/d;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Le/B;

    .line 24
    .line 25
    iget-object v1, v0, Le/B;->x:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, v0, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v0, v0, Landroid/view/View;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p1, LA1/d;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Le/B;

    .line 46
    .line 47
    iget-object v0, v0, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/view/View;

    .line 54
    .line 55
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    iget-object v0, p1, LA1/d;->d:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Le/B;

    .line 61
    .line 62
    iget-object v0, v0, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, LA1/d;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Le/B;

    .line 70
    .line 71
    iget-object v0, v0, Le/B;->z:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, LA1/d;->d:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Le/B;

    .line 80
    .line 81
    iput-object v1, p1, Le/B;->z:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 82
    .line 83
    iget-object p1, p1, Le/B;->B:Landroid/view/ViewGroup;

    .line 84
    .line 85
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_0
    iget-object p1, p0, Le/s;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p1, Le/B;

    .line 92
    .line 93
    iget-object v0, p1, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 94
    .line 95
    const/high16 v1, 0x3f800000    # 1.0f

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p1, Le/B;->z:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 104
    .line 105
    .line 106
    iput-object v1, p1, Le/B;->z:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_1
    iget-object p1, p0, Le/s;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Le/q;

    .line 112
    .line 113
    iget-object v0, p1, Le/q;->c:Le/B;

    .line 114
    .line 115
    iget-object v0, v0, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 116
    .line 117
    const/high16 v1, 0x3f800000    # 1.0f

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p1, Le/q;->c:Le/B;

    .line 123
    .line 124
    iget-object v0, v0, Le/B;->z:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 125
    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 128
    .line 129
    .line 130
    iget-object p1, p1, Le/q;->c:Le/B;

    .line 131
    .line 132
    iput-object v1, p1, Le/B;->z:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Le/s;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;->onAnimationStart(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object p1, p0, Le/s;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Le/B;

    .line 13
    .line 14
    iget-object v0, p1, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Landroid/view/View;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p1, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/view/View;

    .line 37
    .line 38
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_1
    iget-object p1, p0, Le/s;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Le/q;

    .line 45
    .line 46
    iget-object p1, p1, Le/q;->c:Le/B;

    .line 47
    .line 48
    iget-object p1, p1, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
