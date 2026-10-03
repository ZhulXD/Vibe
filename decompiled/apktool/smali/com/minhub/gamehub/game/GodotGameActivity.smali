.class public final Lcom/minhub/gamehub/game/GodotGameActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/game/GodotGameActivity;",
        "Landroidx/fragment/app/FragmentActivity;",
        "<init>",
        "()V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGodotGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GodotGameActivity.kt\ncom/minhub/gamehub/game/GodotGameActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,965:1\n1#2:966\n1761#3,3:967\n774#3:970\n865#3,2:971\n1869#3,2:973\n774#3:975\n865#3,2:976\n1563#3:978\n1634#3,3:979\n360#3,7:982\n1208#3,2:989\n1236#3,4:991\n1563#3:995\n1634#3,3:996\n1869#3,2:1001\n1869#3,2:1003\n1869#3,2:1005\n1056#3:1014\n216#4,2:999\n216#4,2:1007\n1310#5,2:1009\n3829#5:1011\n4344#5,2:1012\n1310#5,2:1015\n*S KotlinDebug\n*F\n+ 1 GodotGameActivity.kt\ncom/minhub/gamehub/game/GodotGameActivity\n*L\n443#1:967,3\n485#1:970\n485#1:971,2\n485#1:973,2\n607#1:975\n607#1:976,2\n607#1:978\n607#1:979,3\n617#1:982,7\n727#1:989,2\n727#1:991,4\n728#1:995\n728#1:996,3\n831#1:1001,2\n842#1:1003,2\n850#1:1005,2\n938#1:1014\n759#1:999,2\n868#1:1007,2\n935#1:1009,2\n938#1:1011\n938#1:1012,2\n940#1:1015,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic q:I


# instance fields
.field public b:Ly1/V0;

.field public c:Landroidx/fragment/app/Fragment;

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;

.field public f:LA1/v0;

.field public g:Z

.field public h:Lkotlin/Pair;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/FrameLayout;

.field public k:Landroid/widget/FrameLayout;

.field public l:LI1/j;

