.class public final LX/m;
.super Lcom/bumptech/glide/d;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final b:LX/k;

.field public final c:LX/l;

.field public d:LX/f;

.field public final synthetic e:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LX/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    new-instance p1, LX/k;

    .line 7
    .line 8
    invoke-direct {p1, p0}, LX/k;-><init>(LX/m;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LX/m;->b:LX/k;

    .line 12
    .line 13
    new-instance p1, LX/l;

    .line 14
    .line 15
    invoke-direct {p1, p0}, LX/l;-><init>(LX/m;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, LX/m;->c:LX/l;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final e0()V
    .locals 11

    .line 1
    iget-object v0, p0, LX/m;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const v1, 0x1020048

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 7
    .line 8
    .line 9
    const v2, 0x1020049

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 13
    .line 14
    .line 15
    const v3, 0x1020046

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 19
    .line 20
    .line 21
    const v4, 0x1020047

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()LP/W;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()LP/W;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5}, LP/W;->a()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    iget-boolean v6, v0, Landroidx/viewpager2/widget/ViewPager2;->s:Z

    .line 47
    .line 48
    if-nez v6, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iget-object v7, p0, LX/m;->c:LX/l;

    .line 56
    .line 57
    iget-object v8, p0, LX/m;->b:LX/k;

    .line 58
    .line 59
    const/4 v9, 0x1

    .line 60
    const/4 v10, 0x0

    .line 61
    if-nez v6, :cond_7

    .line 62
    .line 63
    iget-object v3, v0, Landroidx/viewpager2/widget/ViewPager2;->h:LX/i;

    .line 64
    .line 65
    iget-object v3, v3, LP/g0;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    .line 67
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-ne v3, v9, :cond_3

    .line 72
    .line 73
    move v3, v9

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v3, 0x0

    .line 76
    :goto_0
    if-eqz v3, :cond_4

    .line 77
    .line 78
    move v4, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move v4, v2

    .line 81
    :goto_1
    if-eqz v3, :cond_5

    .line 82
    .line 83
    move v1, v2

    .line 84
    :cond_5
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    .line 85
    .line 86
    sub-int/2addr v5, v9

    .line 87
    if-ge v2, v5, :cond_6

    .line 88
    .line 89
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 90
    .line 91
    invoke-direct {v2, v4, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v2, v10, v8}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    iget v2, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    .line 98
    .line 99
    if-lez v2, :cond_9

    .line 100
    .line 101
    new-instance v2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 102
    .line 103
    invoke-direct {v2, v1, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2, v10, v7}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_7
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    .line 111
    .line 112
    sub-int/2addr v5, v9

    .line 113
    if-ge v1, v5, :cond_8

    .line 114
    .line 115
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 116
    .line 117
    invoke-direct {v1, v4, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1, v10, v8}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 121
    .line 122
    .line 123
    :cond_8
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->e:I

    .line 124
    .line 125
    if-lez v1, :cond_9

    .line 126
    .line 127
    new-instance v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 128
    .line 129
    invoke-direct {v1, v3, v10}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0, v1, v10, v7}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 133
    .line 134
    .line 135
    :cond_9
    :goto_2
    return-void
.end method
