.class public final Ly1/j1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public final f:Lkotlin/jvm/functions/Function0;

.field public g:I

.field public final h:LI1/j;

.field public i:Lcom/minhub/gamehub/editor/EditModeOverlay;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/minhub/gamehub/gamepad/GamepadOverlay;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gamepadOverlay"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "controlsHost"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p3, "keyboardHost"

    .line 17
    .line 18
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p3, "editorHost"

    .line 22
    .line 23
    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "arrangeToolbar"

    .line 27
    .line 28
    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p3, "arrangeProperties"

    .line 32
    .line 33
    invoke-static {p7, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p3, "onArrangeSave"

    .line 37
    .line 38
    invoke-static {p8, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Ly1/j1;->a:Landroid/app/Activity;

    .line 45
    .line 46
    iput-object p2, p0, Ly1/j1;->b:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 47
    .line 48
    iput-object p5, p0, Ly1/j1;->c:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    iput-object p6, p0, Ly1/j1;->d:Landroid/view/View;

    .line 51
    .line 52
    iput-object p7, p0, Ly1/j1;->e:Landroid/view/View;

    .line 53
    .line 54
    iput-object p8, p0, Ly1/j1;->f:Lkotlin/jvm/functions/Function0;

    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    iput p1, p0, Ly1/j1;->g:I

    .line 58
    .line 59
    new-instance p1, LI1/j;

    .line 60
    .line 61
    new-instance p2, Ly1/e1;

    .line 62
    .line 63
    const/4 p3, 0x0

    .line 64
    invoke-direct {p2, p0, p3}, Ly1/e1;-><init>(Ly1/j1;I)V

    .line 65
    .line 66
    .line 67
    new-instance p3, LA1/n;

    .line 68
    .line 69
    const/16 p5, 0x10

    .line 70
    .line 71
    invoke-direct {p3, p5, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p4, p2, p3}, LI1/j;-><init>(Landroid/widget/FrameLayout;Ly1/e1;LA1/n;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Ly1/j1;->h:LI1/j;

    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Ly1/p1;

    .line 6
    .line 7
    invoke-direct {p1, v1, v0}, Ly1/p1;-><init>(ZZ)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ly1/p1;

    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Ly1/p1;-><init>(ZZ)V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean v0, p1, Ly1/p1;->a:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 v0, 0x4

    .line 23
    :goto_1
    iget-object v2, p0, Ly1/j1;->b:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    iget-boolean p1, p1, Ly1/p1;->b:Z

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    move v2, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v0

    .line 37
    :goto_2
    iget-object v3, p0, Ly1/j1;->c:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 43
    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v1, v0

    .line 50
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_4
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/j1;->b:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    .line 19
    .line 20
    .line 21
    iget v0, p0, Ly1/j1;->g:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iget-object v2, p0, Ly1/j1;->a:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lx1/e;->a(Landroid/content/Context;IZ)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final c(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Ly1/j1;->a:Landroid/app/Activity;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    mul-float/2addr p1, v0

    .line 15
    float-to-int p1, p1

    .line 16
    return p1
.end method

.method public final d()V
    .locals 12

    .line 1
    iget-object v0, p0, Ly1/j1;->h:LI1/j;

    .line 2
    .line 3
    iget-object v1, v0, LI1/j;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/view/View;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, LI1/j;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroid/widget/FrameLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 22
    .line 23
    iget-object v1, p0, Ly1/j1;->c:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 29
    .line 30
    iget-object v2, p0, Ly1/j1;->a:Landroid/app/Activity;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v0, v2, v3}, Lcom/minhub/gamehub/editor/EditModeOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v3, -0x1

    .line 39
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 52
    .line 53
    new-instance v2, Ly1/e1;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-direct {v2, p0, v3}, Ly1/e1;-><init>(Ly1/j1;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->setOnButtonSelected(Lkotlin/jvm/functions/Function1;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ly1/e1;

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    invoke-direct {v2, p0, v3}, Ly1/e1;-><init>(Ly1/j1;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->setOnLayoutChanged(Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Ly1/j1;->j:Z

    .line 73
    .line 74
    iget-object v2, p0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p0}, Ly1/j1;->b()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Lcom/minhub/gamehub/editor/EditModeOverlay;->d(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    const/4 v2, 0x1

    .line 86
    invoke-virtual {p0, v2}, Ly1/j1;->a(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Ly1/j1;->d:Landroid/view/View;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Ly1/j1;->e:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 103
    .line 104
    .line 105
    const v1, 0x7f0900dc

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v2, Ly1/g1;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-direct {v2, p0, v3}, Ly1/g1;-><init>(Ly1/j1;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const v1, 0x7f0900de

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v2, Ly1/g1;

    .line 129
    .line 130
    const/4 v3, 0x1

    .line 131
    invoke-direct {v2, p0, v3}, Ly1/g1;-><init>(Ly1/j1;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    const v1, 0x7f0900dd

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v2, Ly1/g1;

    .line 145
    .line 146
    const/4 v3, 0x2

    .line 147
    invoke-direct {v2, p0, v3}, Ly1/g1;-><init>(Ly1/j1;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    const v1, 0x7f090104

    .line 154
    .line 155
    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v2, "#22C55E"

    .line 161
    .line 162
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const v1, 0x7f090108

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "#EF4444"

    .line 174
    .line 175
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    const v1, 0x7f090102

    .line 180
    .line 181
    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    const-string v2, "#3B82F6"

    .line 187
    .line 188
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    const v1, 0x7f09010a

    .line 193
    .line 194
    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const-string v2, "#F59E0B"

    .line 200
    .line 201
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    const v1, 0x7f090107

    .line 206
    .line 207
    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const-string v2, "#8B5CF6"

    .line 213
    .line 214
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    const v1, 0x7f090105

    .line 219
    .line 220
    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const-string v2, "#F97316"

    .line 226
    .line 227
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    const v1, 0x7f090106

    .line 232
    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    const-string v2, "#EC4899"

    .line 239
    .line 240
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    const v1, 0x7f090103

    .line 245
    .line 246
    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const-string v2, "#6B7280"

    .line 252
    .line 253
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    const v1, 0x7f090109

    .line 258
    .line 259
    .line 260
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const-string v2, "#F5F5F5"

    .line 265
    .line 266
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    filled-new-array/range {v3 .. v11}, [Lkotlin/Pair;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_3

    .line 291
    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Ljava/util/Map$Entry;

    .line 297
    .line 298
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Ljava/lang/Number;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    new-instance v4, Ly1/M0;

    .line 319
    .line 320
    const/4 v5, 0x1

    .line 321
    invoke-direct {v4, v5, p0, v2}, Ly1/M0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    goto :goto_1

    .line 328
    :cond_3
    const v1, 0x7f090084

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    new-instance v2, Ly1/g1;

    .line 336
    .line 337
    const/4 v3, 0x3

    .line 338
    invoke-direct {v2, p0, v3}, Ly1/g1;-><init>(Ly1/j1;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    const v1, 0x7f0900e5

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    new-instance v2, Ly1/g1;

    .line 352
    .line 353
    const/4 v3, 0x4

    .line 354
    invoke-direct {v2, p0, v3}, Ly1/g1;-><init>(Ly1/j1;I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    const v1, 0x7f0902a8

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    check-cast v1, Landroid/widget/SeekBar;

    .line 368
    .line 369
    new-instance v2, Ly1/h1;

    .line 370
    .line 371
    const/4 v3, 0x0

    .line 372
    invoke-direct {v2, p0, v3}, Ly1/h1;-><init>(Ly1/j1;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 376
    .line 377
    .line 378
    const v1, 0x7f0902a7

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    check-cast v0, Landroid/widget/SeekBar;

    .line 386
    .line 387
    new-instance v1, Ly1/h1;

    .line 388
    .line 389
    const/4 v2, 0x1

    .line 390
    invoke-direct {v1, p0, v2}, Ly1/h1;-><init>(Ly1/j1;I)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Ly1/j1;->g()V

    .line 397
    .line 398
    .line 399
    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Ly1/j1;->b()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    const-string v1, "currentConfigs"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "editedVisibleConfigs"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v2, 0x10

    .line 49
    .line 50
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v3, v1

    .line 74
    check-cast v3, Lx1/a;

    .line 75
    .line 76
    iget-object v3, v3, Lx1/a;->a:Ljava/lang/String;

    .line 77
    .line 78
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lx1/a;

    .line 106
    .line 107
    iget-object v3, v1, Lx1/a;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lx1/a;

    .line 114
    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move-object v1, v3

    .line 119
    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    move-object p1, v0

    .line 124
    :goto_4
    iget-object v0, p0, Ly1/j1;->a:Landroid/app/Activity;

    .line 125
    .line 126
    iget v1, p0, Ly1/j1;->g:I

    .line 127
    .line 128
    invoke-static {v0, v1, p1}, Lx1/e;->b(Landroid/content/Context;ILjava/util/List;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Ly1/j1;->b:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->d()V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Ly1/j1;->f:Lkotlin/jvm/functions/Function0;

    .line 137
    .line 138
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object p1, p0, Ly1/j1;->d:Landroid/view/View;

    .line 142
    .line 143
    const/16 v0, 0x8

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Ly1/j1;->e:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    const/4 p1, 0x0

    .line 154
    invoke-virtual {p0, p1}, Ly1/j1;->a(Z)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/j1;->h:LI1/j;

    .line 2
    .line 3
    iget-object v1, v0, LI1/j;->f:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, LI1/j;->f:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/view/View;

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, LI1/j;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    iget-object v0, p0, Ly1/j1;->c:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Ly1/j1;->e(Z)V

    .line 44
    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    return v0
.end method

.method public final g()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ly1/j1;->i:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getSelectedButtonConfig()Lx1/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move v5, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v5, v4

    .line 20
    :goto_1
    iget-boolean v6, v0, Ly1/j1;->j:Z

    .line 21
    .line 22
    const-string v7, "\u25be"

    .line 23
    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    new-instance v5, Ly1/a;

    .line 27
    .line 28
    invoke-direct {v5, v4, v4, v7}, Ly1/a;-><init>(ZZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    new-instance v5, Ly1/a;

    .line 33
    .line 34
    xor-int/lit8 v8, v6, 0x1

    .line 35
    .line 36
    if-eqz v6, :cond_3

    .line 37
    .line 38
    const-string v7, "\u25b4"

    .line 39
    .line 40
    :cond_3
    invoke-direct {v5, v3, v8, v7}, Ly1/a;-><init>(ZZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_2
    const v6, 0x7f090323

    .line 44
    .line 45
    .line 46
    iget-object v7, v0, Ly1/j1;->e:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Landroid/widget/TextView;

    .line 53
    .line 54
    const v8, 0x7f0900e5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Landroid/widget/TextView;

    .line 62
    .line 63
    const v9, 0x7f0901ba

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    const v10, 0x7f0903a3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    check-cast v10, Landroid/widget/TextView;

    .line 78
    .line 79
    const v11, 0x7f0902a8

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    check-cast v11, Landroid/widget/SeekBar;

    .line 87
    .line 88
    const v12, 0x7f090374

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    check-cast v12, Landroid/widget/TextView;

    .line 96
    .line 97
    const v13, 0x7f0902a7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    check-cast v13, Landroid/widget/SeekBar;

    .line 105
    .line 106
    const v14, 0x7f0900dc

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v14

    .line 113
    const-string v15, "findViewById(...)"

    .line 114
    .line 115
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move/from16 v16, v3

    .line 119
    .line 120
    const v3, 0x7f0900de

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const v2, 0x7f0900dd

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    move/from16 v17, v4

    .line 141
    .line 142
    const v4, 0x7f090104

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move-object/from16 v18, v2

    .line 153
    .line 154
    const v2, 0x7f090108

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v19, v2

    .line 165
    .line 166
    const v2, 0x7f090102

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v20, v2

    .line 177
    .line 178
    const v2, 0x7f09010a

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v21, v2

    .line 189
    .line 190
    const v2, 0x7f090107

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    move-object/from16 v22, v2

    .line 201
    .line 202
    const v2, 0x7f090105

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    move-object/from16 v23, v2

    .line 213
    .line 214
    const v2, 0x7f090106

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    move-object/from16 v24, v2

    .line 225
    .line 226
    const v2, 0x7f090103

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    move-object/from16 v25, v2

    .line 237
    .line 238
    const v2, 0x7f090109

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    const/16 v15, 0xe

    .line 255
    .line 256
    new-array v15, v15, [Landroid/view/View;

    .line 257
    .line 258
    aput-object v14, v15, v17

    .line 259
    .line 260
    aput-object v3, v15, v16

    .line 261
    .line 262
    const/4 v3, 0x2

    .line 263
    aput-object v18, v15, v3

    .line 264
    .line 265
    const/4 v3, 0x3

    .line 266
    aput-object v4, v15, v3

    .line 267
    .line 268
    const/4 v3, 0x4

    .line 269
    aput-object v19, v15, v3

    .line 270
    .line 271
    const/4 v3, 0x5

    .line 272
    aput-object v20, v15, v3

    .line 273
    .line 274
    const/4 v3, 0x6

    .line 275
    aput-object v21, v15, v3

    .line 276
    .line 277
    const/4 v3, 0x7

    .line 278
    aput-object v22, v15, v3

    .line 279
    .line 280
    const/16 v3, 0x8

    .line 281
    .line 282
    aput-object v23, v15, v3

    .line 283
    .line 284
    const/16 v4, 0x9

    .line 285
    .line 286
    aput-object v24, v15, v4

    .line 287
    .line 288
    const/16 v4, 0xa

    .line 289
    .line 290
    aput-object v25, v15, v4

    .line 291
    .line 292
    const/16 v14, 0xb

    .line 293
    .line 294
    aput-object v2, v15, v14

    .line 295
    .line 296
    const/16 v2, 0xc

    .line 297
    .line 298
    aput-object v11, v15, v2

    .line 299
    .line 300
    const/16 v2, 0xd

    .line 301
    .line 302
    aput-object v13, v15, v2

    .line 303
    .line 304
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    iget-boolean v14, v5, Ly1/a;->a:Z

    .line 309
    .line 310
    if-eqz v14, :cond_4

    .line 311
    .line 312
    move/from16 v14, v17

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_4
    move v14, v3

    .line 316
    :goto_3
    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    iget-boolean v7, v5, Ly1/a;->b:Z

    .line 320
    .line 321
    if-eqz v7, :cond_5

    .line 322
    .line 323
    move/from16 v3, v17

    .line 324
    .line 325
    :cond_5
    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    iget-object v3, v5, Ly1/a;->c:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    .line 332
    .line 333
    const v3, 0x7f120121

    .line 334
    .line 335
    .line 336
    const v5, 0x7f120125

    .line 337
    .line 338
    .line 339
    const v7, 0x7f1201e5

    .line 340
    .line 341
    .line 342
    const/16 v8, 0x64

    .line 343
    .line 344
    iget-object v9, v0, Ly1/j1;->a:Landroid/app/Activity;

    .line 345
    .line 346
    if-nez v1, :cond_7

    .line 347
    .line 348
    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v7, "3 \u2014 "

    .line 355
    .line 356
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    const-string v1, "36"

    .line 370
    .line 371
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v9, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v9, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    .line 396
    .line 397
    const/16 v1, 0x24

    .line 398
    .line 399
    invoke-virtual {v11, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v13, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 403
    .line 404
    .line 405
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    if-eqz v2, :cond_6

    .line 414
    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    check-cast v2, Landroid/view/View;

    .line 420
    .line 421
    move/from16 v3, v17

    .line 422
    .line 423
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 424
    .line 425
    .line 426
    const v4, 0x3ee66666    # 0.45f

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 430
    .line 431
    .line 432
    goto :goto_4

    .line 433
    :cond_6
    const/4 v2, 0x0

    .line 434
    invoke-virtual {v0, v2}, Ly1/j1;->k(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, v2}, Ly1/j1;->j(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_7
    iget v14, v1, Lx1/a;->f:I

    .line 442
    .line 443
    iget-object v15, v1, Lx1/a;->b:Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v7

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v15, " \u2014 "

    .line 458
    .line 459
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-virtual {v9, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v3

    .line 484
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    .line 486
    .line 487
    iget v3, v1, Lx1/a;->j:F

    .line 488
    .line 489
    int-to-float v5, v8

    .line 490
    mul-float/2addr v3, v5

    .line 491
    float-to-int v3, v3

    .line 492
    invoke-static {v3, v4, v8}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    const v5, 0x7f120121

    .line 505
    .line 506
    .line 507
    invoke-virtual {v9, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    .line 513
    .line 514
    const/16 v4, 0x14

    .line 515
    .line 516
    const/16 v5, 0x8c

    .line 517
    .line 518
    invoke-static {v14, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 519
    .line 520
    .line 521
    move-result v4

    .line 522
    invoke-virtual {v11, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v13, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 526
    .line 527
    .line 528
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-eqz v3, :cond_8

    .line 537
    .line 538
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    check-cast v3, Landroid/view/View;

    .line 543
    .line 544
    move/from16 v4, v16

    .line 545
    .line 546
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 547
    .line 548
    .line 549
    const/high16 v5, 0x3f800000    # 1.0f

    .line 550
    .line 551
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 552
    .line 553
    .line 554
    goto :goto_5

    .line 555
    :cond_8
    iget-object v2, v1, Lx1/a;->h:Ljava/lang/String;

    .line 556
    .line 557
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 558
    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    const-string v4, "toUpperCase(...)"

    .line 564
    .line 565
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v2}, Ly1/j1;->k(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget-object v1, v1, Lx1/a;->i:Ljava/lang/String;

    .line 572
    .line 573
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v0, v1}, Ly1/j1;->j(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    return-void
.end method

.method public final h()V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/j1;->h:LI1/j;

    .line 2
    .line 3
    iget-object v1, v0, LI1/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iget-object v2, v0, LI1/j;->f:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Landroid/view/View;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v4, 0x7f0c00bb

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v4, Ly1/m1;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v0, v5}, Ly1/m1;-><init>(LI1/j;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    const v4, 0x7f0901c5

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Lorg/renpy/android/b;

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    invoke-direct {v5, v6}, Lorg/renpy/android/b;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    const v4, 0x7f090090

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/widget/Button;

    .line 63
    .line 64
    new-instance v5, Ly1/m1;

    .line 65
    .line 66
    const/4 v6, 0x1

    .line 67
    invoke-direct {v5, v0, v6}, Ly1/m1;-><init>(LI1/j;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    const v4, 0x7f0902eb

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance v5, Ly1/m1;

    .line 83
    .line 84
    const/4 v6, 0x2

    .line 85
    invoke-direct {v5, v0, v6}, Ly1/m1;-><init>(LI1/j;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    const v4, 0x7f0902e8

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Landroid/widget/TextView;

    .line 99
    .line 100
    new-instance v5, Ly1/m1;

    .line 101
    .line 102
    const/4 v6, 0x3

    .line 103
    invoke-direct {v5, v0, v6}, Ly1/m1;-><init>(LI1/j;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v0, LI1/j;->f:Ljava/lang/Object;

    .line 116
    .line 117
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :goto_0
    invoke-virtual {v0}, LI1/j;->c()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final i(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/j1;->e:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 14
    .line 15
    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Ly1/j1;->c(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-float v3, v3

    .line 23
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const-string v3, "#1FFF424D"

    .line 29
    .line 30
    :goto_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const-string v3, "#1B212D"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0, v3}, Ly1/j1;->c(I)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const-string v4, "#FF424D"

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    const-string v5, "#2A3446"

    .line 56
    .line 57
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    :goto_2
    invoke-virtual {v1, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    instance-of v1, v0, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    check-cast v0, Landroid/widget/LinearLayout;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    move v3, v2

    .line 78
    :goto_3
    if-ge v3, v1, :cond_8

    .line 79
    .line 80
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    instance-of v6, v5, Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz v6, :cond_3

    .line 87
    .line 88
    check-cast v5, Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz p2, :cond_2

    .line 91
    .line 92
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    goto :goto_4

    .line 97
    :cond_2
    const-string v6, "#9EA4B8"

    .line 98
    .line 99
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_8

    .line 107
    :cond_3
    if-eqz p2, :cond_4

    .line 108
    .line 109
    const/high16 v6, 0x3f800000    # 1.0f

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_4
    const v6, 0x3f51eb85    # 0.82f

    .line 113
    .line 114
    .line 115
    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    const/4 v7, -0x1

    .line 123
    if-ne v6, v7, :cond_7

    .line 124
    .line 125
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    .line 126
    .line 127
    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 134
    .line 135
    .line 136
    const v7, 0x7f0900dc

    .line 137
    .line 138
    .line 139
    if-ne p1, v7, :cond_5

    .line 140
    .line 141
    const/16 v7, 0x3e7

    .line 142
    .line 143
    invoke-virtual {p0, v7}, Ly1/j1;->c(I)I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    :goto_6
    int-to-float v7, v7

    .line 148
    goto :goto_7

    .line 149
    :cond_5
    const v7, 0x7f0900de

    .line 150
    .line 151
    .line 152
    if-ne p1, v7, :cond_6

    .line 153
    .line 154
    const/4 v7, 0x6

    .line 155
    invoke-virtual {p0, v7}, Ly1/j1;->c(I)I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    goto :goto_6

    .line 160
    :cond_6
    const/4 v7, 0x2

    .line 161
    invoke-virtual {p0, v7}, Ly1/j1;->c(I)I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    goto :goto_6

    .line 166
    :goto_7
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    .line 172
    :cond_7
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 11

    .line 1
    const v0, 0x7f090104

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "#22C55E"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v0, 0x7f090108

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "#EF4444"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const v0, 0x7f090102

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "#3B82F6"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const v0, 0x7f09010a

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "#F59E0B"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const v0, 0x7f090107

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "#8B5CF6"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const v0, 0x7f090105

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "#F97316"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    const v0, 0x7f090106

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "#EC4899"

    .line 87
    .line 88
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    const v0, 0x7f090103

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v1, "#6B7280"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    const v0, 0x7f090109

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "#F5F5F5"

    .line 113
    .line 114
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    filled-new-array/range {v2 .. v10}, [Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/util/Map$Entry;

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/lang/Number;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Ljava/lang/String;

    .line 161
    .line 162
    iget-object v3, p0, Ly1/j1;->e:Landroid/view/View;

    .line 163
    .line 164
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 169
    .line 170
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 171
    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 175
    .line 176
    .line 177
    const/4 v4, 0x6

    .line 178
    invoke-virtual {p0, v4}, Ly1/j1;->c(I)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    int-to-float v4, v4

    .line 183
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 191
    .line 192
    .line 193
    const/4 v4, 0x2

    .line 194
    invoke-virtual {p0, v4}, Ly1/j1;->c(I)I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 199
    .line 200
    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v5, "toUpperCase(...)"

    .line 205
    .line 206
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-eqz v1, :cond_0

    .line 214
    .line 215
    const/4 v1, -0x1

    .line 216
    goto :goto_1

    .line 217
    :cond_0
    const-string v1, "#26FFFFFF"

    .line 218
    .line 219
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "CIRCLE"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7f0900dc

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Ly1/j1;->i(IZ)V

    .line 11
    .line 12
    .line 13
    const-string v0, "ROUNDED"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const v1, 0x7f0900de

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Ly1/j1;->i(IZ)V

    .line 23
    .line 24
    .line 25
    const-string v0, "RECT"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const v0, 0x7f0900dd

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, p1}, Ly1/j1;->i(IZ)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
