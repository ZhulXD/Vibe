.class public final Ly1/x0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/io/File;

.field public final c:Lkotlin/jvm/functions/Function0;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "onClosed"

    .line 7
    .line 8
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "onExit"

    .line 12
    .line 13
    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Ly1/x0;->a:Landroid/app/Activity;

    .line 20
    .line 21
    iput-object p3, p0, Ly1/x0;->b:Ljava/io/File;

    .line 22
    .line 23
    iput-object p4, p0, Ly1/x0;->c:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    iput-object p5, p0, Ly1/x0;->d:Lkotlin/jvm/functions/Function0;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 36
    .line 37
    iput p1, p0, Ly1/x0;->e:F

    .line 38
    .line 39
    return-void
.end method

.method public static final c(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V
    .locals 6

    .line 1
    sget-object v0, Ly1/b1;->a:Lkotlin/text/Regex;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "field"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "text"

    .line 17
    .line 18
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-boolean v0, p4, Ly1/X0;->c:Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v0, "toLowerCase(...)"

    .line 41
    .line 42
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "true"

    .line 46
    .line 47
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v1, Li1/s;

    .line 54
    .line 55
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Li1/s;-><init>(Ljava/lang/Boolean;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_0
    const-string v0, "false"

    .line 63
    .line 64
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_5

    .line 69
    .line 70
    new-instance v1, Li1/s;

    .line 71
    .line 72
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Li1/s;-><init>(Ljava/lang/Boolean;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_3

    .line 78
    .line 79
    :cond_1
    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    new-instance p0, Li1/s;

    .line 90
    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Li1/s;-><init>(Ljava/lang/Number;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    move-object v1, p0

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-static {p0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-eqz p0, :cond_5

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    cmpg-double v0, v2, v4

    .line 120
    .line 121
    if-gtz v0, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    move-object p0, v1

    .line 125
    :goto_1
    if-eqz p0, :cond_5

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    cmpg-double v2, v0, v2

    .line 136
    .line 137
    if-nez v2, :cond_4

    .line 138
    .line 139
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    const-wide v4, 0x433ff973cafa8000L    # 9.0E15

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    cmpg-double v2, v2, v4

    .line 149
    .line 150
    if-gez v2, :cond_4

    .line 151
    .line 152
    new-instance p0, Li1/s;

    .line 153
    .line 154
    double-to-long v0, v0

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Li1/s;-><init>(Ljava/lang/Number;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    new-instance v0, Li1/s;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Li1/s;-><init>(Ljava/lang/Number;)V

    .line 166
    .line 167
    .line 168
    move-object p0, v0

    .line 169
    goto :goto_0

    .line 170
    :goto_2
    iget-boolean p0, p4, Ly1/X0;->f:Z

    .line 171
    .line 172
    if-eqz p0, :cond_5

    .line 173
    .line 174
    new-instance p0, Li1/s;

    .line 175
    .line 176
    invoke-virtual {v1}, Li1/s;->f()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Li1/s;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    move-object v1, p0

    .line 184
    :cond_5
    :goto_3
    if-nez v1, :cond_6

    .line 185
    .line 186
    iget-object p0, p3, Ly1/x0;->a:Landroid/app/Activity;

    .line 187
    .line 188
    iget-object v0, p4, Ly1/X0;->a:Ljava/util/List;

    .line 189
    .line 190
    const/4 v4, 0x0

    .line 191
    const/16 v5, 0x3e

    .line 192
    .line 193
    const-string v1, " \u203a "

    .line 194
    .line 195
    const/4 v2, 0x0

    .line 196
    const/4 v3, 0x0

    .line 197
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const p2, 0x7f120172

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const/4 p2, 0x1

    .line 213
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :cond_6
    invoke-virtual {p1}, Le/D;->dismiss()V

    .line 222
    .line 223
    .line 224
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    return-void
.end method

.method public static final e(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v1, v0, Ly1/x0;->a:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestFocus()Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    sget-object v4, Ly1/b1;->a:Lkotlin/text/Regex;

    .line 34
    .line 35
    const-string v4, "fields"

    .line 36
    .line 37
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "query"

    .line 41
    .line 42
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x1

    .line 58
    if-nez v4, :cond_1

    .line 59
    .line 60
    new-instance v3, Ly1/Z0;

    .line 61
    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v3, v4, v6}, Ly1/Z0;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    const-string v4, "q"

    .line 80
    .line 81
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v4, " "

    .line 85
    .line 86
    const-string v6, ""

    .line 87
    .line 88
    invoke-static {v3, v4, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v7, "_"

    .line 93
    .line 94
    invoke-static {v4, v7, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-static {v4}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    if-eqz v8, :cond_2

    .line 108
    .line 109
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    .line 110
    .line 111
    .line 112
    move-result-wide v8

    .line 113
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_2
    const-string v8, ","

    .line 121
    .line 122
    invoke-static {v4, v8, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    invoke-static {v8}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    if-eqz v8, :cond_3

    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_3
    new-instance v8, Lkotlin/text/Regex;

    .line 144
    .line 145
    const-string v9, "-?\\d{1,3}(\\.\\d{3})+"

    .line 146
    .line 147
    invoke-direct {v8, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v4}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    if-eqz v8, :cond_4

    .line 155
    .line 156
    const-string v8, "."

    .line 157
    .line 158
    invoke-static {v4, v8, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v4}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_4

    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 169
    .line 170
    .line 171
    move-result-wide v8

    .line 172
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    :cond_5
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_6

    .line 193
    .line 194
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    move-object v8, v7

    .line 199
    check-cast v8, Ljava/lang/Number;

    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    .line 202
    .line 203
    .line 204
    move-result-wide v8

    .line 205
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 206
    .line 207
    .line 208
    move-result-wide v8

    .line 209
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    cmpg-double v8, v8, v10

    .line 215
    .line 216
    if-gtz v8, :cond_5

    .line 217
    .line 218
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_6
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_7

    .line 231
    .line 232
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    goto :goto_2

    .line 237
    :cond_7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    new-instance v7, Ljava/util/ArrayList;

    .line 242
    .line 243
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-eqz v8, :cond_9

    .line 255
    .line 256
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    move-object v9, v8

    .line 261
    check-cast v9, Ljava/lang/Number;

    .line 262
    .line 263
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    check-cast v10, Ly1/X0;

    .line 272
    .line 273
    iget-boolean v10, v10, Ly1/X0;->c:Z

    .line 274
    .line 275
    if-nez v10, :cond_8

    .line 276
    .line 277
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v9

    .line 281
    check-cast v9, Ly1/X0;

    .line 282
    .line 283
    iget-object v9, v9, Ly1/X0;->b:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v9}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 286
    .line 287
    .line 288
    move-result-object v9

    .line 289
    if-eqz v9, :cond_8

    .line 290
    .line 291
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    .line 292
    .line 293
    .line 294
    move-result-wide v9

    .line 295
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    if-ne v9, v5, :cond_8

    .line 304
    .line 305
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    goto :goto_1

    .line 309
    :cond_9
    move-object v4, v7

    .line 310
    :goto_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)Ljava/util/HashSet;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 315
    .line 316
    invoke-virtual {v3, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    const-string v7, "toLowerCase(...)"

    .line 321
    .line 322
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    new-instance v9, Ljava/util/ArrayList;

    .line 330
    .line 331
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .line 333
    .line 334
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v8

    .line 338
    :cond_a
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v10

    .line 342
    if-eqz v10, :cond_b

    .line 343
    .line 344
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    move-object v11, v10

    .line 349
    check-cast v11, Ljava/lang/Number;

    .line 350
    .line 351
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 352
    .line 353
    .line 354
    move-result v11

    .line 355
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-nez v12, :cond_a

    .line 364
    .line 365
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v11

    .line 369
    check-cast v11, Ly1/X0;

    .line 370
    .line 371
    iget-object v12, v11, Ly1/X0;->a:Ljava/util/List;

    .line 372
    .line 373
    const/16 v16, 0x0

    .line 374
    .line 375
    const/16 v17, 0x3e

    .line 376
    .line 377
    const-string v13, " \u203a "

    .line 378
    .line 379
    const/4 v14, 0x0

    .line 380
    const/4 v15, 0x0

    .line 381
    invoke-static/range {v12 .. v17}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 386
    .line 387
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v11

    .line 391
    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {v11, v3}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    if-eqz v11, :cond_a

    .line 399
    .line 400
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    goto :goto_3

    .line 404
    :cond_b
    new-instance v3, Ly1/Z0;

    .line 405
    .line 406
    invoke-direct {v3, v4, v9}, Ly1/Z0;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 407
    .line 408
    .line 409
    :goto_4
    iget-object v8, v3, Ly1/Z0;->a:Ljava/util/List;

    .line 410
    .line 411
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    if-eqz v3, :cond_d

    .line 416
    .line 417
    if-eq v3, v5, :cond_c

    .line 418
    .line 419
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v3

    .line 427
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    const v4, 0x7f12017d

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v9

    .line 438
    const-string v3, "getString(...)"

    .line 439
    .line 440
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    const v3, 0x7f120174

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    new-instance v7, Ly1/p0;

    .line 451
    .line 452
    move-object v0, v7

    .line 453
    const/4 v7, 0x1

    .line 454
    move-object/from16 v1, p2

    .line 455
    .line 456
    move-object/from16 v3, p3

    .line 457
    .line 458
    move-object/from16 v6, p4

    .line 459
    .line 460
    move-object/from16 v4, p5

    .line 461
    .line 462
    move-object/from16 v5, p6

    .line 463
    .line 464
    invoke-direct/range {v0 .. v7}, Ly1/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    .line 465
    .line 466
    .line 467
    const/4 v5, 0x0

    .line 468
    move-object/from16 v3, p1

    .line 469
    .line 470
    move-object v7, v0

    .line 471
    move-object v4, v8

    .line 472
    move-object v1, v9

    .line 473
    move-object v2, v10

    .line 474
    move-object/from16 v0, p2

    .line 475
    .line 476
    invoke-virtual/range {v0 .. v7}, Ly1/x0;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLP/H0;Lkotlin/jvm/functions/Function1;)V

    .line 477
    .line 478
    .line 479
    return-void

    .line 480
    :cond_c
    move-object v4, v8

    .line 481
    const/4 v0, 0x0

    .line 482
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    check-cast v0, Ljava/lang/Number;

    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 489
    .line 490
    .line 491
    move-result v7

    .line 492
    new-instance v0, Ly1/u0;

    .line 493
    .line 494
    move-object/from16 v4, p1

    .line 495
    .line 496
    move-object/from16 v6, p2

    .line 497
    .line 498
    move-object/from16 v3, p3

    .line 499
    .line 500
    move-object/from16 v1, p4

    .line 501
    .line 502
    move-object/from16 v2, p5

    .line 503
    .line 504
    move-object/from16 v5, p6

    .line 505
    .line 506
    invoke-direct/range {v0 .. v6}, Ly1/u0;-><init>(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 507
    .line 508
    .line 509
    move-object v1, v0

    .line 510
    move-object v2, v4

    .line 511
    move-object v0, v6

    .line 512
    invoke-virtual {v0, v2, v7, v3, v1}, Ly1/x0;->h(Ljava/util/List;ILjava/util/LinkedHashMap;Lkotlin/jvm/functions/Function0;)V

    .line 513
    .line 514
    .line 515
    return-void

    .line 516
    :cond_d
    const v0, 0x7f120178

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    .line 529
    .line 530
    return-void
.end method

.method public static final f(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V
    .locals 14

    .line 1
    move-object/from16 v7, p5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v9, v7, Ly1/x0;->a:Landroid/app/Activity;

    .line 15
    .line 16
    invoke-direct {v0, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f12017c

    .line 20
    .line 21
    .line 22
    invoke-virtual {v9, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    const/high16 v1, 0x41400000    # 12.0f

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, LP/H0;->c:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    .line 43
    .line 44
    const/16 v1, 0xe

    .line 45
    .line 46
    invoke-virtual {v7, v1}, Ly1/x0;->k(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x4

    .line 51
    invoke-virtual {v7, v2}, Ly1/x0;->k(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-virtual {v0, v10, v1, v10, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Number;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Li1/s;

    .line 97
    .line 98
    move-object/from16 v5, p3

    .line 99
    .line 100
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    move-object v8, v2

    .line 105
    check-cast v8, Ly1/X0;

    .line 106
    .line 107
    new-instance v12, Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-direct {v12, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v8, Ly1/X0;->a:Ljava/util/List;

    .line 113
    .line 114
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    iget-object v4, v8, Ly1/X0;->b:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0}, Li1/s;->f()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v13, "\u2713 "

    .line 127
    .line 128
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, ":  "

    .line 135
    .line 136
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v2, "  \u2192  "

    .line 143
    .line 144
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    const/high16 v0, 0x41700000    # 15.0f

    .line 158
    .line 159
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 160
    .line 161
    .line 162
    iget v0, p0, LP/H0;->d:I

    .line 163
    .line 164
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 168
    .line 169
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x3

    .line 173
    invoke-virtual {v7, v0}, Ly1/x0;->k(I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    invoke-virtual {v7, v0}, Ly1/x0;->k(I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {v12, v10, v2, v10, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Ly1/i0;

    .line 185
    .line 186
    move-object v2, p0

    .line 187
    move-object v3, p1

    .line 188
    move-object/from16 v4, p2

    .line 189
    .line 190
    move-object/from16 v6, p4

    .line 191
    .line 192
    invoke-direct/range {v0 .. v8}, Ly1/i0;-><init>(ILP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;Ly1/X0;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_0
    move-object/from16 v6, p4

    .line 204
    .line 205
    iget-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast p0, Le/g;

    .line 208
    .line 209
    if-eqz p0, :cond_1

    .line 210
    .line 211
    iget-object p0, p0, Le/g;->d:Le/e;

    .line 212
    .line 213
    iget-object p0, p0, Le/e;->i:Landroid/widget/Button;

    .line 214
    .line 215
    if-eqz p0, :cond_1

    .line 216
    .line 217
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    xor-int/lit8 v0, v0, 0x1

    .line 222
    .line 223
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v0, v7, Ly1/x0;->a:Landroid/app/Activity;

    .line 227
    .line 228
    invoke-virtual/range {p2 .. p2}, Ljava/util/AbstractMap;->size()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    const v2, 0x7f120180

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    :cond_1
    return-void
.end method

.method public static final j(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;Ly1/x0;LP/H0;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v2, Ly1/x0;->a:Landroid/app/Activity;

    .line 10
    .line 11
    iget v5, v3, LP/H0;->b:I

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p7 .. p7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    move-object/from16 v6, p1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-eqz v8, :cond_2

    .line 39
    .line 40
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    move-object v9, v8

    .line 45
    check-cast v9, Ljava/lang/Number;

    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    check-cast v9, Ly1/X0;

    .line 56
    .line 57
    iget-object v10, v9, Ly1/X0;->a:Ljava/util/List;

    .line 58
    .line 59
    const/4 v14, 0x0

    .line 60
    const/16 v15, 0x3e

    .line 61
    .line 62
    const-string v11, " \u203a "

    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    const/4 v13, 0x0

    .line 66
    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    invoke-static/range {p7 .. p7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-static {v9, v10}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-eqz v9, :cond_1

    .line 83
    .line 84
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    :goto_1
    const/16 v7, 0x96

    .line 89
    .line 90
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    const/4 v11, 0x0

    .line 103
    if-eqz v9, :cond_6

    .line 104
    .line 105
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    check-cast v9, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    check-cast v12, Ly1/X0;

    .line 120
    .line 121
    new-instance v13, LC1/D;

    .line 122
    .line 123
    const/4 v14, 0x1

    .line 124
    move-object/from16 v15, p5

    .line 125
    .line 126
    move-object/from16 v7, p6

    .line 127
    .line 128
    invoke-direct {v13, v15, v7, v9, v14}, LC1/D;-><init>(Ljava/io/Serializable;Ljava/lang/Object;II)V

    .line 129
    .line 130
    .line 131
    new-instance v9, Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-direct {v9, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    .line 138
    .line 139
    const/16 v14, 0x10

    .line 140
    .line 141
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    .line 143
    .line 144
    const/16 v14, 0xc

    .line 145
    .line 146
    invoke-virtual {v2, v14}, Ly1/x0;->k(I)I

    .line 147
    .line 148
    .line 149
    move-result v11

    .line 150
    const/16 v10, 0xa

    .line 151
    .line 152
    invoke-virtual {v2, v10}, Ly1/x0;->k(I)I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {v2, v14}, Ly1/x0;->k(I)I

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    move-object/from16 v16, v6

    .line 161
    .line 162
    invoke-virtual {v2, v10}, Ly1/x0;->k(I)I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-virtual {v9, v11, v1, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 167
    .line 168
    .line 169
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 170
    .line 171
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 172
    .line 173
    .line 174
    iget v6, v3, LP/H0;->e:I

    .line 175
    .line 176
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 177
    .line 178
    .line 179
    int-to-float v6, v10

    .line 180
    iget v11, v2, Ly1/x0;->e:F

    .line 181
    .line 182
    mul-float/2addr v6, v11

    .line 183
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 190
    .line 191
    const/4 v6, -0x1

    .line 192
    const/4 v11, -0x2

    .line 193
    invoke-direct {v1, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .line 195
    .line 196
    const/4 v6, 0x6

    .line 197
    invoke-virtual {v2, v6}, Ly1/x0;->k(I)I

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 202
    .line 203
    invoke-virtual {v9, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .line 205
    .line 206
    const/4 v1, 0x1

    .line 207
    invoke-virtual {v9, v1}, Landroid/view/View;->setClickable(Z)V

    .line 208
    .line 209
    .line 210
    new-instance v6, LC1/V;

    .line 211
    .line 212
    const/16 v14, 0x9

    .line 213
    .line 214
    invoke-direct {v6, v14, v13}, LC1/V;-><init>(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    new-instance v6, Landroid/widget/LinearLayout;

    .line 221
    .line 222
    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    .line 227
    .line 228
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 229
    .line 230
    const/high16 v13, 0x3f800000    # 1.0f

    .line 231
    .line 232
    const/4 v14, 0x0

    .line 233
    invoke-direct {v1, v14, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .line 238
    .line 239
    new-instance v1, Landroid/widget/TextView;

    .line 240
    .line 241
    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 242
    .line 243
    .line 244
    iget-object v11, v12, Ly1/X0;->a:Ljava/util/List;

    .line 245
    .line 246
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    check-cast v11, Ljava/lang/CharSequence;

    .line 251
    .line 252
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    const/high16 v11, 0x41700000    # 15.0f

    .line 256
    .line 257
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 258
    .line 259
    .line 260
    iget v11, v3, LP/H0;->a:I

    .line 261
    .line 262
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    .line 264
    .line 265
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 266
    .line 267
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 271
    .line 272
    .line 273
    iget-object v1, v12, Ly1/X0;->a:Ljava/util/List;

    .line 274
    .line 275
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/List;)Ljava/util/List;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    new-instance v11, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    if-eqz v13, :cond_4

    .line 293
    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v13

    .line 298
    move-object v14, v13

    .line 299
    check-cast v14, Ljava/lang/String;

    .line 300
    .line 301
    const-string v10, "data"

    .line 302
    .line 303
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v10

    .line 307
    if-nez v10, :cond_3

    .line 308
    .line 309
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    :cond_3
    const/16 v10, 0xa

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_5

    .line 320
    .line 321
    new-instance v1, Landroid/widget/TextView;

    .line 322
    .line 323
    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    const/16 v21, 0x0

    .line 327
    .line 328
    const/16 v22, 0x3e

    .line 329
    .line 330
    const-string v18, " \u203a "

    .line 331
    .line 332
    const/16 v19, 0x0

    .line 333
    .line 334
    const/16 v20, 0x0

    .line 335
    .line 336
    move-object/from16 v17, v11

    .line 337
    .line 338
    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v10

    .line 342
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    const/high16 v10, 0x41300000    # 11.0f

    .line 346
    .line 347
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 354
    .line 355
    .line 356
    :cond_5
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 357
    .line 358
    .line 359
    new-instance v1, Landroid/widget/TextView;

    .line 360
    .line 361
    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    iget-object v6, v12, Ly1/X0;->b:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    const/high16 v6, 0x41800000    # 16.0f

    .line 370
    .line 371
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 372
    .line 373
    .line 374
    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 375
    .line 376
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 377
    .line 378
    .line 379
    iget v6, v3, LP/H0;->c:I

    .line 380
    .line 381
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    .line 383
    .line 384
    const/16 v6, 0xa

    .line 385
    .line 386
    invoke-virtual {v2, v6}, Ly1/x0;->k(I)I

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    const/4 v14, 0x0

    .line 391
    invoke-virtual {v1, v6, v14, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 398
    .line 399
    .line 400
    move-object/from16 v1, p2

    .line 401
    .line 402
    move-object/from16 v6, v16

    .line 403
    .line 404
    const/16 v7, 0x96

    .line 405
    .line 406
    goto/16 :goto_2

    .line 407
    .line 408
    :cond_6
    move-object/from16 v16, v6

    .line 409
    .line 410
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    const/16 v3, 0x96

    .line 415
    .line 416
    if-le v1, v3, :cond_7

    .line 417
    .line 418
    new-instance v1, Landroid/widget/TextView;

    .line 419
    .line 420
    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    .line 424
    .line 425
    .line 426
    move-result v6

    .line 427
    sub-int/2addr v6, v3

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    const-string v7, "+"

    .line 431
    .line 432
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v6, " \u2026"

    .line 439
    .line 440
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    .line 452
    .line 453
    const/4 v6, 0x6

    .line 454
    invoke-virtual {v2, v6}, Ly1/x0;->k(I)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    invoke-virtual {v2, v6}, Ly1/x0;->k(I)I

    .line 459
    .line 460
    .line 461
    move-result v2

    .line 462
    const/4 v14, 0x0

    .line 463
    invoke-virtual {v1, v14, v3, v14, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 467
    .line 468
    .line 469
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_8

    .line 474
    .line 475
    new-instance v1, Landroid/widget/TextView;

    .line 476
    .line 477
    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 478
    .line 479
    .line 480
    const v2, 0x7f120178

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 494
    .line 495
    .line 496
    :cond_8
    return-void
.end method


# virtual methods
.method public final a()LP/H0;
    .locals 7

    .line 1
    new-instance v0, LP/H0;

    .line 2
    .line 3
    const v1, 0x7f06031b

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Ly1/x0;->a:Landroid/app/Activity;

    .line 7
    .line 8
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v3, 0x7f06031c

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x7f060019

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const v5, 0x7f060313

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const v6, 0x7f06030b

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput v1, v0, LP/H0;->a:I

    .line 44
    .line 45
    iput v3, v0, LP/H0;->b:I

    .line 46
    .line 47
    iput v4, v0, LP/H0;->c:I

    .line 48
    .line 49
    iput v5, v0, LP/H0;->d:I

    .line 50
    .line 51
    iput v2, v0, LP/H0;->e:I

    .line 52
    .line 53
    return-object v0
.end method

.method public final b(Ly1/X0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 23

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual {v4}, Ly1/x0;->a()LP/H0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, v5, Ly1/X0;->c:Z

    .line 12
    .line 13
    iget-object v2, v5, Ly1/X0;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object v6, v5, Ly1/X0;->e:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v7, v5, Ly1/X0;->b:Ljava/lang/String;

    .line 18
    .line 19
    const/high16 v8, 0x1040000

    .line 20
    .line 21
    const v9, 0x7f12016a

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v11, 0x0

    .line 26
    iget-object v12, v4, Ly1/x0;->a:Landroid/app/Activity;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v0, LO0/b;

    .line 31
    .line 32
    invoke-direct {v0, v12, v11}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Le/f;->c:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Le/b;

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/CharSequence;

    .line 44
    .line 45
    iput-object v2, v1, Le/b;->d:Ljava/lang/CharSequence;

    .line 46
    .line 47
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v12, v9, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v1, Le/b;->f:Ljava/lang/CharSequence;

    .line 56
    .line 57
    new-instance v2, Ly1/r0;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-direct {v2, v3, v5}, Ly1/r0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 61
    .line 62
    .line 63
    const v5, 0x7f12017b

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5, v2}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ly1/r0;

    .line 70
    .line 71
    const/4 v5, 0x1

    .line 72
    invoke-direct {v2, v3, v5}, Ly1/r0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 73
    .line 74
    .line 75
    const v3, 0x7f12017a

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3, v2}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, v1, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 82
    .line 83
    invoke-virtual {v2, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    iput-object v2, v1, Le/b;->k:Ljava/lang/CharSequence;

    .line 88
    .line 89
    iput-object v10, v1, Le/b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    .line 91
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_0
    new-instance v1, Landroid/widget/EditText;

    .line 96
    .line 97
    invoke-direct {v1, v12}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    if-nez p2, :cond_1

    .line 101
    .line 102
    move-object v13, v7

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move-object/from16 v13, p2

    .line 105
    .line 106
    :goto_0
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 110
    .line 111
    .line 112
    const/high16 v13, 0x41d00000    # 26.0f

    .line 113
    .line 114
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    .line 116
    .line 117
    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 118
    .line 119
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    .line 121
    .line 122
    iget v13, v0, LP/H0;->d:I

    .line 123
    .line 124
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    const/16 v13, 0x11

    .line 128
    .line 129
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 130
    .line 131
    .line 132
    const/4 v14, 0x1

    .line 133
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 134
    .line 135
    .line 136
    const/16 v15, 0x3002

    .line 137
    .line 138
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setInputType(I)V

    .line 139
    .line 140
    .line 141
    const/4 v15, 0x6

    .line 142
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 143
    .line 144
    .line 145
    new-instance v8, Landroid/widget/LinearLayout;

    .line 146
    .line 147
    invoke-direct {v8, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    if-eqz v6, :cond_2

    .line 161
    .line 162
    const v9, 0x7f120175

    .line 163
    .line 164
    .line 165
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-virtual {v12, v9, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-static {v9, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :cond_2
    invoke-static {v7}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    if-eqz v9, :cond_3

    .line 185
    .line 186
    const/4 v9, 0x1

    .line 187
    goto :goto_1

    .line 188
    :cond_3
    move v9, v11

    .line 189
    :goto_1
    const-string v14, "99999"

    .line 190
    .line 191
    const-string v15, "999999"

    .line 192
    .line 193
    const-string v11, "9999"

    .line 194
    .line 195
    filled-new-array {v11, v14, v15}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v15

    .line 211
    if-eqz v15, :cond_7

    .line 212
    .line 213
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    const-string v10, "next(...)"

    .line 218
    .line 219
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    check-cast v15, Ljava/lang/String;

    .line 223
    .line 224
    if-eqz v6, :cond_6

    .line 225
    .line 226
    invoke-static {v6}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    if-eqz v10, :cond_4

    .line 231
    .line 232
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 233
    .line 234
    .line 235
    move-result-wide v16

    .line 236
    goto :goto_3

    .line 237
    :cond_4
    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    :goto_3
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v18

    .line 246
    cmpl-double v10, v16, v18

    .line 247
    .line 248
    if-lez v10, :cond_5

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_5
    :goto_4
    const/4 v10, 0x0

    .line 252
    goto :goto_2

    .line 253
    :cond_6
    :goto_5
    invoke-static {v15, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_7
    if-nez v9, :cond_8

    .line 262
    .line 263
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result v9

    .line 267
    if-eqz v9, :cond_8

    .line 268
    .line 269
    invoke-static {v11, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    :cond_8
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    const/4 v10, 0x3

    .line 281
    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v10

    .line 289
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    if-eqz v11, :cond_9

    .line 294
    .line 295
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v11

    .line 299
    check-cast v11, Lkotlin/Pair;

    .line 300
    .line 301
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v13

    .line 305
    const-string v14, "component1(...)"

    .line 306
    .line 307
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    check-cast v13, Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    check-cast v11, Ljava/lang/String;

    .line 317
    .line 318
    new-instance v14, Lcom/google/android/material/button/MaterialButton;

    .line 319
    .line 320
    const v15, 0x7f0402b9

    .line 321
    .line 322
    .line 323
    move-object/from16 v16, v2

    .line 324
    .line 325
    const/4 v2, 0x0

    .line 326
    invoke-direct {v14, v12, v2, v15}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    .line 331
    .line 332
    const/high16 v2, 0x41400000    # 12.0f

    .line 333
    .line 334
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 335
    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    invoke-virtual {v14, v2}, Lk/r;->setAllCaps(Z)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 342
    .line 343
    .line 344
    const/16 v13, 0xa

    .line 345
    .line 346
    invoke-virtual {v4, v13}, Ly1/x0;->k(I)I

    .line 347
    .line 348
    .line 349
    move-result v15

    .line 350
    invoke-virtual {v4, v13}, Ly1/x0;->k(I)I

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    invoke-virtual {v14, v15, v2, v13, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 355
    .line 356
    .line 357
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 358
    .line 359
    const/4 v13, -0x2

    .line 360
    invoke-direct {v2, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    .line 362
    .line 363
    const/4 v13, 0x6

    .line 364
    invoke-virtual {v4, v13}, Ly1/x0;->k(I)I

    .line 365
    .line 366
    .line 367
    move-result v15

    .line 368
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v14, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    .line 373
    .line 374
    new-instance v2, LC1/j;

    .line 375
    .line 376
    const/16 v15, 0x1b

    .line 377
    .line 378
    invoke-direct {v2, v15, v1, v11}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v14, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v2, v16

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_9
    move-object/from16 v16, v2

    .line 391
    .line 392
    new-instance v2, Landroid/widget/LinearLayout;

    .line 393
    .line 394
    invoke-direct {v2, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 395
    .line 396
    .line 397
    const/4 v10, 0x1

    .line 398
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 399
    .line 400
    .line 401
    const/16 v10, 0x16

    .line 402
    .line 403
    invoke-virtual {v4, v10}, Ly1/x0;->k(I)I

    .line 404
    .line 405
    .line 406
    move-result v11

    .line 407
    const/4 v13, 0x4

    .line 408
    invoke-virtual {v4, v13}, Ly1/x0;->k(I)I

    .line 409
    .line 410
    .line 411
    move-result v13

    .line 412
    invoke-virtual {v4, v10}, Ly1/x0;->k(I)I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    const/4 v14, 0x0

    .line 417
    invoke-virtual {v2, v11, v13, v10, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 418
    .line 419
    .line 420
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/List;)Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v10

    .line 424
    new-instance v11, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v10

    .line 433
    :cond_a
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    if-eqz v13, :cond_b

    .line 438
    .line 439
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v13

    .line 443
    move-object v14, v13

    .line 444
    check-cast v14, Ljava/lang/String;

    .line 445
    .line 446
    const-string v15, "data"

    .line 447
    .line 448
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v14

    .line 452
    if-nez v14, :cond_a

    .line 453
    .line 454
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_b
    iget-object v10, v5, Ly1/X0;->d:Ljava/lang/String;

    .line 459
    .line 460
    const-string v13, ""

    .line 461
    .line 462
    if-nez v10, :cond_d

    .line 463
    .line 464
    if-eqz v6, :cond_c

    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_c
    move-object v3, v13

    .line 468
    goto :goto_9

    .line 469
    :cond_d
    :goto_8
    const-string v14, "\u2026"

    .line 470
    .line 471
    if-nez v10, :cond_e

    .line 472
    .line 473
    move-object v10, v14

    .line 474
    :cond_e
    if-nez v6, :cond_f

    .line 475
    .line 476
    move-object v6, v14

    .line 477
    :cond_f
    const-string v14, " \u2013 "

    .line 478
    .line 479
    const-string v15, ")"

    .line 480
    .line 481
    const-string v3, "  ("

    .line 482
    .line 483
    invoke-static {v3, v10, v14, v6, v15}, LE/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    :goto_9
    new-instance v6, Landroid/widget/TextView;

    .line 488
    .line 489
    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 490
    .line 491
    .line 492
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v7

    .line 496
    const v10, 0x7f12016a

    .line 497
    .line 498
    .line 499
    invoke-virtual {v12, v10, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    if-nez v10, :cond_10

    .line 508
    .line 509
    const/16 v21, 0x0

    .line 510
    .line 511
    const/16 v22, 0x3e

    .line 512
    .line 513
    const-string v18, " \u203a "

    .line 514
    .line 515
    const/16 v19, 0x0

    .line 516
    .line 517
    const/16 v20, 0x0

    .line 518
    .line 519
    move-object/from16 v17, v11

    .line 520
    .line 521
    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v10

    .line 525
    const-string v11, "\n"

    .line 526
    .line 527
    invoke-static {v11, v10}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v13

    .line 531
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    .line 551
    .line 552
    const/high16 v3, 0x41500000    # 13.0f

    .line 553
    .line 554
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 555
    .line 556
    .line 557
    iget v0, v0, LP/H0;->b:I

    .line 558
    .line 559
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 566
    .line 567
    .line 568
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    if-nez v0, :cond_11

    .line 573
    .line 574
    new-instance v0, Landroid/widget/HorizontalScrollView;

    .line 575
    .line 576
    invoke-direct {v0, v12}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v8}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 583
    .line 584
    .line 585
    :cond_11
    new-instance v0, LO0/b;

    .line 586
    .line 587
    const/4 v14, 0x0

    .line 588
    invoke-direct {v0, v12, v14}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 589
    .line 590
    .line 591
    invoke-static/range {v16 .. v16}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    const v6, 0x7f120169

    .line 600
    .line 601
    .line 602
    invoke-virtual {v12, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    iget-object v6, v0, Le/f;->c:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast v6, Le/b;

    .line 609
    .line 610
    iput-object v3, v6, Le/b;->d:Ljava/lang/CharSequence;

    .line 611
    .line 612
    iput-object v2, v6, Le/b;->t:Landroid/view/View;

    .line 613
    .line 614
    const v2, 0x104000a

    .line 615
    .line 616
    .line 617
    const/4 v3, 0x0

    .line 618
    invoke-virtual {v0, v2, v3}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 619
    .line 620
    .line 621
    const/high16 v2, 0x1040000

    .line 622
    .line 623
    invoke-virtual {v0, v2, v3}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v0}, LO0/b;->c()Le/g;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    const-string v0, "create(...)"

    .line 631
    .line 632
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    new-instance v0, Ly1/s0;

    .line 636
    .line 637
    move-object/from16 v3, p3

    .line 638
    .line 639
    invoke-direct/range {v0 .. v5}, Ly1/s0;-><init>(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 643
    .line 644
    .line 645
    new-instance v0, Ly1/j0;

    .line 646
    .line 647
    move-object/from16 v4, p0

    .line 648
    .line 649
    move-object/from16 v5, p1

    .line 650
    .line 651
    invoke-direct/range {v0 .. v5}, Ly1/j0;-><init>(Landroid/widget/EditText;Le/g;Lkotlin/jvm/functions/Function1;Ly1/x0;Ly1/X0;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 658
    .line 659
    .line 660
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/List;Lkotlin/Pair;Lkotlin/jvm/functions/Function1;)V
    .locals 18

    .line 1
    move-object/from16 v3, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    const-string v0, "title"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "fields"

    .line 11
    .line 12
    move-object/from16 v2, p2

    .line 13
    .line 14
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "onSave"

    .line 18
    .line 19
    move-object/from16 v9, p4

    .line 20
    .line 21
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ly1/x0;->a()LP/H0;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v6, Landroid/widget/LinearLayout;

    .line 39
    .line 40
    iget-object v10, v3, Ly1/x0;->a:Landroid/app/Activity;

    .line 41
    .line 42
    invoke-direct {v6, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-direct {v1, v10}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f120182

    .line 55
    .line 56
    .line 57
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 65
    .line 66
    .line 67
    const/high16 v0, 0x41c00000    # 24.0f

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    .line 76
    .line 77
    iget v12, v5, LP/H0;->a:I

    .line 78
    .line 79
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget v13, v5, LP/H0;->b:I

    .line 83
    .line 84
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 85
    .line 86
    .line 87
    const/16 v0, 0x3002

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 97
    .line 98
    const/4 v14, -0x2

    .line 99
    const/high16 v15, 0x3f800000    # 1.0f

    .line 100
    .line 101
    const/4 v11, 0x0

    .line 102
    invoke-direct {v0, v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Ly1/n0;

    .line 109
    .line 110
    invoke-direct/range {v0 .. v7}, Ly1/n0;-><init>(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 111
    .line 112
    .line 113
    move-object v3, v4

    .line 114
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    .line 116
    .line 117
    new-instance v14, Lcom/google/android/material/button/MaterialButton;

    .line 118
    .line 119
    const/4 v15, 0x0

    .line 120
    invoke-direct {v14, v10, v15}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    .line 122
    .line 123
    const v0, 0x7f12016e

    .line 124
    .line 125
    .line 126
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    new-instance v0, LE1/s;

    .line 134
    .line 135
    move-object/from16 v3, p0

    .line 136
    .line 137
    invoke-direct/range {v0 .. v7}, LE1/s;-><init>(Landroid/widget/EditText;Ljava/util/List;Ly1/x0;Ljava/util/LinkedHashMap;LP/H0;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 138
    .line 139
    .line 140
    move-object/from16 v17, v1

    .line 141
    .line 142
    move-object v1, v0

    .line 143
    move-object/from16 v0, v17

    .line 144
    .line 145
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    .line 155
    .line 156
    const/16 v2, 0x10

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    new-instance v14, Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-direct {v14, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    const v2, 0x7f120168

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    const/high16 v2, 0x41500000    # 13.0f

    .line 183
    .line 184
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaintFlags()I

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    or-int/lit8 v2, v2, 0x8

    .line 195
    .line 196
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 197
    .line 198
    .line 199
    const/16 v2, 0xa

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ly1/x0;->k(I)I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    const/4 v13, 0x4

    .line 206
    invoke-virtual {v3, v13}, Ly1/x0;->k(I)I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    invoke-virtual {v14, v11, v2, v11, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    .line 212
    .line 213
    move-object v2, v0

    .line 214
    new-instance v0, LC1/o;

    .line 215
    .line 216
    move-object v15, v1

    .line 217
    move-object v1, v5

    .line 218
    move-object v5, v7

    .line 219
    move-object v7, v2

    .line 220
    move-object v2, v6

    .line 221
    move-object v6, v3

    .line 222
    move-object v3, v4

    .line 223
    move-object/from16 v4, p2

    .line 224
    .line 225
    invoke-direct/range {v0 .. v6}, LC1/o;-><init>(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 226
    .line 227
    .line 228
    move-object v4, v1

    .line 229
    move-object v1, v0

    .line 230
    move-object v0, v5

    .line 231
    move-object v5, v4

    .line 232
    move-object v4, v3

    .line 233
    move-object v3, v6

    .line 234
    move-object v6, v2

    .line 235
    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    new-instance v1, Landroid/widget/LinearLayout;

    .line 239
    .line 240
    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 241
    .line 242
    .line 243
    const/4 v2, 0x1

    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 245
    .line 246
    .line 247
    const/16 v2, 0x16

    .line 248
    .line 249
    invoke-virtual {v3, v2}, Ly1/x0;->k(I)I

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    invoke-virtual {v3, v13}, Ly1/x0;->k(I)I

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    invoke-virtual {v3, v2}, Ly1/x0;->k(I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    move-object/from16 v16, v4

    .line 262
    .line 263
    const/4 v4, 0x0

    .line 264
    invoke-virtual {v1, v11, v13, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 265
    .line 266
    .line 267
    new-instance v2, Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    const v11, 0x7f12016f

    .line 273
    .line 274
    .line 275
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    const/high16 v11, 0x41600000    # 14.0f

    .line 283
    .line 284
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    .line 289
    .line 290
    const/4 v11, 0x6

    .line 291
    invoke-virtual {v3, v11}, Ly1/x0;->k(I)I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    invoke-virtual {v2, v4, v4, v4, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    new-instance v2, Landroid/widget/ScrollView;

    .line 311
    .line 312
    invoke-direct {v2, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 316
    .line 317
    .line 318
    new-instance v1, LO0/b;

    .line 319
    .line 320
    invoke-direct {v1, v10, v4}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 321
    .line 322
    .line 323
    iget-object v11, v1, Le/f;->c:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v11, Le/b;

    .line 326
    .line 327
    iput-object v8, v11, Le/b;->d:Ljava/lang/CharSequence;

    .line 328
    .line 329
    iput-object v2, v11, Le/b;->t:Landroid/view/View;

    .line 330
    .line 331
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    const v4, 0x7f120180

    .line 340
    .line 341
    .line 342
    invoke-virtual {v10, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    const/4 v4, 0x0

    .line 347
    invoke-virtual {v1, v2, v4}, LO0/b;->i(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 348
    .line 349
    .line 350
    const/high16 v2, 0x1040000

    .line 351
    .line 352
    invoke-virtual {v1, v2, v4}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    if-eqz p3, :cond_0

    .line 356
    .line 357
    invoke-virtual/range {p3 .. p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    check-cast v2, Ljava/lang/String;

    .line 362
    .line 363
    invoke-virtual/range {p3 .. p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 368
    .line 369
    new-instance v8, LC1/I1;

    .line 370
    .line 371
    const/4 v10, 0x4

    .line 372
    invoke-direct {v8, v10, v4}, LC1/I1;-><init>(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    iput-object v2, v11, Le/b;->k:Ljava/lang/CharSequence;

    .line 376
    .line 377
    iput-object v8, v11, Le/b;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 378
    .line 379
    :cond_0
    new-instance v2, Ly1/m0;

    .line 380
    .line 381
    const/4 v4, 0x2

    .line 382
    invoke-direct {v2, v3, v4}, Ly1/m0;-><init>(Ly1/x0;I)V

    .line 383
    .line 384
    .line 385
    iput-object v2, v11, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 386
    .line 387
    invoke-virtual {v1}, LO0/b;->c()Le/g;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const-string v2, "create(...)"

    .line 392
    .line 393
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 397
    .line 398
    move-object v8, v0

    .line 399
    new-instance v0, Ly1/o0;

    .line 400
    .line 401
    move-object v2, v7

    .line 402
    move-object v4, v9

    .line 403
    move-object v7, v3

    .line 404
    move-object v9, v5

    .line 405
    move-object/from16 v3, v16

    .line 406
    .line 407
    move-object/from16 v5, p2

    .line 408
    .line 409
    invoke-direct/range {v0 .. v9}, Ly1/o0;-><init>(Le/g;Landroid/widget/EditText;Ljava/util/LinkedHashMap;Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroid/widget/LinearLayout;Ly1/x0;Lkotlin/jvm/internal/Ref$ObjectRef;LP/H0;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 416
    .line 417
    .line 418
    return-void
.end method

.method public final g(I)V
    .locals 3

    .line 1
    new-instance v0, LO0/b;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/x0;->a:Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Le/f;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Le/b;

    .line 12
    .line 13
    iget-object v2, v1, Le/b;->a:Landroid/view/ContextThemeWrapper;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, v1, Le/b;->f:Ljava/lang/CharSequence;

    .line 20
    .line 21
    const p1, 0x104000a

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, p1, v2}, LO0/b;->h(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ly1/m0;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-direct {p1, p0, v2}, Ly1/m0;-><init>(Ly1/x0;I)V

    .line 32
    .line 33
    .line 34
    iput-object p1, v1, Le/b;->o:Landroid/content/DialogInterface$OnDismissListener;

    .line 35
    .line 36
    invoke-virtual {v0}, Le/f;->e()Le/g;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final h(Ljava/util/List;ILjava/util/LinkedHashMap;Lkotlin/jvm/functions/Function0;)V
    .locals 6

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v4, p1

    .line 6
    check-cast v4, Ly1/X0;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Li1/s;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Li1/s;->f()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    new-instance v0, Ly1/q0;

    .line 27
    .line 28
    move-object v1, p0

    .line 29
    move v3, p2

    .line 30
    move-object v2, p3

    .line 31
    move-object v5, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Ly1/q0;-><init>(Ly1/x0;Ljava/util/LinkedHashMap;ILy1/X0;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4, p1, v0}, Ly1/x0;->b(Ly1/X0;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZLP/H0;Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    move-object/from16 v4, p6

    .line 2
    .line 3
    iget v0, v4, LP/H0;->b:I

    .line 4
    .line 5
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iget-object v8, p0, Ly1/x0;->a:Landroid/app/Activity;

    .line 13
    .line 14
    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    .line 20
    .line 21
    new-instance v9, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-direct {v9, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x14

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ly1/x0;->k(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v6, 0x4

    .line 36
    invoke-virtual {p0, v6}, Ly1/x0;->k(I)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    invoke-virtual {p0, v2}, Ly1/x0;->k(I)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const/4 v10, 0x0

    .line 45
    invoke-virtual {v9, v3, v6, v2, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_0

    .line 49
    .line 50
    new-instance v2, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-direct {v2, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    const/high16 p2, 0x41400000    # 12.0f

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    const/16 p2, 0x8

    .line 67
    .line 68
    invoke-virtual {p0, p2}, Ly1/x0;->k(I)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {v2, v10, v10, v10, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    if-eqz p5, :cond_1

    .line 79
    .line 80
    new-instance p2, Landroid/widget/EditText;

    .line 81
    .line 82
    invoke-direct {p2, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    const v2, 0x7f12016d

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/widget/TextView;->setSingleLine()V

    .line 96
    .line 97
    .line 98
    iget v2, v4, LP/H0;->a:I

    .line 99
    .line 100
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Ly1/w0;

    .line 107
    .line 108
    move-object v3, p3

    .line 109
    move-object v2, p4

    .line 110
    move-object/from16 v7, p7

    .line 111
    .line 112
    move-object v6, v5

    .line 113
    move-object v5, v4

    .line 114
    move-object v4, p0

    .line 115
    invoke-direct/range {v0 .. v7}, Ly1/w0;-><init>(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;Ly1/x0;LP/H0;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V

    .line 116
    .line 117
    .line 118
    move-object v5, v1

    .line 119
    move-object v1, v0

    .line 120
    move-object v0, v5

    .line 121
    move-object v5, v6

    .line 122
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_1
    move-object v0, v1

    .line 130
    :goto_0
    new-instance p2, Landroid/widget/ScrollView;

    .line 131
    .line 132
    invoke-direct {p2, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 149
    .line 150
    int-to-float v2, v2

    .line 151
    const v3, 0x3ee66666    # 0.45f

    .line 152
    .line 153
    .line 154
    mul-float/2addr v2, v3

    .line 155
    float-to-int v2, v2

    .line 156
    const/4 v3, -0x1

    .line 157
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v9, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    const-string v7, ""

    .line 167
    .line 168
    move-object v3, p0

    .line 169
    move-object v2, p3

    .line 170
    move-object v1, p4

    .line 171
    move-object/from16 v4, p6

    .line 172
    .line 173
    move-object/from16 v6, p7

    .line 174
    .line 175
    invoke-static/range {v0 .. v7}, Ly1/x0;->j(Landroid/widget/LinearLayout;Ljava/util/List;Ljava/util/List;Ly1/x0;LP/H0;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance p2, LO0/b;

    .line 179
    .line 180
    invoke-direct {p2, v8, v10}, LO0/b;-><init>(Landroid/content/Context;I)V

    .line 181
    .line 182
    .line 183
    iget-object p3, p2, Le/f;->c:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast p3, Le/b;

    .line 186
    .line 187
    iput-object p1, p3, Le/b;->d:Ljava/lang/CharSequence;

    .line 188
    .line 189
    iput-object v9, p3, Le/b;->t:Landroid/view/View;

    .line 190
    .line 191
    const/high16 p1, 0x1040000

    .line 192
    .line 193
    const/4 p3, 0x0

    .line 194
    invoke-virtual {p2, p1, p3}, LO0/b;->f(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Le/f;->e()Le/g;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 202
    .line 203
    return-void
.end method

.method public final k(I)I
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    iget v0, p0, Ly1/x0;->e:F

    .line 3
    .line 4
    mul-float/2addr p1, v0

    .line 5
    float-to-int p1, p1

    .line 6
    return p1
.end method
