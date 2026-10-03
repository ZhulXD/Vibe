.class public final LP/U;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    iput p2, p0, LP/U;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LP/U;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, LP/U;->b:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, LP/U;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->N:LP/c0;

    .line 11
    .line 12
    if-eqz v2, :cond_b

    .line 13
    .line 14
    check-cast v2, LP/p;

    .line 15
    .line 16
    iget-wide v4, v2, LP/c0;->d:J

    .line 17
    .line 18
    iget-object v6, v2, LP/p;->h:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    iget-object v8, v2, LP/p;->j:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    iget-object v10, v2, LP/p;->k:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v11

    .line 36
    iget-object v12, v2, LP/p;->i:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v13

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    if-eqz v9, :cond_0

    .line 45
    .line 46
    if-eqz v13, :cond_0

    .line 47
    .line 48
    if-eqz v11, :cond_0

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    const/4 v15, 0x0

    .line 57
    :goto_0
    if-ge v15, v14, :cond_1

    .line 58
    .line 59
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v16

    .line 63
    add-int/lit8 v15, v15, 0x1

    .line 64
    .line 65
    move-object/from16 v3, v16

    .line 66
    .line 67
    check-cast v3, LP/y0;

    .line 68
    .line 69
    move-object/from16 v16, v6

    .line 70
    .line 71
    iget-object v6, v3, LP/y0;->a:Landroid/view/View;

    .line 72
    .line 73
    move/from16 v17, v7

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    move/from16 v18, v9

    .line 80
    .line 81
    iget-object v9, v2, LP/p;->q:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    move/from16 v19, v11

    .line 91
    .line 92
    const/4 v11, 0x0

    .line 93
    invoke-virtual {v9, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    new-instance v11, LP/k;

    .line 98
    .line 99
    invoke-direct {v11, v2, v3, v7, v6}, LP/k;-><init>(LP/p;LP/y0;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 107
    .line 108
    .line 109
    move-object/from16 v6, v16

    .line 110
    .line 111
    move/from16 v7, v17

    .line 112
    .line 113
    move/from16 v9, v18

    .line 114
    .line 115
    move/from16 v11, v19

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    move-object/from16 v16, v6

    .line 119
    .line 120
    move/from16 v17, v7

    .line 121
    .line 122
    move/from16 v18, v9

    .line 123
    .line 124
    move/from16 v19, v11

    .line 125
    .line 126
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 127
    .line 128
    .line 129
    if-nez v18, :cond_3

    .line 130
    .line 131
    new-instance v3, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    .line 138
    .line 139
    iget-object v6, v2, LP/p;->m:Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 145
    .line 146
    .line 147
    new-instance v6, LP/j;

    .line 148
    .line 149
    const/4 v7, 0x0

    .line 150
    invoke-direct {v6, v2, v3, v7}, LP/j;-><init>(LP/p;Ljava/util/ArrayList;I)V

    .line 151
    .line 152
    .line 153
    if-nez v17, :cond_2

    .line 154
    .line 155
    const/4 v7, 0x0

    .line 156
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, LP/o;

    .line 161
    .line 162
    iget-object v3, v3, LP/o;->a:LP/y0;

    .line 163
    .line 164
    iget-object v3, v3, LP/y0;->a:Landroid/view/View;

    .line 165
    .line 166
    invoke-static {v3, v6, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v6}, LP/j;->run()V

    .line 171
    .line 172
    .line 173
    :cond_3
    :goto_1
    if-nez v19, :cond_5

    .line 174
    .line 175
    new-instance v3, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 181
    .line 182
    .line 183
    iget-object v6, v2, LP/p;->n:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 189
    .line 190
    .line 191
    new-instance v6, LP/j;

    .line 192
    .line 193
    const/4 v7, 0x1

    .line 194
    invoke-direct {v6, v2, v3, v7}, LP/j;-><init>(LP/p;Ljava/util/ArrayList;I)V

    .line 195
    .line 196
    .line 197
    if-nez v17, :cond_4

    .line 198
    .line 199
    const/4 v7, 0x0

    .line 200
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, LP/n;

    .line 205
    .line 206
    iget-object v3, v3, LP/n;->a:LP/y0;

    .line 207
    .line 208
    iget-object v3, v3, LP/y0;->a:Landroid/view/View;

    .line 209
    .line 210
    invoke-static {v3, v6, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual {v6}, LP/j;->run()V

    .line 215
    .line 216
    .line 217
    :cond_5
    :goto_2
    if-nez v13, :cond_b

    .line 218
    .line 219
    new-instance v3, Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    .line 226
    .line 227
    iget-object v6, v2, LP/p;->l:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 233
    .line 234
    .line 235
    new-instance v6, LP/j;

    .line 236
    .line 237
    const/4 v7, 0x2

    .line 238
    invoke-direct {v6, v2, v3, v7}, LP/j;-><init>(LP/p;Ljava/util/ArrayList;I)V

    .line 239
    .line 240
    .line 241
    if-eqz v17, :cond_7

    .line 242
    .line 243
    if-eqz v18, :cond_7

    .line 244
    .line 245
    if-nez v19, :cond_6

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_6
    invoke-virtual {v6}, LP/j;->run()V

    .line 249
    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    .line 253
    .line 254
    if-nez v17, :cond_8

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_8
    move-wide v4, v7

    .line 258
    :goto_4
    if-nez v18, :cond_9

    .line 259
    .line 260
    iget-wide v9, v2, LP/c0;->e:J

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_9
    move-wide v9, v7

    .line 264
    :goto_5
    if-nez v19, :cond_a

    .line 265
    .line 266
    iget-wide v7, v2, LP/c0;->f:J

    .line 267
    .line 268
    :cond_a
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 269
    .line 270
    .line 271
    move-result-wide v7

    .line 272
    add-long/2addr v7, v4

    .line 273
    const/4 v2, 0x0

    .line 274
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, LP/y0;

    .line 279
    .line 280
    iget-object v3, v3, LP/y0;->a:Landroid/view/View;

    .line 281
    .line 282
    invoke-static {v3, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 283
    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_b
    :goto_6
    const/4 v2, 0x0

    .line 287
    :goto_7
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->o0:Z

    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_0
    iget-object v1, v0, LP/U;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 291
    .line 292
    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->v:Z

    .line 293
    .line 294
    if-eqz v2, :cond_f

    .line 295
    .line 296
    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-eqz v2, :cond_c

    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_c
    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->t:Z

    .line 304
    .line 305
    if-nez v2, :cond_d

    .line 306
    .line 307
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_d
    iget-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->y:Z

    .line 312
    .line 313
    if-eqz v2, :cond_e

    .line 314
    .line 315
    const/4 v2, 0x1

    .line 316
    iput-boolean v2, v1, Landroidx/recyclerview/widget/RecyclerView;->x:Z

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->p()V

    .line 320
    .line 321
    .line 322
    :cond_f
    :goto_8
    return-void

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
