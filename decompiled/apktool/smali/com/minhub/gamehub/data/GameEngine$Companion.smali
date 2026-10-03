.class public final Lcom/minhub/gamehub/data/GameEngine$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/data/GameEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/GameEngine$Companion;",
        "",
        "<init>",
        "()V",
        "fromString",
        "Lcom/minhub/gamehub/data/GameEngine;",
        "s",
        "",
        "fromConfigLabel",
        "label",
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
        "SMAP\nGame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Game.kt\ncom/minhub/gamehub/data/GameEngine$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n295#2,2:77\n*S KotlinDebug\n*F\n+ 1 Game.kt\ncom/minhub/gamehub/data/GameEngine$Companion\n*L\n24#1:77,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/minhub/gamehub/data/GameEngine$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromConfigLabel(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_10

    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_10

    .line 13
    .line 14
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "toLowerCase(...)"

    .line 21
    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_3

    .line 28
    .line 29
    :cond_0
    new-instance v1, Lkotlin/text/Regex;

    .line 30
    .line 31
    const-string v2, "ren\\s*[\'\u2019]?\\s*py"

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-static {v1, p1, v2, v3, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_7

    .line 43
    .line 44
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v4, 0x1

    .line 53
    add-int/2addr v1, v4

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v1, "substring(...)"

    .line 59
    .line 60
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lkotlin/text/Regex;

    .line 64
    .line 65
    const-string v5, "\\b[78]\\s*/\\s*[78]\\b"

    .line 66
    .line 67
    invoke-direct {v1, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_1
    new-instance v1, Lkotlin/text/Regex;

    .line 79
    .line 80
    const-string v5, "^\\s*[-:]?\\s*([78])(?:\\D|$)"

    .line 81
    .line 82
    invoke-direct {v1, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, p1, v2, v3, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    :cond_2
    if-nez v0, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const/4 v1, 0x7

    .line 117
    if-ne p1, v1, :cond_4

    .line 118
    .line 119
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 120
    .line 121
    return-object p1

    .line 122
    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/16 v0, 0x8

    .line 130
    .line 131
    if-ne p1, v0, :cond_6

    .line 132
    .line 133
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_6
    :goto_1
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 137
    .line 138
    return-object p1

    .line 139
    :cond_7
    const-string v1, "html"

    .line 140
    .line 141
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_8
    const-string v1, "vxace"

    .line 151
    .line 152
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_f

    .line 157
    .line 158
    const-string v1, "vx ace"

    .line 159
    .line 160
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_9

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_9
    const-string v1, "tyrano"

    .line 168
    .line 169
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_a

    .line 174
    .line 175
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 176
    .line 177
    return-object p1

    .line 178
    :cond_a
    const-string v1, "kiri"

    .line 179
    .line 180
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_b

    .line 185
    .line 186
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->KIRI:Lcom/minhub/gamehub/data/GameEngine;

    .line 187
    .line 188
    return-object p1

    .line 189
    :cond_b
    const-string v1, "godot"

    .line 190
    .line 191
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_c

    .line 196
    .line 197
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 198
    .line 199
    return-object p1

    .line 200
    :cond_c
    const-string v1, "browse"

    .line 201
    .line 202
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_d

    .line 207
    .line 208
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->BROWSE:Lcom/minhub/gamehub/data/GameEngine;

    .line 209
    .line 210
    return-object p1

    .line 211
    :cond_d
    const-string v1, "mz"

    .line 212
    .line 213
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_e

    .line 218
    .line 219
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 220
    .line 221
    return-object p1

    .line 222
    :cond_e
    const-string v1, "mv"

    .line 223
    .line 224
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_10

    .line 229
    .line 230
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_f
    :goto_2
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->VXACE:Lcom/minhub/gamehub/data/GameEngine;

    .line 234
    .line 235
    return-object p1

    .line 236
    :cond_10
    :goto_3
    return-object v0
.end method

.method public final fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;
    .locals 4

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/minhub/gamehub/data/GameEngine;->getEntries()Lkotlin/enums/EnumEntries;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lcom/minhub/gamehub/data/GameEngine;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v2, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    check-cast v1, Lcom/minhub/gamehub/data/GameEngine;

    .line 41
    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    sget-object p1, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_2
    return-object v1
.end method
