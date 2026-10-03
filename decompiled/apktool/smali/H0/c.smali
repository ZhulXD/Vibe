.class public final LH0/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LH0/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, LH0/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .line 1
    iget v0, p0, LH0/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->w0:LR0/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0, p1}, LR0/c;->k(F)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Float;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, La1/d;

    .line 58
    .line 59
    iget-object v1, v0, La1/d;->m:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x0

    .line 66
    :goto_0
    if-ge v3, v2, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    check-cast v4, Lg1/a;

    .line 75
    .line 76
    const v5, 0x3f99999a    # 1.2f

    .line 77
    .line 78
    .line 79
    iput v5, v4, Lg1/a;->N:F

    .line 80
    .line 81
    iput p1, v4, Lg1/a;->L:F

    .line 82
    .line 83
    iput p1, v4, Lg1/a;->M:F

    .line 84
    .line 85
    const/high16 v5, 0x3f800000    # 1.0f

    .line 86
    .line 87
    const v6, 0x3e428f5c    # 0.19f

    .line 88
    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    invoke-static {v7, v5, v6, v5, p1}, LB0/a;->b(FFFFF)F

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    iput v5, v4, Lg1/a;->O:F

    .line 96
    .line 97
    invoke-virtual {v4}, LY0/h;->invalidateSelf()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Ljava/lang/Float;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :pswitch_3
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, LP/D;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, v0, LP/D;->m:F

    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Ljava/lang/Float;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    const/high16 v0, 0x437f0000    # 255.0f

    .line 148
    .line 149
    mul-float/2addr p1, v0

    .line 150
    float-to-int p1, p1

    .line 151
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, LP/x;

    .line 154
    .line 155
    iget-object v1, v0, LP/x;->c:Landroid/graphics/drawable/StateListDrawable;

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, LP/x;->d:Landroid/graphics/drawable/Drawable;

    .line 161
    .line 162
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 163
    .line 164
    .line 165
    iget-object p1, v0, LP/x;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Ljava/lang/Float;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    iget-object v0, p0, LH0/c;->b:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 184
    .line 185
    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:LY0/h;

    .line 186
    .line 187
    if-eqz v0, :cond_1

    .line 188
    .line 189
    invoke-virtual {v0, p1}, LY0/h;->m(F)V

    .line 190
    .line 191
    .line 192
    :cond_1
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
