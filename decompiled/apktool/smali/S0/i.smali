.class public final LS0/i;
.super LS0/a;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final g:F

.field public final h:F

.field public final i:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LS0/a;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const v0, 0x7f0700c1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, LS0/i;->g:F

    .line 16
    .line 17
    const v0, 0x7f0700c0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, LS0/i;->h:F

    .line 25
    .line 26
    const v0, 0x7f0700c2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, LS0/i;->i:F

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(FZI)V
    .locals 10

    .line 1
    iget-object v0, p0, LS0/a;->a:Landroid/animation/TimeInterpolator;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, LS0/a;->b:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {p3, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const/4 v1, 0x3

    .line 18
    and-int/2addr p3, v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne p3, v1, :cond_0

    .line 22
    .line 23
    move p3, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move p3, v2

    .line 26
    :goto_0
    if-ne p2, p3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v3, v2

    .line 30
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    int-to-float v4, p2

    .line 39
    const/4 v5, 0x0

    .line 40
    cmpg-float v6, v4, v5

    .line 41
    .line 42
    if-lez v6, :cond_8

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    cmpg-float v6, v1, v5

    .line 46
    .line 47
    if-gtz v6, :cond_2

    .line 48
    .line 49
    goto/16 :goto_7

    .line 50
    .line 51
    :cond_2
    iget v6, p0, LS0/i;->g:F

    .line 52
    .line 53
    div-float/2addr v6, v4

    .line 54
    iget v7, p0, LS0/i;->h:F

    .line 55
    .line 56
    div-float/2addr v7, v4

    .line 57
    iget v8, p0, LS0/i;->i:F

    .line 58
    .line 59
    div-float/2addr v8, v1

    .line 60
    if-eqz p3, :cond_3

    .line 61
    .line 62
    move v4, v5

    .line 63
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 64
    .line 65
    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    neg-float v7, v6

    .line 70
    :goto_2
    invoke-static {v5, v7, p1}, LB0/a;->a(FFF)F

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    .line 76
    add-float v6, v1, v4

    .line 77
    .line 78
    invoke-virtual {v0, v6}, Landroid/view/View;->setScaleX(F)V

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v8, p1}, LB0/a;->a(FFF)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    sub-float p1, v4, p1

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 88
    .line 89
    .line 90
    instance-of v7, v0, Landroid/view/ViewGroup;

    .line 91
    .line 92
    if-eqz v7, :cond_8

    .line 93
    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    .line 96
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-ge v2, v7, :cond_8

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-eqz p3, :cond_5

    .line 107
    .line 108
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    sub-int v8, p2, v8

    .line 113
    .line 114
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    add-int/2addr v9, v8

    .line 119
    int-to-float v8, v9

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    neg-int v8, v8

    .line 126
    int-to-float v8, v8

    .line 127
    :goto_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotX(F)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    neg-int v8, v8

    .line 135
    int-to-float v8, v8

    .line 136
    invoke-virtual {v7, v8}, Landroid/view/View;->setPivotY(F)V

    .line 137
    .line 138
    .line 139
    if-eqz v3, :cond_6

    .line 140
    .line 141
    sub-float v8, v4, v1

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_6
    move v8, v4

    .line 145
    :goto_5
    cmpl-float v9, p1, v5

    .line 146
    .line 147
    if-eqz v9, :cond_7

    .line 148
    .line 149
    div-float v9, v6, p1

    .line 150
    .line 151
    mul-float/2addr v9, v8

    .line 152
    goto :goto_6

    .line 153
    :cond_7
    move v9, v4

    .line 154
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setScaleX(F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v9}, Landroid/view/View;->setScaleY(F)V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    :goto_7
    return-void
.end method
