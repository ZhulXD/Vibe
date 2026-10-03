.class public final Lcom/minhub/gamehub/data/EngineCache;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/data/EngineCache$Companion;,
        Lcom/minhub/gamehub/data/EngineCache$Entry;,
        Lcom/minhub/gamehub/data/EngineCache$ProcessHandleId;,
        Lcom/minhub/gamehub/data/EngineCache$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 22\u00020\u0001:\u0003342B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J!\u0010#\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000!\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010%R\u0014\u0010\'\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0014\u0010)\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R \u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00100\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101\u00a8\u00065"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/EngineCache;",
        "",
        "Ljava/io/File;",
        "store",
        "<init>",
        "(Ljava/io/File;)V",
        "",
        "",
        "Lcom/minhub/gamehub/data/EngineCache$Entry;",
        "loadEntries",
        "()Ljava/util/Map;",
        "root",
        "keyOf",
        "(Ljava/io/File;)Ljava/lang/String;",
        "key",
        "Lcom/minhub/gamehub/data/EngineDetector$Result;",
        "cachedHit",
        "(Ljava/lang/String;Ljava/io/File;)Lcom/minhub/gamehub/data/EngineDetector$Result;",
        "Lcom/minhub/gamehub/data/GameEngine;",
        "engine",
        "evidence",
        "",
        "stillProves",
        "(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Z",
        "",
        "persist",
        "()V",
        "writeStore",
        "configuredLabel",
        "resolve",
        "(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;",
        "forget",
        "T",
        "Lkotlin/Function0;",
        "body",
        "withBatch",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "Ljava/io/File;",
        "Li1/l;",
        "gson",
        "Li1/l;",
        "lock",
        "Ljava/lang/Object;",
        "entries",
        "Ljava/util/Map;",
        "",
        "batchDepth",
        "I",
        "pendingWrite",
        "Z",
        "Companion",
        "Entry",
        "ProcessHandleId",
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
        "SMAP\nEngineCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineCache.kt\ncom/minhub/gamehub/data/EngineCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/minhub/gamehub/data/EngineCache$Companion;

.field public static final FILE_NAME:Ljava/lang/String; = "engine-cache.json"

.field private static final MAX_BYTES:J = 0x100000L

.field private static final SCRIPT_VERSION:Ljava/lang/String; = "script_version.txt"


# instance fields
.field private batchDepth:I

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/minhub/gamehub/data/EngineCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Li1/l;

.field private final lock:Ljava/lang/Object;

.field private pendingWrite:Z

