.class public final Le/r;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lk/k0;
.implements Lj/B;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Le/B;


# direct methods
.method public synthetic constructor <init>(Le/B;I)V
    .locals 0

    .line 1
    iput p2, p0, Le/r;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Le/r;->c:Le/B;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lj/p;Z)V
    .locals 9

    .line 1
    iget v0, p0, Le/r;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lj/p;->k()Lj/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, p1, :cond_0

    .line 13
    .line 14
    move v3, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v3, v1

    .line 17
    :goto_0
    if-eqz v3, :cond_1

    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_1
    iget-object v4, p0, Le/r;->c:Le/B;

    .line 21
    .line 22
    iget-object v5, v4, Le/B;->M:[Le/A;

    .line 23
    .line 24
    if-eqz v5, :cond_2

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move v6, v1

    .line 29
    :goto_1
    if-ge v1, v6, :cond_4

    .line 30
    .line 31
    aget-object v7, v5, v1

    .line 32
    .line 33
    if-eqz v7, :cond_3

    .line 34
    .line 35
    iget-object v8, v7, Le/A;->h:Lj/p;

    .line 36
    .line 37
    if-ne v8, p1, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 v7, 0x0

    .line 44
    :goto_2
    if-eqz v7, :cond_6

    .line 45
    .line 46
    if-eqz v3, :cond_5

    .line 47
    .line 48
    iget p1, v7, Le/A;->a:I

    .line 49
    .line 50
    invoke-virtual {v4, p1, v7, v0}, Le/B;->q(ILe/A;Lj/p;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v7, v2}, Le/B;->s(Le/A;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {v4, v7, p2}, Le/B;->s(Le/A;Z)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_3
    return-void

    .line 61
    :pswitch_0
    iget-object p2, p0, Le/r;->c:Le/B;

    .line 62
    .line 63
    invoke-virtual {p2, p1}, Le/B;->r(Lj/p;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public i(Lj/p;)Z
    .locals 2

    .line 1
    iget v0, p0, Le/r;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lj/p;->k()Lj/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Le/r;->c:Le/B;

    .line 13
    .line 14
    iget-boolean v1, v0, Le/B;->G:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Le/B;->m:Landroid/view/Window;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-boolean v0, v0, Le/B;->R:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/16 v0, 0x6c

    .line 31
    .line 32
    invoke-interface {v1, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :pswitch_0
    iget-object v0, p0, Le/r;->c:Le/B;

    .line 38
    .line 39
    iget-object v0, v0, Le/B;->m:Landroid/view/Window;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/16 v1, 0x6c

    .line 48
    .line 49
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget-object v3, v2, Le/r;->c:Le/B;

    .line 8
    .line 9
    iget-object v4, v3, Le/B;->l:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-object v0, v3, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v0, :cond_11

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    if-eqz v0, :cond_11

    .line 29
    .line 30
    iget-object v0, v3, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v8, v0

    .line 37
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    .line 39
    iget-object v0, v3, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-eqz v0, :cond_f

    .line 47
    .line 48
    iget-object v0, v3, Le/B;->d0:Landroid/graphics/Rect;

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    new-instance v0, Landroid/graphics/Rect;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, v3, Le/B;->d0:Landroid/graphics/Rect;

    .line 58
    .line 59
    new-instance v0, Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, v3, Le/B;->e0:Landroid/graphics/Rect;

    .line 65
    .line 66
    :cond_0
    iget-object v10, v3, Le/B;->d0:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget-object v0, v3, Le/B;->e0:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 83
    .line 84
    .line 85
    move-result v14

    .line 86
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    .line 88
    .line 89
    iget-object v11, v3, Le/B;->B:Landroid/view/ViewGroup;

    .line 90
    .line 91
    const-class v12, Landroid/graphics/Rect;

    .line 92
    .line 93
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    .line 95
    const/16 v14, 0x1d

    .line 96
    .line 97
    if-lt v13, v14, :cond_1

    .line 98
    .line 99
    sget-boolean v12, Lk/q1;->a:Z

    .line 100
    .line 101
    invoke-static {v11, v10, v0}, Lk/p1;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    sget-boolean v13, Lk/q1;->a:Z

    .line 106
    .line 107
    const-string v14, "ViewUtils"

    .line 108
    .line 109
    if-nez v13, :cond_2

    .line 110
    .line 111
    sput-boolean v9, Lk/q1;->a:Z

    .line 112
    .line 113
    :try_start_0
    const-class v13, Landroid/view/View;

    .line 114
    .line 115
    const-string v15, "computeFitSystemWindows"

    .line 116
    .line 117
    filled-new-array {v12, v12}, [Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v13, v15, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    sput-object v12, Lk/q1;->b:Ljava/lang/reflect/Method;

    .line 126
    .line 127
    invoke-virtual {v12}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-nez v12, :cond_2

    .line 132
    .line 133
    sget-object v12, Lk/q1;->b:Ljava/lang/reflect/Method;

    .line 134
    .line 135
    invoke-virtual {v12, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catch_0
    const-string v12, "Could not find method computeFitSystemWindows. Oh well."

    .line 140
    .line 141
    invoke-static {v14, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_2
    :goto_0
    sget-object v12, Lk/q1;->b:Ljava/lang/reflect/Method;

    .line 145
    .line 146
    if-eqz v12, :cond_3

    .line 147
    .line 148
    :try_start_1
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v12, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    .line 157
    const-string v11, "Could not invoke computeFitSystemWindows"

    .line 158
    .line 159
    invoke-static {v14, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    :cond_3
    :goto_1
    iget v0, v10, Landroid/graphics/Rect;->top:I

    .line 163
    .line 164
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 165
    .line 166
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 167
    .line 168
    iget-object v12, v3, Le/B;->B:Landroid/view/ViewGroup;

    .line 169
    .line 170
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    if-nez v12, :cond_4

    .line 175
    .line 176
    move v13, v7

    .line 177
    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {v12}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    :goto_2
    if-nez v12, :cond_5

    .line 183
    .line 184
    move v12, v7

    .line 185
    goto :goto_3

    .line 186
    :cond_5
    invoke-virtual {v12}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    :goto_3
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 191
    .line 192
    if-ne v14, v0, :cond_7

    .line 193
    .line 194
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 195
    .line 196
    if-ne v14, v11, :cond_7

    .line 197
    .line 198
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 199
    .line 200
    if-eq v14, v10, :cond_6

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_6
    move v10, v7

    .line 204
    goto :goto_5

    .line 205
    :cond_7
    :goto_4
    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 206
    .line 207
    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 208
    .line 209
    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 210
    .line 211
    move v10, v9

    .line 212
    :goto_5
    if-lez v0, :cond_8

    .line 213
    .line 214
    iget-object v0, v3, Le/B;->D:Landroid/view/View;

    .line 215
    .line 216
    if-nez v0, :cond_8

    .line 217
    .line 218
    new-instance v0, Landroid/view/View;

    .line 219
    .line 220
    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    iput-object v0, v3, Le/B;->D:Landroid/view/View;

    .line 224
    .line 225
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 229
    .line 230
    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 231
    .line 232
    const/16 v14, 0x33

    .line 233
    .line 234
    const/4 v15, -0x1

    .line 235
    invoke-direct {v0, v15, v11, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 236
    .line 237
    .line 238
    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 239
    .line 240
    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 241
    .line 242
    iget-object v11, v3, Le/B;->B:Landroid/view/ViewGroup;

    .line 243
    .line 244
    iget-object v12, v3, Le/B;->D:Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {v11, v12, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_8
    iget-object v0, v3, Le/B;->D:Landroid/view/View;

    .line 251
    .line 252
    if-eqz v0, :cond_a

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 259
    .line 260
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 261
    .line 262
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 263
    .line 264
    if-ne v11, v14, :cond_9

    .line 265
    .line 266
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 267
    .line 268
    if-ne v11, v13, :cond_9

    .line 269
    .line 270
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    .line 272
    if-eq v11, v12, :cond_a

    .line 273
    .line 274
    :cond_9
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 275
    .line 276
    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 277
    .line 278
    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 279
    .line 280
    iget-object v11, v3, Le/B;->D:Landroid/view/View;

    .line 281
    .line 282
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .line 284
    .line 285
    :cond_a
    :goto_6
    iget-object v0, v3, Le/B;->D:Landroid/view/View;

    .line 286
    .line 287
    if-eqz v0, :cond_b

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_b
    move v9, v7

    .line 291
    :goto_7
    if-eqz v9, :cond_d

    .line 292
    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eqz v0, :cond_d

    .line 298
    .line 299
    iget-object v0, v3, Le/B;->D:Landroid/view/View;

    .line 300
    .line 301
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    and-int/lit16 v11, v11, 0x2000

    .line 306
    .line 307
    if-eqz v11, :cond_c

    .line 308
    .line 309
    const v11, 0x7f060006

    .line 310
    .line 311
    .line 312
    invoke-static {v4, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    goto :goto_8

    .line 317
    :cond_c
    const v11, 0x7f060005

    .line 318
    .line 319
    .line 320
    invoke-static {v4, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    :goto_8
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 325
    .line 326
    .line 327
    :cond_d
    iget-boolean v0, v3, Le/B;->I:Z

    .line 328
    .line 329
    if-nez v0, :cond_e

    .line 330
    .line 331
    if-eqz v9, :cond_e

    .line 332
    .line 333
    move v5, v7

    .line 334
    :cond_e
    move v0, v9

    .line 335
    move v9, v10

    .line 336
    goto :goto_9

    .line 337
    :cond_f
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 338
    .line 339
    if-eqz v0, :cond_10

    .line 340
    .line 341
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 342
    .line 343
    move v0, v7

    .line 344
    goto :goto_9

    .line 345
    :cond_10
    move v0, v7

    .line 346
    move v9, v0

    .line 347
    :goto_9
    if-eqz v9, :cond_12

    .line 348
    .line 349
    iget-object v4, v3, Le/B;->w:Landroidx/appcompat/widget/ActionBarContextView;

    .line 350
    .line 351
    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    .line 353
    .line 354
    goto :goto_a

    .line 355
    :cond_11
    move v0, v7

    .line 356
    :cond_12
    :goto_a
    iget-object v3, v3, Le/B;->D:Landroid/view/View;

    .line 357
    .line 358
    if-eqz v3, :cond_14

    .line 359
    .line 360
    if-eqz v0, :cond_13

    .line 361
    .line 362
    move v6, v7

    .line 363
    :cond_13
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 364
    .line 365
    .line 366
    :cond_14
    if-eq v1, v5, :cond_15

    .line 367
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    move-object/from16 v4, p2

    .line 381
    .line 382
    invoke-virtual {v4, v0, v5, v1, v3}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    :goto_b
    move-object/from16 v1, p1

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_15
    move-object/from16 v4, p2

    .line 390
    .line 391
    move-object v0, v4

    .line 392
    goto :goto_b

    .line 393
    :goto_c
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    return-object v0
.end method
