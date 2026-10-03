.class public final LO0/b;
.super Le/f;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final d:LY0/h;

.field public final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    .line 1
    const v0, 0x7f0402b5

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->H(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 14
    .line 15
    :goto_0
    const/4 v3, 0x0

    .line 16
    const v4, 0x7f04002b

    .line 17
    .line 18
    .line 19
    const v5, 0x7f13012c

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v3, v4, v5}, Lf1/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v7, Li/c;

    .line 30
    .line 31
    invoke-direct {v7, v6, v1}, Li/c;-><init>(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    move-object v6, v7

    .line 35
    :goto_1
    if-nez p2, :cond_3

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->H(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    move p2, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 46
    .line 47
    move p2, p1

    .line 48
    :cond_3
    :goto_2
    invoke-direct {p0, v6, p2}, Le/f;-><init>(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Le/f;->c:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p1, Le/b;

    .line 54
    .line 55
    iget-object v6, p1, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 56
    .line 57
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-array v11, v2, [I

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    const v9, 0x7f04002b

    .line 65
    .line 66
    .line 67
    const v10, 0x7f13012c

    .line 68
    .line 69
    .line 70
    invoke-static {v6, v7, v9, v10}, LR0/p;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    .line 72
    .line 73
    sget-object v8, LA0/a;->n:[I

    .line 74
    .line 75
    invoke-static/range {v6 .. v11}, LR0/p;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const v1, 0x7f070258

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    const/4 v1, 0x2

    .line 94
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const v7, 0x7f070259

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    const/4 v7, 0x3

    .line 110
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    const v9, 0x7f070257

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const/4 v9, 0x1

    .line 126
    invoke-virtual {p2, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    const v11, 0x7f070256

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    invoke-virtual {p2, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-ne p2, v9, :cond_4

    .line 161
    .line 162
    move v12, v7

    .line 163
    move v7, v0

    .line 164
    move v0, v12

    .line 165
    :cond_4
    new-instance p2, Landroid/graphics/Rect;

    .line 166
    .line 167
    invoke-direct {p2, v0, v1, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 168
    .line 169
    .line 170
    iput-object p2, p0, LO0/b;->e:Landroid/graphics/Rect;

    .line 171
    .line 172
    const-class p2, LO0/b;

    .line 173
    .line 174
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const v0, 0x7f04010e

    .line 179
    .line 180
    .line 181
    invoke-static {v6, p2, v0}, Lcom/bumptech/glide/c;->l(Landroid/content/Context;Ljava/lang/String;I)I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    invoke-virtual {v6, v3, v8, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const/4 v1, 0x4

    .line 190
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    .line 196
    .line 197
    new-instance v0, LY0/h;

    .line 198
    .line 199
    invoke-direct {v0, v6, v3, v4, v5}, LY0/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v6}, LY0/h;->j(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {v0, p2}, LY0/h;->l(Landroid/content/res/ColorStateList;)V

    .line 210
    .line 211
    .line 212
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 213
    .line 214
    const/16 v1, 0x1c

    .line 215
    .line 216
    if-lt p2, v1, :cond_5

    .line 217
    .line 218
    new-instance p2, Landroid/util/TypedValue;

    .line 219
    .line 220
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 221
    .line 222
    .line 223
    const v1, 0x1010571

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, v1, p2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Le/f;->c:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p1, Le/b;

    .line 232
    .line 233
    iget-object p1, p1, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p2, p1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    iget p2, p2, Landroid/util/TypedValue;->type:I

    .line 248
    .line 249
    const/4 v1, 0x5

    .line 250
    if-ne p2, v1, :cond_5

    .line 251
    .line 252
    const/4 p2, 0x0

    .line 253
    cmpl-float p2, p1, p2

    .line 254
    .line 255
    if-ltz p2, :cond_5

    .line 256
    .line 257
    iget-object p2, v0, LY0/h;->b:LY0/g;

    .line 258
    .line 259
    iget-object p2, p2, LY0/g;->a:LY0/m;

    .line 260
    .line 261
    invoke-virtual {p2}, LY0/m;->e()LY0/l;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p2, p1}, LY0/l;->b(F)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p2}, LY0/l;->a()LY0/m;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {v0, p1}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 273
    .line 274
    .line 275
    :cond_5
    iput-object v0, p0, LO0/b;->d:LY0/h;

    .line 276
    .line 277
    return-void
.end method


# virtual methods
.method public final c()Le/g;
    .locals 10

    .line 1
    invoke-super {p0}, Le/f;->c()Le/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v4, p0, LO0/b;->d:LY0/h;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v4, v3}, LY0/h;->k(F)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    .line 25
    .line 26
    iget-object v9, p0, LO0/b;->e:Landroid/graphics/Rect;

    .line 27
    .line 28
    iget v5, v9, Landroid/graphics/Rect;->left:I

    .line 29
    .line 30
    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    iget v7, v9, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    iget v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 35
    .line 36
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, LO0/a;

    .line 43
    .line 44
    invoke-direct {v1, v0, v9}, LO0/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final f(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iget-object v1, v0, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Le/b;->i:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p2, v0, Le/b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    .line 15
    return-void
.end method

.method public final g(Ljava/lang/String;LC1/h1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iput-object p1, v0, Le/b;->i:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, v0, Le/b;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    return-void
.end method

.method public final h(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iget-object v1, v0, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Le/b;->g:Ljava/lang/CharSequence;

    .line 12
    .line 13
    iput-object p2, v0, Le/b;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 14
    .line 15
    return-void
.end method

.method public final i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iput-object p1, v0, Le/b;->g:Ljava/lang/CharSequence;

    .line 6
    .line 7
    iput-object p2, v0, Le/b;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    .line 9
    return-void
.end method

.method public final j(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iget-object v1, v0, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, v0, Le/b;->d:Ljava/lang/CharSequence;

    .line 12
    .line 13
    return-void
.end method
