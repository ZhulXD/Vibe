.class Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;
.super Landroid/os/Handler;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoHandler"
.end annotation


# instance fields
.field mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/cocos2dx/lib/Cocos2dxVideoHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    if-eq v0, v1, :cond_5

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :pswitch_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 21
    .line 22
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    move v1, v2

    .line 29
    :cond_0
    invoke-static {v0, v3, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->j(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 41
    .line 42
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 43
    .line 44
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 45
    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    move v1, v2

    .line 49
    :cond_1
    invoke-static {v0, v3, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->i(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_2
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 61
    .line 62
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 67
    .line 68
    if-ne v4, v2, :cond_2

    .line 69
    .line 70
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 71
    .line 72
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 75
    .line 76
    invoke-static {v0, v1, v2, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->h(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    .line 77
    .line 78
    .line 79
    goto/16 :goto_0

    .line 80
    .line 81
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 82
    .line 83
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-static {v0, v2, v1, v4, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->h(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZII)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_3
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 99
    .line 100
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 101
    .line 102
    if-ne v3, v2, :cond_3

    .line 103
    .line 104
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 105
    .line 106
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->k(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 112
    .line 113
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->k(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :pswitch_4
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 125
    .line 126
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->e(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_0

    .line 132
    .line 133
    :pswitch_5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 140
    .line 141
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 142
    .line 143
    if-ne v3, v2, :cond_4

    .line 144
    .line 145
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 146
    .line 147
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->n(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 153
    .line 154
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->n(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IZ)V

    .line 155
    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :pswitch_6
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 166
    .line 167
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 168
    .line 169
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 170
    .line 171
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->g(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;II)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :pswitch_7
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 183
    .line 184
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 185
    .line 186
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->p(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_8
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 198
    .line 199
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 200
    .line 201
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->f(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :pswitch_9
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 213
    .line 214
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 215
    .line 216
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->c(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :pswitch_a
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 227
    .line 228
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 229
    .line 230
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->o(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :pswitch_b
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 235
    .line 236
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    move-object v1, v0

    .line 241
    check-cast v1, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 242
    .line 243
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Landroid/graphics/Rect;

    .line 246
    .line 247
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 248
    .line 249
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 250
    .line 251
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 252
    .line 253
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 254
    .line 255
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 256
    .line 257
    invoke-static/range {v1 .. v6}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->l(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IIIII)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :pswitch_c
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 268
    .line 269
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 270
    .line 271
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 272
    .line 273
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v3, Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->m(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;IILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_0

    .line 281
    :pswitch_d
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 288
    .line 289
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 290
    .line 291
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->d(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 292
    .line 293
    .line 294
    goto :goto_0

    .line 295
    :pswitch_e
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 302
    .line 303
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 304
    .line 305
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->b(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;I)V

    .line 306
    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_5
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper$VideoHandler;->mReference:Ljava/lang/ref/WeakReference;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;

    .line 316
    .line 317
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoHelper;->q(Lorg/cocos2dx/lib/Cocos2dxVideoHelper;)V

    .line 318
    .line 319
    .line 320
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    nop

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
