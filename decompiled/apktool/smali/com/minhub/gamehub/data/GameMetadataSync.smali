.class public final Lcom/minhub/gamehub/data/GameMetadataSync;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/GameMetadataSync;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "syncFromDisk",
        "Lcom/minhub/gamehub/data/Game;",
        "game",
        "engineCache",
        "Lcom/minhub/gamehub/data/EngineCache;",
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
        "SMAP\nGameMetadataSync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameMetadataSync.kt\ncom/minhub/gamehub/data/GameMetadataSync\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/data/GameMetadataSync;

.field private static final TAG:Ljava/lang/String; = "GameMetadataSync"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/GameMetadataSync;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/data/GameMetadataSync;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/data/GameMetadataSync;->INSTANCE:Lcom/minhub/gamehub/data/GameMetadataSync;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic syncFromDisk$default(Lcom/minhub/gamehub/data/GameMetadataSync;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/minhub/gamehub/data/GameMetadataSync;->syncFromDisk(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;)Lcom/minhub/gamehub/data/Game;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final syncFromDisk(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "game"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/minhub/gamehub/data/GameMetadataSync;->syncFromDisk$default(Lcom/minhub/gamehub/data/GameMetadataSync;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    move-result-object p1

    return-object p1
.end method

.method public final syncFromDisk(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/EngineCache;)Lcom/minhub/gamehub/data/Game;
    .locals 33
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "game"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_14

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v3}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v5, v2, LS1/b;->a:Ljava/io/File;

    if-nez v5, :cond_2

    :cond_1
    move-object v5, v3

    :cond_2
    if-eqz v2, :cond_4

    .line 5
    iget-object v2, v2, LS1/b;->c:Ljava/io/File;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v4, v2

    goto :goto_4

    .line 6
    :cond_4
    :goto_2
    new-instance v2, Ljava/io/File;

    const-string v6, "gameconfig.txt"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v4

    :goto_3
    if-nez v2, :cond_3

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 8
    invoke-static {v4}, LC1/l0;->b(Ljava/io/File;)LC1/k0;

    move-result-object v2

    goto :goto_5

    :cond_7
    new-instance v2, LC1/k0;

    invoke-direct {v2}, LC1/k0;-><init>()V

    .line 9
    :goto_5
    iget-object v3, v2, LC1/k0;->d:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5, v3}, Lcom/minhub/gamehub/data/EngineCache;->resolve(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    move-result-object v0

    if-nez v0, :cond_9

    .line 10
    :cond_8
    sget-object v0, Lcom/minhub/gamehub/data/EngineDetector;->INSTANCE:Lcom/minhub/gamehub/data/EngineDetector;

    invoke-virtual {v0, v5, v3}, Lcom/minhub/gamehub/data/EngineDetector;->detect(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    move-result-object v0

    .line 11
    :cond_9
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEngine()Lcom/minhub/gamehub/data/GameEngine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_b

    .line 13
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEvidence()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, "none, label/HTML fallback"

    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\': "

    const-string v10, " -> "

    .line 15
    const-string v11, "engine reclassified for \'"

    invoke-static {v11, v6, v9, v7, v10}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 16
    const-string v7, " (evidence="

    const-string v9, ", path="

    .line 17
    invoke-static {v6, v3, v7, v0, v9}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string v6, "GameMetadataSync"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v4, :cond_c

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    move-object v0, v5

    .line 21
    :cond_d
    iget-object v4, v2, LC1/k0;->b:Ljava/lang/String;

    .line 22
    invoke-static {v0, v4}, Lcom/bumptech/glide/c;->I(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 23
    iget-object v6, v2, LC1/k0;->c:Ljava/lang/String;

    .line 24
    invoke-static {v0, v6}, Lcom/bumptech/glide/c;->I(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 25
    iget-object v6, v2, LC1/k0;->a:Ljava/lang/String;

    if-nez v6, :cond_e

    .line 26
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 27
    :cond_e
    iget-object v2, v2, LC1/k0;->e:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 29
    :cond_f
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getAbsolutePath(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_11

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    :goto_6
    move-object v8, v4

    goto :goto_8

    :cond_11
    :goto_7
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getIconPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :goto_8
    if-eqz v0, :cond_13

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    :goto_9
    move-object v9, v0

    goto :goto_b

    :cond_13
    :goto_a
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getBgPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 32
    :goto_b
    sget-object v0, Lcom/minhub/gamehub/data/GamePluginScanner;->INSTANCE:Lcom/minhub/gamehub/data/GamePluginScanner;

    .line 33
    invoke-virtual {v0, v5}, Lcom/minhub/gamehub/data/GamePluginScanner;->scanEnabledPluginNames(Ljava/io/File;)Ljava/util/List;

    move-result-object v4

    .line 34
    invoke-virtual {v0, v4}, Lcom/minhub/gamehub/data/GamePluginScanner;->toPluginsJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    const v31, 0x7fdff11

    const/16 v32, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    move-object v4, v3

    move-object v3, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 35
    invoke-static/range {v1 .. v32}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    move-result-object v0

    return-object v0

    :cond_14
    return-object p1
.end method
