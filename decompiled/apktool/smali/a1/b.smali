.class public final La1/b;
.super LD/b;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final n:Lcom/google/android/material/slider/Slider;

.field public final o:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/material/slider/Slider;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, LD/b;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La1/b;->o:Landroid/graphics/Rect;

    .line 10
    .line 11
    iput-object p1, p0, La1/b;->n:Lcom/google/android/material/slider/Slider;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final e(FF)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, La1/b;->n:Lcom/google/android/material/slider/Slider;

    .line 3
    .line 4
    invoke-virtual {v1}, La1/d;->getValues()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v0, v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, La1/b;->o:Landroid/graphics/Rect;

    .line 15
    .line 16
    invoke-virtual {v1, v0, v2}, La1/d;->u(ILandroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    float-to-int v1, p1

    .line 20
    float-to-int v3, p2

    .line 21
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, -0x1

    .line 32
    return p1
.end method

.method public final f(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, La1/b;->n:Lcom/google/android/material/slider/Slider;

    .line 3
    .line 4
    invoke-virtual {v1}, La1/d;->getValues()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final j(IILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    iget-object v0, p0, La1/b;->n:Lcom/google/android/material/slider/Slider;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x1000

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/16 v3, 0x2000

    .line 15
    .line 16
    if-eq p2, v1, :cond_3

    .line 17
    .line 18
    if-eq p2, v3, :cond_3

    .line 19
    .line 20
    const v1, 0x102003d

    .line 21
    .line 22
    .line 23
    if-eq p2, v1, :cond_1

    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    if-eqz p3, :cond_8

    .line 28
    .line 29
    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 30
    .line 31
    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {v0, p1, p2}, La1/d;->s(IF)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_8

    .line 47
    .line 48
    invoke-virtual {v0}, La1/d;->v()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, LD/b;->g(I)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_3
    iget p3, v0, La1/d;->W:F

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    cmpl-float v1, p3, v1

    .line 62
    .line 63
    if-nez v1, :cond_4

    .line 64
    .line 65
    const/high16 p3, 0x3f800000    # 1.0f

    .line 66
    .line 67
    :cond_4
    iget v1, v0, La1/d;->S:F

    .line 68
    .line 69
    iget v4, v0, La1/d;->R:F

    .line 70
    .line 71
    sub-float/2addr v1, v4

    .line 72
    div-float/2addr v1, p3

    .line 73
    const/16 v4, 0x14

    .line 74
    .line 75
    int-to-float v4, v4

    .line 76
    cmpg-float v5, v1, v4

    .line 77
    .line 78
    if-gtz v5, :cond_5

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_5
    div-float/2addr v1, v4

    .line 82
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    mul-float/2addr p3, v1

    .line 88
    :goto_0
    if-ne p2, v3, :cond_6

    .line 89
    .line 90
    neg-float p3, p3

    .line 91
    :cond_6
    invoke-virtual {v0}, La1/d;->k()Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_7

    .line 96
    .line 97
    neg-float p3, p3

    .line 98
    :cond_7
    invoke-virtual {v0}, La1/d;->getValues()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Ljava/lang/Float;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    add-float/2addr p2, p3

    .line 113
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-static {p2, p3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-virtual {v0, p1, p2}, La1/d;->s(IF)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0}, La1/d;->v()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, LD/b;->g(I)V

    .line 138
    .line 139
    .line 140
    return v2

    .line 141
    :cond_8
    :goto_1
    const/4 p1, 0x0

    .line 142
    return p1
.end method

.method public final l(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .line 1
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/b;->n:Lcom/google/android/material/slider/Slider;

    .line 7
    .line 8
    invoke-virtual {v0}, La1/d;->getValues()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Float;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueFrom()F

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v0}, Lcom/google/android/material/slider/Slider;->getValueTo()F

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    cmpl-float v6, v3, v4

    .line 37
    .line 38
    if-lez v6, :cond_0

    .line 39
    .line 40
    const/16 v6, 0x2000

    .line 41
    .line 42
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    cmpg-float v6, v3, v5

    .line 46
    .line 47
    if-gez v6, :cond_1

    .line 48
    .line 49
    const/16 v6, 0x1000

    .line 50
    .line 51
    invoke-virtual {p2, v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 v6, 0x1

    .line 55
    invoke-static {v6, v4, v5, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 60
    .line 61
    .line 62
    const-class v4, Landroid/widget/SeekBar;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    if-eqz v5, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v5, ","

    .line 90
    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_2
    float-to-int v5, v3

    .line 95
    int-to-float v5, v5

    .line 96
    cmpl-float v3, v5, v3

    .line 97
    .line 98
    if-nez v3, :cond_3

    .line 99
    .line 100
    const-string v3, "%.0f"

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string v3, "%.2f"

    .line 104
    .line 105
    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const v5, 0x7f1202b0

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-le v1, v6, :cond_6

    .line 129
    .line 130
    invoke-virtual {v0}, La1/d;->getValues()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    sub-int/2addr v1, v6

    .line 139
    if-ne p1, v1, :cond_4

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const v3, 0x7f1202ae

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    :goto_1
    move-object v3, v1

    .line 153
    goto :goto_2

    .line 154
    :cond_4
    if-nez p1, :cond_5

    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const v3, 0x7f1202af

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    goto :goto_1

    .line 168
    :cond_5
    const-string v1, ""

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v3, ", "

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, La1/b;->o:Landroid/graphics/Rect;

    .line 204
    .line 205
    invoke-virtual {v0, p1, v1}, La1/d;->u(ILandroid/graphics/Rect;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 209
    .line 210
    .line 211
    return-void
.end method
