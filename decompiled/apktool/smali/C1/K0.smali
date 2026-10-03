.class public final LC1/K0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:LC1/X1;

.field public final synthetic e:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public constructor <init>(Ljava/io/File;LC1/X1;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, LC1/K0;->c:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, LC1/K0;->d:LC1/X1;

    .line 4
    .line 5
    iput-object p3, p0, LC1/K0;->e:Lcom/minhub/gamehub/data/Game;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 1
    new-instance v0, LC1/K0;

    .line 2
    .line 3
    iget-object v1, p0, LC1/K0;->d:LC1/X1;

    .line 4
    .line 5
    iget-object v2, p0, LC1/K0;->e:Lcom/minhub/gamehub/data/Game;

    .line 6
    .line 7
    iget-object v3, p0, LC1/K0;->c:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2, p2}, LC1/K0;-><init>(Ljava/io/File;LC1/X1;Lcom/minhub/gamehub/data/Game;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, LC1/K0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, LV1/x;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, LC1/K0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, LC1/K0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, LC1/K0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, LC1/K0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LV1/x;

    .line 6
    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v1, LC1/K0;->c:Ljava/io/File;

    .line 14
    .line 15
    iget-object v0, v1, LC1/K0;->d:LC1/X1;

    .line 16
    .line 17
    iget-object v8, v1, LC1/K0;->e:Lcom/minhub/gamehub/data/Game;

    .line 18
    .line 19
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 20
    .line 21
    sget-object v2, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;

    .line 22
    .line 23
    iget-object v4, v0, LC1/X1;->d:Ljava/util/List;

    .line 24
    .line 25
    const/4 v6, 0x4

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->save$default(Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;Ljava/io/File;Ljava/util/List;Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lcom/minhub/gamehub/data/GameMetadataSync;->INSTANCE:Lcom/minhub/gamehub/data/GameMetadataSync;

    .line 32
    .line 33
    new-instance v4, Li1/l;

    .line 34
    .line 35
    invoke-direct {v4}, Li1/l;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, LC1/X1;->d:Ljava/util/List;

    .line 39
    .line 40
    sget-object v5, LC1/X0;->a:Li1/l;

    .line 41
    .line 42
    const-string v5, "configs"

    .line 43
    .line 44
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->enabledPluginNames(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v4, v0}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "toJson(...)"

    .line 56
    .line 57
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const v34, 0x7fdffff

    .line 61
    .line 62
    .line 63
    const/16 v35, 0x0

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    move-object v4, v8

    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v10, 0x0

    .line 72
    const/4 v11, 0x0

    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    const/4 v14, 0x0

    .line 76
    const/4 v15, 0x0

    .line 77
    const/16 v16, 0x0

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    const-wide/16 v18, 0x0

    .line 82
    .line 83
    const/16 v20, 0x0

    .line 84
    .line 85
    const/16 v21, 0x0

    .line 86
    .line 87
    const/16 v22, 0x0

    .line 88
    .line 89
    const/16 v24, 0x0

    .line 90
    .line 91
    const/16 v25, 0x0

    .line 92
    .line 93
    const/16 v26, 0x0

    .line 94
    .line 95
    const/16 v27, 0x0

    .line 96
    .line 97
    const/16 v28, 0x0

    .line 98
    .line 99
    const-wide/16 v29, 0x0

    .line 100
    .line 101
    const/16 v31, 0x0

    .line 102
    .line 103
    const/16 v32, 0x0

    .line 104
    .line 105
    const/16 v33, 0x0

    .line 106
    .line 107
    move-object/from16 v23, v0

    .line 108
    .line 109
    invoke-static/range {v4 .. v35}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const/4 v2, 0x2

    .line 114
    const/4 v4, 0x0

    .line 115
    invoke-static {v3, v0, v4, v2, v4}, Lcom/minhub/gamehub/data/GameMetadataSync;->syncFromDisk$default(Lcom/minhub/gamehub/data/GameMetadataSync;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 126
    .line 127
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method
