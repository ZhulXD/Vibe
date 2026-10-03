.class public final LH0/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LR0/r;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LH0/d;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    iput-boolean p2, p0, LH0/d;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;LR0/s;)Landroidx/core/view/WindowInsetsCompat;
    .locals 11

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    .line 18
    .line 19
    iget-object v3, p0, LH0/d;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 20
    .line 21
    iput v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    .line 22
    .line 23
    invoke-static {p1}, LR0/t;->d(Landroid/view/View;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget-boolean v7, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iput v4, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:I

    .line 48
    .line 49
    iget v8, p3, LR0/s;->d:I

    .line 50
    .line 51
    add-int/2addr v4, v8

    .line 52
    :cond_0
    iget-boolean v8, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    .line 53
    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    iget v5, p3, LR0/s;->c:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget v5, p3, LR0/s;->a:I

    .line 62
    .line 63
    :goto_0
    iget v8, v0, Landroidx/core/graphics/Insets;->left:I

    .line 64
    .line 65
    add-int/2addr v5, v8

    .line 66
    :cond_2
    iget-boolean v8, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    .line 67
    .line 68
    if-eqz v8, :cond_4

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    iget p3, p3, LR0/s;->a:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget p3, p3, LR0/s;->c:I

    .line 76
    .line 77
    :goto_1
    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    .line 78
    .line 79
    add-int v6, p3, v2

    .line 80
    .line 81
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 86
    .line 87
    iget-boolean v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Z

    .line 88
    .line 89
    const/4 v8, 0x1

    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 93
    .line 94
    iget v9, v0, Landroidx/core/graphics/Insets;->left:I

    .line 95
    .line 96
    if-eq v2, v9, :cond_5

    .line 97
    .line 98
    iput v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 99
    .line 100
    move v2, v8

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    const/4 v2, 0x0

    .line 103
    :goto_2
    iget-boolean v9, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 104
    .line 105
    if-eqz v9, :cond_6

    .line 106
    .line 107
    iget v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 108
    .line 109
    iget v10, v0, Landroidx/core/graphics/Insets;->right:I

    .line 110
    .line 111
    if-eq v9, v10, :cond_6

    .line 112
    .line 113
    iput v10, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 114
    .line 115
    move v2, v8

    .line 116
    :cond_6
    iget-boolean v9, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    .line 117
    .line 118
    if-eqz v9, :cond_7

    .line 119
    .line 120
    iget v9, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 121
    .line 122
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 123
    .line 124
    if-eq v9, v0, :cond_7

    .line 125
    .line 126
    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    move v8, v2

    .line 130
    :goto_3
    if-eqz v8, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    invoke-virtual {p1, v5, p3, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    .line 141
    .line 142
    iget-boolean p1, p0, LH0/d;->b:Z

    .line 143
    .line 144
    if-eqz p1, :cond_9

    .line 145
    .line 146
    iget p3, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 147
    .line 148
    iput p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:I

    .line 149
    .line 150
    :cond_9
    if-nez v7, :cond_b

    .line 151
    .line 152
    if-eqz p1, :cond_a

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    return-object p2

    .line 156
    :cond_b
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->O()V

    .line 157
    .line 158
    .line 159
    return-object p2
.end method
