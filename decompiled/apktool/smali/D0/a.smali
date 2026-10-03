.class public final LD0/a;
.super Landroid/graphics/drawable/Drawable;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LR0/l;


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:LY0/h;

.field public final d:LR0/m;

.field public final e:Landroid/graphics/Rect;

.field public final f:LD0/d;

.field public g:F

.field public h:F

.field public final i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:Ljava/lang/ref/WeakReference;

.field public n:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;LD0/c;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LD0/a;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    sget-object v1, LR0/p;->b:[I

    .line 12
    .line 13
    const-string v2, "Theme.MaterialComponents"

    .line 14
    .line 15
    invoke-static {p1, v1, v2}, LR0/p;->c(Landroid/content/Context;[ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, LD0/a;->e:Landroid/graphics/Rect;

    .line 24
    .line 25
    new-instance v1, LR0/m;

    .line 26
    .line 27
    invoke-direct {v1, p0}, LR0/m;-><init>(LR0/l;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, LD0/a;->d:LR0/m;

    .line 31
    .line 32
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 33
    .line 34
    iget-object v3, v1, LR0/m;->a:Landroid/text/TextPaint;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, LD0/d;

    .line 40
    .line 41
    invoke-direct {v2, p1, p2}, LD0/d;-><init>(Landroid/content/Context;LD0/c;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, LD0/a;->f:LD0/d;

    .line 45
    .line 46
    new-instance p2, LY0/h;

    .line 47
    .line 48
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    iget-object v2, v2, LD0/d;->b:LD0/c;

    .line 53
    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    iget-object v4, v2, LD0/c;->h:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v4, v2, LD0/c;->f:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    :goto_0
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    iget-object v5, v2, LD0/c;->i:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object v5, v2, LD0/c;->g:Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    :goto_1
    new-instance v6, LY0/a;

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    int-to-float v8, v7

    .line 92
    invoke-direct {v6, v8}, LY0/a;-><init>(F)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, v4, v5, v6}, LY0/m;->a(Landroid/content/Context;IILY0/a;)LY0/l;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, LY0/l;->a()LY0/m;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1}, LY0/h;-><init>(LY0/m;)V

    .line 104
    .line 105
    .line 106
    iput-object p2, p0, LD0/a;->c:LY0/h;

    .line 107
    .line 108
    invoke-virtual {p0}, LD0/a;->h()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/content/Context;

    .line 116
    .line 117
    if-nez p1, :cond_2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_2
    new-instance v0, LV0/d;

    .line 121
    .line 122
    iget-object v4, v2, LD0/c;->e:Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    invoke-direct {v0, p1, v4}, LV0/d;-><init>(Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    iget-object v4, v1, LR0/m;->g:LV0/d;

    .line 132
    .line 133
    if-ne v4, v0, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {v1, v0, p1}, LR0/m;->c(LV0/d;Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, v2, LD0/c;->d:Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, LD0/a;->j()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 155
    .line 156
    .line 157
    :goto_2
    iget p1, v2, LD0/c;->m:I

    .line 158
    .line 159
    const/4 v0, -0x2

    .line 160
    const/4 v4, 0x1

    .line 161
    if-eq p1, v0, :cond_4

    .line 162
    .line 163
    int-to-double v5, p1

    .line 164
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 165
    .line 166
    sub-double/2addr v5, v8

    .line 167
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 168
    .line 169
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 170
    .line 171
    .line 172
    move-result-wide v5

    .line 173
    double-to-int p1, v5

    .line 174
    sub-int/2addr p1, v4

    .line 175
    iput p1, p0, LD0/a;->i:I

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_4
    iget p1, v2, LD0/c;->n:I

    .line 179
    .line 180
    iput p1, p0, LD0/a;->i:I

    .line 181
    .line 182
    :goto_3
    iput-boolean v4, v1, LR0/m;->e:Z

    .line 183
    .line 184
    invoke-virtual {p0}, LD0/a;->j()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 188
    .line 189
    .line 190
    iput-boolean v4, v1, LR0/m;->e:Z

    .line 191
    .line 192
    invoke-virtual {p0}, LD0/a;->h()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, LD0/a;->j()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, LD0/a;->getAlpha()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 209
    .line 210
    .line 211
    iget-object p1, v2, LD0/c;->c:Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object v0, p2, LY0/h;->b:LY0/g;

    .line 222
    .line 223
    iget-object v0, v0, LY0/g;->c:Landroid/content/res/ColorStateList;

    .line 224
    .line 225
    if-eq v0, p1, :cond_5

    .line 226
    .line 227
    invoke-virtual {p2, p1}, LY0/h;->l(Landroid/content/res/ColorStateList;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 231
    .line 232
    .line 233
    :cond_5
    iget-object p1, v2, LD0/c;->d:Ljava/lang/Integer;

    .line 234
    .line 235
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, LD0/a;->m:Ljava/lang/ref/WeakReference;

    .line 246
    .line 247
    if-eqz p1, :cond_7

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_7

    .line 254
    .line 255
    iget-object p1, p0, LD0/a;->m:Ljava/lang/ref/WeakReference;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Landroid/view/View;

    .line 262
    .line 263
    iget-object p2, p0, LD0/a;->n:Ljava/lang/ref/WeakReference;

    .line 264
    .line 265
    if-eqz p2, :cond_6

    .line 266
    .line 267
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    check-cast p2, Landroid/widget/FrameLayout;

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_6
    const/4 p2, 0x0

    .line 275
    :goto_4
    invoke-virtual {p0, p1, p2}, LD0/a;->i(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 276
    .line 277
    .line 278
    :cond_7
    invoke-virtual {p0}, LD0/a;->j()V

    .line 279
    .line 280
    .line 281
    iget-object p1, v2, LD0/c;->u:Ljava/lang/Boolean;

    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    invoke-virtual {p0, p1, v7}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 288
    .line 289
    .line 290
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 2
    .line 3
    iget-object v1, v0, LD0/d;->b:LD0/c;

    .line 4
    .line 5
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 6
    .line 7
    iget-object v2, v1, LD0/c;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p0, LD0/a;->b:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v4, -0x2

    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget v0, v1, LD0/c;->m:I

    .line 15
    .line 16
    if-ne v0, v4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-le v1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/content/Context;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v2, 0x7f120292

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "\u2026"

    .line 51
    .line 52
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0

    .line 61
    :cond_2
    :goto_0
    return-object v2

    .line 62
    :cond_3
    invoke-virtual {p0}, LD0/a;->g()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget v1, p0, LD0/a;->i:I

    .line 69
    .line 70
    if-eq v1, v4, :cond_6

    .line 71
    .line 72
    invoke-virtual {p0}, LD0/a;->e()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iget v2, p0, LD0/a;->i:I

    .line 77
    .line 78
    if-gt v1, v2, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/content/Context;

    .line 86
    .line 87
    if-nez v1, :cond_5

    .line 88
    .line 89
    :goto_1
    const-string v0, ""

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_5
    iget-object v0, v0, LD0/c;->o:Ljava/util/Locale;

    .line 93
    .line 94
    const v2, 0x7f1202ec

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget v2, p0, LD0/a;->i:I

    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    const-string v3, "+"

    .line 108
    .line 109
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0

    .line 118
    :cond_6
    :goto_2
    iget-object v0, v0, LD0/c;->o:Ljava/util/Locale;

    .line 119
    .line 120
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p0}, LD0/a;->e()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    int-to-long v1, v1

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0

    .line 134
    :cond_7
    const/4 v0, 0x0

    .line 135
    return-object v0
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 9
    .line 10
    iget-object v1, v0, LD0/d;->b:LD0/c;

    .line 11
    .line 12
    iget-object v2, v0, LD0/d;->b:LD0/c;

    .line 13
    .line 14
    iget-object v3, v1, LD0/c;->k:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    iget-object v1, v1, LD0/c;->p:Ljava/lang/CharSequence;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 24
    .line 25
    iget-object v0, v0, LD0/c;->k:Ljava/lang/String;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_2
    invoke-virtual {p0}, LD0/a;->g()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    iget v0, v2, LD0/c;->r:I

    .line 35
    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p0, LD0/a;->b:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/content/Context;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget v1, p0, LD0/a;->i:I

    .line 50
    .line 51
    const/4 v3, -0x2

    .line 52
    if-eq v1, v3, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0}, LD0/a;->e()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget v3, p0, LD0/a;->i:I

    .line 59
    .line 60
    if-gt v1, v3, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget v1, v2, LD0/c;->s:I

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget v1, v2, LD0/c;->r:I

    .line 83
    .line 84
    invoke-virtual {p0}, LD0/a;->e()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {p0}, LD0/a;->e()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 106
    return-object v0

    .line 107
    :cond_7
    iget-object v0, v2, LD0/c;->q:Ljava/lang/CharSequence;

    .line 108
    .line 109
    return-object v0
.end method

.method public final d()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->n:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, LD0/a;->getAlpha()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_0
    iget-object v0, p0, LD0/a;->c:LY0/h;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, LY0/h;->draw(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, LD0/a;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/Rect;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, LD0/a;->d:LR0/m;

    .line 47
    .line 48
    iget-object v3, v2, LR0/m;->a:Landroid/text/TextPaint;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 56
    .line 57
    .line 58
    iget v3, p0, LD0/a;->h:F

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-float/2addr v3, v4

    .line 65
    iget v4, p0, LD0/a;->g:F

    .line 66
    .line 67
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    if-gtz v1, :cond_1

    .line 70
    .line 71
    float-to-int v1, v3

    .line 72
    :goto_0
    int-to-float v1, v1

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_0

    .line 79
    :goto_1
    iget-object v2, v2, LR0/m;->a:Landroid/text/TextPaint;

    .line 80
    .line 81
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_2
    return-void
.end method

.method public final e()I
    .locals 2

    .line 1
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 2
    .line 3
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 4
    .line 5
    iget v0, v0, LD0/c;->l:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 2
    .line 3
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 4
    .line 5
    iget-object v0, v0, LD0/c;->k:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, LD0/a;->g()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 2
    .line 3
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 4
    .line 5
    iget-object v1, v0, LD0/c;->k:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, v0, LD0/c;->l:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 2
    .line 3
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 4
    .line 5
    iget v0, v0, LD0/c;->j:I

    .line 6
    .line 7
    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, LD0/a;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, LD0/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, LD0/a;->f:LD0/d;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v2, LD0/d;->b:LD0/c;

    .line 21
    .line 22
    iget-object v1, v1, LD0/c;->h:Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, v2, LD0/d;->b:LD0/c;

    .line 30
    .line 31
    iget-object v1, v1, LD0/c;->f:Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :goto_0
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object v2, v2, LD0/d;->b:LD0/c;

    .line 44
    .line 45
    iget-object v2, v2, LD0/c;->i:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v2, v2, LD0/d;->b:LD0/c;

    .line 53
    .line 54
    iget-object v2, v2, LD0/c;->g:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    :goto_1
    new-instance v3, LY0/a;

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    int-to-float v4, v4

    .line 64
    invoke-direct {v3, v4}, LY0/a;-><init>(F)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1, v2, v3}, LY0/m;->a(Landroid/content/Context;IILY0/a;)LY0/l;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, LY0/l;->a()LY0/m;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, LD0/a;->c:LY0/h;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final i(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, LD0/a;->m:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LD0/a;->n:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, LD0/a;->j()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final isStateful()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final j()V
    .locals 15

    .line 1
    iget-object v0, p0, LD0/a;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    iget-object v2, p0, LD0/a;->m:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/view/View;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_1e

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_13

    .line 27
    .line 28
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, LD0/a;->e:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget-object v6, p0, LD0/a;->n:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/view/ViewGroup;

    .line 55
    .line 56
    :cond_2
    if-nez v3, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v6, p0, LD0/a;->f:LD0/d;

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    iget v3, v6, LD0/d;->d:F

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget v3, v6, LD0/d;->c:F

    .line 74
    .line 75
    :goto_2
    iput v3, p0, LD0/a;->j:F

    .line 76
    .line 77
    const/high16 v7, -0x40800000    # -1.0f

    .line 78
    .line 79
    cmpl-float v8, v3, v7

    .line 80
    .line 81
    const/high16 v9, 0x40000000    # 2.0f

    .line 82
    .line 83
    if-eqz v8, :cond_5

    .line 84
    .line 85
    iput v3, p0, LD0/a;->k:F

    .line 86
    .line 87
    iput v3, p0, LD0/a;->l:F

    .line 88
    .line 89
    goto :goto_7

    .line 90
    :cond_5
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_6

    .line 95
    .line 96
    iget v3, v6, LD0/d;->g:F

    .line 97
    .line 98
    :goto_3
    div-float/2addr v3, v9

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    iget v3, v6, LD0/d;->e:F

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    int-to-float v3, v3

    .line 108
    iput v3, p0, LD0/a;->k:F

    .line 109
    .line 110
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_7

    .line 115
    .line 116
    iget v3, v6, LD0/d;->h:F

    .line 117
    .line 118
    :goto_5
    div-float/2addr v3, v9

    .line 119
    goto :goto_6

    .line 120
    :cond_7
    iget v3, v6, LD0/d;->f:F

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :goto_6
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    int-to-float v3, v3

    .line 128
    iput v3, p0, LD0/a;->l:F

    .line 129
    .line 130
    :goto_7
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_9

    .line 135
    .line 136
    invoke-virtual {p0}, LD0/a;->b()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    iget v8, p0, LD0/a;->k:F

    .line 141
    .line 142
    iget-object v10, p0, LD0/a;->d:LR0/m;

    .line 143
    .line 144
    invoke-virtual {v10, v3}, LR0/m;->a(Ljava/lang/String;)F

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    div-float/2addr v11, v9

    .line 149
    iget-object v12, v6, LD0/d;->b:LD0/c;

    .line 150
    .line 151
    iget-object v12, v12, LD0/c;->v:Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    int-to-float v12, v12

    .line 158
    add-float/2addr v11, v12

    .line 159
    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    iput v8, p0, LD0/a;->k:F

    .line 164
    .line 165
    iget v8, p0, LD0/a;->l:F

    .line 166
    .line 167
    iget-boolean v11, v10, LR0/m;->e:Z

    .line 168
    .line 169
    if-nez v11, :cond_8

    .line 170
    .line 171
    iget v3, v10, LR0/m;->d:F

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_8
    invoke-virtual {v10, v3}, LR0/m;->b(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget v3, v10, LR0/m;->d:F

    .line 178
    .line 179
    :goto_8
    div-float/2addr v3, v9

    .line 180
    iget-object v9, v6, LD0/d;->b:LD0/c;

    .line 181
    .line 182
    iget-object v9, v9, LD0/c;->w:Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    int-to-float v9, v9

    .line 189
    add-float/2addr v3, v9

    .line 190
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iput v3, p0, LD0/a;->l:F

    .line 195
    .line 196
    iget v8, p0, LD0/a;->k:F

    .line 197
    .line 198
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    iput v3, p0, LD0/a;->k:F

    .line 203
    .line 204
    :cond_9
    iget-object v3, v6, LD0/d;->b:LD0/c;

    .line 205
    .line 206
    iget-object v8, v6, LD0/d;->b:LD0/c;

    .line 207
    .line 208
    iget v9, v6, LD0/d;->k:I

    .line 209
    .line 210
    iget-object v10, v3, LD0/c;->y:Ljava/lang/Integer;

    .line 211
    .line 212
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    const/4 v12, 0x0

    .line 221
    if-eqz v11, :cond_a

    .line 222
    .line 223
    iget-object v10, v3, LD0/c;->A:Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Landroid/content/Context;

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 246
    .line 247
    const/high16 v11, 0x3f800000    # 1.0f

    .line 248
    .line 249
    sub-float/2addr v0, v11

    .line 250
    const v13, 0x3e99999a    # 0.3f

    .line 251
    .line 252
    .line 253
    invoke-static {v12, v11, v13, v11, v0}, LB0/a;->b(FFFFF)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    iget-object v11, v3, LD0/c;->D:Ljava/lang/Integer;

    .line 258
    .line 259
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 260
    .line 261
    .line 262
    move-result v11

    .line 263
    sub-int v11, v10, v11

    .line 264
    .line 265
    invoke-static {v10, v0, v11}, LB0/a;->c(IFI)I

    .line 266
    .line 267
    .line 268
    move-result v10

    .line 269
    :cond_a
    if-nez v9, :cond_b

    .line 270
    .line 271
    iget v0, p0, LD0/a;->l:F

    .line 272
    .line 273
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    sub-int/2addr v10, v0

    .line 278
    :cond_b
    iget-object v0, v3, LD0/c;->C:Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    add-int/2addr v0, v10

    .line 285
    iget-object v10, v8, LD0/c;->t:Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result v10

    .line 291
    const v11, 0x800053

    .line 292
    .line 293
    .line 294
    if-eq v10, v11, :cond_c

    .line 295
    .line 296
    const v13, 0x800055

    .line 297
    .line 298
    .line 299
    if-eq v10, v13, :cond_c

    .line 300
    .line 301
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 302
    .line 303
    add-int/2addr v10, v0

    .line 304
    int-to-float v0, v10

    .line 305
    iput v0, p0, LD0/a;->h:F

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_c
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    .line 309
    .line 310
    sub-int/2addr v10, v0

    .line 311
    int-to-float v0, v10

    .line 312
    iput v0, p0, LD0/a;->h:F

    .line 313
    .line 314
    :goto_9
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    iget-object v0, v3, LD0/c;->z:Ljava/lang/Integer;

    .line 321
    .line 322
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    goto :goto_a

    .line 327
    :cond_d
    iget-object v0, v8, LD0/c;->x:Ljava/lang/Integer;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    :goto_a
    const/4 v10, 0x1

    .line 334
    if-ne v9, v10, :cond_f

    .line 335
    .line 336
    invoke-virtual {p0}, LD0/a;->f()Z

    .line 337
    .line 338
    .line 339
    move-result v9

    .line 340
    if-eqz v9, :cond_e

    .line 341
    .line 342
    iget v6, v6, LD0/d;->j:I

    .line 343
    .line 344
    goto :goto_b

    .line 345
    :cond_e
    iget v6, v6, LD0/d;->i:I

    .line 346
    .line 347
    :goto_b
    add-int/2addr v0, v6

    .line 348
    :cond_f
    iget-object v6, v3, LD0/c;->B:Ljava/lang/Integer;

    .line 349
    .line 350
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    add-int/2addr v6, v0

    .line 355
    iget-object v0, v8, LD0/c;->t:Ljava/lang/Integer;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    const v8, 0x800033

    .line 362
    .line 363
    .line 364
    if-eq v0, v8, :cond_11

    .line 365
    .line 366
    if-eq v0, v11, :cond_11

    .line 367
    .line 368
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-nez v0, :cond_10

    .line 373
    .line 374
    iget v0, v5, Landroid/graphics/Rect;->right:I

    .line 375
    .line 376
    int-to-float v0, v0

    .line 377
    iget v5, p0, LD0/a;->k:F

    .line 378
    .line 379
    add-float/2addr v0, v5

    .line 380
    int-to-float v5, v6

    .line 381
    sub-float/2addr v0, v5

    .line 382
    goto :goto_c

    .line 383
    :cond_10
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 384
    .line 385
    int-to-float v0, v0

    .line 386
    iget v5, p0, LD0/a;->k:F

    .line 387
    .line 388
    sub-float/2addr v0, v5

    .line 389
    int-to-float v5, v6

    .line 390
    add-float/2addr v0, v5

    .line 391
    :goto_c
    iput v0, p0, LD0/a;->g:F

    .line 392
    .line 393
    goto :goto_e

    .line 394
    :cond_11
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-nez v0, :cond_12

    .line 399
    .line 400
    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 401
    .line 402
    int-to-float v0, v0

    .line 403
    iget v5, p0, LD0/a;->k:F

    .line 404
    .line 405
    sub-float/2addr v0, v5

    .line 406
    int-to-float v5, v6

    .line 407
    add-float/2addr v0, v5

    .line 408
    goto :goto_d

    .line 409
    :cond_12
    iget v0, v5, Landroid/graphics/Rect;->right:I

    .line 410
    .line 411
    int-to-float v0, v0

    .line 412
    iget v5, p0, LD0/a;->k:F

    .line 413
    .line 414
    add-float/2addr v0, v5

    .line 415
    int-to-float v5, v6

    .line 416
    sub-float/2addr v0, v5

    .line 417
    :goto_d
    iput v0, p0, LD0/a;->g:F

    .line 418
    .line 419
    :goto_e
    iget-object v0, v3, LD0/c;->E:Ljava/lang/Boolean;

    .line 420
    .line 421
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_1c

    .line 426
    .line 427
    invoke-virtual {p0}, LD0/a;->d()Landroid/widget/FrameLayout;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    if-nez v0, :cond_14

    .line 432
    .line 433
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    instance-of v0, v0, Landroid/view/View;

    .line 438
    .line 439
    if-nez v0, :cond_13

    .line 440
    .line 441
    goto/16 :goto_12

    .line 442
    .line 443
    :cond_13
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    check-cast v2, Landroid/view/View;

    .line 456
    .line 457
    move-object v14, v2

    .line 458
    move v2, v0

    .line 459
    move-object v0, v14

    .line 460
    goto :goto_f

    .line 461
    :cond_14
    invoke-virtual {p0}, LD0/a;->d()Landroid/widget/FrameLayout;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    if-eqz v2, :cond_16

    .line 466
    .line 467
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    const v3, 0x7f09020d

    .line 472
    .line 473
    .line 474
    if-ne v2, v3, :cond_16

    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    instance-of v2, v2, Landroid/view/View;

    .line 481
    .line 482
    if-nez v2, :cond_15

    .line 483
    .line 484
    goto/16 :goto_12

    .line 485
    .line 486
    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    check-cast v0, Landroid/view/View;

    .line 499
    .line 500
    goto :goto_f

    .line 501
    :cond_16
    move v2, v12

    .line 502
    move v3, v2

    .line 503
    :goto_f
    iget v5, p0, LD0/a;->h:F

    .line 504
    .line 505
    iget v6, p0, LD0/a;->l:F

    .line 506
    .line 507
    sub-float/2addr v5, v6

    .line 508
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    add-float/2addr v6, v5

    .line 513
    add-float/2addr v6, v2

    .line 514
    iget v5, p0, LD0/a;->g:F

    .line 515
    .line 516
    iget v8, p0, LD0/a;->k:F

    .line 517
    .line 518
    sub-float/2addr v5, v8

    .line 519
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    add-float/2addr v8, v5

    .line 524
    add-float/2addr v8, v3

    .line 525
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    instance-of v5, v5, Landroid/view/View;

    .line 530
    .line 531
    if-eqz v5, :cond_17

    .line 532
    .line 533
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Landroid/view/View;

    .line 538
    .line 539
    iget v9, p0, LD0/a;->h:F

    .line 540
    .line 541
    iget v10, p0, LD0/a;->l:F

    .line 542
    .line 543
    add-float/2addr v9, v10

    .line 544
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    int-to-float v5, v5

    .line 549
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 550
    .line 551
    .line 552
    move-result v10

    .line 553
    sub-float/2addr v5, v10

    .line 554
    sub-float/2addr v9, v5

    .line 555
    add-float/2addr v9, v2

    .line 556
    goto :goto_10

    .line 557
    :cond_17
    move v9, v12

    .line 558
    :goto_10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    instance-of v2, v2, Landroid/view/View;

    .line 563
    .line 564
    if-eqz v2, :cond_18

    .line 565
    .line 566
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    check-cast v2, Landroid/view/View;

    .line 571
    .line 572
    iget v5, p0, LD0/a;->g:F

    .line 573
    .line 574
    iget v10, p0, LD0/a;->k:F

    .line 575
    .line 576
    add-float/2addr v5, v10

    .line 577
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    int-to-float v2, v2

    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    sub-float/2addr v2, v0

    .line 587
    sub-float/2addr v5, v2

    .line 588
    add-float/2addr v5, v3

    .line 589
    goto :goto_11

    .line 590
    :cond_18
    move v5, v12

    .line 591
    :goto_11
    cmpg-float v0, v6, v12

    .line 592
    .line 593
    if-gez v0, :cond_19

    .line 594
    .line 595
    iget v0, p0, LD0/a;->h:F

    .line 596
    .line 597
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 598
    .line 599
    .line 600
    move-result v2

    .line 601
    add-float/2addr v2, v0

    .line 602
    iput v2, p0, LD0/a;->h:F

    .line 603
    .line 604
    :cond_19
    cmpg-float v0, v8, v12

    .line 605
    .line 606
    if-gez v0, :cond_1a

    .line 607
    .line 608
    iget v0, p0, LD0/a;->g:F

    .line 609
    .line 610
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    add-float/2addr v2, v0

    .line 615
    iput v2, p0, LD0/a;->g:F

    .line 616
    .line 617
    :cond_1a
    cmpl-float v0, v9, v12

    .line 618
    .line 619
    if-lez v0, :cond_1b

    .line 620
    .line 621
    iget v0, p0, LD0/a;->h:F

    .line 622
    .line 623
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    sub-float/2addr v0, v2

    .line 628
    iput v0, p0, LD0/a;->h:F

    .line 629
    .line 630
    :cond_1b
    cmpl-float v0, v5, v12

    .line 631
    .line 632
    if-lez v0, :cond_1c

    .line 633
    .line 634
    iget v0, p0, LD0/a;->g:F

    .line 635
    .line 636
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 637
    .line 638
    .line 639
    move-result v2

    .line 640
    sub-float/2addr v0, v2

    .line 641
    iput v0, p0, LD0/a;->g:F

    .line 642
    .line 643
    :cond_1c
    :goto_12
    iget v0, p0, LD0/a;->g:F

    .line 644
    .line 645
    iget v2, p0, LD0/a;->h:F

    .line 646
    .line 647
    iget v3, p0, LD0/a;->k:F

    .line 648
    .line 649
    iget v5, p0, LD0/a;->l:F

    .line 650
    .line 651
    sub-float v6, v0, v3

    .line 652
    .line 653
    float-to-int v6, v6

    .line 654
    sub-float v8, v2, v5

    .line 655
    .line 656
    float-to-int v8, v8

    .line 657
    add-float/2addr v0, v3

    .line 658
    float-to-int v0, v0

    .line 659
    add-float/2addr v2, v5

    .line 660
    float-to-int v2, v2

    .line 661
    invoke-virtual {v4, v6, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 662
    .line 663
    .line 664
    iget v0, p0, LD0/a;->j:F

    .line 665
    .line 666
    cmpl-float v2, v0, v7

    .line 667
    .line 668
    iget-object v3, p0, LD0/a;->c:LY0/h;

    .line 669
    .line 670
    if-eqz v2, :cond_1d

    .line 671
    .line 672
    iget-object v2, v3, LY0/h;->b:LY0/g;

    .line 673
    .line 674
    iget-object v2, v2, LY0/g;->a:LY0/m;

    .line 675
    .line 676
    invoke-virtual {v2}, LY0/m;->e()LY0/l;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    invoke-virtual {v2, v0}, LY0/l;->b(F)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v2}, LY0/l;->a()LY0/m;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {v3, v0}, LY0/h;->setShapeAppearanceModel(LY0/m;)V

    .line 688
    .line 689
    .line 690
    :cond_1d
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    if-nez v0, :cond_1e

    .line 695
    .line 696
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 697
    .line 698
    .line 699
    :cond_1e
    :goto_13
    return-void
.end method

.method public final onStateChange([I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/a;->f:LD0/d;

    .line 2
    .line 3
    iget-object v1, v0, LD0/d;->a:LD0/c;

    .line 4
    .line 5
    iput p1, v1, LD0/c;->j:I

    .line 6
    .line 7
    iget-object v0, v0, LD0/d;->b:LD0/c;

    .line 8
    .line 9
    iput p1, v0, LD0/c;->j:I

    .line 10
    .line 11
    iget-object p1, p0, LD0/a;->d:LR0/m;

    .line 12
    .line 13
    iget-object p1, p1, LR0/m;->a:Landroid/text/TextPaint;

    .line 14
    .line 15
    invoke-virtual {p0}, LD0/a;->getAlpha()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
.end method
