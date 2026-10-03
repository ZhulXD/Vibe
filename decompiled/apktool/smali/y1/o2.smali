.class public abstract Ly1/o2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ArrowDown"

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    const/16 v3, 0x13

    .line 10
    .line 11
    const-string v4, "ArrowUp"

    .line 12
    .line 13
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "ArrowRight"

    .line 17
    .line 18
    const/16 v2, 0x16

    .line 19
    .line 20
    const/16 v3, 0x15

    .line 21
    .line 22
    const-string v4, "ArrowLeft"

    .line 23
    .line 24
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "Numpad3"

    .line 28
    .line 29
    const/16 v2, 0x93

    .line 30
    .line 31
    const/16 v3, 0x91

    .line 32
    .line 33
    const-string v4, "Numpad1"

    .line 34
    .line 35
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "Numpad9"

    .line 39
    .line 40
    const/16 v2, 0x99

    .line 41
    .line 42
    const/16 v3, 0x97

    .line 43
    .line 44
    const-string v4, "Numpad7"

    .line 45
    .line 46
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v1, "Escape"

    .line 50
    .line 51
    const/16 v2, 0x6f

    .line 52
    .line 53
    const/16 v3, 0x42

    .line 54
    .line 55
    const-string v4, "Enter"

    .line 56
    .line 57
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x3e

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "Space"

    .line 67
    .line 68
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v2, " "

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x43

    .line 77
    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "Backspace"

    .line 83
    .line 84
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x3d

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "Tab"

    .line 94
    .line 95
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const-string v1, "Delete"

    .line 99
    .line 100
    const/16 v2, 0x70

    .line 101
    .line 102
    const/16 v3, 0x7c

    .line 103
    .line 104
    const-string v4, "Insert"

    .line 105
    .line 106
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "End"

    .line 110
    .line 111
    const/16 v2, 0x7b

    .line 112
    .line 113
    const/16 v3, 0x7a

    .line 114
    .line 115
    const-string v4, "Home"

    .line 116
    .line 117
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, "PageDown"

    .line 121
    .line 122
    const/16 v2, 0x33

    .line 123
    .line 124
    const/16 v3, 0x2d

    .line 125
    .line 126
    const-string v4, "PageUp"

    .line 127
    .line 128
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "F2"

    .line 132
    .line 133
    const/16 v2, 0x84

    .line 134
    .line 135
    const/16 v3, 0x83

    .line 136
    .line 137
    const-string v4, "F1"

    .line 138
    .line 139
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v1, "F4"

    .line 143
    .line 144
    const/16 v2, 0x86

    .line 145
    .line 146
    const/16 v3, 0x85

    .line 147
    .line 148
    const-string v4, "F3"

    .line 149
    .line 150
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v1, "F6"

    .line 154
    .line 155
    const/16 v2, 0x88

    .line 156
    .line 157
    const/16 v3, 0x87

    .line 158
    .line 159
    const-string v4, "F5"

    .line 160
    .line 161
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v1, "F8"

    .line 165
    .line 166
    const/16 v2, 0x8a

    .line 167
    .line 168
    const/16 v3, 0x89

    .line 169
    .line 170
    const-string v4, "F7"

    .line 171
    .line 172
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v1, "F10"

    .line 176
    .line 177
    const/16 v2, 0x8c

    .line 178
    .line 179
    const/16 v3, 0x8b

    .line 180
    .line 181
    const-string v4, "F9"

    .line 182
    .line 183
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v1, "F12"

    .line 187
    .line 188
    const/16 v2, 0x8e

    .line 189
    .line 190
    const/16 v3, 0x8d

    .line 191
    .line 192
    const-string v4, "F11"

    .line 193
    .line 194
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v1, "Minus"

    .line 198
    .line 199
    const/16 v2, 0x45

    .line 200
    .line 201
    const/16 v3, 0x44

    .line 202
    .line 203
    const-string v4, "Backquote"

    .line 204
    .line 205
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    .line 207
    .line 208
    const-string v1, "BracketLeft"

    .line 209
    .line 210
    const/16 v2, 0x47

    .line 211
    .line 212
    const/16 v3, 0x46

    .line 213
    .line 214
    const-string v4, "Equal"

    .line 215
    .line 216
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string v1, "Backslash"

    .line 220
    .line 221
    const/16 v2, 0x49

    .line 222
    .line 223
    const/16 v3, 0x48

    .line 224
    .line 225
    const-string v4, "BracketRight"

    .line 226
    .line 227
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v1, "Quote"

    .line 231
    .line 232
    const/16 v2, 0x4b

    .line 233
    .line 234
    const/16 v3, 0x4a

    .line 235
    .line 236
    const-string v4, "Semicolon"

    .line 237
    .line 238
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string v1, "Period"

    .line 242
    .line 243
    const/16 v2, 0x38

    .line 244
    .line 245
    const/16 v3, 0x37

    .line 246
    .line 247
    const-string v4, "Comma"

    .line 248
    .line 249
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string v1, "ShiftLeft"

    .line 253
    .line 254
    const/16 v2, 0x3b

    .line 255
    .line 256
    const/16 v3, 0x4c

    .line 257
    .line 258
    const-string v4, "Slash"

    .line 259
    .line 260
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v1, "ControlLeft"

    .line 264
    .line 265
    const/16 v2, 0x71

    .line 266
    .line 267
    const/16 v3, 0x3c

    .line 268
    .line 269
    const-string v4, "ShiftRight"

    .line 270
    .line 271
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string v1, "AltLeft"

    .line 275
    .line 276
    const/16 v2, 0x39

    .line 277
    .line 278
    const/16 v3, 0x72

    .line 279
    .line 280
    const-string v4, "ControlRight"

    .line 281
    .line 282
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const-string v1, "CapsLock"

    .line 286
    .line 287
    const/16 v2, 0x73

    .line 288
    .line 289
    const/16 v3, 0x3a

    .line 290
    .line 291
    const-string v4, "AltRight"

    .line 292
    .line 293
    invoke-static {v3, v0, v4, v2, v1}, Lkotlin/collections/unsigned/a;->l(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    sput-object v0, Ly1/o2;->a:Ljava/util/Map;

    .line 301
    .line 302
    return-void
.end method
