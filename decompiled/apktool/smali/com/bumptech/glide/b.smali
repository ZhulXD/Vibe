.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile i:Lcom/bumptech/glide/b;

.field public static volatile j:Z


# instance fields
.field public final b:Lg0/b;

.field public final c:Lh0/e;

.field public final d:Lcom/bumptech/glide/e;

.field public final e:Lg0/g;

.field public final f:Lcom/bumptech/glide/manager/m;

.field public final g:LY0/e;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf0/r;Lh0/e;Lg0/b;Lg0/g;Lcom/bumptech/glide/manager/m;LY0/e;LY0/e;Lq/e;Ljava/util/List;Ljava/util/ArrayList;La/a;LA1/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/b;->b:Lg0/b;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/bumptech/glide/b;->e:Lg0/g;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bumptech/glide/b;->c:Lh0/e;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/bumptech/glide/b;->g:LY0/e;

    .line 20
    .line 21
    new-instance p4, Lcom/bumptech/glide/manager/q;

    .line 22
    .line 23
    invoke-direct {p4, p0, p11, p12}, Lcom/bumptech/glide/manager/q;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;La/a;)V

    .line 24
    .line 25
    .line 26
    move-object p3, p5

    .line 27
    new-instance p5, Lr/b;

    .line 28
    .line 29
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    move-object p7, p9

    .line 33
    move-object p9, p2

    .line 34
    move-object p2, p1

    .line 35
    new-instance p1, Lcom/bumptech/glide/e;

    .line 36
    .line 37
    move-object p6, p8

    .line 38
    move-object p8, p10

    .line 39
    move-object p10, p13

    .line 40
    invoke-direct/range {p1 .. p10}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Lg0/g;Lcom/bumptech/glide/manager/q;Lr/b;LY0/e;Lq/e;Ljava/util/List;Lf0/r;LA1/b;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 44
    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 4

    .line 1
    sget-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Glide"

    .line 10
    .line 11
    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Landroid/content/Context;

    .line 18
    .line 19
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 46
    .line 47
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 55
    .line 56
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :catch_2
    move-exception p0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 64
    .line 65
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :catch_3
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 73
    .line 74
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :catch_4
    const/4 v0, 0x5

    .line 79
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 86
    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    const-class v1, Lcom/bumptech/glide/b;

    .line 92
    .line 93
    monitor-enter v1

    .line 94
    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 95
    .line 96
    if-nez v2, :cond_2

    .line 97
    .line 98
    sget-boolean v2, Lcom/bumptech/glide/b;->j:Z

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    sput-boolean v2, Lcom/bumptech/glide/b;->j:Z

    .line 114
    .line 115
    throw p0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0

    .line 124
    :cond_2
    :goto_1
    monitor-exit v1

    .line 125
    goto :goto_2

    .line 126
    :catchall_1
    move-exception p0

    .line 127
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    throw p0

    .line 129
    :cond_3
    :goto_2
    sget-object p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 130
    .line 131
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 27

    .line 1
    new-instance v9, Lq/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v9, v1}, Lq/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/bumptech/glide/f;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {v2, v0}, Lcom/bumptech/glide/f;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v8, LY0/e;

    .line 14
    .line 15
    const/16 v0, 0x16

    .line 16
    .line 17
    invoke-direct {v8, v0}, LY0/e;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 25
    .line 26
    const-string v0, "Got app info metadata: "

    .line 27
    .line 28
    const-string v4, "ManifestParser"

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    const-string v6, "Loading Glide modules"

    .line 38
    .line 39
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    const/16 v12, 0x80

    .line 57
    .line 58
    invoke-virtual {v7, v10, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    if-eqz v7, :cond_5

    .line 63
    .line 64
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 65
    .line 66
    if-nez v10, :cond_1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_2

    .line 74
    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 81
    .line 82
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    :goto_0
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_4

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    check-cast v10, Ljava/lang/String;

    .line 116
    .line 117
    const-string v12, "GlideModule"

    .line 118
    .line 119
    iget-object v13, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 120
    .line 121
    invoke-virtual {v13, v10}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-nez v12, :cond_3

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    invoke-static {v10}, Lcom/bumptech/glide/c;->D(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x0

    .line 136
    throw v0

    .line 137
    :cond_4
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    const-string v0, "Finished loading Glide modules"

    .line 144
    .line 145
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_5
    :goto_2
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    const-string v0, "Got null app info metadata"

    .line 156
    .line 157
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :goto_3
    const/4 v7, 0x6

    .line 162
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_6

    .line 167
    .line 168
    const-string v7, "Failed to parse glide modules"

    .line 169
    .line 170
    invoke-static {v4, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .line 172
    .line 173
    :cond_6
    :goto_4
    if-eqz p1, :cond_8

    .line 174
    .line 175
    new-instance v0, Ljava/util/HashSet;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_8

    .line 185
    .line 186
    new-instance v0, Ljava/util/HashSet;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-nez v4, :cond_7

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_7
    invoke-static {v0}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    throw v0

    .line 207
    :cond_8
    :goto_5
    const-string v0, "Glide"

    .line 208
    .line 209
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-nez v4, :cond_9

    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_9
    invoke-static {v0}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    throw v0

    .line 231
    :cond_a
    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-nez v4, :cond_12

    .line 240
    .line 241
    new-instance v0, Li0/b;

    .line 242
    .line 243
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 244
    .line 245
    .line 246
    sget v4, Li0/e;->d:I

    .line 247
    .line 248
    const/4 v5, 0x4

    .line 249
    if-nez v4, :cond_b

    .line 250
    .line 251
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    sput v4, Li0/e;->d:I

    .line 264
    .line 265
    :cond_b
    sget v13, Li0/e;->d:I

    .line 266
    .line 267
    const-string v4, "source"

    .line 268
    .line 269
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    if-nez v7, :cond_11

    .line 274
    .line 275
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 276
    .line 277
    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    .line 279
    new-instance v18, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 280
    .line 281
    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 282
    .line 283
    .line 284
    new-instance v7, Li0/c;

    .line 285
    .line 286
    invoke-direct {v7, v0, v4, v1}, Li0/c;-><init>(Li0/b;Ljava/lang/String;Z)V

    .line 287
    .line 288
    .line 289
    const-wide/16 v15, 0x0

    .line 290
    .line 291
    move v14, v13

    .line 292
    move-object/from16 v17, v19

    .line 293
    .line 294
    move-object/from16 v19, v7

    .line 295
    .line 296
    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 297
    .line 298
    .line 299
    move-object/from16 v19, v17

    .line 300
    .line 301
    new-instance v0, Li0/e;

    .line 302
    .line 303
    invoke-direct {v0, v12}, Li0/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 304
    .line 305
    .line 306
    new-instance v4, Li0/b;

    .line 307
    .line 308
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v7, "disk-cache"

    .line 312
    .line 313
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-nez v10, :cond_10

    .line 318
    .line 319
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 320
    .line 321
    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 322
    .line 323
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 324
    .line 325
    .line 326
    new-instance v10, Li0/c;

    .line 327
    .line 328
    const/4 v15, 0x1

    .line 329
    invoke-direct {v10, v4, v7, v15}, Li0/c;-><init>(Li0/b;Ljava/lang/String;Z)V

    .line 330
    .line 331
    .line 332
    const-wide/16 v17, 0x0

    .line 333
    .line 334
    move/from16 v16, v15

    .line 335
    .line 336
    move-object/from16 v21, v10

    .line 337
    .line 338
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 339
    .line 340
    .line 341
    new-instance v4, Li0/e;

    .line 342
    .line 343
    invoke-direct {v4, v14}, Li0/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 344
    .line 345
    .line 346
    sget v7, Li0/e;->d:I

    .line 347
    .line 348
    if-nez v7, :cond_c

    .line 349
    .line 350
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    .line 355
    .line 356
    .line 357
    move-result v7

    .line 358
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    sput v7, Li0/e;->d:I

    .line 363
    .line 364
    :cond_c
    sget v7, Li0/e;->d:I

    .line 365
    .line 366
    const/4 v10, 0x1

    .line 367
    if-lt v7, v5, :cond_d

    .line 368
    .line 369
    move v15, v6

    .line 370
    goto :goto_7

    .line 371
    :cond_d
    move v15, v10

    .line 372
    :goto_7
    new-instance v5, Li0/b;

    .line 373
    .line 374
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v6, "animation"

    .line 378
    .line 379
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-nez v7, :cond_f

    .line 384
    .line 385
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 386
    .line 387
    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 388
    .line 389
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 390
    .line 391
    .line 392
    new-instance v7, Li0/c;

    .line 393
    .line 394
    invoke-direct {v7, v5, v6, v10}, Li0/c;-><init>(Li0/b;Ljava/lang/String;Z)V

    .line 395
    .line 396
    .line 397
    const-wide/16 v17, 0x0

    .line 398
    .line 399
    move/from16 v16, v15

    .line 400
    .line 401
    move-object/from16 v21, v7

    .line 402
    .line 403
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 404
    .line 405
    .line 406
    new-instance v5, Li0/e;

    .line 407
    .line 408
    invoke-direct {v5, v14}, Li0/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 409
    .line 410
    .line 411
    new-instance v6, Lh0/f;

    .line 412
    .line 413
    invoke-direct {v6, v3}, Lh0/f;-><init>(Landroid/content/Context;)V

    .line 414
    .line 415
    .line 416
    new-instance v7, Lh0/g;

    .line 417
    .line 418
    invoke-direct {v7, v6}, Lh0/g;-><init>(Lh0/f;)V

    .line 419
    .line 420
    .line 421
    new-instance v6, LY0/e;

    .line 422
    .line 423
    const/16 v10, 0x19

    .line 424
    .line 425
    invoke-direct {v6, v10}, LY0/e;-><init>(I)V

    .line 426
    .line 427
    .line 428
    iget v10, v7, Lh0/g;->a:I

    .line 429
    .line 430
    if-lez v10, :cond_e

    .line 431
    .line 432
    new-instance v12, Lg0/h;

    .line 433
    .line 434
    int-to-long v13, v10

    .line 435
    invoke-direct {v12, v13, v14}, Lg0/h;-><init>(J)V

    .line 436
    .line 437
    .line 438
    :goto_8
    move-object/from16 v26, v5

    .line 439
    .line 440
    goto :goto_9

    .line 441
    :cond_e
    new-instance v12, Lcom/google/android/material/datepicker/c;

    .line 442
    .line 443
    const/4 v10, 0x6

    .line 444
    invoke-direct {v12, v10}, Lcom/google/android/material/datepicker/c;-><init>(I)V

    .line 445
    .line 446
    .line 447
    goto :goto_8

    .line 448
    :goto_9
    new-instance v5, Lg0/g;

    .line 449
    .line 450
    iget v10, v7, Lh0/g;->c:I

    .line 451
    .line 452
    invoke-direct {v5, v10}, Lg0/g;-><init>(I)V

    .line 453
    .line 454
    .line 455
    new-instance v10, Lh0/e;

    .line 456
    .line 457
    iget v7, v7, Lh0/g;->b:I

    .line 458
    .line 459
    int-to-long v13, v7

    .line 460
    invoke-direct {v10, v13, v14}, Ly0/j;-><init>(J)V

    .line 461
    .line 462
    .line 463
    new-instance v7, LA1/b;

    .line 464
    .line 465
    new-instance v13, LA1/h;

    .line 466
    .line 467
    const/4 v14, 0x4

    .line 468
    const/4 v15, 0x0

    .line 469
    invoke-direct {v13, v3, v14, v15}, LA1/h;-><init>(Landroid/content/Context;IZ)V

    .line 470
    .line 471
    .line 472
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 473
    .line 474
    .line 475
    iput-object v13, v7, LA1/b;->b:Ljava/lang/Object;

    .line 476
    .line 477
    new-instance v13, Lf0/r;

    .line 478
    .line 479
    new-instance v25, Li0/e;

    .line 480
    .line 481
    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 482
    .line 483
    sget-wide v17, Li0/e;->c:J

    .line 484
    .line 485
    new-instance v20, Ljava/util/concurrent/SynchronousQueue;

    .line 486
    .line 487
    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 488
    .line 489
    .line 490
    new-instance v15, Li0/c;

    .line 491
    .line 492
    new-instance v1, Li0/b;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 495
    .line 496
    .line 497
    move-object/from16 v24, v0

    .line 498
    .line 499
    const-string v0, "source-unlimited"

    .line 500
    .line 501
    move-object/from16 p0, v3

    .line 502
    .line 503
    const/4 v3, 0x0

    .line 504
    invoke-direct {v15, v1, v0, v3}, Li0/c;-><init>(Li0/b;Ljava/lang/String;Z)V

    .line 505
    .line 506
    .line 507
    move-object/from16 v21, v15

    .line 508
    .line 509
    const/4 v15, 0x0

    .line 510
    const v16, 0x7fffffff

    .line 511
    .line 512
    .line 513
    move-object/from16 v0, v25

    .line 514
    .line 515
    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 516
    .line 517
    .line 518
    invoke-direct {v0, v14}, Li0/e;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 519
    .line 520
    .line 521
    move-object/from16 v23, v4

    .line 522
    .line 523
    move-object/from16 v22, v7

    .line 524
    .line 525
    move-object/from16 v21, v10

    .line 526
    .line 527
    move-object/from16 v20, v13

    .line 528
    .line 529
    invoke-direct/range {v20 .. v26}, Lf0/r;-><init>(Lh0/e;LA1/b;Li0/e;Li0/e;Li0/e;Li0/e;)V

    .line 530
    .line 531
    .line 532
    move-object/from16 v3, v21

    .line 533
    .line 534
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 535
    .line 536
    new-instance v13, LA1/b;

    .line 537
    .line 538
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 539
    .line 540
    .line 541
    new-instance v0, Ljava/util/HashMap;

    .line 542
    .line 543
    iget-object v1, v2, Lcom/bumptech/glide/f;->a:Ljava/util/HashMap;

    .line 544
    .line 545
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 546
    .line 547
    .line 548
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    iput-object v0, v13, LA1/b;->b:Ljava/lang/Object;

    .line 553
    .line 554
    move-object v7, v6

    .line 555
    new-instance v6, Lcom/bumptech/glide/manager/m;

    .line 556
    .line 557
    invoke-direct {v6}, Lcom/bumptech/glide/manager/m;-><init>()V

    .line 558
    .line 559
    .line 560
    new-instance v0, Lcom/bumptech/glide/b;

    .line 561
    .line 562
    move-object/from16 v1, p0

    .line 563
    .line 564
    move-object v4, v12

    .line 565
    move-object/from16 v2, v20

    .line 566
    .line 567
    move-object/from16 v12, p1

    .line 568
    .line 569
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lf0/r;Lh0/e;Lg0/b;Lg0/g;Lcom/bumptech/glide/manager/m;LY0/e;LY0/e;Lq/e;Ljava/util/List;Ljava/util/ArrayList;La/a;LA1/b;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 573
    .line 574
    .line 575
    sput-object v0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/b;

    .line 576
    .line 577
    return-void

    .line 578
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 579
    .line 580
    const-string v1, "Name must be non-null and non-empty, but given: animation"

    .line 581
    .line 582
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    throw v0

    .line 586
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 587
    .line 588
    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    .line 589
    .line 590
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    throw v0

    .line 594
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 595
    .line 596
    const-string v1, "Name must be non-null and non-empty, but given: source"

    .line 597
    .line 598
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    throw v0

    .line 602
    :cond_12
    invoke-static {v0}, LE/b;->g(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    throw v0
.end method

.method public static c(Landroid/view/View;)Lcom/bumptech/glide/n;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 6
    .line 7
    invoke-static {v0, v1}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v0, v0, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v1, Ly0/n;->a:[C

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    move v1, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v3

    .line 36
    :goto_0
    if-nez v1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->c(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "Unable to obtain a request manager for a view without a Context"

    .line 56
    .line 57
    invoke-static {v1, v2}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/bumptech/glide/manager/m;->a(Landroid/content/Context;)Landroid/app/Activity;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->c(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_2
    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    .line 84
    .line 85
    if-eqz v2, :cond_9

    .line 86
    .line 87
    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 88
    .line 89
    iget-object v2, v0, Lcom/bumptech/glide/manager/m;->b:Lq/e;

    .line 90
    .line 91
    invoke-virtual {v2}, Lq/j;->clear()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v5, v2}, Lcom/bumptech/glide/manager/m;->b(Ljava/util/List;Lq/e;)V

    .line 103
    .line 104
    .line 105
    const v5, 0x1020002

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const/4 v6, 0x0

    .line 113
    :goto_1
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-nez v7, :cond_4

    .line 118
    .line 119
    invoke-virtual {v2, p0}, Lq/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 124
    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    instance-of v7, v7, Landroid/view/View;

    .line 133
    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    check-cast p0, Landroid/view/View;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lq/j;->clear()V

    .line 144
    .line 145
    .line 146
    if-eqz v6, :cond_8

    .line 147
    .line 148
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    const-string v1, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 153
    .line 154
    invoke-static {p0, v1}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    if-ne p0, v1, :cond_5

    .line 166
    .line 167
    move v3, v4

    .line 168
    :cond_5
    if-nez v3, :cond_6

    .line 169
    .line 170
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->c(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :cond_6
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    if-eqz p0, :cond_7

    .line 188
    .line 189
    iget-object p0, v0, Lcom/bumptech/glide/manager/m;->c:Lcom/bumptech/glide/manager/g;

    .line 190
    .line 191
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {p0, v1}, Lcom/bumptech/glide/manager/g;->c(Landroidx/fragment/app/FragmentActivity;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    iget-object v7, v0, Lcom/bumptech/glide/manager/m;->d:Lcom/bumptech/glide/manager/k;

    .line 215
    .line 216
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    invoke-virtual/range {v7 .. v12}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/n;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    return-object p0

    .line 229
    :cond_8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/m;->d(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/n;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    return-object p0

    .line 234
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->c(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    .line 1
    invoke-static {}, Ly0/n;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->c:Lh0/e;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ly0/j;->e(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/b;->b:Lg0/b;

    .line 12
    .line 13
    invoke-interface {v0}, Lg0/b;->o()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/b;->e:Lg0/g;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0, v1}, Lg0/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v1
.end method

.method public final onTrimMemory(I)V
    .locals 9

    .line 1
    invoke-static {}, Ly0/n;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    if-ge v4, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    .line 23
    check-cast v5, Lcom/bumptech/glide/n;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v1, p0, Lcom/bumptech/glide/b;->c:Lh0/e;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    const/16 v0, 0xf

    .line 38
    .line 39
    const/16 v2, 0x14

    .line 40
    .line 41
    const/16 v4, 0x28

    .line 42
    .line 43
    if-lt p1, v4, :cond_1

    .line 44
    .line 45
    const-wide/16 v5, 0x0

    .line 46
    .line 47
    invoke-virtual {v1, v5, v6}, Ly0/j;->e(J)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-ge p1, v2, :cond_2

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    :cond_2
    monitor-enter v1

    .line 56
    :try_start_1
    iget-wide v5, v1, Ly0/j;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 57
    .line 58
    monitor-exit v1

    .line 59
    const-wide/16 v7, 0x2

    .line 60
    .line 61
    div-long/2addr v5, v7

    .line 62
    invoke-virtual {v1, v5, v6}, Ly0/j;->e(J)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/b;->b:Lg0/b;

    .line 66
    .line 67
    invoke-interface {v1, p1}, Lg0/b;->k(I)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Lcom/bumptech/glide/b;->e:Lg0/g;

    .line 71
    .line 72
    monitor-enter v5

    .line 73
    if-lt p1, v4, :cond_4

    .line 74
    .line 75
    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 76
    :try_start_3
    invoke-virtual {v5, v3}, Lg0/g;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    .line 78
    .line 79
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p1

    .line 82
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 83
    :try_start_6
    throw p1

    .line 84
    :cond_4
    if-ge p1, v2, :cond_5

    .line 85
    .line 86
    if-ne p1, v0, :cond_6

    .line 87
    .line 88
    :cond_5
    iget p1, v5, Lg0/g;->e:I

    .line 89
    .line 90
    div-int/lit8 p1, p1, 0x2

    .line 91
    .line 92
    invoke-virtual {v5, p1}, Lg0/g;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_2
    monitor-exit v5

    .line 96
    return-void

    .line 97
    :catchall_2
    move-exception p1

    .line 98
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 99
    throw p1

    .line 100
    :catchall_3
    move-exception p1

    .line 101
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 102
    throw p1

    .line 103
    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 104
    throw p1
.end method
