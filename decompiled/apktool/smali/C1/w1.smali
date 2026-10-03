.class public final LC1/w1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LC1/w1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, LC1/w1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LC1/T;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, LC1/T;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "getName(...)"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "toLowerCase(...)"

    .line 35
    .line 36
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast p2, Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :goto_0
    return v0

    .line 60
    :pswitch_0
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ly1/M;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Ly1/M;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    check-cast p2, Lcom/minhub/gamehub/data/Save;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/minhub/gamehub/data/Save;->getLastModifiedMs()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p1, Lcom/minhub/gamehub/data/Save;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Save;->getLastModifiedMs()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    :goto_1
    return v0

    .line 96
    :pswitch_1
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, LK1/c;

    .line 99
    .line 100
    invoke-virtual {v0, p1, p2}, LK1/c;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    check-cast p1, LK1/h;

    .line 108
    .line 109
    iget-object p1, p1, LK1/h;->a:Ljava/lang/String;

    .line 110
    .line 111
    check-cast p2, LK1/h;

    .line 112
    .line 113
    iget-object p2, p2, LK1/h;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    :goto_2
    return v0

    .line 120
    :pswitch_2
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, LK1/c;

    .line 123
    .line 124
    invoke-virtual {v0, p1, p2}, LK1/c;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_3

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_3
    check-cast p2, LK1/f;

    .line 132
    .line 133
    iget p2, p2, LK1/f;->c:I

    .line 134
    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    check-cast p1, LK1/f;

    .line 140
    .line 141
    iget p1, p1, LK1/f;->c:I

    .line 142
    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {p2, p1}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    :goto_3
    return v0

    .line 152
    :pswitch_3
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, LC1/w1;

    .line 155
    .line 156
    invoke-virtual {v0, p1, p2}, LC1/w1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    check-cast p1, LK1/f;

    .line 164
    .line 165
    iget-object p1, p1, LK1/f;->a:Ljava/lang/String;

    .line 166
    .line 167
    check-cast p2, LK1/f;

    .line 168
    .line 169
    iget-object p2, p2, LK1/f;->a:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    :goto_4
    return v0

    .line 176
    :pswitch_4
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 177
    .line 178
    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    .line 179
    .line 180
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 183
    .line 184
    iget-boolean v1, p1, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 185
    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-boolean v2, p2, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 191
    .line 192
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_6

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    :goto_5
    return v1

    .line 247
    :pswitch_5
    check-cast p1, Ljava/io/File;

    .line 248
    .line 249
    iget-object v0, p0, LC1/w1;->b:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v0, Ljava/io/File;

    .line 252
    .line 253
    invoke-static {p1, v0}, Lkotlin/io/FilesKt;->relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-static {p1}, Lkotlin/io/FilesKt;->getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 262
    .line 263
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    const-string v2, "toLowerCase(...)"

    .line 268
    .line 269
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    check-cast p2, Ljava/io/File;

    .line 273
    .line 274
    invoke-static {p2, v0}, Lkotlin/io/FilesKt;->relativeTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-static {p2}, Lkotlin/io/FilesKt;->getInvariantSeparatorsPath(Ljava/io/File;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    return p1

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
