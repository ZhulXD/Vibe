.class public final synthetic Ly1/W1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/game/VxAceGameActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/VxAceGameActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly1/W1;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ly1/W1;->c:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Ly1/W1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly1/W1;->c:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->updateStoredSaveCount$app_release()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Ly1/W1;->c:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/minhub/gamehub/game/VxAceGameActivity;->a(Lcom/minhub/gamehub/game/VxAceGameActivity;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Ly1/W1;->c:Lcom/minhub/gamehub/game/VxAceGameActivity;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v4, "vxace_autofix_cache.json"

    .line 28
    .line 29
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v3, Li1/l;

    .line 40
    .line 41
    invoke-direct {v3}, Li1/l;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-class v4, Ly1/X1;

    .line 49
    .line 50
    invoke-virtual {v3, v2, v4}, Li1/l;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ly1/X1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    :goto_0
    move-object v2, v1

    .line 58
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    iget-wide v5, v2, Ly1/X1;->a:J

    .line 65
    .line 66
    sub-long v5, v3, v5

    .line 67
    .line 68
    const-wide/32 v7, 0x5265c00

    .line 69
    .line 70
    .line 71
    cmp-long v2, v5, v7

    .line 72
    .line 73
    if-gez v2, :cond_1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    new-instance v2, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;

    .line 79
    .line 80
    const/4 v5, 0x3

    .line 81
    invoke-direct {v2, v1, v1, v5, v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;-><init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "vxace"

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogRepository;->fetchRaw(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Ly1/X1;

    .line 91
    .line 92
    invoke-direct {v2, v1, v3, v4}, Ly1/X1;-><init>(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v3, "vxace_autofix_cache.json"

    .line 102
    .line 103
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Li1/l;

    .line 107
    .line 108
    invoke-direct {v0}, Li1/l;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "toJson(...)"

    .line 116
    .line 117
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catch_2
    move-exception v0

    .line 125
    :try_start_3
    const-string v1, "VxAceAutoFixCache"

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v2, "writeCache failed: "

    .line 132
    .line 133
    invoke-static {v2, v0, v1}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v1, "refreshAsync failed: "

    .line 142
    .line 143
    const-string v2, "VxAceAutoFixCache"

    .line 144
    .line 145
    invoke-static {v1, v0, v2}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_3
    return-void

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
