.class public final Lf0/J;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lf0/g;
.implements Lf0/f;


# instance fields
.field public final b:Lf0/h;

.field public final c:Lf0/j;

.field public volatile d:I

.field public volatile e:Lf0/d;

.field public volatile f:Ljava/lang/Object;

.field public volatile g:Lj0/p;

.field public volatile h:Lf0/e;


# direct methods
.method public constructor <init>(Lf0/h;Lf0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/J;->b:Lf0/h;

    .line 5
    .line 6
    iput-object p2, p0, Lf0/J;->c:Lf0/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ld0/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V
    .locals 1

    .line 1
    iget-object p4, p0, Lf0/J;->c:Lf0/j;

    .line 2
    .line 3
    iget-object v0, p0, Lf0/J;->g:Lj0/p;

    .line 4
    .line 5
    iget-object v0, v0, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->d()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p4, p1, p2, p3, v0}, Lf0/j;->a(Ld0/f;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lf0/J;->f:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf0/J;->f:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Lf0/J;->f:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Lf0/J;->d(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const/4 v3, 0x3

    .line 20
    const-string v4, "SourceGenerator"

    .line 21
    .line 22
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string v3, "Failed to properly rewind or write data to cache"

    .line 29
    .line 30
    invoke-static {v4, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lf0/J;->e:Lf0/d;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lf0/J;->e:Lf0/d;

    .line 38
    .line 39
    invoke-virtual {v0}, Lf0/d;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    :goto_0
    return v2

    .line 46
    :cond_1
    iput-object v1, p0, Lf0/J;->e:Lf0/d;

    .line 47
    .line 48
    iput-object v1, p0, Lf0/J;->g:Lj0/p;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_1
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget v1, p0, Lf0/J;->d:I

    .line 54
    .line 55
    iget-object v3, p0, Lf0/J;->b:Lf0/h;

    .line 56
    .line 57
    invoke-virtual {v3}, Lf0/h;->b()Ljava/util/ArrayList;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-ge v1, v3, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Lf0/J;->b:Lf0/h;

    .line 68
    .line 69
    invoke-virtual {v1}, Lf0/h;->b()Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v3, p0, Lf0/J;->d:I

    .line 74
    .line 75
    add-int/lit8 v4, v3, 0x1

    .line 76
    .line 77
    iput v4, p0, Lf0/J;->d:I

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Lj0/p;

    .line 84
    .line 85
    iput-object v1, p0, Lf0/J;->g:Lj0/p;

    .line 86
    .line 87
    iget-object v1, p0, Lf0/J;->g:Lj0/p;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Lf0/J;->b:Lf0/h;

    .line 92
    .line 93
    iget-object v1, v1, Lf0/h;->p:Lf0/l;

    .line 94
    .line 95
    iget-object v3, p0, Lf0/J;->g:Lj0/p;

    .line 96
    .line 97
    iget-object v3, v3, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 98
    .line 99
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->d()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v1, v3}, Lf0/l;->a(I)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    iget-object v1, p0, Lf0/J;->b:Lf0/h;

    .line 110
    .line 111
    iget-object v3, p0, Lf0/J;->g:Lj0/p;

    .line 112
    .line 113
    iget-object v3, v3, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 114
    .line 115
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lf0/h;->c(Ljava/lang/Class;)Lf0/D;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    :cond_3
    iget-object v0, p0, Lf0/J;->g:Lj0/p;

    .line 126
    .line 127
    iget-object v1, p0, Lf0/J;->g:Lj0/p;

    .line 128
    .line 129
    iget-object v1, v1, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 130
    .line 131
    iget-object v3, p0, Lf0/J;->b:Lf0/h;

    .line 132
    .line 133
    iget-object v3, v3, Lf0/h;->o:Lcom/bumptech/glide/g;

    .line 134
    .line 135
    new-instance v4, LA1/d;

    .line 136
    .line 137
    const/16 v5, 0xd

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-direct {v4, p0, v0, v5, v6}, LA1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v3, v4}, Lcom/bumptech/glide/load/data/e;->f(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    .line 144
    .line 145
    .line 146
    move v0, v2

    .line 147
    goto :goto_1

    .line 148
    :cond_4
    return v0
.end method

.method public final c(Ld0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILd0/f;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/J;->c:Lf0/j;

    .line 2
    .line 3
    iget-object p4, p0, Lf0/J;->g:Lj0/p;

    .line 4
    .line 5
    iget-object p4, p4, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/e;->d()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    move-object v5, p1

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lf0/j;->c(Ld0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILd0/f;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/J;->g:Lj0/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    const-string v1, "Attempt to write: "

    .line 4
    .line 5
    const-string v2, "Finished encoding source to cache, key: "

    .line 6
    .line 7
    sget v3, Ly0/h;->b:I

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    iget-object v6, p0, Lf0/J;->b:Lf0/h;

    .line 15
    .line 16
    iget-object v6, v6, Lf0/h;->c:Lcom/bumptech/glide/e;

    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/i;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v6, p1}, Lcom/bumptech/glide/i;->g(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/g;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    invoke-interface {v6}, Lcom/bumptech/glide/load/data/g;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    iget-object v8, p0, Lf0/J;->b:Lf0/h;

    .line 31
    .line 32
    invoke-virtual {v8, v7}, Lf0/h;->d(Ljava/lang/Object;)Ld0/b;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    new-instance v9, LF/b;

    .line 37
    .line 38
    iget-object v10, p0, Lf0/J;->b:Lf0/h;

    .line 39
    .line 40
    iget-object v10, v10, Lf0/h;->i:Ld0/i;

    .line 41
    .line 42
    const/4 v11, 0x7

    .line 43
    invoke-direct {v9, v8, v7, v10, v11}, LF/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Lf0/e;

    .line 47
    .line 48
    iget-object v10, p0, Lf0/J;->g:Lj0/p;

    .line 49
    .line 50
    iget-object v10, v10, Lj0/p;->a:Ld0/f;

    .line 51
    .line 52
    iget-object v11, p0, Lf0/J;->b:Lf0/h;

    .line 53
    .line 54
    iget-object v12, v11, Lf0/h;->n:Ld0/f;

    .line 55
    .line 56
    invoke-direct {v7, v10, v12}, Lf0/e;-><init>(Ld0/f;Ld0/f;)V

    .line 57
    .line 58
    .line 59
    iget-object v10, v11, Lf0/h;->h:Lf0/q;

    .line 60
    .line 61
    invoke-virtual {v10}, Lf0/q;->a()Lh0/a;

    .line 62
    .line 63
    .line 64
    move-result-object v10

    .line 65
    invoke-interface {v10, v7, v9}, Lh0/a;->j(Ld0/f;LF/b;)V

    .line 66
    .line 67
    .line 68
    const/4 v9, 0x2

    .line 69
    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 70
    .line 71
    .line 72
    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const-string v11, ", data: "

    .line 74
    .line 75
    if-eqz v9, :cond_0

    .line 76
    .line 77
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", encoder: "

    .line 92
    .line 93
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", duration: "

    .line 100
    .line 101
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v4}, Ly0/h;->a(J)D

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    move-object p1, v0

    .line 121
    goto :goto_1

    .line 122
    :cond_0
    :goto_0
    invoke-interface {v10, v7}, Lh0/a;->h(Ld0/f;)Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    const/4 v3, 0x1

    .line 127
    if-eqz v2, :cond_1

    .line 128
    .line 129
    iput-object v7, p0, Lf0/J;->h:Lf0/e;

    .line 130
    .line 131
    new-instance p1, Lf0/d;

    .line 132
    .line 133
    iget-object v0, p0, Lf0/J;->g:Lj0/p;

    .line 134
    .line 135
    iget-object v0, v0, Lj0/p;->a:Ld0/f;

    .line 136
    .line 137
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lf0/J;->b:Lf0/h;

    .line 142
    .line 143
    invoke-direct {p1, v0, v1, p0}, Lf0/d;-><init>(Ljava/util/List;Lf0/h;Lf0/f;)V

    .line 144
    .line 145
    .line 146
    iput-object p1, p0, Lf0/J;->e:Lf0/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    iget-object p1, p0, Lf0/J;->g:Lj0/p;

    .line 149
    .line 150
    iget-object p1, p1, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 151
    .line 152
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 153
    .line 154
    .line 155
    return v3

    .line 156
    :cond_1
    const/4 v2, 0x3

    .line 157
    :try_start_2
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_2

    .line 162
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lf0/J;->h:Lf0/e;

    .line 169
    .line 170
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 180
    .line 181
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .line 190
    .line 191
    :cond_2
    move-object p1, v6

    .line 192
    :try_start_3
    iget-object v6, p0, Lf0/J;->c:Lf0/j;

    .line 193
    .line 194
    iget-object v0, p0, Lf0/J;->g:Lj0/p;

    .line 195
    .line 196
    iget-object v7, v0, Lj0/p;->a:Ld0/f;

    .line 197
    .line 198
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/g;->a()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    iget-object p1, p0, Lf0/J;->g:Lj0/p;

    .line 203
    .line 204
    iget-object v9, p1, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 205
    .line 206
    iget-object p1, p0, Lf0/J;->g:Lj0/p;

    .line 207
    .line 208
    iget-object p1, p1, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 209
    .line 210
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->d()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    iget-object p1, p0, Lf0/J;->g:Lj0/p;

    .line 215
    .line 216
    iget-object v11, p1, Lj0/p;->a:Ld0/f;

    .line 217
    .line 218
    invoke-virtual/range {v6 .. v11}, Lf0/j;->c(Ld0/f;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;ILd0/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .line 220
    .line 221
    return v5

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    move-object p1, v0

    .line 224
    move v5, v3

    .line 225
    :goto_1
    if-nez v5, :cond_3

    .line 226
    .line 227
    iget-object v0, p0, Lf0/J;->g:Lj0/p;

    .line 228
    .line 229
    iget-object v0, v0, Lj0/p;->c:Lcom/bumptech/glide/load/data/e;

    .line 230
    .line 231
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    .line 232
    .line 233
    .line 234
    :cond_3
    throw p1
.end method