.field private final store:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/EngineCache$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/data/EngineCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/minhub/gamehub/data/EngineCache;->Companion:Lcom/minhub/gamehub/data/EngineCache$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    const-string v0, "store"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 10
    .line 11
    new-instance p1, Li1/l;

    .line 12
    .line 13
    invoke-direct {p1}, Li1/l;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/minhub/gamehub/data/EngineCache;->gson:Li1/l;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/minhub/gamehub/data/EngineCache;->lock:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->loadEntries()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/data/EngineCache;->loadEntries$lambda$1(Ljava/util/Map$Entry;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final cachedHit(Ljava/lang/String;Ljava/io/File;)Lcom/minhub/gamehub/data/EngineDetector$Result;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/minhub/gamehub/data/EngineCache$Entry;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    :goto_0
    move-object p1, v0

    .line 15
    goto :goto_4

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/EngineCache$Entry;->getEngine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    :try_start_1
    invoke-static {v2}, Lcom/minhub/gamehub/data/GameEngine;->valueOf(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception v2

    .line 32
    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_1
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    move-object v2, v0

    .line 49
    :cond_1
    check-cast v2, Lcom/minhub/gamehub/data/GameEngine;

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    goto :goto_5

    .line 54
    :cond_2
    move-object v2, v0

    .line 55
    :goto_2
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/EngineCache$Entry;->getEvidence()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-direct {p0, p2, v2, v1}, Lcom/minhub/gamehub/data/EngineCache;->stillProves(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-nez p2, :cond_3

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    new-instance p1, Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 71
    .line 72
    invoke-direct {p1, v2, v1}, Lcom/minhub/gamehub/data/EngineDetector$Result;-><init>(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 77
    .line 78
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->persist()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    goto :goto_6

    .line 90
    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    .line 92
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_5
    move-object v0, p1

    .line 108
    :goto_7
    check-cast v0, Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 109
    .line 110
    return-object v0
.end method

.method private final keyOf(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_1
    const-string p1, "getOrElse(...)"

    .line 35
    .line 36
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    return-object v0
.end method

.method private final loadEntries()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/minhub/gamehub/data/EngineCache$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    const-wide/32 v3, 0x100000

    .line 19
    .line 20
    .line 21
    cmp-long v1, v1, v3

    .line 22
    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Lcom/minhub/gamehub/data/EngineCache$loadEntries$loaded$1$type$1;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/minhub/gamehub/data/EngineCache$loadEntries$loaded$1$type$1;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/minhub/gamehub/data/EngineCache;->gson:Li1/l;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 38
    .line 39
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-static {v3, v4}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v3, v1}, Li1/l;->b(Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/util/Map;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    goto :goto_2

    .line 61
    :cond_1
    :goto_0
    move-object v1, v0

    .line 62
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    goto :goto_3

    .line 67
    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_2
    move-object v0, v1

    .line 85
    :goto_4
    check-cast v0, Ljava/util/Map;

    .line 86
    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, LL1/d;

    .line 100
    .line 101
    const/16 v3, 0xd

    .line 102
    .line 103
    invoke-direct {v2, v3}, LL1/d;-><init>(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->w(Ljava/util/Set;LL1/d;)V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method private static final loadEntries$lambda$1(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 1
    const-string v0, "<destruct>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/minhub/gamehub/data/EngineCache$Entry;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/EngineCache$Entry;->getEngine()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/EngineCache$Entry;->getEvidence()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return p0

    .line 31
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 32
    return p0
.end method

.method private final persist()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/minhub/gamehub/data/EngineCache;->pendingWrite:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->writeStore()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final stillProves(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v0, Lcom/minhub/gamehub/data/EngineCache$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aget v0, v0, v1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v0, v3, :cond_3

    .line 25
    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "script_version.txt"

    .line 33
    .line 34
    invoke-static {p3, v0}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_4

    .line 39
    .line 40
    invoke-static {p1}, Lcom/minhub/gamehub/data/RenpyEngineDetectionKt;->renpyScriptVersionEvidence(Ljava/io/File;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    move-object v2, p1

    .line 51
    check-cast v2, Lcom/minhub/gamehub/data/GameEngine;

    .line 52
    .line 53
    :cond_2
    if-ne v2, p2, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget-object p2, Lcom/minhub/gamehub/data/EngineDetector;->INSTANCE:Lcom/minhub/gamehub/data/EngineDetector;

    .line 57
    .line 58
    invoke-static {p2, p1, v2, v1, v2}, Lcom/minhub/gamehub/data/EngineDetector;->detect$default(Lcom/minhub/gamehub/data/EngineDetector;Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEngine()Lcom/minhub/gamehub/data/GameEngine;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;

    .line 67
    .line 68
    if-ne p1, p2, :cond_5

    .line 69
    .line 70
    :cond_4
    :goto_0
    return v3

    .line 71
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 72
    return p1
.end method

.method private final writeStore()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/minhub/gamehub/data/EngineCache$ProcessHandleId;->INSTANCE:Lcom/minhub/gamehub/data/EngineCache$ProcessHandleId;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/EngineCache$ProcessHandleId;->current()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "."

    .line 30
    .line 31
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ".tmp"

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->gson:Li1/l;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "toJson(...)"

    .line 74
    .line 75
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    invoke-static {v0, v1, v2}, Lkotlin/io/FilesKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_1

    .line 90
    .line 91
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->store:Ljava/io/File;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 99
    .line 100
    .line 101
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    .line 103
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :goto_1
    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 114
    .line 115
    .line 116
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catchall_1
    move-exception v0

    .line 129
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 130
    .line 131
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :goto_3
    return-void

    .line 139
    :catchall_2
    move-exception v1

    .line 140
    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :catchall_3
    move-exception v0

    .line 155
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 156
    .line 157
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :goto_4
    throw v1
.end method


# virtual methods
.method public final forget(Ljava/io/File;)V
    .locals 2

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/data/EngineCache;->keyOf(Ljava/io/File;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/minhub/gamehub/data/EngineCache;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->persist()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    throw p1
.end method

.method public final resolve(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;
    .locals 5

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/data/EngineCache;->keyOf(Ljava/io/File;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/minhub/gamehub/data/EngineCache;->cachedHit(Ljava/lang/String;Ljava/io/File;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 14
    .line 15
    .line 16
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return-object v2

    .line 21
    :cond_0
    :try_start_1
    sget-object v2, Lcom/minhub/gamehub/data/EngineDetector;->INSTANCE:Lcom/minhub/gamehub/data/EngineDetector;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Lcom/minhub/gamehub/data/EngineDetector;->detect(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEvidence()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 34
    .line 35
    new-instance v3, Lcom/minhub/gamehub/data/EngineCache$Entry;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEngine()Lcom/minhub/gamehub/data/GameEngine;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-direct {v3, v4, p2}, Lcom/minhub/gamehub/data/EngineCache$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->persist()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object p2, p0, Lcom/minhub/gamehub/data/EngineCache;->entries:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->persist()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    monitor-exit v1

    .line 69
    return-object p1

    .line 70
    :goto_1
    monitor-exit v1

    .line 71
    throw p1
.end method

.method public final withBatch(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "body"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/EngineCache;->lock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget v1, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput v1, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->lock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_2
    iget v2, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 25
    .line 26
    add-int/lit8 v2, v2, -0x1

    .line 27
    .line 28
    iput v2, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 29
    .line 30
    if-gtz v2, :cond_0

    .line 31
    .line 32
    iput v0, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/minhub/gamehub/data/EngineCache;->pendingWrite:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/minhub/gamehub/data/EngineCache;->pendingWrite:Z

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->writeStore()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-object p1

    .line 50
    :goto_1
    monitor-exit v1

    .line 51
    throw p1

    .line 52
    :catchall_1
    move-exception p1

    .line 53
    iget-object v1, p0, Lcom/minhub/gamehub/data/EngineCache;->lock:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_3
    iget v2, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 57
    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    iput v2, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 61
    .line 62
    iget v2, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 63
    .line 64
    if-gtz v2, :cond_1

    .line 65
    .line 66
    iput v0, p0, Lcom/minhub/gamehub/data/EngineCache;->batchDepth:I

    .line 67
    .line 68
    iget-boolean v2, p0, Lcom/minhub/gamehub/data/EngineCache;->pendingWrite:Z

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iput-boolean v0, p0, Lcom/minhub/gamehub/data/EngineCache;->pendingWrite:Z

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/minhub/gamehub/data/EngineCache;->writeStore()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_2
    move-exception p1

    .line 79
    goto :goto_3

    .line 80
    :cond_1
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 81
    .line 82
    monitor-exit v1

    .line 83
    throw p1

    .line 84
    :goto_3
    monitor-exit v1

    .line 85
    throw p1

    .line 86
    :catchall_3
    move-exception p1

    .line 87
    monitor-exit v0

    .line 88
    throw p1
.end method