.field public m:Lcom/minhub/gamehub/editor/EditModeOverlay;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->h:Lkotlin/Pair;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "base"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, LS1/d;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "context"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "langCode"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/Locale;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroid/content/res/Configuration;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "createConfigurationContext(...)"

    .line 49
    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final getFilesDir()Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->d:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getFilesDir(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final k()Landroid/widget/FrameLayout;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 22
    .line 23
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast v3, Landroid/view/ViewGroup;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-lez v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    :goto_0
    int-to-float v4, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-lez v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    :goto_2
    int-to-float v1, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_3
    invoke-virtual {v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->p()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    new-instance v5, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v7, -0x1

    .line 70
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 81
    .line 82
    .line 83
    new-instance v7, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :cond_2
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_3

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    move-object v9, v8

    .line 103
    check-cast v9, Lx1/a;

    .line 104
    .line 105
    iget-boolean v9, v9, Lx1/a;->k:Z

    .line 106
    .line 107
    if-eqz v9, :cond_2

    .line 108
    .line 109
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    move v8, v6

    .line 118
    :goto_5
    if-ge v8, v3, :cond_7

    .line 119
    .line 120
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    add-int/lit8 v8, v8, 0x1

    .line 125
    .line 126
    check-cast v9, Lx1/a;

    .line 127
    .line 128
    sget-object v10, LB1/t;->a:Ljava/util/List;

    .line 129
    .line 130
    iget-object v10, v9, Lx1/a;->a:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v11, v9, Lx1/a;->i:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v12, v9, Lx1/a;->b:Ljava/lang/String;

    .line 135
    .line 136
    iget v13, v9, Lx1/a;->e:F

    .line 137
    .line 138
    iget v14, v9, Lx1/a;->d:F

    .line 139
    .line 140
    iget v15, v9, Lx1/a;->j:F

    .line 141
    .line 142
    invoke-static {v10}, LB1/t;->b(Ljava/lang/String;)LB1/u;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    iget v6, v9, Lx1/a;->f:I

    .line 147
    .line 148
    int-to-float v6, v6

    .line 149
    mul-float/2addr v6, v2

    .line 150
    float-to-int v6, v6

    .line 151
    move/from16 v16, v1

    .line 152
    .line 153
    iget v1, v9, Lx1/a;->g:I

    .line 154
    .line 155
    int-to-float v1, v1

    .line 156
    mul-float/2addr v1, v2

    .line 157
    float-to-int v1, v1

    .line 158
    move/from16 v17, v2

    .line 159
    .line 160
    const v18, -0x777778

    .line 161
    .line 162
    .line 163
    const/high16 v19, 0x40000000    # 2.0f

    .line 164
    .line 165
    if-eqz v10, :cond_5

    .line 166
    .line 167
    iget-object v2, v10, LB1/u;->d:LB1/v;

    .line 168
    .line 169
    sget-object v20, Ly1/J0;->a:[I

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    aget v2, v20, v2

    .line 176
    .line 177
    move/from16 v20, v3

    .line 178
    .line 179
    const/4 v3, 0x3

    .line 180
    if-ne v2, v3, :cond_4

    .line 181
    .line 182
    new-instance v2, LB1/o;

    .line 183
    .line 184
    invoke-direct {v2, v0}, LB1/o;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v15}, Landroid/view/View;->setAlpha(F)V

    .line 188
    .line 189
    .line 190
    new-instance v3, LA1/H;

    .line 191
    .line 192
    const/16 v9, 0xa

    .line 193
    .line 194
    invoke-direct {v3, v9, v0, v10}, LA1/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3}, LB1/o;->setOnDir(Lkotlin/jvm/functions/Function1;)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    .line 202
    invoke-direct {v3, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .line 207
    .line 208
    mul-float/2addr v14, v4

    .line 209
    int-to-float v3, v6

    .line 210
    div-float v3, v3, v19

    .line 211
    .line 212
    sub-float/2addr v14, v3

    .line 213
    invoke-virtual {v2, v14}, Landroid/view/View;->setX(F)V

    .line 214
    .line 215
    .line 216
    mul-float v13, v13, v16

    .line 217
    .line 218
    int-to-float v1, v1

    .line 219
    div-float v1, v1, v19

    .line 220
    .line 221
    sub-float/2addr v13, v1

    .line 222
    invoke-virtual {v2, v13}, Landroid/view/View;->setY(F)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_6

    .line 229
    .line 230
    :cond_4
    new-instance v2, LB1/m;

    .line 231
    .line 232
    invoke-direct {v2, v0}, LB1/m;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v12}, LB1/m;->setLabel(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :try_start_0
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    move/from16 v3, v18

    .line 243
    .line 244
    invoke-virtual {v2, v3}, LB1/m;->setBtnColor(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9}, Lx1/a;->b()LB1/a;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v2, v3}, LB1/m;->setShape(LB1/a;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v15}, Landroid/view/View;->setAlpha(F)V

    .line 255
    .line 256
    .line 257
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    .line 259
    invoke-direct {v3, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    .line 264
    .line 265
    mul-float/2addr v14, v4

    .line 266
    int-to-float v3, v6

    .line 267
    div-float v3, v3, v19

    .line 268
    .line 269
    sub-float/2addr v14, v3

    .line 270
    invoke-virtual {v2, v14}, Landroid/view/View;->setX(F)V

    .line 271
    .line 272
    .line 273
    mul-float v13, v13, v16

    .line 274
    .line 275
    int-to-float v1, v1

    .line 276
    div-float v1, v1, v19

    .line 277
    .line 278
    sub-float/2addr v13, v1

    .line 279
    invoke-virtual {v2, v13}, Landroid/view/View;->setY(F)V

    .line 280
    .line 281
    .line 282
    new-instance v1, Ly1/B0;

    .line 283
    .line 284
    const/4 v3, 0x0

    .line 285
    invoke-direct {v1, v0, v10, v3}, Ly1/B0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;LB1/u;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v1}, LB1/m;->setOnPress(Lkotlin/jvm/functions/Function0;)V

    .line 289
    .line 290
    .line 291
    new-instance v1, Ly1/B0;

    .line 292
    .line 293
    const/4 v3, 0x1

    .line 294
    invoke-direct {v1, v0, v10, v3}, Ly1/B0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;LB1/u;I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v1}, LB1/m;->setOnRelease(Lkotlin/jvm/functions/Function0;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_5
    move/from16 v20, v3

    .line 305
    .line 306
    sget-object v2, LB1/s;->a:Ljava/util/Map;

    .line 307
    .line 308
    iget-object v2, v9, Lx1/a;->c:Ljava/lang/String;

    .line 309
    .line 310
    const-string v3, "jsKeyCode"

    .line 311
    .line 312
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    sget-object v3, LB1/s;->a:Ljava/util/Map;

    .line 316
    .line 317
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    check-cast v2, Ljava/lang/Integer;

    .line 322
    .line 323
    if-eqz v2, :cond_6

    .line 324
    .line 325
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    new-instance v3, LB1/m;

    .line 330
    .line 331
    invoke-direct {v3, v0}, LB1/m;-><init>(Landroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v3, v12}, LB1/m;->setLabel(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :try_start_1
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    :catch_1
    move/from16 v10, v18

    .line 342
    .line 343
    invoke-virtual {v3, v10}, LB1/m;->setBtnColor(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9}, Lx1/a;->b()LB1/a;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-virtual {v3, v9}, LB1/m;->setShape(LB1/a;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v15}, Landroid/view/View;->setAlpha(F)V

    .line 354
    .line 355
    .line 356
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 357
    .line 358
    invoke-direct {v9, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    .line 363
    .line 364
    mul-float/2addr v14, v4

    .line 365
    int-to-float v6, v6

    .line 366
    div-float v6, v6, v19

    .line 367
    .line 368
    sub-float/2addr v14, v6

    .line 369
    invoke-virtual {v3, v14}, Landroid/view/View;->setX(F)V

    .line 370
    .line 371
    .line 372
    mul-float v13, v13, v16

    .line 373
    .line 374
    int-to-float v1, v1

    .line 375
    div-float v1, v1, v19

    .line 376
    .line 377
    sub-float/2addr v13, v1

    .line 378
    invoke-virtual {v3, v13}, Landroid/view/View;->setY(F)V

    .line 379
    .line 380
    .line 381
    new-instance v1, Ly1/C0;

    .line 382
    .line 383
    const/4 v6, 0x0

    .line 384
    invoke-direct {v1, v0, v2, v6}, Ly1/C0;-><init>(Landroidx/fragment/app/FragmentActivity;II)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v1}, LB1/m;->setOnPress(Lkotlin/jvm/functions/Function0;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Ly1/C0;

    .line 391
    .line 392
    const/4 v9, 0x1

    .line 393
    invoke-direct {v1, v0, v2, v9}, Ly1/C0;-><init>(Landroidx/fragment/app/FragmentActivity;II)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v1}, LB1/m;->setOnRelease(Lkotlin/jvm/functions/Function0;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_6
    :goto_6
    const/4 v6, 0x0

    .line 404
    :goto_7
    move/from16 v1, v16

    .line 405
    .line 406
    move/from16 v2, v17

    .line 407
    .line 408
    move/from16 v3, v20

    .line 409
    .line 410
    goto/16 :goto_5

    .line 411
    .line 412
    :cond_7
    return-object v5
.end method

.method public final l(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getCurrentConfigs()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-nez p1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_5

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->p()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/16 v2, 0x10

    .line 38
    .line 39
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v3, v1

    .line 63
    check-cast v3, Lx1/a;

    .line 64
    .line 65
    iget-object v3, v3, Lx1/a;->a:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lx1/a;

    .line 95
    .line 96
    iget-object v3, v1, Lx1/a;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lx1/a;

    .line 103
    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_3
    move-object v1, v3

    .line 108
    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    const/high16 v0, -0x80000000

    .line 113
    .line 114
    invoke-static {p0, v0, p1}, Lx1/e;->b(Landroid/content/Context;ILjava/util/List;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 118
    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 130
    .line 131
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->k()Landroid/widget/FrameLayout;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 147
    .line 148
    :cond_5
    iget-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 149
    .line 150
    const/16 v0, 0x8

    .line 151
    .line 152
    if-eqz p1, :cond_6

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->n:Landroid/view/View;

    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    :cond_7
    iget-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 165
    .line 166
    if-eqz p1, :cond_8

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :cond_8
    iget-object p1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->j:Landroid/widget/FrameLayout;

    .line 172
    .line 173
    if-eqz p1, :cond_9

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    .line 178
    .line 179
    :cond_9
    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->c:Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    iget-object v0, v0, Ly1/V0;->f:Ly1/S0;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, v0, Ly1/S0;->d:Ljava/lang/Class;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {v2, v0}, Ly1/V0;->c(Landroid/view/View;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_2
    :goto_1
    return-object v1
.end method

.method public final n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getDecorView(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x1e

    .line 17
    .line 18
    if-lt v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/core/view/o;->m(Landroid/view/Window;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, LP0/c;->l(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Landroidx/core/view/o;->p()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v0, v1}, LP0/c;->C(Landroid/view/WindowInsetsController;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/core/view/o;->r(Landroid/view/WindowInsetsController;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :cond_1
    const/16 v1, 0x1706

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final o(LB1/u;Z)V
    .locals 8

    .line 1
    iget-object v0, p1, LB1/u;->d:LB1/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->g:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->m()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iput-boolean v2, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->g:Z

    .line 27
    .line 28
    new-instance v0, Ly1/D0;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-direct {v0, p0, v1}, Ly1/D0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->q(Lkotlin/jvm/functions/Function0;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v0, Ly1/E0;

    .line 38
    .line 39
    invoke-direct {v0, p1, p0, p2}, Ly1/E0;-><init>(LB1/u;Lcom/minhub/gamehub/game/GodotGameActivity;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/minhub/gamehub/game/GodotGameActivity;->q(Lkotlin/jvm/functions/Function0;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    xor-int/2addr p2, v2

    .line 47
    iget p1, p1, LB1/u;->e:I

    .line 48
    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/minhub/gamehub/game/GodotGameActivity;->s(II)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->m()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-nez p1, :cond_5

    .line 58
    .line 59
    :cond_4
    :goto_1
    move-object v3, p0

    .line 60
    goto :goto_4

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v2, "getView"

    .line 71
    .line 72
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    instance-of v1, p1, Landroid/view/View;

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    move-object v0, p1

    .line 87
    :catch_0
    :cond_6
    if-nez v0, :cond_7

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    int-to-float p1, p1

    .line 95
    const/high16 v1, 0x40000000    # 2.0f

    .line 96
    .line 97
    div-float v5, p1, v1

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    int-to-float p1, p1

    .line 104
    div-float v6, p1, v1

    .line 105
    .line 106
    xor-int/lit8 v4, p2, 0x1

    .line 107
    .line 108
    if-eqz p2, :cond_8

    .line 109
    .line 110
    const/high16 p1, 0x3f800000    # 1.0f

    .line 111
    .line 112
    :goto_2
    move v7, p1

    .line 113
    goto :goto_3

    .line 114
    :cond_8
    const/4 p1, 0x0

    .line 115
    goto :goto_2

    .line 116
    :goto_3
    new-instance v2, Ly1/H0;

    .line 117
    .line 118
    move-object v3, p0

    .line 119
    invoke-direct/range {v2 .. v7}, Ly1/H0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;IFFF)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v2}, Lcom/minhub/gamehub/game/GodotGameActivity;->q(Lkotlin/jvm/functions/Function0;)V

    .line 123
    .line 124
    .line 125
    :goto_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v2, "game_id"

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v5, "godot_game_path"

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    const-string v7, "getFilesDir(...)"

    .line 25
    .line 26
    const-string v8, ")"

    .line 27
    .line 28
    const/4 v9, 0x1

    .line 29
    const-string v10, "GodotGame"

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const/4 v12, 0x0

    .line 33
    if-ltz v4, :cond_b

    .line 34
    .line 35
    if-eqz v6, :cond_b

    .line 36
    .line 37
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    .line 51
    new-instance v0, Lcom/minhub/gamehub/data/GameRepository;

    .line 52
    .line 53
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v13}, Lcom/minhub/gamehub/data/GameRepository;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/data/GameRepository;->findById(I)Lcom/minhub/gamehub/data/Game;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getLastPlayedMs()J

    .line 66
    .line 67
    .line 68
    move-result-wide v14

    .line 69
    const-wide/16 v16, 0x0

    .line 70
    .line 71
    cmp-long v14, v14, v16

    .line 72
    .line 73
    if-gtz v14, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getPlaytimeMinutes()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-lez v0, :cond_1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v0, v11

    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_3

    .line 86
    :cond_2
    :goto_0
    move v0, v9

    .line 87
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move-object v0, v12

    .line 93
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_4

    .line 98
    :goto_3
    sget-object v14, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 99
    .line 100
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-eqz v14, :cond_4

    .line 113
    .line 114
    move-object v0, v12

    .line 115
    :cond_4
    check-cast v0, Ljava/lang/Boolean;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    move v14, v0

    .line 124
    goto :goto_5

    .line 125
    :cond_5
    move v14, v11

    .line 126
    :goto_5
    :try_start_1
    sget-object v0, Ly1/d1;->a:Ljava/util/Set;

    .line 127
    .line 128
    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v15, Ljava/io/File;

    .line 136
    .line 137
    invoke-direct {v15, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0, v15, v14, v4}, Ly1/d1;->d(Ljava/io/File;Ljava/io/File;ZI)Ly1/c1;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v0, v0, Ly1/c1;->a:Ljava/io/File;

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    goto :goto_6

    .line 151
    :catchall_1
    move-exception v0

    .line 152
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    .line 154
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    if-eqz v6, :cond_6

    .line 167
    .line 168
    const-string v15, "user:// in the game folder unavailable, using the old per-game one"

    .line 169
    .line 170
    invoke-static {v10, v15, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .line 172
    .line 173
    :cond_6
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-nez v6, :cond_7

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_7
    :try_start_2
    sget-object v0, Ly1/d1;->a:Ljava/util/Set;

    .line 181
    .line 182
    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v4}, Ly1/d1;->c(Ljava/io/File;I)Ljava/io/File;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 194
    .line 195
    .line 196
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 200
    goto :goto_7

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 203
    .line 204
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    :goto_7
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_8

    .line 217
    .line 218
    move-object v0, v12

    .line 219
    :cond_8
    check-cast v0, Ljava/io/File;

    .line 220
    .line 221
    if-eqz v0, :cond_9

    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_9

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_9
    move-object v0, v12

    .line 231
    :goto_8
    check-cast v0, Ljava/io/File;

    .line 232
    .line 233
    iput-object v0, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->d:Ljava/io/File;

    .line 234
    .line 235
    if-nez v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    const-string v6, "user:// = "

    .line 244
    .line 245
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v0, " (played before: "

    .line 252
    .line 253
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    :cond_b
    :goto_9
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 270
    .line 271
    .line 272
    const-string v0, "godot"

    .line 273
    .line 274
    invoke-static {v1, v0, v12, v12}, La/a;->r(Landroid/app/Activity;Ljava/lang/String;Ly1/x;Ly1/x;)LA1/v0;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    iput-object v0, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->f:LA1/v0;

    .line 279
    .line 280
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GodotGameActivity;->n()V

    .line 281
    .line 282
    .line 283
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 284
    .line 285
    const-string v4, "SUPPORTED_64_BIT_ABIS"

    .line 286
    .line 287
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    array-length v0, v0

    .line 291
    if-nez v0, :cond_c

    .line 292
    .line 293
    new-instance v0, LO0/b;

    .line 294
    .line 295
    invoke-direct {v0, v1, v11}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 296
    .line 297
    .line 298
    iget-object v2, v0, Le/f;->c:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v2, Le/b;

    .line 301
    .line 302
    const v3, 0x7f120192

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    iput-object v3, v2, Le/b;->d:Ljava/lang/CharSequence;

    .line 310
    .line 311
    const v3, 0x7f120191

    .line 312
    .line 313
    .line 314
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    iput-object v3, v2, Le/b;->f:Ljava/lang/CharSequence;

    .line 319
    .line 320
    new-instance v3, LC1/I1;

    .line 321
    .line 322
    const/4 v4, 0x6

    .line 323
    invoke-direct {v3, v4, v1}, LC1/I1;-><init>(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    const v4, 0x104000a

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v4, v3}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 330
    .line 331
    .line 332
    new-instance v3, Ly1/i;

    .line 333
    .line 334
    const/4 v4, 0x2

    .line 335
    invoke-direct {v3, v4, v1}, Ly1/i;-><init>(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    iput-object v3, v2, Le/b;->n:Landroid/content/DialogInterface$OnCancelListener;

    .line 339
    .line 340
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 341
    .line 342
    .line 343
    return-void

    .line 344
    :cond_c
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    invoke-static {v1, v0}, Ly1/e0;->a(Landroid/app/Activity;I)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_23

    .line 364
    .line 365
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_d

    .line 370
    .line 371
    goto/16 :goto_13

    .line 372
    .line 373
    :cond_d
    new-instance v2, Ljava/io/File;

    .line 374
    .line 375
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_f

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_e

    .line 389
    .line 390
    goto :goto_a

    .line 391
    :cond_e
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    if-nez v0, :cond_10

    .line 396
    .line 397
    :cond_f
    :goto_a
    move-object v13, v12

    .line 398
    goto/16 :goto_10

    .line 399
    .line 400
    :cond_10
    const-string v2, "pck"

    .line 401
    .line 402
    const-string v3, "apk"

    .line 403
    .line 404
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v4

    .line 408
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-eqz v5, :cond_14

    .line 421
    .line 422
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    const-string v6, "next(...)"

    .line 427
    .line 428
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    check-cast v5, Ljava/lang/String;

    .line 432
    .line 433
    array-length v6, v0

    .line 434
    move v7, v11

    .line 435
    :goto_b
    if-ge v7, v6, :cond_13

    .line 436
    .line 437
    aget-object v13, v0, v7

    .line 438
    .line 439
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    .line 440
    .line 441
    .line 442
    move-result v14

    .line 443
    if-eqz v14, :cond_12

    .line 444
    .line 445
    invoke-static {v13, v13, v5, v9}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 446
    .line 447
    .line 448
    move-result v14

    .line 449
    if-eqz v14, :cond_12

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_12
    add-int/lit8 v7, v7, 0x1

    .line 453
    .line 454
    goto :goto_b

    .line 455
    :cond_13
    move-object v13, v12

    .line 456
    :goto_c
    if-eqz v13, :cond_11

    .line 457
    .line 458
    goto :goto_10

    .line 459
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    .line 460
    .line 461
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .line 463
    .line 464
    array-length v5, v0

    .line 465
    move v6, v11

    .line 466
    :goto_d
    if-ge v6, v5, :cond_16

    .line 467
    .line 468
    aget-object v7, v0, v6

    .line 469
    .line 470
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 471
    .line 472
    .line 473
    move-result v13

    .line 474
    if-eqz v13, :cond_15

    .line 475
    .line 476
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 480
    .line 481
    goto :goto_d

    .line 482
    :cond_16
    new-instance v0, Ly1/M;

    .line 483
    .line 484
    invoke-direct {v0, v9}, Ly1/M;-><init>(I)V

    .line 485
    .line 486
    .line 487
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v4

    .line 499
    if-eqz v4, :cond_f

    .line 500
    .line 501
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v4

    .line 505
    check-cast v4, Ljava/io/File;

    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    if-eqz v4, :cond_1a

    .line 512
    .line 513
    array-length v5, v4

    .line 514
    move v6, v11

    .line 515
    :goto_e
    if-ge v6, v5, :cond_1a

    .line 516
    .line 517
    aget-object v7, v4, v6

    .line 518
    .line 519
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 520
    .line 521
    .line 522
    move-result v13

    .line 523
    if-eqz v13, :cond_19

    .line 524
    .line 525
    invoke-static {v7, v7, v2, v9}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 526
    .line 527
    .line 528
    move-result v13

    .line 529
    if-nez v13, :cond_18

    .line 530
    .line 531
    invoke-static {v7}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v13

    .line 535
    invoke-static {v13, v3, v9}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 536
    .line 537
    .line 538
    move-result v13

    .line 539
    if-eqz v13, :cond_19

    .line 540
    .line 541
    :cond_18
    move-object v13, v7

    .line 542
    goto :goto_f

    .line 543
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 544
    .line 545
    goto :goto_e

    .line 546
    :cond_1a
    move-object v13, v12

    .line 547
    :goto_f
    if-eqz v13, :cond_17

    .line 548
    .line 549
    :goto_10
    const v0, 0x7f1203ee

    .line 550
    .line 551
    .line 552
    if-nez v13, :cond_1b

    .line 553
    .line 554
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :cond_1b
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    iput-object v2, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->e:Ljava/lang/String;

    .line 574
    .line 575
    invoke-static {v13}, Ly1/L1;->C(Ljava/io/File;)Ly1/P0;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    if-nez v2, :cond_1c

    .line 584
    .line 585
    const-string v2, "?"

    .line 586
    .line 587
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    const-string v5, "Game pack: "

    .line 590
    .line 591
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v3, " (Godot "

    .line 598
    .line 599
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v2

    .line 612
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    const-string v3, "godotRuntimeKey"

    .line 620
    .line 621
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    sget-object v3, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 626
    .line 627
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 628
    .line 629
    .line 630
    if-eqz v2, :cond_20

    .line 631
    .line 632
    sget-object v3, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 633
    .line 634
    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    if-nez v3, :cond_1d

    .line 639
    .line 640
    goto :goto_11

    .line 641
    :cond_1d
    sget-object v3, Ly1/W0;->b:Ljava/util/List;

    .line 642
    .line 643
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v4

    .line 651
    if-eqz v4, :cond_1f

    .line 652
    .line 653
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    move-object v5, v4

    .line 658
    check-cast v5, LL1/a;

    .line 659
    .line 660
    invoke-virtual {v5}, LL1/a;->a()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-eqz v5, :cond_1e

    .line 669
    .line 670
    move-object v12, v4

    .line 671
    :cond_1f
    check-cast v12, LL1/a;

    .line 672
    .line 673
    :cond_20
    :goto_11
    if-nez v12, :cond_21

    .line 674
    .line 675
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 684
    .line 685
    .line 686
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :cond_21
    iget-object v0, v12, LL1/a;->b:LL1/e;

    .line 691
    .line 692
    invoke-virtual {v12}, LL1/a;->a()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    .line 697
    .line 698
    const-string v4, "Using Godot "

    .line 699
    .line 700
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    const-string v4, " ("

    .line 707
    .line 708
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    sget-object v2, Ly1/W0;->a:Lkotlin/text/Regex;

    .line 725
    .line 726
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    const-string v3, "getApplicationContext(...)"

    .line 731
    .line 732
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    const-string v3, "context"

    .line 736
    .line 737
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    const-string v3, "build"

    .line 741
    .line 742
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    sget-object v3, Ly1/y1;->a:Ly1/y1;

    .line 746
    .line 747
    sget-object v3, Ly1/v1;->j:Ly1/v1;

    .line 748
    .line 749
    invoke-static {v12, v2, v3}, Ly1/y1;->k(LL1/a;Landroid/content/Context;Ly1/v1;)Z

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-nez v2, :cond_22

    .line 754
    .line 755
    invoke-virtual {v0}, LL1/e;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    const v2, 0x7f12018e

    .line 764
    .line 765
    .line 766
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 778
    .line 779
    .line 780
    return-void

    .line 781
    :cond_22
    :try_start_3
    new-instance v0, Ly1/V0;

    .line 782
    .line 783
    new-instance v2, Lj/h;

    .line 784
    .line 785
    const/16 v3, 0xd

    .line 786
    .line 787
    invoke-direct {v2, v3, v1}, Lj/h;-><init>(ILjava/lang/Object;)V

    .line 788
    .line 789
    .line 790
    invoke-direct {v0, v1, v12, v2}, Ly1/V0;-><init>(Lcom/minhub/gamehub/game/GodotGameActivity;LL1/a;Lj/h;)V

    .line 791
    .line 792
    .line 793
    iput-object v0, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 794
    .line 795
    invoke-virtual {v12}, LL1/a;->a()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    new-instance v3, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    const-string v4, "GodotFragment_"

    .line 805
    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object v2

    .line 816
    invoke-virtual {v0, v2}, Ly1/V0;->d(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    iput-object v0, v1, Lcom/minhub/gamehub/game/GodotGameActivity;->c:Landroidx/fragment/app/Fragment;

    .line 821
    .line 822
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    new-instance v2, LC1/g1;

    .line 831
    .line 832
    const/16 v3, 0x12

    .line 833
    .line 834
    invoke-direct {v2, v3, v1}, LC1/g1;-><init>(ILjava/lang/Object;)V

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 838
    .line 839
    .line 840
    goto :goto_12

    .line 841
    :catch_0
    move-exception v0

    .line 842
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    .line 847
    .line 848
    const-string v4, "Failed to start Godot: "

    .line 849
    .line 850
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    const v2, 0x7f1200f7

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 886
    .line 887
    .line 888
    :goto_12
    return-void

    .line 889
    :cond_23
    :goto_13
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 890
    .line 891
    .line 892
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->f:LA1/v0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, LA1/v0;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->n()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 5

    .line 1
    const-string v0, "gamepad_layout"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "godot_schema"

    .line 9
    .line 10
    const-string v2, "0"

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    const-string v3, "5"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/high16 v4, -0x80000000

    .line 27
    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    invoke-static {}, LB1/t;->a()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {p0, v4, v2}, Lx1/e;->b(Landroid/content/Context;ILjava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_1
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 50
    .line 51
    const-string v0, "<this>"

    .line 52
    .line 53
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "button_layout_-2147483648"

    .line 61
    .line 62
    const-string v2, "[]"

    .line 63
    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    move-object v0, v2

    .line 71
    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_7

    .line 76
    .line 77
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 101
    .line 102
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    check-cast v1, Landroid/view/ViewGroup;

    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-lez v2, :cond_4

    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 118
    .line 119
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-lez v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 130
    .line 131
    :goto_2
    const/4 v0, 0x1

    .line 132
    invoke-static {p0, v4, v0}, Lx1/e;->a(Landroid/content/Context;IZ)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    invoke-static {}, LB1/t;->a()Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_6
    return-object v0

    .line 147
    :cond_7
    :goto_3
    invoke-static {}, LB1/t;->a()Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0
.end method

.method public final q(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->m()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    new-instance v1, LA1/o;

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-direct {v1, v2, p1}, LA1/o;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "action"

    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "queueOnRenderThread"

    .line 28
    .line 29
    const-class v3, Ljava/lang/Runnable;

    .line 30
    .line 31
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "queueOnRenderThread failed: "

    .line 53
    .line 54
    const-string v1, "GodotRuntimeLoader"

    .line 55
    .line 56
    invoke-static {v0, p1, v1}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->m:Lcom/minhub/gamehub/editor/EditModeOverlay;

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/minhub/gamehub/editor/EditModeOverlay;->getSelectedButtonConfig()Lx1/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    :goto_0
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    move v6, v4

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    move v6, v5

    .line 25
    :goto_1
    iget-boolean v7, v0, Lcom/minhub/gamehub/game/GodotGameActivity;->p:Z

    .line 26
    .line 27
    const-string v8, "\u25be"

    .line 28
    .line 29
    if-nez v6, :cond_3

    .line 30
    .line 31
    new-instance v6, Ly1/a;

    .line 32
    .line 33
    invoke-direct {v6, v5, v5, v8}, Ly1/a;-><init>(ZZLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    new-instance v6, Ly1/a;

    .line 38
    .line 39
    xor-int/lit8 v9, v7, 0x1

    .line 40
    .line 41
    if-eqz v7, :cond_4

    .line 42
    .line 43
    const-string v8, "\u25b4"

    .line 44
    .line 45
    :cond_4
    invoke-direct {v6, v4, v9, v8}, Ly1/a;-><init>(ZZLjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    .line 57
    .line 58
    iget-boolean v8, v6, Ly1/a;->a:Z

    .line 59
    .line 60
    if-eqz v8, :cond_5

    .line 61
    .line 62
    move v8, v5

    .line 63
    goto :goto_3

    .line 64
    :cond_5
    const/16 v8, 0x8

    .line 65
    .line 66
    :goto_3
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    const v8, 0x7f0901ba

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    iget-boolean v10, v6, Ly1/a;->b:Z

    .line 77
    .line 78
    if-eqz v10, :cond_6

    .line 79
    .line 80
    move v10, v5

    .line 81
    goto :goto_4

    .line 82
    :cond_6
    const/16 v10, 0x8

    .line 83
    .line 84
    :goto_4
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    const v8, 0x7f0900e5

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    check-cast v8, Landroid/widget/TextView;

    .line 95
    .line 96
    iget-object v6, v6, Ly1/a;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    const v6, 0x7f0902a8

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Landroid/widget/SeekBar;

    .line 109
    .line 110
    const v8, 0x7f0902a7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    check-cast v8, Landroid/widget/SeekBar;

    .line 118
    .line 119
    const v10, 0x7f0903a3

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    check-cast v10, Landroid/widget/TextView;

    .line 127
    .line 128
    const v11, 0x7f090374

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Landroid/widget/TextView;

    .line 136
    .line 137
    const v12, 0x7f0900dc

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    const-string v13, "findViewById(...)"

    .line 145
    .line 146
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const v14, 0x7f0900de

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const v15, 0x7f0900dd

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/16 v16, 0x8

    .line 170
    .line 171
    const v9, 0x7f090104

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    move/from16 v17, v4

    .line 182
    .line 183
    const v4, 0x7f090108

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const v3, 0x7f090102

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    move/from16 v18, v5

    .line 204
    .line 205
    const v5, 0x7f09010a

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    move-object/from16 v19, v3

    .line 216
    .line 217
    const v3, 0x7f090107

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    move-object/from16 v20, v3

    .line 228
    .line 229
    const v3, 0x7f090105

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v21, v3

    .line 240
    .line 241
    const v3, 0x7f090106

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    move-object/from16 v22, v3

    .line 252
    .line 253
    const v3, 0x7f090103

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v23, v3

    .line 264
    .line 265
    const v3, 0x7f090109

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    const/16 v13, 0xe

    .line 282
    .line 283
    new-array v13, v13, [Landroid/view/View;

    .line 284
    .line 285
    aput-object v12, v13, v18

    .line 286
    .line 287
    aput-object v14, v13, v17

    .line 288
    .line 289
    const/4 v12, 0x2

    .line 290
    aput-object v15, v13, v12

    .line 291
    .line 292
    const/4 v12, 0x3

    .line 293
    aput-object v9, v13, v12

    .line 294
    .line 295
    const/4 v9, 0x4

    .line 296
    aput-object v4, v13, v9

    .line 297
    .line 298
    const/4 v4, 0x5

    .line 299
    aput-object v19, v13, v4

    .line 300
    .line 301
    const/4 v4, 0x6

    .line 302
    aput-object v5, v13, v4

    .line 303
    .line 304
    const/4 v4, 0x7

    .line 305
    aput-object v20, v13, v4

    .line 306
    .line 307
    aput-object v21, v13, v16

    .line 308
    .line 309
    const/16 v4, 0x9

    .line 310
    .line 311
    aput-object v22, v13, v4

    .line 312
    .line 313
    const/16 v4, 0xa

    .line 314
    .line 315
    aput-object v23, v13, v4

    .line 316
    .line 317
    const/16 v5, 0xb

    .line 318
    .line 319
    aput-object v3, v13, v5

    .line 320
    .line 321
    const/16 v3, 0xc

    .line 322
    .line 323
    aput-object v6, v13, v3

    .line 324
    .line 325
    const/16 v3, 0xd

    .line 326
    .line 327
    aput-object v8, v13, v3

    .line 328
    .line 329
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    const v5, 0x7f120121

    .line 334
    .line 335
    .line 336
    const v9, 0x7f120125

    .line 337
    .line 338
    .line 339
    const v12, 0x7f1201e5

    .line 340
    .line 341
    .line 342
    const v13, 0x7f090323

    .line 343
    .line 344
    .line 345
    const/16 v14, 0x64

    .line 346
    .line 347
    if-nez v2, :cond_8

    .line 348
    .line 349
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Landroid/widget/TextView;

    .line 354
    .line 355
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    const-string v12, "3 \u2014 "

    .line 362
    .line 363
    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    const-string v1, "36"

    .line 377
    .line 378
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    const/16 v1, 0x24

    .line 405
    .line 406
    invoke-virtual {v6, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 410
    .line 411
    .line 412
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-eqz v2, :cond_7

    .line 421
    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    check-cast v2, Landroid/view/View;

    .line 427
    .line 428
    move/from16 v3, v18

    .line 429
    .line 430
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 431
    .line 432
    .line 433
    const v4, 0x3ee66666    # 0.45f

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 437
    .line 438
    .line 439
    goto :goto_5

    .line 440
    :cond_7
    const/4 v2, 0x0

    .line 441
    invoke-virtual {v0, v2, v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->u(Ljava/lang/String;F)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v2, v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->t(Ljava/lang/String;F)V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_8
    iget v15, v2, Lx1/a;->f:I

    .line 449
    .line 450
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    check-cast v1, Landroid/widget/TextView;

    .line 455
    .line 456
    iget-object v13, v2, Lx1/a;->b:Ljava/lang/String;

    .line 457
    .line 458
    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v12

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    const-string v13, " \u2014 "

    .line 471
    .line 472
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    .line 484
    .line 485
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {v0, v9, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    .line 499
    .line 500
    iget v1, v2, Lx1/a;->j:F

    .line 501
    .line 502
    int-to-float v5, v14

    .line 503
    mul-float/2addr v1, v5

    .line 504
    float-to-int v1, v1

    .line 505
    invoke-static {v1, v4, v14}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v4

    .line 517
    const v5, 0x7f120121

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    const/16 v4, 0x14

    .line 528
    .line 529
    const/16 v5, 0x8c

    .line 530
    .line 531
    invoke-static {v15, v4, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    invoke-virtual {v6, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v8, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 539
    .line 540
    .line 541
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    if-eqz v3, :cond_9

    .line 550
    .line 551
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    check-cast v3, Landroid/view/View;

    .line 556
    .line 557
    move/from16 v4, v17

    .line 558
    .line 559
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 560
    .line 561
    .line 562
    const/high16 v5, 0x3f800000    # 1.0f

    .line 563
    .line 564
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 565
    .line 566
    .line 567
    goto :goto_6

    .line 568
    :cond_9
    iget-object v1, v2, Lx1/a;->h:Ljava/lang/String;

    .line 569
    .line 570
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 571
    .line 572
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    const-string v4, "toUpperCase(...)"

    .line 577
    .line 578
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v1, v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->u(Ljava/lang/String;F)V

    .line 582
    .line 583
    .line 584
    iget-object v1, v2, Lx1/a;->i:Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v1, v7}, Lcom/minhub/gamehub/game/GodotGameActivity;->t(Ljava/lang/String;F)V

    .line 594
    .line 595
    .line 596
    return-void
.end method

.method public final s(II)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->b:Ly1/V0;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GodotGameActivity;->m()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "getView"

    .line 22
    .line 23
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v4, v0, Landroid/view/View;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    move-object v3, v0

    .line 38
    :catch_0
    :cond_1
    :goto_0
    move-object v8, v3

    .line 39
    if-eqz v8, :cond_2

    .line 40
    .line 41
    new-instance v0, Landroid/view/KeyEvent;

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    move-wide v3, v1

    .line 45
    move v5, p1

    .line 46
    move v6, p2

    .line 47
    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final t(Ljava/lang/String;F)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    const v1, 0x7f090104

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "#22C55E"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const v1, 0x7f090108

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "#EF4444"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const v1, 0x7f090102

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "#3B82F6"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const v1, 0x7f09010a

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "#F59E0B"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const v1, 0x7f090107

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "#8B5CF6"

    .line 67
    .line 68
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const v1, 0x7f090105

    .line 73
    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "#F97316"

    .line 80
    .line 81
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const v1, 0x7f090106

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "#EC4899"

    .line 93
    .line 94
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    const v1, 0x7f090103

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "#6B7280"

    .line 106
    .line 107
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    const v1, 0x7f090109

    .line 112
    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "#F5F5F5"

    .line 119
    .line 120
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    filled-new-array/range {v3 .. v11}, [Lkotlin/Pair;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_2

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Ljava/lang/Number;

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 173
    .line 174
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 175
    .line 176
    .line 177
    const/4 v5, 0x6

    .line 178
    int-to-float v5, v5

    .line 179
    mul-float/2addr v5, p2

    .line 180
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 181
    .line 182
    .line 183
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    .line 189
    .line 190
    const/4 v5, 0x2

    .line 191
    int-to-float v5, v5

    .line 192
    mul-float/2addr v5, p2

    .line 193
    float-to-int v5, v5

    .line 194
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 195
    .line 196
    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    const-string v6, "toUpperCase(...)"

    .line 201
    .line 202
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_1

    .line 210
    .line 211
    const/4 v2, -0x1

    .line 212
    goto :goto_1

    .line 213
    :cond_1
    const-string v2, "#26FFFFFF"

    .line 214
    .line 215
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    :goto_1
    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 223
    .line 224
    .line 225
    goto :goto_0

    .line 226
    :cond_2
    :goto_2
    return-void
.end method

.method public final u(Ljava/lang/String;F)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GodotGameActivity;->o:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    const v1, 0x7f0900dc

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "CIRCLE"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f0900de

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "ROUNDED"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const v3, 0x7f0900dd

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "RECT"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    filled-new-array {v1, v2, v3}, [Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lkotlin/Pair;

    .line 69
    .line 70
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    .line 95
    .line 96
    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 97
    .line 98
    .line 99
    const/16 v5, 0xa

    .line 100
    .line 101
    int-to-float v5, v5

    .line 102
    mul-float/2addr v5, p2

    .line 103
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 104
    .line 105
    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    const-string v5, "#1FFF424D"

    .line 109
    .line 110
    :goto_1
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    const-string v5, "#1B212D"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :goto_2
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 119
    .line 120
    .line 121
    float-to-int v5, p2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    .line 124
    const-string v2, "#FF424D"

    .line 125
    .line 126
    :goto_3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    goto :goto_4

    .line 131
    :cond_2
    const-string v2, "#2A3446"

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :goto_4
    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    :goto_5
    return-void
.end method
