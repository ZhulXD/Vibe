.class public abstract LC1/l0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [C

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 20
    .line 21
    const/16 v1, 0x5c

    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 v1, 0x2f

    .line 28
    .line 29
    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 2
        0x5cs
        0x2fs
    .end array-data
.end method

.method public static b(Ljava/io/File;)LC1/k0;
    .locals 14

    .line 1
    const-string v0, "configFile"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_e

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    invoke-static {p0}, Lkotlin/io/FilesKt;->e(Ljava/io/File;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const/4 v0, 0x0

    .line 29
    move-object v1, v0

    .line 30
    move-object v2, v1

    .line 31
    move-object v3, v2

    .line 32
    move-object v4, v3

    .line 33
    move-object v6, v4

    .line 34
    move-object v7, v6

    .line 35
    move-object v8, v7

    .line 36
    move-object v9, v8

    .line 37
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_c

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    const/16 v10, 0x3a

    .line 50
    .line 51
    const/4 v11, 0x6

    .line 52
    const/4 v12, 0x0

    .line 53
    invoke-static {v5, v10, v12, v11}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;CII)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-lez v10, :cond_1

    .line 58
    .line 59
    invoke-virtual {v5, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    const-string v12, "substring(...)"

    .line 64
    .line 65
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v11}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v11

    .line 76
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v11

    .line 82
    const-string v13, "toLowerCase(...)"

    .line 83
    .line 84
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v10, v10, 0x1

    .line 88
    .line 89
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    if-nez v10, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    sparse-switch v10, :sswitch_data_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :sswitch_0
    const-string v10, "savedir"

    .line 120
    .line 121
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_3

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {v5}, LC1/l0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    goto :goto_0

    .line 133
    :sswitch_1
    const-string v10, "runtimeroot"

    .line 134
    .line 135
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-nez v10, :cond_4

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_4
    invoke-static {v5}, LC1/l0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    goto :goto_0

    .line 147
    :sswitch_2
    const-string v10, "version"

    .line 148
    .line 149
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v10

    .line 153
    if-nez v10, :cond_5

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_5
    move-object v6, v5

    .line 157
    goto :goto_0

    .line 158
    :sswitch_3
    const-string v10, "type"

    .line 159
    .line 160
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-nez v10, :cond_6

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_6
    move-object v0, v5

    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :sswitch_4
    const-string v10, "name"

    .line 172
    .line 173
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    if-nez v10, :cond_7

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_7
    move-object v2, v5

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :sswitch_5
    const-string v10, "icon"

    .line 185
    .line 186
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    if-nez v10, :cond_8

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_8
    invoke-static {v5}, LC1/l0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :sswitch_6
    const-string v10, "id"

    .line 201
    .line 202
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    if-nez v10, :cond_a

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :sswitch_7
    const-string v10, "bg"

    .line 211
    .line 212
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-nez v10, :cond_9

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_9
    invoke-static {v5}, LC1/l0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :sswitch_8
    const-string v10, "post_id"

    .line 227
    .line 228
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-nez v10, :cond_a

    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :sswitch_9
    const-string v10, "postid"

    .line 237
    .line 238
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-nez v10, :cond_a

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_a
    invoke-static {v5}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    if-eqz v5, :cond_1

    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 253
    .line 254
    .line 255
    move-result-wide v9

    .line 256
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :sswitch_a
    const-string v10, "engine"

    .line 263
    .line 264
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-nez v10, :cond_b

    .line 269
    .line 270
    goto/16 :goto_0

    .line 271
    .line 272
    :cond_b
    move-object v1, v5

    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_c
    new-instance p0, LC1/k0;

    .line 276
    .line 277
    if-nez v0, :cond_d

    .line 278
    .line 279
    move-object v5, v1

    .line 280
    :goto_1
    move-object v1, p0

    .line 281
    goto :goto_2

    .line 282
    :cond_d
    move-object v5, v0

    .line 283
    goto :goto_1

    .line 284
    :goto_2
    invoke-direct/range {v1 .. v9}, LC1/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    .line 286
    .line 287
    return-object v1

    .line 288
    :cond_e
    :goto_3
    new-instance p0, LC1/k0;

    .line 289
    .line 290
    invoke-direct {p0}, LC1/k0;-><init>()V

    .line 291
    .line 292
    .line 293
    return-object p0

    .line 294
    nop

    .line 295
    :sswitch_data_0
    .sparse-switch
        -0x4d6805be -> :sswitch_a
        -0x3a8f0245 -> :sswitch_9
        -0x17516ae6 -> :sswitch_8
        0xc45 -> :sswitch_7
        0xd1b -> :sswitch_6
        0x313c79 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x368f3a -> :sswitch_3
        0x14f51cd8 -> :sswitch_2
        0x2d0ba4ba -> :sswitch_1
        0x6fa0f5f0 -> :sswitch_0
    .end sparse-switch
.end method
