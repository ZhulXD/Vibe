.class public Lorg/renpy/android/AssetExtract;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAssetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/renpy/android/AssetExtract;->mActivity:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public extractTar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "extracting tar"

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    new-array v1, v1, [B

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "extracting "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " to "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "python"

    .line 30
    .line 31
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :try_start_0
    iget-object v4, p0, Lorg/renpy/android/AssetExtract;->mAssetManager:Landroid/content/res/AssetManager;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-virtual {v4, p1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v4, Li2/b;

    .line 43
    .line 44
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 45
    .line 46
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    .line 47
    .line 48
    new-instance v7, Ljava/io/BufferedInputStream;

    .line 49
    .line 50
    const/16 v8, 0x2000

    .line 51
    .line 52
    invoke-direct {v7, p1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v5, v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v5}, Li2/b;-><init>(Ljava/io/BufferedInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 62
    .line 63
    .line 64
    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Li2/b;->a()LA1/b;

    .line 65
    .line 66
    .line 67
    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 68
    if-nez v5, :cond_0

    .line 69
    .line 70
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    .line 75
    .line 76
    :catch_1
    const/4 p1, 0x1

    .line 77
    return p1

    .line 78
    :cond_0
    iget-object v6, v5, LA1/b;->b:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v6, Li2/a;

    .line 81
    .line 82
    const-string v7, "/"

    .line 83
    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    iget-byte v9, v6, Li2/a;->c:B

    .line 87
    .line 88
    const/16 v10, 0x35

    .line 89
    .line 90
    if-ne v9, v10, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    iget-object v6, v6, Li2/a;->a:Ljava/lang/StringBuffer;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_2

    .line 104
    .line 105
    :goto_1
    :try_start_3
    new-instance v6, Ljava/io/File;

    .line 106
    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, LA1/b;->m()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, LA1/b;->m()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    :try_start_4
    new-instance v6, Ljava/io/BufferedOutputStream;

    .line 159
    .line 160
    new-instance v7, Ljava/io/FileOutputStream;

    .line 161
    .line 162
    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v6, v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_2
    const/4 v6, 0x0

    .line 170
    :goto_2
    if-nez v6, :cond_3

    .line 171
    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const-string p2, "could not open "

    .line 175
    .line 176
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    return v2

    .line 190
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    const/4 v7, -0x1

    .line 195
    if-ne v5, v7, :cond_4

    .line 196
    .line 197
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :catch_3
    move-exception p1

    .line 206
    goto :goto_4

    .line 207
    :cond_4
    invoke-virtual {v6, v1, v2, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :goto_4
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .line 213
    .line 214
    return v2

    .line 215
    :catch_4
    move-exception p1

    .line 216
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .line 218
    .line 219
    return v2

    .line 220
    :catch_5
    move-exception p1

    .line 221
    const-string p2, "opening up extract tar"

    .line 222
    .line 223
    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .line 225
    .line 226
    return v2
.end method
