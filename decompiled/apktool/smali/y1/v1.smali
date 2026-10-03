.class public final enum Ly1/v1;
.super Ljava/lang/Enum;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final f:Ly1/c0;

.field public static final enum g:Ly1/v1;

.field public static final enum h:Ly1/v1;

.field public static final enum i:Ly1/v1;

.field public static final enum j:Ly1/v1;

.field public static final synthetic k:[Ly1/v1;

.field public static final synthetic l:Lkotlin/enums/EnumEntries;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Ly1/v1;

    .line 2
    .line 3
    const-string v8, "libruby.so"

    .line 4
    .line 5
    const-string v9, "libmkxp-z.so"

    .line 6
    .line 7
    const-string v1, "libSDL2.so"

    .line 8
    .line 9
    const-string v2, "libSDL2_image.so"

    .line 10
    .line 11
    const-string v3, "libSDL2_sound.so"

    .line 12
    .line 13
    const-string v4, "libSDL2_ttf.so"

    .line 14
    .line 15
    const-string v5, "libopenal.so"

    .line 16
    .line 17
    const-string v6, "libjpeg.so"

    .line 18
    .line 19
    const-string v7, "libpng16d.so"

    .line 20
    .line 21
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v7, "arm64-v8a"

    .line 30
    .line 31
    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v15, "libruby.so"

    .line 36
    .line 37
    const-string v16, "libmkxp-z.so"

    .line 38
    .line 39
    const-string v8, "libSDL2.so"

    .line 40
    .line 41
    const-string v9, "libSDL2_image.so"

    .line 42
    .line 43
    const-string v10, "libSDL2_sound.so"

    .line 44
    .line 45
    const-string v11, "libSDL2_ttf.so"

    .line 46
    .line 47
    const-string v12, "libopenal.so"

    .line 48
    .line 49
    const-string v13, "libjpeg.so"

    .line 50
    .line 51
    const-string v14, "libpng16d.so"

    .line 52
    .line 53
    filled-new-array/range {v8 .. v16}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v8, "x86_64"

    .line 62
    .line 63
    invoke-static {v8, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    filled-new-array {v1, v2}, [Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const/4 v6, 0x1

    .line 76
    const-string v1, "VXACE"

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    const-string v3, "ace"

    .line 80
    .line 81
    const-string v4, "RPG VX Ace Runtime"

    .line 82
    .line 83
    invoke-direct/range {v0 .. v6}, Ly1/v1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 84
    .line 85
    .line 86
    sput-object v0, Ly1/v1;->g:Ly1/v1;

    .line 87
    .line 88
    new-instance v9, Ly1/v1;

    .line 89
    .line 90
    const-string v1, "librenpython.so"

    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const-string v4, "armeabi-v7a"

    .line 105
    .line 106
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    filled-new-array {v2, v3, v1}, [Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v14

    .line 126
    const/4 v15, 0x1

    .line 127
    const-string v10, "RENPY8"

    .line 128
    .line 129
    const/4 v11, 0x1

    .line 130
    const-string v12, "renpy"

    .line 131
    .line 132
    const-string v13, "Ren\'Py 8 Runtime"

    .line 133
    .line 134
    invoke-direct/range {v9 .. v15}, Ly1/v1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 135
    .line 136
    .line 137
    sput-object v9, Ly1/v1;->h:Ly1/v1;

    .line 138
    .line 139
    const-string v1, "librenpython7.so"

    .line 140
    .line 141
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    filled-new-array {v2, v3, v1}, [Lkotlin/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    new-instance v10, Ly1/v1;

    .line 174
    .line 175
    const-string v14, "Ren\'Py 7 Runtime"

    .line 176
    .line 177
    const/16 v16, 0x5

    .line 178
    .line 179
    const-string v11, "RENPY7"

    .line 180
    .line 181
    const/4 v12, 0x2

    .line 182
    const-string v13, "renpy7"

    .line 183
    .line 184
    invoke-direct/range {v10 .. v16}, Ly1/v1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 185
    .line 186
    .line 187
    sput-object v10, Ly1/v1;->i:Ly1/v1;

    .line 188
    .line 189
    const-string v1, "libc++_shared.so"

    .line 190
    .line 191
    const-string v2, "libgodot_android.so"

    .line 192
    .line 193
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v8, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    filled-new-array {v3, v1}, [Lkotlin/Pair;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    new-instance v2, Ly1/v1;

    .line 226
    .line 227
    const-string v6, "Godot Runtime"

    .line 228
    .line 229
    const/4 v8, 0x5

    .line 230
    const-string v3, "GODOT"

    .line 231
    .line 232
    const/4 v4, 0x3

    .line 233
    const-string v5, "godot"

    .line 234
    .line 235
    invoke-direct/range {v2 .. v8}, Ly1/v1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 236
    .line 237
    .line 238
    sput-object v2, Ly1/v1;->j:Ly1/v1;

    .line 239
    .line 240
    filled-new-array {v0, v9, v10, v2}, [Ly1/v1;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sput-object v0, Ly1/v1;->k:[Ly1/v1;

    .line 245
    .line 246
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    sput-object v0, Ly1/v1;->l:Lkotlin/enums/EnumEntries;

    .line 251
    .line 252
    new-instance v0, Ly1/c0;

    .line 253
    .line 254
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    sput-object v0, Ly1/v1;->f:Ly1/c0;

    .line 258
    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ly1/v1;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Ly1/v1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Ly1/v1;->d:Ljava/util/Map;

    .line 9
    .line 10
    iput p6, p0, Ly1/v1;->e:I

    .line 11
    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly1/v1;
    .locals 1

    .line 1
    const-class v0, Ly1/v1;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ly1/v1;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ly1/v1;
    .locals 1

    .line 1
    sget-object v0, Ly1/v1;->k:[Ly1/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ly1/v1;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "os.arch"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    const-string v2, "aarch64"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    const-string v0, "arm64-v8a"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-string v2, "arm"

    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const-string v0, "armeabi-v7a"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const-string v2, "x86_64"

    .line 35
    .line 36
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_5

    .line 41
    .line 42
    const-string v3, "amd64"

    .line 43
    .line 44
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const-string v2, "x86"

    .line 52
    .line 53
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_5

    .line 58
    .line 59
    const-string v3, "i386"

    .line 60
    .line 61
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    :cond_5
    :goto_0
    move-object v0, v2

    .line 68
    :goto_1
    iget-object v2, p0, Ly1/v1;->d:Ljava/util/Map;

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_6
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 80
    .line 81
    const-string v3, "SUPPORTED_ABIS"

    .line 82
    .line 83
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    array-length v3, v0

    .line 87
    const/4 v4, 0x0

    .line 88
    :goto_2
    if-ge v4, v3, :cond_8

    .line 89
    .line 90
    aget-object v5, v0, v4

    .line 91
    .line 92
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_7

    .line 97
    .line 98
    return-object v5

    .line 99
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_8
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly1/v1;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v1, p0, Ly1/v1;->d:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/util/List;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    return-object v0
.end method
