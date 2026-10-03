.class public final Lcom/minhub/gamehub/game/GameActivity;
.super LS1/c;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/minhub/gamehub/game/GameActivity;",
        "LS1/c;",
        "<init>",
        "()V",
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
        "SMAP\nGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameActivity.kt\ncom/minhub/gamehub/game/GameActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1659:1\n75#2,13:1660\n1#3:1673\n295#4,2:1674\n*S KotlinDebug\n*F\n+ 1 GameActivity.kt\ncom/minhub/gamehub/game/GameActivity\n*L\n95#1:1660,13\n168#1:1674,2\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic L:I


# instance fields
.field public A:Ljava/util/List;

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:I

.field public H:LA1/v0;

.field public I:Ljava/io/File;

.field public J:I

.field public final K:I

.field public e:Lw1/d;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/animation/AnimatorSet;

.field public i:Landroid/animation/AnimatorSet;

.field public j:Landroid/animation/AnimatorSet;

.field public final k:Landroidx/lifecycle/ViewModelLazy;

.field public l:Z

.field public m:Ly1/t1;

.field public volatile n:LQ1/d;

.field public o:Lcom/minhub/gamehub/data/Game;

.field public p:J

.field public q:Ly1/d0;

.field public r:Ly1/o1;

.field public s:Z

.field public t:Z

.field public u:Ly1/j1;

.field public v:Lj/h;

.field public w:LN1/w;

.field public x:Lcom/minhub/gamehub/data/SaveRepository;

.field public y:LC1/g2;

.field public z:LB1/z;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, LS1/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly1/O;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ly1/O;-><init>(Lcom/minhub/gamehub/game/GameActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, LC1/Z0;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Ly1/P;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct {v3, p0, v4}, Ly1/P;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Ly1/P;

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-direct {v4, p0, v5}, Ly1/P;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/minhub/gamehub/game/GameActivity;->k:Landroidx/lifecycle/ViewModelLazy;

    .line 33
    .line 34
    new-instance v0, Ly1/d0;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1, v1}, Ly1/d0;-><init>(ZZ)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->q:Ly1/d0;

    .line 41
    .line 42
    new-instance v0, Ly1/o1;

    .line 43
    .line 44
    invoke-direct {v0}, Ly1/o1;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->A:Ljava/util/List;

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    iput v0, p0, Lcom/minhub/gamehub/game/GameActivity;->G:I

    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    iput v0, p0, Lcom/minhub/gamehub/game/GameActivity;->K:I

    .line 61
    .line 62
    return-void
.end method

.method public static final p(Ljava/io/File;Ly1/p0;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Lcom/minhub/gamehub/data/Game;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p2, Lcom/minhub/gamehub/game/GameActivity;->p:J

    .line 13
    .line 14
    cmp-long p2, v2, v4

    .line 15
    .line 16
    if-ltz p2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p0, v1

    .line 20
    :goto_0
    if-eqz p0, :cond_2

    .line 21
    .line 22
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    move-object p0, v1

    .line 51
    :cond_1
    check-cast p0, [B

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object p0, v1

    .line 55
    :goto_2
    if-eqz p0, :cond_3

    .line 56
    .line 57
    invoke-static {p4}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const/16 p4, 0x3e6

    .line 66
    .line 67
    invoke-static {p3, p2, p4, v1, p0}, Lcom/minhub/gamehub/game/GameActivity;->s(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_3
    invoke-virtual {p1, v1}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static final q(IJLandroid/os/Handler;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ly1/p0;)V
    .locals 11

    .line 1
    move-object/from16 v9, p8

    .line 2
    .line 3
    move-object/from16 v10, p9

    .line 4
    .line 5
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual/range {p6 .. p6}, Ljava/io/File;->lastModified()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/16 v2, 0x3e8

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    sub-long v2, p1, v2

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-ltz v0, :cond_2

    .line 23
    .line 24
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 25
    .line 26
    invoke-static/range {p6 .. p6}, Lkotlin/io/FilesKt;->readBytes(Ljava/io/File;)[B

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    move-object p0, p2

    .line 55
    :cond_0
    check-cast p0, [B

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-static {p4}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const/16 p3, 0x3e6

    .line 68
    .line 69
    invoke-static {v9, p1, p3, p2, p0}, Lcom/minhub/gamehub/game/GameActivity;->s(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    :cond_1
    invoke-virtual {v10, p2}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    const/16 v0, 0x8

    .line 78
    .line 79
    move-object/from16 v6, p5

    .line 80
    .line 81
    move-object/from16 v8, p7

    .line 82
    .line 83
    if-lt p0, v0, :cond_3

    .line 84
    .line 85
    invoke-static {v8, v10, v6, v9, p4}, Lcom/minhub/gamehub/game/GameActivity;->p(Ljava/io/File;Ly1/p0;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Lcom/minhub/gamehub/data/Game;)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    new-instance v0, Ly1/H;

    .line 90
    .line 91
    move v1, p0

    .line 92
    move-wide v2, p1

    .line 93
    move-object v4, p3

    .line 94
    move-object v5, p4

    .line 95
    move-object/from16 v7, p6

    .line 96
    .line 97
    invoke-direct/range {v0 .. v10}, Ly1/H;-><init>(IJLandroid/os/Handler;Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/game/GameActivity;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ly1/p0;)V

    .line 98
    .line 99
    .line 100
    const-wide/16 p0, 0x1f4

    .line 101
    .line 102
    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static final r(ILandroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Ly1/p0;)V
    .locals 9

    .line 1
    const-string v0, "tyrano_save"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string p1, "getBytes(...)"

    .line 29
    .line 30
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "bug-save.json"

    .line 34
    .line 35
    const-string p2, "TYRANO"

    .line 36
    .line 37
    invoke-static {p1, p2, v1, p3, p0}, Lcom/minhub/gamehub/game/GameActivity;->s(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p4, p0}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 46
    .line 47
    if-lt p0, v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p4, v2}, Ly1/p0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance v3, Ly1/J;

    .line 54
    .line 55
    move v4, p0

    .line 56
    move-object v5, p1

    .line 57
    move-object v6, p2

    .line 58
    move-object v7, p3

    .line 59
    move-object v8, p4

    .line 60
    invoke-direct/range {v3 .. v8}, Ly1/J;-><init>(ILandroid/os/Handler;Lcom/minhub/gamehub/game/GameActivity;Ljava/lang/String;Ly1/p0;)V

    .line 61
    .line 62
    .line 63
    const-wide/16 p0, 0x1f4

    .line 64
    .line 65
    invoke-virtual {v5, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final s(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lorg/json/JSONObject;
    .locals 2

    .line 1
    array-length v0, p4

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    array-length v0, p4

    .line 6
    const/high16 v1, 0x80000

    .line 7
    .line 8
    if-le v0, v1, :cond_1

    .line 9
    .line 10
    :goto_0
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "engine"

    .line 18
    .line 19
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string p1, "fileName"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string p0, "slot"

    .line 28
    .line 29
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    if-eqz p3, :cond_2

    .line 33
    .line 34
    const-string p0, "key"

    .line 35
    .line 36
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    :cond_2
    const/4 p0, 0x2

    .line 40
    invoke-static {p4, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "dataBase64"

    .line 45
    .line 46
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static z(Z)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string p0, "true"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "false"

    .line 7
    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "\n            (function(){\n              var ON = "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, ";\n              // C\u1edd TO\u00c0N C\u1ee4C \u0111\u1ecdc \u0111\u01b0\u1ee3c t\u1eeb ngo\u00e0i (window.__mhFx.on) \u0111\u1ec3 b\u1ea3n v\u00e1 OTA \"plugin v\u00e1\n              // lag\" c\u0169ng gate theo c\u00f9ng toggle n\u00e0y \u2014 xem otaOverrideScript / bundle OTA.\n              if (!window.__mhFx) {\n                window.__mhFx = { on:false, set:function(v){ this.on = !!v; } };\n              }\n              var FX = window.__mhFx;\n              if (window.__mhFxHooked) { FX.set(ON); return; }\n              window.__mhFxHooked = true;\n              function once(o,k){ if(!o||o[\'__mhfx_\'+k]) return false; o[\'__mhfx_\'+k]=true; return true; }\n\n              function patchDur(K){\n                if (!K || typeof K.prototype.setupDuration!==\'function\' || !once(K.prototype,\'dur\')) return;\n                var o = K.prototype.setupDuration;\n                K.prototype.setupDuration = function(){ o.call(this); if (FX.on) this._duration = 1; };\n              }\n              patchDur(window.Sprite_Animation);\n              patchDur(window.Sprite_AnimationMV);\n\n              if (window.Sprite_Animation && typeof Sprite_Animation.prototype.updateEffectGeometry===\'function\' && once(Sprite_Animation.prototype,\'mz\')){\n                var u = Sprite_Animation.prototype.update;\n                Sprite_Animation.prototype.update = function(){\n                  u.call(this);\n                  if (FX.on && this._handle && this._handle.setSpeed && !this.__mhSped){ this.__mhSped = true; try{ this._handle.setSpeed(8); }catch(e){} }\n                };\n              }\n\n              if (window.Game_Screen && once(Game_Screen.prototype,\'flash\')){\n                var sf = Game_Screen.prototype.startFlash;\n                Game_Screen.prototype.startFlash = function(c,d){ if (FX.on) return; sf.call(this,c,d); };\n              }\n\n              if (window.Scene_Base && once(Scene_Base.prototype,\'fade\')){\n                [\'startFadeIn\',\'startFadeOut\'].forEach(function(m){\n                  var o = Scene_Base.prototype[m];\n                  if (typeof o!==\'function\') return;\n                  Scene_Base.prototype[m] = function(dur,white){ o.call(this, FX.on ? 1 : dur, white); };\n                });\n              }\n\n              if (window.Scene_Map && typeof Scene_Map.prototype.updateEncounterEffect===\'function\' && once(Scene_Map.prototype,\'enc\')){\n                var e = Scene_Map.prototype.updateEncounterEffect;\n                Scene_Map.prototype.updateEncounterEffect = function(){\n                  if (FX.on && this._encounterEffectDuration > 1) this._encounterEffectDuration = 1;\n                  e.call(this);\n                };\n              }\n\n              // Plugin Foreground.js (Sasuke Kannazuki): \u1ea9n l\u1edbp kh\u00f3i/s\u01b0\u01a1ng foreground\n              // cu\u1ed9n (<fgName:...>) khi b\u1eadt. Baked-in cho 2 plugin \u0111\u00e3 bi\u1ebft; plugin M\u1edaI\n              // v\u1ec1 sau \u0111\u1ea9y qua OTA bundle (c\u00f9ng gate FX.on).\n              if (window.Spriteset_Map && typeof Spriteset_Map.prototype.updateForeground===\'function\' && once(Spriteset_Map.prototype,\'fg\')){\n                var ufg = Spriteset_Map.prototype.updateForeground;\n                Spriteset_Map.prototype.updateForeground = function(){\n                  ufg.call(this);\n                  if (this._foreground) this._foreground.visible = !FX.on;\n                };\n              }\n\n              // Plugin ParallaxLayerMap.js (triacontane): \u1ea9n l\u1edbp parallax ph\u1ee5 khi b\u1eadt.\n              if (window.Sprite_MapLayer && typeof Sprite_MapLayer.prototype.updateVisibility===\'function\' && once(Sprite_MapLayer.prototype,\'plm\')){\n                var uvl = Sprite_MapLayer.prototype.updateVisibility;\n                Sprite_MapLayer.prototype.updateVisibility = function(){\n                  uvl.call(this);\n                  if (FX.on) this.visible = false;\n                };\n              }\n\n              // Plugin TerraxLighting.js: a full-screen black lightmask (with radial gradient\n              // \"holes\" for lights) is BLENDED over the whole map every frame. On LDPlayer\'s\n              // emulated GPU (GLESv2_enc) this full-screen alpha blend is a major overdraw cost\n              // \u2014 throttling the redraw isn\'t enough, the layer must not be DRAWN at all. The\n              // mask is private (plugin IIFE) but its instance is spriteset._lightmask: hide it\n              // (kills the overdraw \u2192 fully-lit map) AND skip its per-frame recompute when\n              // reduce-FX is on. Restored on toggle off.\n              if (window.Spriteset_Map && typeof Spriteset_Map.prototype.update===\'function\' && once(Spriteset_Map.prototype,\'terrax\')){\n                var _ssu = Spriteset_Map.prototype.update;\n                Spriteset_Map.prototype.update = function(){\n                  var lm = this._lightmask;\n                  if (lm){\n                    lm.visible = !FX.on;\n                    if (typeof lm.update===\'function\' && !lm.__mhThrottled){\n                      lm.__mhThrottled = true;\n                      var _lmu = lm.update;\n                      lm.update = function(){ if (FX.on) return; _lmu.call(this); };\n                    }\n                  }\n                  _ssu.call(this);\n                };\n              }\n\n              // Plugin MOG_CharacterMotion.js: per-frame visual effects (breathing/swing/\n              // float/shake/ghost) applied to EVERY character sprite. Purely cosmetic \u2014 skip\n              // when reduce-FX is on. Base Sprite_Character.update still runs (sprites render).\n              if (window.Sprite_Character && typeof Sprite_Character.prototype.updateSprEffect===\'function\' && once(Sprite_Character.prototype,\'mogcm\')){\n                var _use = Sprite_Character.prototype.updateSprEffect;\n                Sprite_Character.prototype.updateSprEffect = function(){\n                  if (FX.on) return;\n                  return _use.apply(this, arguments);\n                };\n              }\n\n              // Plugin BMSP_MapFog.js: scrolling fog TilingSprites. Hide the fog containers +\n              // skip the per-frame scroll/texture work when reduce-FX is on.\n              if (window.Game_Map && typeof Game_Map.prototype.updateFogs===\'function\' && once(Game_Map.prototype,\'bmspfog\')){\n                var _gmf = Game_Map.prototype.updateFogs;\n                Game_Map.prototype.updateFogs = function(){ if (FX.on) return; return _gmf.apply(this, arguments); };\n              }\n              if (window.Spriteset_Map && typeof Spriteset_Map.prototype.updateFogs===\'function\' && once(Spriteset_Map.prototype,\'bmspfogspr\')){\n                var _smf = Spriteset_Map.prototype.updateFogs;\n                Spriteset_Map.prototype.updateFogs = function(){\n                  if (this._fogContainer){ for (var z=0; z<this._fogContainer.length; z++){ if (this._fogContainer[z]) this._fogContainer[z].visible = !FX.on; } }\n                  if (FX.on) return;\n                  return _smf.apply(this, arguments);\n                };\n              }\n\n              // Weather (native MV Weather class, used by BOTH map Spriteset_Map._weather and \u2014\n              // via KZR_WeatherControl \u2014 battle Spriteset_Battle._weather). Rain/snow/blizzard\n              // spawn dozens of particle sprites updated + drawn every frame: very heavy on the\n              // emulator. When reduce-FX is on, hide the weather layer (skips GPU draw) and skip\n              // its per-frame particle work entirely; restore on toggle off.\n              if (window.Weather && typeof Weather.prototype.update===\'function\' && once(Weather.prototype,\'weather\')){\n                var _wu = Weather.prototype.update;\n                Weather.prototype.update = function(){\n                  if (FX.on){ this.visible = false; return; }\n                  this.visible = true;\n                  return _wu.apply(this, arguments);\n                };\n                try { window.MinHub && window.MinHub.log && window.MinHub.log(\'[ReduceFx] Weather hook installed\'); } catch(e){}\n              }\n\n              // Plugins BattlebackScroll.js / BattlebackScroll2.js: continuously scroll the\n              // battleback1/2 images (the drifting clouds/fog over the battle background) by\n              // advancing _backNSprite.origin every frame. Freeze that scroll when reduce-FX is\n              // on \u2014 capture the origin before the (plugin-wrapped) updateBattleback runs and\n              // restore it after, so the clouds stop moving without shifting their position.\n              if (window.Spriteset_Battle && typeof Spriteset_Battle.prototype.updateBattleback===\'function\' && once(Spriteset_Battle.prototype,\'bbscroll\')){\n                var _ub = Spriteset_Battle.prototype.updateBattleback;\n                Spriteset_Battle.prototype.updateBattleback = function(){\n                  if (!FX.on) return _ub.apply(this, arguments);\n                  var b1 = this._back1Sprite, b2 = this._back2Sprite;\n                  var x1 = b1 && b1.origin && b1.origin.x, y1 = b1 && b1.origin && b1.origin.y;\n                  var x2 = b2 && b2.origin && b2.origin.x, y2 = b2 && b2.origin && b2.origin.y;\n                  var r = _ub.apply(this, arguments);\n                  if (b1 && b1.origin){ b1.origin.x = x1; b1.origin.y = y1; }\n                  if (b2 && b2.origin){ b2.origin.x = x2; b2.origin.y = y2; }\n                  return r;\n                };\n              }\n\n              // Plugin BattleSplashFade.js: replaces the battle-start fade with a \"splash\" that\n              // shatters the screen snapshot into many flying pieces (makeBreakSprites) \u2014 a big\n              // sprite burst that lags hard exactly at combat start. It overrides Scene_Battle\n              // start/updateFade; when reduce-FX is on, route those through the engine\'s plain\n              // Scene_Base fade instead so no shatter pieces are ever created.\n              if (window.Scene_Battle && window.Scene_Base && once(Scene_Battle.prototype,\'splash\')){\n                [\'startFadeIn\',\'startFadeOut\',\'updateFade\'].forEach(function(m){\n                  var _o = Scene_Battle.prototype[m];\n                  var _base = Scene_Base.prototype[m];\n                  if (typeof _o!==\'function\' || typeof _base!==\'function\') return;\n                  Scene_Battle.prototype[m] = function(){\n                    if (FX.on) return _base.apply(this, arguments);\n                    return _o.apply(this, arguments);\n                  };\n                });\n              }\n\n              // Plugins MOG_TitleParticles.js / MOG_TitleLayers.js: animated particles + moving\n              // background layers on the title screen. Freeze their per-frame animation when\n              // reduce-FX is on (the title art stays, just stops animating/burning CPU+GPU).\n              if (window.TitleParticles && typeof TitleParticles.prototype.update===\'function\' && once(TitleParticles.prototype,\'titlep\')){\n                var _tp = TitleParticles.prototype.update;\n                TitleParticles.prototype.update = function(){ if (FX.on) return; return _tp.apply(this, arguments); };\n              }\n              if (window.TitleBackground && typeof TitleBackground.prototype.update===\'function\' && once(TitleBackground.prototype,\'titlebg\')){\n                var _tb = TitleBackground.prototype.update;\n                TitleBackground.prototype.update = function(){ if (FX.on) return; return _tb.apply(this, arguments); };\n              }\n\n              // Confirmation log so we can verify in logcat which heavy hooks were wired and the\n              // current toggle state.\n              try {\n                window.MinHub && window.MinHub.log && window.MinHub.log(\'[ReduceFx] applied ON=\' + ON +\n                  \' weather=\' + (typeof (window.Weather && Weather.prototype.update) === \'function\') +\n                  \' terrax=\' + !!(window.Spriteset_Map) +\n                  \' mogcm=\' + (typeof (window.Sprite_Character && Sprite_Character.prototype.updateSprEffect) === \'function\') +\n                  \' fog=\' + (typeof (window.Game_Map && Game_Map.prototype.updateFogs) === \'function\') +\n                  \' splash=\' + !!(window.Scene_Battle && window.Scene_Base) +\n                  \' titleP=\' + (typeof (window.TitleParticles && TitleParticles.prototype.update) === \'function\') +\n                  \' titleBg=\' + (typeof (window.TitleBackground && TitleBackground.prototype.update) === \'function\'));\n              } catch(e){}\n\n              FX.set(ON);\n            })();\n        "

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final A(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "MinHub"

    .line 2
    .line 3
    const-string v1, "is_pending"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const/16 v5, 0x1d

    .line 13
    .line 14
    const/16 v6, 0x64

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    const-string v8, "image/png"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    if-lt v4, v5, :cond_2

    .line 21
    .line 22
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    .line 23
    .line 24
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v5, "_display_name"

    .line 28
    .line 29
    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p2, "mime_type"

    .line 33
    .line 34
    invoke-virtual {v4, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "relative_path"

    .line 38
    .line 39
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, "/MinHub"

    .line 50
    .line 51
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, p2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v4, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    .line 67
    .line 68
    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 69
    .line 70
    invoke-virtual {v2, p2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-nez p2, :cond_0

    .line 75
    .line 76
    return v3

    .line 77
    :cond_0
    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 78
    .line 79
    .line 80
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v5, :cond_1

    .line 82
    .line 83
    :try_start_2
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 84
    .line 85
    invoke-virtual {p1, v8, v6, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    .line 87
    .line 88
    :try_start_3
    invoke-static {v5, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 96
    :catchall_2
    move-exception p2

    .line 97
    :try_start_5
    invoke-static {v5, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p2

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v4, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p2, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 116
    .line 117
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_3

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 133
    .line 134
    .line 135
    :cond_3
    new-instance v2, Ljava/io/File;

    .line 136
    .line 137
    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance p2, Ljava/io/FileOutputStream;

    .line 141
    .line 142
    invoke-direct {p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    .line 144
    .line 145
    :try_start_6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 146
    .line 147
    invoke-virtual {p1, v1, v6, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 148
    .line 149
    .line 150
    :try_start_7
    invoke-static {p2, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    filled-new-array {p1}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    filled-new-array {v8}, [Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-static {p0, p1, p2, v9}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 166
    .line 167
    .line 168
    :goto_1
    return v7

    .line 169
    :catchall_3
    move-exception p1

    .line 170
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 171
    :catchall_4
    move-exception v1

    .line 172
    :try_start_9
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 176
    :goto_2
    const-string p2, "saveBitmap failed"

    .line 177
    .line 178
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .line 180
    .line 181
    return v3
.end method

.method public final B(Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {p0}, LS1/d;->g(Lcom/minhub/gamehub/game/GameActivity;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "<this>"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "v"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "minhub_prefs"

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "resolution"

    .line 34
    .line 35
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->F()V

    .line 43
    .line 44
    .line 45
    const-string v0, "device-width"

    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const-string v2, "1280x720"

    .line 52
    .line 53
    const-string v3, "960x540"

    .line 54
    .line 55
    const-string v4, "1920x1080"

    .line 56
    .line 57
    const v5, 0x2fce7329

    .line 58
    .line 59
    .line 60
    const v6, 0x2644a52c

    .line 61
    .line 62
    .line 63
    const v7, -0x6683aa6a

    .line 64
    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 74
    .line 75
    const-string v9, "(function(){\n  var vp = document.querySelector(\'meta[name=\"viewport\"]\');\n  var content = \'width=device-width, initial-scale=1.0, minimum-scale=0.1, maximum-scale=10\';\n  if (vp) { vp.setAttribute(\'content\', content); }\n  else {\n    vp = document.createElement(\'meta\');\n    vp.name = \'viewport\';\n    vp.content = content;\n    document.head.insertBefore(vp, document.head.firstChild);\n  }\n  window.dispatchEvent(new Event(\'resize\'));\n})();"

    .line 76
    .line 77
    invoke-virtual {v0, v9, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eq v0, v7, :cond_6

    .line 86
    .line 87
    if-eq v0, v6, :cond_4

    .line 88
    .line 89
    if-eq v0, v5, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/16 v0, 0x780

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_5

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_5
    const/16 v0, 0x3c0

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_7

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_7
    const/16 v0, 0x500

    .line 120
    .line 121
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v10, "\n            (function(){\n              var targetW = "

    .line 124
    .line 125
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v0, ";\n              var deviceW = window.innerWidth || document.documentElement.clientWidth || screen.width;\n              var scale = Math.min(1, deviceW / targetW);\n              var content = \'width=\' + targetW + \', initial-scale=\' + scale + \', minimum-scale=0.1, maximum-scale=10\';\n              var vp = document.querySelector(\'meta[name=\"viewport\"]\');\n              if (vp) { vp.setAttribute(\'content\', content); }\n              else {\n                vp = document.createElement(\'meta\');\n                vp.name = \'viewport\';\n                vp.content = content;\n                document.head.insertBefore(vp, document.head.firstChild);\n              }\n              window.dispatchEvent(new Event(\'resize\'));\n            })();\n        "

    .line 132
    .line 133
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    iget-object v9, v9, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 149
    .line 150
    invoke-virtual {v9, v0, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 151
    .line 152
    .line 153
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eq v0, v7, :cond_c

    .line 158
    .line 159
    if-eq v0, v6, :cond_a

    .line 160
    .line 161
    if-eq v0, v5, :cond_8

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_9

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_9
    const p1, 0x7f1202d1

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_b

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_b
    const p1, 0x7f1202d2

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_d

    .line 191
    .line 192
    :goto_2
    const p1, 0x7f1202d4

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_d
    const p1, 0x7f1202d3

    .line 197
    .line 198
    .line 199
    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const v0, 0x7f1203ea

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public final C(Lcom/minhub/gamehub/data/Game;)V
    .locals 40

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v14, v1, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 4
    .line 5
    if-nez v14, :cond_0

    .line 6
    .line 7
    move-object v9, v1

    .line 8
    goto/16 :goto_24

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v15, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 15
    .line 16
    const-string v0, "webView"

    .line 17
    .line 18
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, LS1/d;->a:Ljava/util/Set;

    .line 22
    .line 23
    const-string v0, "ctx"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "utilities_json"

    .line 33
    .line 34
    const-string v3, "{}"

    .line 35
    .line 36
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, LS1/d;->t(Ljava/lang/String;)LG1/s;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->Companion:Lcom/minhub/gamehub/data/GameEngine$Companion;

    .line 45
    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Lcom/minhub/gamehub/data/GameEngine$Companion;->fromString(Ljava/lang/String;)Lcom/minhub/gamehub/data/GameEngine;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1}, LS1/d;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v1}, LS1/d;->m(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string v5, "engine"

    .line 63
    .line 64
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v6, 0x1

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 72
    .line 73
    if-eq v2, v0, :cond_1

    .line 74
    .line 75
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->BROWSE:Lcom/minhub/gamehub/data/GameEngine;

    .line 76
    .line 77
    if-eq v2, v0, :cond_1

    .line 78
    .line 79
    move v0, v6

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    move v0, v5

    .line 82
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    const/4 v9, 0x0

    .line 91
    if-nez v8, :cond_2

    .line 92
    .line 93
    move-object v8, v7

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    move-object v8, v9

    .line 96
    :goto_1
    if-eqz v8, :cond_3

    .line 97
    .line 98
    new-instance v10, Ljava/io/File;

    .line 99
    .line 100
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v10}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move-object v8, v9

    .line 109
    :goto_2
    if-eqz v8, :cond_4

    .line 110
    .line 111
    new-instance v10, Ly1/V;

    .line 112
    .line 113
    iget-object v11, v8, LS1/b;->a:Ljava/io/File;

    .line 114
    .line 115
    invoke-direct {v10, v11, v2}, Ly1/V;-><init>(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;)V

    .line 116
    .line 117
    .line 118
    move-object/from16 v18, v10

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    move-object/from16 v18, v9

    .line 122
    .line 123
    :goto_3
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    iget-object v10, v10, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 128
    .line 129
    const-string v11, "wv"

    .line 130
    .line 131
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iput-object v15, v10, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->c:Landroid/webkit/WebView;

    .line 135
    .line 136
    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const-string v11, "getSettings(...)"

    .line 141
    .line 142
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v11, "settings"

    .line 146
    .line 147
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v11, "engine"

    .line 151
    .line 152
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 177
    .line 178
    .line 179
    const/4 v0, -0x1

    .line 180
    invoke-virtual {v10, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 187
    .line 188
    .line 189
    sget-object v0, Ly1/h0;->a:[I

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    aget v0, v0, v11

    .line 196
    .line 197
    const/4 v11, 0x2

    .line 198
    if-eq v0, v6, :cond_6

    .line 199
    .line 200
    if-eq v0, v11, :cond_5

    .line 201
    .line 202
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_6
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v10, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 229
    .line 230
    .line 231
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 232
    .line 233
    const/16 v10, 0x1a

    .line 234
    .line 235
    if-lt v0, v10, :cond_7

    .line 236
    .line 237
    invoke-static {v15}, Lm0/o;->r(Landroid/webkit/WebView;)V

    .line 238
    .line 239
    .line 240
    :cond_7
    const-string v0, "<this>"

    .line 241
    .line 242
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v1}, LS1/d;->s(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const-string v10, "mv_mz_font_size"

    .line 250
    .line 251
    invoke-interface {v0, v10, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    move v10, v0

    .line 256
    new-instance v0, Ly1/t1;

    .line 257
    .line 258
    new-instance v12, Ly1/z;

    .line 259
    .line 260
    invoke-direct {v12, v1, v14, v5}, Ly1/z;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 261
    .line 262
    .line 263
    move-object v13, v7

    .line 264
    new-instance v7, LA1/q;

    .line 265
    .line 266
    const/16 v5, 0x13

    .line 267
    .line 268
    invoke-direct {v7, v5}, LA1/q;-><init>(I)V

    .line 269
    .line 270
    .line 271
    move-object v5, v8

    .line 272
    new-instance v8, Ly1/z;

    .line 273
    .line 274
    invoke-direct {v8, v1, v14, v6}, Ly1/z;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 275
    .line 276
    .line 277
    move-object/from16 v17, v9

    .line 278
    .line 279
    new-instance v9, Ly1/y;

    .line 280
    .line 281
    invoke-direct {v9, v1, v14, v11}, Ly1/y;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 282
    .line 283
    .line 284
    move-object/from16 v19, v5

    .line 285
    .line 286
    move v5, v10

    .line 287
    new-instance v10, Ly1/y;

    .line 288
    .line 289
    const/4 v6, 0x3

    .line 290
    invoke-direct {v10, v1, v14, v6}, Ly1/y;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 291
    .line 292
    .line 293
    move v6, v11

    .line 294
    new-instance v11, LA1/r;

    .line 295
    .line 296
    const/16 v6, 0x9

    .line 297
    .line 298
    invoke-direct {v11, v1, v14, v15, v6}, LA1/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    move-object v6, v12

    .line 302
    new-instance v12, Ly1/A;

    .line 303
    .line 304
    move-object/from16 v22, v2

    .line 305
    .line 306
    move-object/from16 v2, p1

    .line 307
    .line 308
    invoke-direct {v12, v1, v2, v14}, Ly1/A;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LQ1/d;)V

    .line 309
    .line 310
    .line 311
    move-object/from16 v23, v13

    .line 312
    .line 313
    new-instance v13, Ly1/B;

    .line 314
    .line 315
    invoke-direct {v13, v1, v14, v15}, Ly1/B;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;Landroid/webkit/WebView;)V

    .line 316
    .line 317
    .line 318
    move-object/from16 v24, v15

    .line 319
    .line 320
    move-object/from16 v26, v19

    .line 321
    .line 322
    move-object/from16 v15, v22

    .line 323
    .line 324
    move-object/from16 v25, v23

    .line 325
    .line 326
    invoke-direct/range {v0 .. v14}, Ly1/t1;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;LG1/s;Ljava/lang/String;ILy1/z;LA1/q;Ly1/z;Ly1/y;Ly1/y;LA1/r;Ly1/A;Ly1/B;LQ1/d;)V

    .line 327
    .line 328
    .line 329
    move-object v8, v3

    .line 330
    iput-object v0, v1, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 331
    .line 332
    const-string v0, "engine"

    .line 333
    .line 334
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->BROWSE:Lcom/minhub/gamehub/data/GameEngine;

    .line 338
    .line 339
    if-eq v15, v0, :cond_8

    .line 340
    .line 341
    iget-object v0, v1, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 342
    .line 343
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    const-string v2, "MinHub"

    .line 347
    .line 348
    move-object/from16 v9, v24

    .line 349
    .line 350
    invoke-virtual {v9, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    new-instance v10, Lt1/b;

    .line 354
    .line 355
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iget-object v11, v0, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 360
    .line 361
    const-string v0, "gamepadOverlay"

    .line 362
    .line 363
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    new-instance v0, LC1/q;

    .line 367
    .line 368
    const-class v3, Lcom/minhub/gamehub/game/GameActivity;

    .line 369
    .line 370
    const-string v4, "runOnUiThread"

    .line 371
    .line 372
    const-string v5, "runOnUiThread(Ljava/lang/Runnable;)V"

    .line 373
    .line 374
    const/4 v6, 0x0

    .line 375
    const/4 v7, 0x3

    .line 376
    const/4 v1, 0x1

    .line 377
    move-object/from16 v2, p0

    .line 378
    .line 379
    invoke-direct/range {v0 .. v7}, LC1/q;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 380
    .line 381
    .line 382
    move-object v1, v2

    .line 383
    invoke-direct {v10, v11, v0}, Lt1/b;-><init>(Lcom/minhub/gamehub/gamepad/GamepadOverlay;LC1/q;)V

    .line 384
    .line 385
    .line 386
    const-string v0, "MHAdelBridge"

    .line 387
    .line 388
    invoke-virtual {v9, v10, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    goto :goto_5

    .line 392
    :cond_8
    move-object/from16 v9, v24

    .line 393
    .line 394
    :goto_5
    const-string v0, "engine"

    .line 395
    .line 396
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 400
    .line 401
    if-ne v15, v0, :cond_9

    .line 402
    .line 403
    new-instance v0, LJ1/a;

    .line 404
    .line 405
    invoke-direct {v0, v1}, LJ1/a;-><init>(Lcom/minhub/gamehub/game/GameActivity;)V

    .line 406
    .line 407
    .line 408
    const-string v2, "appJsInterface"

    .line 409
    .line 410
    invoke-virtual {v9, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    :cond_9
    new-instance v35, Ly1/c0;

    .line 414
    .line 415
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/h;

    .line 416
    .line 417
    const/16 v2, 0xe

    .line 418
    .line 419
    invoke-direct {v0, v2}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 420
    .line 421
    .line 422
    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    .line 423
    .line 424
    .line 425
    if-eqz v18, :cond_a

    .line 426
    .line 427
    new-instance v16, LC1/q;

    .line 428
    .line 429
    const-class v19, Ly1/V;

    .line 430
    .line 431
    const-string v20, "interceptPayload"

    .line 432
    .line 433
    const-string v21, "interceptPayload$app_release(Ljava/lang/String;)Lcom/minhub/gamehub/game/InterceptedGameAsset;"

    .line 434
    .line 435
    const/16 v22, 0x0

    .line 436
    .line 437
    const/16 v23, 0x2

    .line 438
    .line 439
    const/16 v17, 0x1

    .line 440
    .line 441
    invoke-direct/range {v16 .. v23}, LC1/q;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 442
    .line 443
    .line 444
    move-object/from16 v28, v16

    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_a
    const/16 v28, 0x0

    .line 448
    .line 449
    :goto_6
    const-string v0, "context"

    .line 450
    .line 451
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    new-instance v0, LY/a;

    .line 455
    .line 456
    new-instance v2, LY/a;

    .line 457
    .line 458
    invoke-direct {v2, v1}, LY/a;-><init>(Lcom/minhub/gamehub/game/GameActivity;)V

    .line 459
    .line 460
    .line 461
    invoke-direct {v0, v2}, LY/a;-><init>(LY/a;)V

    .line 462
    .line 463
    .line 464
    new-instance v2, Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .line 468
    .line 469
    const-string v3, "/cheat/"

    .line 470
    .line 471
    invoke-static {v3, v0}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    new-instance v3, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 484
    .line 485
    .line 486
    move-result v4

    .line 487
    const/4 v5, 0x0

    .line 488
    :goto_7
    if-ge v5, v4, :cond_b

    .line 489
    .line 490
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    add-int/lit8 v5, v5, 0x1

    .line 495
    .line 496
    check-cast v6, Landroidx/core/util/Pair;

    .line 497
    .line 498
    iget-object v7, v6, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v7, Ljava/lang/String;

    .line 501
    .line 502
    iget-object v6, v6, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v6, LY/a;

    .line 505
    .line 506
    new-instance v10, LY/b;

    .line 507
    .line 508
    invoke-direct {v10, v7, v6}, LY/b;-><init>(Ljava/lang/String;LY/a;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    goto :goto_7

    .line 515
    :cond_b
    new-instance v2, LY/c;

    .line 516
    .line 517
    invoke-direct {v2, v3}, LY/c;-><init>(Ljava/util/ArrayList;)V

    .line 518
    .line 519
    .line 520
    const-string v3, "build(...)"

    .line 521
    .line 522
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    new-instance v7, LA1/d;

    .line 526
    .line 527
    new-instance v3, Lkotlin/coroutines/a;

    .line 528
    .line 529
    const/4 v10, 0x1

    .line 530
    invoke-direct {v3, v10, v2, v0}, Lkotlin/coroutines/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    new-instance v2, LA1/p;

    .line 534
    .line 535
    const/16 v4, 0x11

    .line 536
    .line 537
    invoke-direct {v2, v4, v0}, LA1/p;-><init>(ILjava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-direct {v7, v3, v2}, LA1/d;-><init>(Lkotlin/coroutines/a;LA1/p;)V

    .line 541
    .line 542
    .line 543
    const-string v0, "engine"

    .line 544
    .line 545
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 549
    .line 550
    if-ne v15, v0, :cond_c

    .line 551
    .line 552
    move/from16 v30, v10

    .line 553
    .line 554
    goto :goto_8

    .line 555
    :cond_c
    const/16 v30, 0x0

    .line 556
    .line 557
    :goto_8
    sget-object v2, Ly1/c0;->b:Ly1/c0;

    .line 558
    .line 559
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    const-string v3, "getApplicationContext(...)"

    .line 564
    .line 565
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const-string v3, "context"

    .line 569
    .line 570
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    sget-object v3, Ly1/c0;->c:[B

    .line 574
    .line 575
    if-eqz v3, :cond_d

    .line 576
    .line 577
    move-object/from16 v31, v3

    .line 578
    .line 579
    const/4 v11, 0x0

    .line 580
    goto :goto_c

    .line 581
    :cond_d
    monitor-enter v2

    .line 582
    :try_start_0
    sget-object v3, Ly1/c0;->c:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 583
    .line 584
    if-nez v3, :cond_10

    .line 585
    .line 586
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 587
    .line 588
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    const-string v3, "live2d/live2dcubismcore_4_2_4.min.js"

    .line 593
    .line 594
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 595
    .line 596
    .line 597
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 598
    :try_start_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    invoke-static {v3}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    .line 602
    .line 603
    .line 604
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 605
    const/4 v11, 0x0

    .line 606
    :try_start_3
    invoke-static {v3, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 607
    .line 608
    .line 609
    const-string v3, "\nwindow.LIVE2DCUBISMCORE = window.LIVE2DCUBISMCORE || window.Live2DCubismCore;\n"

    .line 610
    .line 611
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 612
    .line 613
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    const-string v4, "getBytes(...)"

    .line 618
    .line 619
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    invoke-static {v0, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    goto :goto_a

    .line 631
    :catchall_0
    move-exception v0

    .line 632
    goto :goto_9

    .line 633
    :catchall_1
    move-exception v0

    .line 634
    const/4 v11, 0x0

    .line 635
    move-object v4, v0

    .line 636
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 637
    :catchall_2
    move-exception v0

    .line 638
    :try_start_5
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 639
    .line 640
    .line 641
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 642
    :catchall_3
    move-exception v0

    .line 643
    const/4 v11, 0x0

    .line 644
    :goto_9
    :try_start_6
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 645
    .line 646
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    :goto_a
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    if-eqz v3, :cond_e

    .line 659
    .line 660
    move-object v0, v11

    .line 661
    :cond_e
    check-cast v0, [B

    .line 662
    .line 663
    if-eqz v0, :cond_f

    .line 664
    .line 665
    sput-object v0, Ly1/c0;->c:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 666
    .line 667
    goto :goto_b

    .line 668
    :catchall_4
    move-exception v0

    .line 669
    move-object v9, v1

    .line 670
    goto/16 :goto_25

    .line 671
    .line 672
    :cond_f
    move-object v0, v11

    .line 673
    goto :goto_b

    .line 674
    :cond_10
    const/4 v11, 0x0

    .line 675
    move-object v0, v3

    .line 676
    :goto_b
    monitor-exit v2

    .line 677
    move-object/from16 v31, v0

    .line 678
    .line 679
    :goto_c
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 680
    .line 681
    if-ne v15, v0, :cond_17

    .line 682
    .line 683
    sget-object v2, LS1/d;->a:Ljava/util/Set;

    .line 684
    .line 685
    const-string v2, "<this>"

    .line 686
    .line 687
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-static {v1}, LS1/d;->g(Lcom/minhub/gamehub/game/GameActivity;)Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    const v4, -0x6683aa6a

    .line 699
    .line 700
    .line 701
    if-eq v3, v4, :cond_15

    .line 702
    .line 703
    const v4, 0x2644a52c

    .line 704
    .line 705
    .line 706
    if-eq v3, v4, :cond_13

    .line 707
    .line 708
    const v4, 0x2fce7329

    .line 709
    .line 710
    .line 711
    if-eq v3, v4, :cond_11

    .line 712
    .line 713
    goto :goto_d

    .line 714
    :cond_11
    const-string v3, "1920x1080"

    .line 715
    .line 716
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v2

    .line 720
    if-nez v2, :cond_12

    .line 721
    .line 722
    goto :goto_d

    .line 723
    :cond_12
    const/16 v5, 0x780

    .line 724
    .line 725
    goto :goto_e

    .line 726
    :cond_13
    const-string v3, "960x540"

    .line 727
    .line 728
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    if-nez v2, :cond_14

    .line 733
    .line 734
    goto :goto_d

    .line 735
    :cond_14
    const/16 v5, 0x3c0

    .line 736
    .line 737
    goto :goto_e

    .line 738
    :cond_15
    const-string v3, "1280x720"

    .line 739
    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v2

    .line 744
    if-nez v2, :cond_16

    .line 745
    .line 746
    :goto_d
    const/4 v5, 0x0

    .line 747
    goto :goto_e

    .line 748
    :cond_16
    const/16 v5, 0x500

    .line 749
    .line 750
    :goto_e
    move/from16 v32, v5

    .line 751
    .line 752
    goto :goto_f

    .line 753
    :cond_17
    const/16 v32, 0x0

    .line 754
    .line 755
    :goto_f
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 756
    .line 757
    if-eq v15, v2, :cond_18

    .line 758
    .line 759
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 760
    .line 761
    if-ne v15, v2, :cond_19

    .line 762
    .line 763
    :cond_18
    move-object/from16 v12, v26

    .line 764
    .line 765
    goto :goto_10

    .line 766
    :cond_19
    move-object/from16 v33, v11

    .line 767
    .line 768
    move-object/from16 v12, v26

    .line 769
    .line 770
    goto :goto_11

    .line 771
    :goto_10
    if-eqz v12, :cond_1a

    .line 772
    .line 773
    iget-object v2, v12, LS1/b;->a:Ljava/io/File;

    .line 774
    .line 775
    move-object/from16 v33, v2

    .line 776
    .line 777
    goto :goto_11

    .line 778
    :cond_1a
    move-object/from16 v33, v11

    .line 779
    .line 780
    :goto_11
    if-eq v15, v0, :cond_1c

    .line 781
    .line 782
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 783
    .line 784
    if-ne v15, v0, :cond_1b

    .line 785
    .line 786
    goto :goto_12

    .line 787
    :cond_1b
    move-object/from16 v34, v11

    .line 788
    .line 789
    goto :goto_13

    .line 790
    :cond_1c
    :goto_12
    if-eqz v12, :cond_1b

    .line 791
    .line 792
    iget-object v0, v12, LS1/b;->a:Ljava/io/File;

    .line 793
    .line 794
    move-object/from16 v34, v0

    .line 795
    .line 796
    :goto_13
    new-instance v27, Ly1/g0;

    .line 797
    .line 798
    new-instance v0, LC1/J;

    .line 799
    .line 800
    const/4 v6, 0x1

    .line 801
    move-object/from16 v5, p1

    .line 802
    .line 803
    move-object v3, v9

    .line 804
    move-object v2, v14

    .line 805
    move-object v4, v15

    .line 806
    invoke-direct/range {v0 .. v6}, LC1/J;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 807
    .line 808
    .line 809
    move-object v9, v1

    .line 810
    move-object v1, v3

    .line 811
    new-instance v2, Ly1/y;

    .line 812
    .line 813
    const/4 v3, 0x0

    .line 814
    invoke-direct {v2, v9, v14, v3}, Ly1/y;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 815
    .line 816
    .line 817
    new-instance v4, Lkotlin/coroutines/a;

    .line 818
    .line 819
    const/4 v13, 0x2

    .line 820
    invoke-direct {v4, v13, v9, v14}, Lkotlin/coroutines/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    new-instance v5, Ly1/y;

    .line 824
    .line 825
    invoke-direct {v5, v9, v14, v10}, Ly1/y;-><init>(Lcom/minhub/gamehub/game/GameActivity;LQ1/d;I)V

    .line 826
    .line 827
    .line 828
    move-object/from16 v36, v0

    .line 829
    .line 830
    move-object/from16 v37, v2

    .line 831
    .line 832
    move-object/from16 v38, v4

    .line 833
    .line 834
    move-object/from16 v39, v5

    .line 835
    .line 836
    move-object/from16 v29, v7

    .line 837
    .line 838
    invoke-direct/range {v27 .. v39}, Ly1/g0;-><init>(LC1/q;LA1/d;Z[BILjava/io/File;Ljava/io/File;Ly1/c0;LC1/J;Ly1/y;Lkotlin/coroutines/a;Ly1/y;)V

    .line 839
    .line 840
    .line 841
    move-object/from16 v0, v27

    .line 842
    .line 843
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 844
    .line 845
    .line 846
    new-instance v0, Ly1/N;

    .line 847
    .line 848
    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 849
    .line 850
    .line 851
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 852
    .line 853
    .line 854
    const-string v0, "MinHub-Launch"

    .line 855
    .line 856
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    new-instance v5, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    const-string v6, "gameId="

    .line 867
    .line 868
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 872
    .line 873
    .line 874
    const-string v2, " title="

    .line 875
    .line 876
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .line 888
    .line 889
    const-string v0, "MinHub-Launch"

    .line 890
    .line 891
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    new-instance v4, Ljava/lang/StringBuilder;

    .line 896
    .line 897
    const-string v5, "gamePath="

    .line 898
    .line 899
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v2

    .line 909
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    .line 911
    .line 912
    const-string v0, "MinHub-Launch"

    .line 913
    .line 914
    if-eqz v12, :cond_1d

    .line 915
    .line 916
    iget-object v2, v12, LS1/b;->a:Ljava/io/File;

    .line 917
    .line 918
    if-eqz v2, :cond_1d

    .line 919
    .line 920
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    if-nez v2, :cond_1e

    .line 925
    .line 926
    :cond_1d
    const-string v2, "<none>"

    .line 927
    .line 928
    :cond_1e
    const-string v4, "resolvedRoot="

    .line 929
    .line 930
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .line 936
    .line 937
    const-string v0, "MinHub-Launch"

    .line 938
    .line 939
    if-eqz v12, :cond_1f

    .line 940
    .line 941
    iget-object v2, v12, LS1/b;->b:Ljava/io/File;

    .line 942
    .line 943
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 944
    .line 945
    .line 946
    move-result v2

    .line 947
    if-ne v2, v10, :cond_1f

    .line 948
    .line 949
    move v5, v10

    .line 950
    goto :goto_14

    .line 951
    :cond_1f
    move v5, v3

    .line 952
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    const-string v4, "indexExists="

    .line 955
    .line 956
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    .line 968
    .line 969
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 974
    .line 975
    .line 976
    move-result v0

    .line 977
    if-nez v0, :cond_20

    .line 978
    .line 979
    const-string v0, "MinHub-Launch"

    .line 980
    .line 981
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v2

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    .line 986
    .line 987
    const-string v4, "streamUrl="

    .line 988
    .line 989
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    .line 994
    .line 995
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    const/high16 v0, -0x1000000

    .line 1003
    .line 1004
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1012
    .line 1013
    .line 1014
    return-void

    .line 1015
    :cond_20
    if-eqz v12, :cond_40

    .line 1016
    .line 1017
    iget-object v0, v12, LS1/b;->b:Ljava/io/File;

    .line 1018
    .line 1019
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    const-string v2, "file://"

    .line 1024
    .line 1025
    invoke-static {v2, v0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    const-string v0, "MinHub-Launch"

    .line 1030
    .line 1031
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    const-string v5, "finalUrl="

    .line 1034
    .line 1035
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v4

    .line 1045
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 1049
    .line 1050
    if-eq v15, v0, :cond_21

    .line 1051
    .line 1052
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1053
    .line 1054
    if-ne v15, v0, :cond_22

    .line 1055
    .line 1056
    :cond_21
    :try_start_7
    iget-object v0, v12, LS1/b;->a:Ljava/io/File;

    .line 1057
    .line 1058
    const-string v4, "rootDir"

    .line 1059
    .line 1060
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    const-string v4, "img"

    .line 1064
    .line 1065
    new-instance v5, Ljava/io/File;

    .line 1066
    .line 1067
    const-string v6, "img/img_data_mfsuplub.json"

    .line 1068
    .line 1069
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-static {v0, v5, v4}, Ly1/L1;->j(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    const-string v4, "audio"

    .line 1076
    .line 1077
    new-instance v5, Ljava/io/File;

    .line 1078
    .line 1079
    const-string v6, "audio/snd_data_mfsuplub.json"

    .line 1080
    .line 1081
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    invoke-static {v0, v5, v4}, Ly1/L1;->j(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1085
    .line 1086
    .line 1087
    :catch_0
    :cond_22
    const-string v0, "engine"

    .line 1088
    .line 1089
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1090
    .line 1091
    .line 1092
    sget-object v0, Ly1/Y;->a:[I

    .line 1093
    .line 1094
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 1095
    .line 1096
    .line 1097
    move-result v4

    .line 1098
    aget v0, v0, v4

    .line 1099
    .line 1100
    packed-switch v0, :pswitch_data_0

    .line 1101
    .line 1102
    .line 1103
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 1104
    .line 1105
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1106
    .line 1107
    .line 1108
    throw v0

    .line 1109
    :pswitch_0
    sget-object v0, Ly1/Z;->b:Ly1/Z;

    .line 1110
    .line 1111
    goto :goto_15

    .line 1112
    :pswitch_1
    sget-object v0, Ly1/Z;->c:Ly1/Z;

    .line 1113
    .line 1114
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    if-eqz v0, :cond_3d

    .line 1119
    .line 1120
    if-ne v0, v10, :cond_3c

    .line 1121
    .line 1122
    :try_start_8
    sget-object v0, LG1/g;->a:Ljava/lang/String;

    .line 1123
    .line 1124
    invoke-static {v9, v15}, LG1/g;->a(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/GameEngine;)Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1128
    goto :goto_16

    .line 1129
    :catch_1
    move-object v0, v11

    .line 1130
    :goto_16
    :try_start_9
    sget-object v4, LG1/g;->a:Ljava/lang/String;

    .line 1131
    .line 1132
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 1133
    .line 1134
    .line 1135
    move-result-wide v4

    .line 1136
    invoke-static {v9, v4, v5}, LG1/g;->b(Lcom/minhub/gamehub/game/GameActivity;J)Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1140
    goto :goto_17

    .line 1141
    :catch_2
    move-object v4, v11

    .line 1142
    :goto_17
    if-eqz v4, :cond_23

    .line 1143
    .line 1144
    const-string v5, "(function(){try{\n"

    .line 1145
    .line 1146
    const-string v6, "\n}catch(e){try{console.error(\'[GamePatch] pre error: \'+e)}catch(_){}}})();"

    .line 1147
    .line 1148
    invoke-static {v5, v4, v6}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v4

    .line 1152
    goto :goto_18

    .line 1153
    :cond_23
    move-object v4, v11

    .line 1154
    :goto_18
    filled-new-array {v0, v4}, [Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v16

    .line 1162
    const-string v17, "\n"

    .line 1163
    .line 1164
    const/16 v20, 0x0

    .line 1165
    .line 1166
    const/16 v21, 0x3e

    .line 1167
    .line 1168
    const/16 v18, 0x0

    .line 1169
    .line 1170
    const/16 v19, 0x0

    .line 1171
    .line 1172
    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v4

    .line 1180
    if-eqz v4, :cond_24

    .line 1181
    .line 1182
    move-object v0, v11

    .line 1183
    :cond_24
    const-string v4, "engine"

    .line 1184
    .line 1185
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    sget-object v4, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 1189
    .line 1190
    if-ne v15, v4, :cond_2e

    .line 1191
    .line 1192
    iget-object v4, v12, LS1/b;->b:Ljava/io/File;

    .line 1193
    .line 1194
    const-string v5, "context"

    .line 1195
    .line 1196
    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    .line 1198
    .line 1199
    const-string v5, "indexFile"

    .line 1200
    .line 1201
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    .line 1203
    .line 1204
    const-string v5, "snapshot"

    .line 1205
    .line 1206
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1210
    .line 1211
    const-string v7, "UTF_8"

    .line 1212
    .line 1213
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-static {v4, v6}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v4

    .line 1220
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v14

    .line 1224
    move/from16 v20, v10

    .line 1225
    .line 1226
    const-string v10, "Cheat/tyrano_player.js"

    .line 1227
    .line 1228
    invoke-virtual {v14, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v10

    .line 1232
    const-string v14, "open(...)"

    .line 1233
    .line 1234
    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    new-instance v7, Ljava/io/InputStreamReader;

    .line 1241
    .line 1242
    invoke-direct {v7, v10, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1243
    .line 1244
    .line 1245
    new-instance v6, Ljava/io/BufferedReader;

    .line 1246
    .line 1247
    const/16 v10, 0x2000

    .line 1248
    .line 1249
    invoke-direct {v6, v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1250
    .line 1251
    .line 1252
    :try_start_a
    invoke-static {v6}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1256
    invoke-static {v6, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1257
    .line 1258
    .line 1259
    const-string v6, "</head>"

    .line 1260
    .line 1261
    const-string v10, "substring(...)"

    .line 1262
    .line 1263
    const-string v14, "\n            </script>\n        "

    .line 1264
    .line 1265
    const-string v16, ""

    .line 1266
    .line 1267
    const-string v3, "\n"

    .line 1268
    .line 1269
    const-string v11, "indexHtml"

    .line 1270
    .line 1271
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    const-string v11, "playerScript"

    .line 1275
    .line 1276
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1277
    .line 1278
    .line 1279
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    if-eqz v0, :cond_26

    .line 1283
    .line 1284
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result v11

    .line 1288
    if-nez v11, :cond_25

    .line 1289
    .line 1290
    goto :goto_19

    .line 1291
    :cond_25
    const/4 v0, 0x0

    .line 1292
    :goto_19
    if-eqz v0, :cond_26

    .line 1293
    .line 1294
    const-string v11, "</script"

    .line 1295
    .line 1296
    const-string v13, "<\\/script"

    .line 1297
    .line 1298
    invoke-static {v0, v11, v13}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v0

    .line 1302
    const-string v11, "\n<script>\n"

    .line 1303
    .line 1304
    const-string v13, "\n</script>"

    .line 1305
    .line 1306
    invoke-static {v11, v0, v13}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    if-nez v0, :cond_27

    .line 1311
    .line 1312
    :cond_26
    move-object/from16 v0, v16

    .line 1313
    .line 1314
    :cond_27
    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    .line 1316
    .line 1317
    sget-object v5, LG1/q;->a:Ljava/util/List;

    .line 1318
    .line 1319
    invoke-virtual {v8}, LG1/s;->a()Ljava/util/LinkedHashMap;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v5

    .line 1323
    invoke-static {v5}, LG1/q;->b(Ljava/util/LinkedHashMap;)LG1/s;

    .line 1324
    .line 1325
    .line 1326
    move-result-object v5

    .line 1327
    new-instance v11, Li1/r;

    .line 1328
    .line 1329
    invoke-direct {v11}, Li1/r;-><init>()V

    .line 1330
    .line 1331
    .line 1332
    sget-object v13, LG1/q;->a:Ljava/util/List;

    .line 1333
    .line 1334
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v13

    .line 1338
    :goto_1a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v18

    .line 1342
    if-eqz v18, :cond_28

    .line 1343
    .line 1344
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v18

    .line 1348
    move-object/from16 v19, v2

    .line 1349
    .line 1350
    move-object/from16 v2, v18

    .line 1351
    .line 1352
    check-cast v2, LG1/n;

    .line 1353
    .line 1354
    iget-object v2, v2, LG1/n;->a:LG1/p;

    .line 1355
    .line 1356
    move-object/from16 p1, v13

    .line 1357
    .line 1358
    iget-object v13, v2, LG1/p;->b:Ljava/lang/String;

    .line 1359
    .line 1360
    invoke-virtual {v5, v2}, LG1/s;->b(LG1/p;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v2

    .line 1364
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    invoke-virtual {v11, v13, v2}, Li1/r;->h(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1369
    .line 1370
    .line 1371
    move-object/from16 v13, p1

    .line 1372
    .line 1373
    move-object/from16 v2, v19

    .line 1374
    .line 1375
    goto :goto_1a

    .line 1376
    :cond_28
    move-object/from16 v19, v2

    .line 1377
    .line 1378
    invoke-virtual {v11}, Li1/o;->toString()Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v2

    .line 1382
    const-string v5, "toString(...)"

    .line 1383
    .line 1384
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    sget-object v5, LG1/p;->p:LG1/p;

    .line 1388
    .line 1389
    invoke-virtual {v8, v5}, LG1/s;->b(LG1/p;)Z

    .line 1390
    .line 1391
    .line 1392
    move-result v5

    .line 1393
    if-eqz v5, :cond_29

    .line 1394
    .line 1395
    const-string v5, "Tyrano"

    .line 1396
    .line 1397
    const-string v8, "runtimeLabel"

    .line 1398
    .line 1399
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v5}, Lcom/bumptech/glide/c;->v(Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    .line 1404
    .line 1405
    move-result-object v16

    .line 1406
    :cond_29
    move-object/from16 v5, v16

    .line 1407
    .line 1408
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    const-string v11, "\n        (function(){\n            if (window.__minhubTyranoPrelude) return;\n            window.__minhubTyranoPrelude = true;\n\n            window.__minhubUtilities = "

    .line 1411
    .line 1412
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    const-string v2, ";\n\n            if (typeof process === \'undefined\' || !process) {\n                window.process = {};\n            }\n            window.process.execPath = window.process.execPath || \'/android_asset/index.html\';\n            window.process.env = window.process.env || { HOME: \'/sdcard\' };\n            window.process.argv = window.process.argv || [\'\', \'\'];\n            window.process.platform = window.process.platform || \'android\';\n            window.process.version = window.process.version || \'v14.0.0\';\n            window.process.versions = window.process.versions || {};\n            window.process.mainModule = window.process.mainModule || { filename: \'index.html\' };\n\n            if (typeof __dirname === \'undefined\') {\n                window.__dirname = \'\';\n            }\n            if (typeof __filename === \'undefined\') {\n                window.__filename = \'index.html\';\n            }\n\n            var __appStub = {\n                getAppPath: function(){ return \'\'; },\n                getPath: function(){ return \'/sdcard\'; },\n                quit: function(){},\n                on: function(){}\n            };\n            var __ipcRendererStub = {\n                on: function(){ return this; },\n                once: function(){ return this; },\n                send: function(){},\n                sendSync: function(){ return null; },\n                removeListener: function(){ return this; },\n                removeAllListeners: function(){ return this; },\n                invoke: function(){ return Promise.resolve(null); }\n            };\n            var __electronStub = {\n                app: __appStub,\n                remote: { app: __appStub, getGlobal: function(){ return {}; }, getCurrentWindow: function(){ return {}; } },\n                ipcRenderer: __ipcRendererStub,\n                ipcMain: null,\n                shell: { openExternal: function(){}, openPath: function(){} },\n                clipboard: { writeText: function(){}, readText: function(){ return \'\'; } }\n            };\n            var __nwStub = {\n                Window: { get: function(){ return { focus:function(){}, moveTo:function(){}, resizeTo:function(){}, maximize:function(){} }; } },\n                App: { quit: function(){}, manifest: {}, dataPath: \'/sdcard\', clearCache: function(){} }\n            };\n            var __fsStub = {\n                readFileSync:function(){ return \'\'; },\n                writeFileSync:function(){},\n                existsSync:function(){ return false; },\n                mkdirSync:function(){},\n                readdirSync:function(){ return []; },\n                unlinkSync:function(){},\n                appendFileSync:function(){},\n                statSync:function(){ return { isFile:function(){ return false; }, isDirectory:function(){ return false; }, size:0 }; },\n                lstatSync:function(){ return { isFile:function(){ return false; }, isDirectory:function(){ return false; } }; },\n                readdir:function(path, cb){ if (cb) cb(null, []); },\n                readFile:function(path, opts, cb){ if (typeof opts === \'function\') cb = opts; if (cb) cb(null, \'\'); },\n                writeFile:function(path, data, cb){ if (cb) cb(null); }\n            };\n            var __pathStub = {\n                join:function(){ return Array.prototype.slice.call(arguments).join(\'/\'); },\n                dirname:function(p){ var i=p.lastIndexOf(\'/\'); return i>=0?p.substring(0,i):p; },\n                basename:function(p){ return p.split(\'/\').pop(); },\n                extname:function(p){ var b=p.split(\'/\').pop(); var i=b.lastIndexOf(\'.\'); return i>0?b.substring(i):\'\'; }\n            };\n\n            // Lu\u00f4n wrap require \u2014 k\u1ec3 c\u1ea3 khi game c\u00f3 require t\u1eeb bundler ri\u00eang.\n            // L\u00fd do: libs.js c\u1ee7a Tyrano c\u00f3 th\u1ec3 \u0111\u1ecbnh ngh\u0129a require n\u1ed9i b\u1ed9 (webpack/browserify)\n            // kh\u00f4ng bi\u1ebft v\u1ec1 \'electron\' \u2192 require(\'electron\') tr\u1ea3 undefined \u2192 crash ipcRenderer.\n            //\n            // QUAN TR\u1eccNG: V\u1edbi module kh\u00f4ng bi\u1ebft (vd: \u0111\u01b0\u1eddng d\u1eabn file .js), ph\u1ea3i THROW thay v\u00ec\n            // return {}. Tyrano code nh\u01b0:\n            //   try { window.$ = require(\'./tyrano/libs/jquery.min.js\'); } catch(e) {}\n            // n\u1ebfu require() tr\u1ea3 {} th\u00ec window.$ b\u1ecb overwrite \u2192 jQuery m\u1ea5t \u2192 crash to\u00e0n b\u1ed9.\n            // N\u1ebfu require() throw \u2192 try-catch b\u1eaft \u2192 window.$ gi\u1eef nguy\u00ean jQuery \u0111\u00e3 load qua <script src>.\n            var _prevRequire = (typeof require === \'function\') ? require : null;\n            window.require = function(module) {\n                if (module === \'electron\') return __electronStub;\n                if (module === \'nw.gui\' || module === \'nw\') return __nwStub;\n                if (module === \'fs\') return __fsStub;\n                if (module === \'path\') return __pathStub;\n                if (_prevRequire) { try { return _prevRequire(module); } catch(e) {} }\n                throw new Error(\'[MinHub] Cannot find module: \' + module);\n            };\n\n            // Safety net: m\u1ed9t s\u1ed1 Tyrano game truy c\u1eadp window.ipcRenderer tr\u1ef1c ti\u1ebfp\n            if (!window.ipcRenderer) window.ipcRenderer = __ipcRendererStub;\n\n            // webpack externals: libs.js \u0111\u01b0\u1ee3c bundle b\u1eb1ng webpack n\u00ean require(\'electron\')\n            // \u0111\u01b0\u1ee3c resolve th\u00e0nh window[\'electron\'] (kh\u00f4ng \u0111i qua window.require c\u1ee7a ch\u00fang ta).\n            // Ph\u1ea3i set window.electron \u0111\u1ec3 webpack t\u00ecm \u0111\u01b0\u1ee3c stub.\n            if (!window.electron) window.electron = __electronStub;\n\n            // T\u01b0\u01a1ng t\u1ef1 cho nw v\u00e0 nw.gui (NW.js externals)\n            if (!window.nw) window.nw = __nwStub;\n\n            // window.studio_api: TyranoStudio IDE API \u2014 ch\u1ec9 c\u00f3 trong Electron desktop.\n            // libs.js:995 g\u1ecdi window.studio_api.ipcRenderer.sendSync(\"getAppPath\") KH\u00d4NG c\u00f3\n            // null check \u2192 crash n\u1ebfu studio_api undefined. Stub \u0111\u1ec3 tr\u00e1nh uncaught error.\n            if (!window.studio_api) {\n                window.studio_api = {\n                    ipcRenderer: {\n                        sendSync: function(cmd) {\n                            if (cmd === \'getAppPath\') return \'\';\n                            // \"getProcess\" tr\u1ea3 v\u1ec1 window.process \u0111\u00e3 setup s\u1eb5n.\n                            if (cmd === \'getProcess\') return window.process;\n                            // \"doubleCheck\": ph\u1ea3i return true (truthy) \u0111\u1ec3 kag.js KH\u00d4NG\n                            // ch\u1ea1y block alert(\"double_start\") + window.close() g\u00e2y m\u00e0n h\u00ecnh \u0111en.\n                            // Logic kag.js: if($.isElectron() && !sendSync(\"doubleCheck\")) \u2192 close\n                            // \u2192 !true = false \u2192 block b\u1ecb skip \u2192 game ch\u1ea1y b\u00ecnh th\u01b0\u1eddng.\n                            if (cmd === \'doubleCheck\') return true;\n                            if (cmd === \'showSelectFileDialog\') return null;\n                            return null;\n                        },\n                        send: function() {},\n                        on: function() { return this; },\n                        removeAllListeners: function() { return this; },\n                        removeListener: function() { return this; }\n                    },\n                    // studio_api.fs: d\u00f9ng b\u1edfi applyPatch trong kag.js\n                    // existsSync tr\u1ea3 false \u2192 b\u1ecf qua vi\u1ec7c apply patch (file kh\u00f4ng t\u1ed3n t\u1ea1i)\n                    fs: {\n                        existsSync: function() { return false; },\n                        copySync: function() {},\n                        removeSync: function() {},\n                        mkdirSync: function() {},\n                        readFileSync: function() { return \'\'; },\n                        writeFileSync: function() {}\n                    },\n                    path: {\n                        join: function() { return Array.prototype.slice.call(arguments).join(\'/\'); },\n                        resolve: function() { return \'\'; },\n                        dirname: function(p) { return p ? p.split(\'/\').slice(0,-1).join(\'/\') : \'\'; }\n                    }\n                };\n            }\n\n            // [0.8.0] V\u00f4 hi\u1ec7u ho\u00e1 desktop auto-update c\u1ee7a Tyrano (checkUpdate) tr\u00ean mobile.\n            // kag.js g\u1ecdi checkUpdate(init_game) l\u00fac boot. checkUpdate ch\u1ec9 g\u1ecdi callback (\u2192 init_game)\n            // \u1edf nh\u00e1nh \"kh\u00f4ng NWJS\" / \"patch_apply_auto=false\"; nh\u00e1nh desktop \u0111i qua localFilePath +\n            // applyPatch(studio_api.fs). D\u00f9 prelude \u0111\u00e3 stub c\u00e1c API \u0111\u00f3, applyPatch c\u1ee7a M\u1ed8T S\u1ed0 kag.js\n            // KH\u00d4NG g\u1ecdi callback khi .tpatch kh\u00f4ng t\u1ed3n t\u1ea1i (existsSync=false) \u2192 init_game kh\u00f4ng ch\u1ea1y \u2192\n            // \u0111en m\u00e0n (\u0111\u00e2y l\u00e0 g\u1ed1c c\u1ee7a ~100 report game Naughty \u1edf APK c\u0169). Mobile kh\u00f4ng c\u00f3 .tpatch c\u1ee5c b\u1ed9\n            // n\u00ean b\u1ecf h\u1eb3n: override checkUpdate = g\u1ecdi th\u1eb3ng callback. Prelude ch\u1ea1y TR\u01af\u1edaC m\u1ecdi script game\n            // n\u00ean poll n\u00e0y wrap \u0111\u01b0\u1ee3c kag.checkUpdate ngay khi kag.js \u0111\u1ecbnh ngh\u0129a \u2014 tr\u01b0\u1edbc c\u00fa loadConfig\u2192\n            // checkUpdate (b\u1ea5t \u0111\u1ed3ng b\u1ed9) \u2192 ch\u1eafc \u0103n cho M\u1eccI game Tyrano, kh\u00f4ng ph\u1ee5 thu\u1ed9c n\u1ed9i b\u1ed9 kag.js.\n            (function(){\n                var __mhTries = 0;\n                var __mhIv = setInterval(function(){\n                    try {\n                        var kag = window.tyrano && window.tyrano.plugin && window.tyrano.plugin.kag;\n                        if (kag && typeof kag.checkUpdate === \'function\' && !kag.checkUpdate.__mhNeutralized) {\n                            var __mhCU = function(call_back){ if (typeof call_back === \'function\') call_back(); };\n                            __mhCU.__mhNeutralized = true;\n                            kag.checkUpdate = __mhCU;\n                            clearInterval(__mhIv);\n                        }\n                    } catch(e){}\n                    if (++__mhTries > 1200) clearInterval(__mhIv);\n                }, 8);\n            })();\n\n            "

    .line 1419
    .line 1420
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    .line 1426
    const-string v2, "\n        })();\n    "

    .line 1427
    .line 1428
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    .line 1431
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v2

    .line 1435
    invoke-static {v2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v2

    .line 1439
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    const-string v8, "\n            <!-- MinHub prelude \u2014 must run before any game scripts -->\n            <script>\n            "

    .line 1442
    .line 1443
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v2

    .line 1456
    invoke-static {v2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v2

    .line 1460
    invoke-static {v2, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1465
    .line 1466
    const-string v5, "\n            <!-- TyranoPlayer injected by MinHub -->\n            <script>\n            "

    .line 1467
    .line 1468
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v2

    .line 1481
    invoke-static {v2}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1482
    .line 1483
    .line 1484
    move-result-object v2

    .line 1485
    new-instance v5, Lkotlin/text/Regex;

    .line 1486
    .line 1487
    const-string v7, "<head[^>]*>"

    .line 1488
    .line 1489
    sget-object v8, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 1490
    .line 1491
    invoke-direct {v5, v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 1492
    .line 1493
    .line 1494
    const/4 v7, 0x0

    .line 1495
    const/4 v11, 0x0

    .line 1496
    const/4 v13, 0x2

    .line 1497
    invoke-static {v5, v4, v7, v13, v11}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v5

    .line 1501
    if-eqz v5, :cond_2a

    .line 1502
    .line 1503
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v5

    .line 1507
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 1508
    .line 1509
    .line 1510
    move-result v5

    .line 1511
    add-int/lit8 v5, v5, 0x1

    .line 1512
    .line 1513
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v7

    .line 1517
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v4

    .line 1524
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    .line 1534
    .line 1535
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    .line 1540
    .line 1541
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    .line 1546
    .line 1547
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    goto :goto_1b

    .line 1552
    :cond_2a
    invoke-static {v0, v3, v4}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    :goto_1b
    const-string v4, "<!-- Others -->"

    .line 1557
    .line 1558
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1559
    .line 1560
    .line 1561
    move-result v4

    .line 1562
    if-eqz v4, :cond_2b

    .line 1563
    .line 1564
    const-string v3, "<!-- Others -->"

    .line 1565
    .line 1566
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1567
    .line 1568
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    const-string v2, "\n<!-- Others -->"

    .line 1575
    .line 1576
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v2

    .line 1583
    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v0

    .line 1587
    goto :goto_1c

    .line 1588
    :cond_2b
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->n(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 1589
    .line 1590
    .line 1591
    move-result v4

    .line 1592
    if-eqz v4, :cond_2c

    .line 1593
    .line 1594
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1597
    .line 1598
    .line 1599
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    .line 1601
    .line 1602
    const-string v2, "\n</head>"

    .line 1603
    .line 1604
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    .line 1606
    .line 1607
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v2

    .line 1611
    invoke-static {v0, v6, v2}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v0

    .line 1615
    goto :goto_1c

    .line 1616
    :cond_2c
    invoke-static {v0, v3, v2}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v0

    .line 1620
    :cond_2d
    :goto_1c
    const/4 v11, 0x0

    .line 1621
    :goto_1d
    move-object v3, v0

    .line 1622
    goto/16 :goto_20

    .line 1623
    .line 1624
    :catchall_5
    move-exception v0

    .line 1625
    move-object v1, v0

    .line 1626
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1627
    :catchall_6
    move-exception v0

    .line 1628
    invoke-static {v6, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1629
    .line 1630
    .line 1631
    throw v0

    .line 1632
    :cond_2e
    move-object/from16 v19, v2

    .line 1633
    .line 1634
    move/from16 v20, v10

    .line 1635
    .line 1636
    iget-object v2, v12, LS1/b;->b:Ljava/io/File;

    .line 1637
    .line 1638
    invoke-static {v2}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v2

    .line 1642
    const-string v3, "\n"

    .line 1643
    .line 1644
    const-string v4, "substring(...)"

    .line 1645
    .line 1646
    const-string v5, "indexHtml"

    .line 1647
    .line 1648
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1649
    .line 1650
    .line 1651
    if-eqz v0, :cond_30

    .line 1652
    .line 1653
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 1654
    .line 1655
    .line 1656
    move-result v5

    .line 1657
    if-nez v5, :cond_2f

    .line 1658
    .line 1659
    goto :goto_1e

    .line 1660
    :cond_2f
    const/4 v0, 0x0

    .line 1661
    :goto_1e
    if-eqz v0, :cond_30

    .line 1662
    .line 1663
    const-string v5, "</script"

    .line 1664
    .line 1665
    const-string v6, "<\\/script"

    .line 1666
    .line 1667
    invoke-static {v0, v5, v6}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1668
    .line 1669
    .line 1670
    move-result-object v0

    .line 1671
    const-string v5, "\n<script>\n"

    .line 1672
    .line 1673
    const-string v6, "\n</script>"

    .line 1674
    .line 1675
    invoke-static {v5, v0, v6}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v0

    .line 1679
    if-nez v0, :cond_31

    .line 1680
    .line 1681
    :cond_30
    const-string v0, ""

    .line 1682
    .line 1683
    :cond_31
    const-string v5, "\n        <script>\n        (function(){\n  // process polyfill: prevents top-level plugin code like\n  // `process.versions[\'node-webkit\']` from throwing ReferenceError before\n  // our main patch script runs.\n  if (typeof window.process === \'undefined\') { window.process = {}; }\n  window.process.versions   = window.process.versions   || {};\n  window.process.argv       = window.process.argv       || [];\n  // NW.js puts the executable path in argv[0]; plugins derive the game root from it\n  // (e.g. TS_Decode: argv[0] minus file name + \'scenario/\' -> Succubus Farm\'s .sl\n  // scripts). Empty argv made argv[0].split throw, so every AdvLoad cutscene was\n  // skipped. Point it at a virtual Game.exe beside index.html.\n  if (!window.process.argv.length) {\n    try { window.process.argv.push(location.pathname.replace(/\\/[^\\/]*$/, \'/Game.exe\')); } catch(e){}\n  }\n  window.process.mainModule = window.process.mainModule || { filename: \'index.html\' };\n\n  // Early require() stub. Some plugins call require(\'fs\')/require(\'path\') at\n  // PARSE time (top-level), e.g. DarkPlasma_ScreenshotGallery.js, and threw\n  // \"ReferenceError: require is not defined\" because the full NW.js compat\n  // polyfill is only injected at onPageFinished \u2014 after plugin scripts parse.\n  // We pin Utils.isNwjs() to false below so the engine still runs in\n  // web-storage mode (saves route through the MinHub native bridge); the stub\n  // prevents the load-time crash and routes game-local file operations to the native bridge.\n  if (typeof window.require !== \'function\') {\n    var __mhPath = {\n      sep: \'/\',\n      join: function(){ return Array.prototype.slice.call(arguments).join(\'/\'); },\n      // Node\'s path.resolve() with no (or only falsy) segments returns the current\n      // working directory. We have no real CWD, so we use \'.\' \u2014 this must match what\n      // dirname() below returns for a bare filename (\'index.html\' has no slash), so\n      // plugins that independently compute a \"game root\" via either function (e.g.\n      // MakeScreenCapture.js uses dirname(process.mainModule.filename), DarkPlasma_\n      // ScreenshotGallery.js uses resolve(\'\')) end up pointing at the SAME \'./\'\n      // directory and can read back what the other wrote.\n      resolve: function(){\n        var parts = Array.prototype.slice.call(arguments).filter(Boolean);\n        return parts.length ? parts.join(\'/\') : \'.\';\n      },\n      dirname: function(p){\n        if (!p) return \'.\';\n        var s = String(p).replace(/[\\\\/]+$/, \'\');\n        var i = Math.max(s.lastIndexOf(\'/\'), s.lastIndexOf(\'\\\\\'));\n        return i > 0 ? s.slice(0, i) : (i === 0 ? \'/\' : \'.\');\n      },\n      basename: function(p, ext){ var b = p ? String(p).split(/[\\\\/]/).pop() : \'\'; return (ext && b.slice(-ext.length) === ext) ? b.slice(0, -ext.length) : b; },\n      extname: function(p){ var b = p ? String(p).split(/[\\\\/]/).pop() : \'\'; var i = b.lastIndexOf(\'.\'); return i > 0 ? b.slice(i) : \'\'; }\n    };\n    // Synchronously read a game data file via file:// XHR. Many RPG Maker games\n    // (esp. the MEO_* plugin framework: LoadFileUTF8Escaped -> $Node.fs.readFileSync)\n    // load their JSON config straight off disk through require(\'fs\'). Returning \'\'\n    // here made JSON.parse(\'\') throw \"Unexpected end of JSON input\" and crash the\n    // whole game at boot (e.g. MEO_CombatStatusDisplay: t.root undefined). Reading the\n    // real bytes makes those plugins work; a missing file still yields \'\' (no throw,\n    // same as before). Same-origin file:// XHR works because the page IS a file:// URL.\n    var __mhReadSync = function(p){\n      try {\n        var x = new XMLHttpRequest();\n        x.open(\'GET\', String(p), false);\n        try { x.overrideMimeType(\'text/plain; charset=utf-8\'); } catch(e){}\n        x.send(null);\n        var r = x.responseText;\n        if (r != null && r.length) return r;\n      } catch(e){}\n      return null;\n    };\n    var __mhExistsCache = {};\n    // Existence check: appends ?__mh_exists=1 so shouldInterceptRequest can\n    // answer with a native File.exists() check (no file content loaded).\n    // Falls back to __mhReadSync only when the XHR itself throws (e.g. bad path).\n    var __mhExistsSync = function(k) {\n      try {\n        var x = new XMLHttpRequest();\n        x.open(\'GET\', k + (k.indexOf(\'?\') >= 0 ? \'&\' : \'?\') + \'__mh_exists=1\', false);\n        x.send(null);\n        return x.responseText === \'1\';\n      } catch(e) {}\n      return __mhReadSync(k) != null;\n    };\n    // Converts a writeFileSync `data` argument (Buffer wrapper, string, or anything else)\n    // into a base64 string for the native fsWriteFile bridge. Our Buffer polyfill (below)\n    // never actually decodes bytes \u2014 it just remembers what it was built from \u2014 so a Buffer\n    // built with the \'base64\' encoding already IS the base64 string we need; anything else\n    // gets UTF-8-safe btoa\'d.\n    var __mhToBase64 = function(d){\n      try {\n        if (d && d.__mhIsBuffer) {\n          if (d.__mhEncoding === \'base64\' && typeof d.__mhData === \'string\') return d.__mhData;\n          d = d.__mhData;\n        }\n        if (typeof d !== \'string\') d = String(d);\n        return btoa(unescape(encodeURIComponent(d)));\n      } catch(e) { return \'\'; }\n    };\n    var __mhFs = {\n      existsSync: function(p){\n        var k=String(p); if(k in __mhExistsCache)return __mhExistsCache[k];\n        var r=__mhExistsSync(k);\n        if (!r) { try { r = !!(window.MinHub && window.MinHub.fsExists && window.MinHub.fsExists(k)); } catch(e) {} }\n        __mhExistsCache[k]=r; return r;\n      },\n      // Real Node fs.accessSync() throws on failure, returns undefined on success - plugins\n      // (e.g. AsyncLoadImage.js\'s fileExists()) wrap it in try/catch and treat any throw as\n      // \"file missing\". Without this, fs.accessSync was undefined -> calling it threw\n      // \"accessSync is not a function\" for every single check, so every image looked missing\n      // regardless of whether it actually existed. Route through the same existence check as\n      // existsSync (mode/R_OK etc. are ignored).\n      accessSync: function(p, mode){\n        if (!__mhFs.existsSync(p)) { throw new Error(\'ENOENT: no such file or directory, access \\\'\' + p + \'\\\'\'); }\n      },\n      constants: { F_OK: 0, R_OK: 4, W_OK: 2, X_OK: 1 },\n      mkdirSync: function(p){\n        if (!window.MinHub || !window.MinHub.fsMkdir || !window.MinHub.fsMkdir(String(p))) throw new Error(\'EACCES: mkdir \' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      rmdirSync: function(p){\n        if (!window.MinHub || !window.MinHub.fsRmdir || !window.MinHub.fsRmdir(String(p))) throw new Error(\'ENOTEMPTY: rmdir \' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      unlinkSync: function(p){\n        if (!window.MinHub || !window.MinHub.fsUnlink || !window.MinHub.fsUnlink(String(p))) throw new Error(\'ENOENT: unlink \' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      // Actually persists to the game\'s content-root directory via the native bridge (see\n      // MinHubBridge.fsWriteFile) so plugins that save-then-later-load a file (e.g. take a\n      // screenshot in-game, view it in an in-game gallery/phone UI) work instead of silently\n      // losing the data. Scoped to the game\'s own folder \u2014 see resolveWritableTarget().\n      writeFileSync: function(p, d){\n        if (!window.MinHub || !window.MinHub.fsWriteFile || !window.MinHub.fsWriteFile(String(p), __mhToBase64(d))) throw new Error(\'EACCES: write \' + p);\n        try { delete __mhExistsCache[String(p)]; } catch(e) {}\n      },\n      appendFileSync: function(p, d){\n        if (!window.MinHub || !window.MinHub.fsAppendFile || !window.MinHub.fsAppendFile(String(p), __mhToBase64(d))) throw new Error(\'EACCES: append \' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      readFileSync: function(p){ var r = __mhReadSync(p); return r != null ? r : \'\'; },\n      // Real directory listing via the native bridge \u2014 file:// XHR has no way to list a\n      // directory, so this was always \'[]\' before. Needed by e.g. DarkPlasma_\n      // ScreenshotGallery.js\'s loadAllScreenshot() to find previously-saved photos.\n      // Supports the { withFileTypes: true } option (Node returns Dirent objects, not plain\n      // strings, in that mode) since DarkPlasma_ScreenshotGallery.js relies on it.\n      readdirSync: function(p, opts){\n        var names = [];\n        try {\n          if (window.MinHub && window.MinHub.fsReadDir) {\n            names = JSON.parse(window.MinHub.fsReadDir(String(p)) || \'[]\');\n          }\n        } catch(e) {}\n        if (opts && opts.withFileTypes) {\n          return names.map(function(n){\n            var st = __mhFs.statSync(String(p).replace(/\\/$/, \'\') + \'/\' + n);\n            return { name: n, isFile: st.isFile, isDirectory: st.isDirectory };\n          });\n        }\n        return names;\n      },\n      statSync: function(p){\n        var s = {};\n        try { s = JSON.parse(window.MinHub.fsStat(String(p)) || \'{}\'); } catch(e) {}\n        if (!s.file && !s.directory) throw new Error(\'ENOENT: stat \' + p);\n        return { isFile: function(){ return !!s.file; }, isDirectory: function(){ return !!s.directory; }, size: s.size || 0 };\n      },\n      lstatSync: function(p){ return __mhFs.statSync(p); },\n      readdir: function(p, cb){ if (typeof cb === \'function\') { var list = []; try { list = __mhFs.readdirSync(p); } catch(e) {} cb(null, list); } },\n      readFile: function(p, o, cb){ if (typeof o === \'function\') cb = o; if (typeof cb === \'function\') { var r = __mhReadSync(p); cb(null, r != null ? r : \'\'); } },\n      writeFile: function(p, d, cb){ var err = null; try { __mhFs.writeFileSync(p, d); } catch(e) { err = e; } if (typeof cb === \'function\') cb(err); }\n    };\n    window.require = function(m){\n      if (m === \'fs\') return __mhFs;\n      if (m === \'path\') return __mhPath;\n      if (m === \'nw\') return window.nw || {};\n      if (m === \'nw.gui\') return (window.nw && window.nw.gui) || {};\n      return {};\n    };\n  }\n  // Minimal Buffer polyfill. Must be new-able \u2014 plugins commonly call\n  // `new Buffer(data, \'base64\')` (e.g. MakeScreenCapture.js), and a plain object literal\n  // there throws \"Buffer is not a constructor\". We don\'t do real byte decoding; we just\n  // remember what the Buffer was built from (value + encoding) so writeFileSync\'s\n  // __mhToBase64 helper above can recover a base64 string to hand to the native bridge.\n  if (typeof window.Buffer === \'undefined\') {\n    window.Buffer = function(data, encoding){\n      if (!(this instanceof window.Buffer)) return new window.Buffer(data, encoding);\n      this.__mhIsBuffer = true;\n      this.__mhData = data;\n      this.__mhEncoding = encoding;\n    };\n    window.Buffer.prototype.toString = function(){ return typeof this.__mhData === \'string\' ? this.__mhData : String(this.__mhData); };\n    window.Buffer.from = function(data, encoding){ return new window.Buffer(data, encoding); };\n    window.Buffer.isBuffer = function(v){ return !!(v && v.__mhIsBuffer); };\n  }\n\n  // Global `nw` (NW.js) stub. Many RPG Maker plugins reference the `nw` global\n  // unconditionally, assuming a desktop NW.js host \u2014 e.g. SRD_HUDMakerUltra\'s\n  // setupAutoReload() calls nw.Window.get() at plugin load time. In the mobile\n  // WebView `nw` is undefined, so the ReferenceError bubbles to RPG Maker\'s boot\n  // error handler and freezes the game on a black \"nw is not defined\" screen.\n  // An inert stub lets those plugins load and the game boot normally.\n  if (typeof window.nw === \'undefined\') {\n    var __mhNoop = function(){};\n    var __mhNwWindow = {\n      on: __mhNoop, once: __mhNoop, removeAllListeners: __mhNoop, removeListener: __mhNoop,\n      close: __mhNoop, reload: __mhNoop, reloadDev: __mhNoop,\n      show: __mhNoop, hide: __mhNoop, focus: __mhNoop, blur: __mhNoop,\n      maximize: __mhNoop, minimize: __mhNoop, unmaximize: __mhNoop, restore: __mhNoop,\n      setMinimumSize: __mhNoop, setMaximumSize: __mhNoop, setResizable: __mhNoop,\n      resizeTo: __mhNoop, moveTo: __mhNoop, setPosition: __mhNoop,\n      showDevTools: __mhNoop, closeDevTools: __mhNoop, setAlwaysOnTop: __mhNoop,\n      enterFullscreen: __mhNoop, leaveFullscreen: __mhNoop, toggleFullscreen: __mhNoop,\n      capturePage: __mhNoop, setProgressBar: __mhNoop, requestAttention: __mhNoop,\n      title: (document.title || \'\'), zoomLevel: 0, window: window\n    };\n    var __mhNwApp = {\n      argv: [], fullArgv: [], dataPath: \'\', manifest: {},\n      quit: __mhNoop, closeAllWindows: __mhNoop, clearCache: __mhNoop,\n      on: __mhNoop, addOriginAccessWhitelistEntry: __mhNoop,\n      getProxyForURL: function(){ return \'DIRECT\'; }\n    };\n    var __mhNwShell = { openExternal: __mhNoop, openItem: __mhNoop, showItemInFolder: __mhNoop };\n    window.nw = {\n      Window: { get: function(){ return __mhNwWindow; }, open: __mhNoop },\n      App: __mhNwApp,\n      Shell: __mhNwShell\n    };\n    window.nw.gui = { Window: window.nw.Window, App: __mhNwApp, Shell: __mhNwShell };\n  }\n\n  // Keep RPG Maker in web-storage mode even though require() now exists, so the\n  // native save bridge stays in control (matches the previous behaviour, when\n  // require was simply undefined). Utils is a global function in rmmz_core.js;\n  // poll briefly until it loads, then pin isNwjs() to false.\n  (function(){\n    var n = 0;\n    var pin = function(){\n      try {\n        if (typeof Utils !== \'undefined\' && Utils && typeof Utils.isNwjs === \'function\') {\n          Utils.isNwjs = function(){ return false; };\n          return;\n        }\n      } catch (e) {}\n      if (n++ < 300) setTimeout(pin, 16);\n    };\n    pin();\n  })();\n\n  // XHR file:// status fix: Android WebView always returns xhr.status=0 for\n  // file:// requests, even on success. Plugins that check status===200 strictly\n  // (e.g. ARPG_Core.js HttpRequest) fail and crash. Patch the status getter to\n  // return 200 when status=0 + readyState=DONE + non-empty response (= success).\n  // Games using status<400 (standard RMMZ DataManager) are unaffected.\n  (function(){\n    try {\n      var _desc = Object.getOwnPropertyDescriptor(XMLHttpRequest.prototype, \'status\');\n      if (!_desc || !_desc.get) return;\n      Object.defineProperty(XMLHttpRequest.prototype, \'status\', {\n        get: function() {\n          var s = _desc.get.call(this);\n          if (s === 0 && this.readyState === 4 && this.response) return 200;\n          return s;\n        },\n        configurable: true\n      });\n    } catch(e) {}\n  })();\n\n  if(!window.fetch||window.fetch.__mhFileFetch)return;\n  var _fetch=window.fetch.bind(window);\n  window.fetch=function(input,init){\n    // Extract URL string from string, URL object (.href), or Request object (.url).\n    // Plugins like AudioStreaming.js call fetch(new URL(...)) which has .href not .url \u2014\n    // the old check left url=\'\' and fell through to native fetch(), which Chrome always\n    // blocks for file:// regardless of origin or allowFileAccessFromFileURLs.\n    var url=typeof input===\'string\'?input:(input!=null?String(input.href||input.url||\'\'):\'\');\n    // Resolve relative and root-relative URLs to absolute using the document base URL.\n    // Games often call fetch(\'data/file.csv\') \u2014 Chrome resolves it to file:///... internally\n    // but blocks it; we must resolve it ourselves so the file:// check below fires first.\n    if(url && !/^[a-zA-Z][a-zA-Z0-9+\\-.]*:/.test(url)){\n      try{var abs=new URL(url,location.href).href;if(typeof input===\'string\')input=abs;url=abs;}catch(e){}\n    }\n    // Rewrite Ren\'Py webloader protocol-relative //path URLs (e.g. //game/images/x.jpg).\n    // From a file:// origin Chrome resolves // as file://host/path which is invalid on\n    // Android. Rewrite to an absolute file:// URL before routing through XHR below.\n    if(typeof url===\'string\'&&url.startsWith(\'//\')&&location.protocol===\'file:\'){\n      url=location.href.replace(/\\/[^\\/]*$/,\'/\')+url.substring(2).split(\'/\').map(encodeURIComponent).join(\'/\');\n      input=url;\n      console.log(\'[MinHub] fetch // rewritten: \'+url);\n    }\n    if(typeof url===\'string\'&&url.indexOf(\'file:\')=== 0){\n      return new Promise(function(resolve,reject){\n        var xhr=new XMLHttpRequest();\n        xhr.open(\'GET\',url,true);\n        xhr.responseType=\'arraybuffer\';\n        xhr.onload=function(){\n          var status=xhr.status>0?xhr.status:200;\n          if(status<200||status>599)status=200;\n          resolve(new Response(xhr.response,{status:status,headers:{\'Content-Type\':xhr.getResponseHeader(\'Content-Type\')||\'application/octet-stream\'}}));\n        };\n        xhr.onerror=function(){reject(new TypeError(\'fetch file:// failed: \'+url));};\n        xhr.send();\n      });\n    }\n    return _fetch(input,init);\n  };\n  window.fetch.__mhFileFetch=true;\n})();\n\n// \u2500\u2500 Boot watchdog \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\n// Recovers the intermittent cold-launch black screen. When a file:// script\n// (e.g. jQuery) races the cold renderer and loads empty, every dependent\n// plugin throws and the engine never starts \u2014 the screen stays black until the\n// user manually exits and re-enters (a warm renderer then boots fine). We detect\n// that here \u2014 an early uncaught-error cascade, or simply nothing rendered after a\n// grace period \u2014 and ask the native side to reload (it caps the retries).\n(function(){\n  if (window.__mhBootWatch) return;\n  window.__mhBootWatch = true;\n  var done = false, errs = 0, bootPhase = true;\n  setTimeout(function(){ bootPhase = false; }, 3500);\n  function reload(reason){\n    if (done) return; done = true;\n    try { console.log(\'[MH-FIX] boot watchdog reload: \' + reason); } catch(e){}\n    try {\n      if (window.MinHub && typeof window.MinHub.requestBootReload === \'function\') {\n        window.MinHub.requestBootReload(reason); return;\n      }\n    } catch(e){}\n    try { location.reload(); } catch(e){}\n  }\n  // Fast path: a burst of uncaught errors during early boot = the engine is dead.\n  window.addEventListener(\'error\', function(){\n    if (!bootPhase || done) return;\n    if (++errs >= 4) reload(\'error-cascade:\' + errs);\n  }, true);\n  // Fallback: if nothing real rendered after the grace period, reload once.\n  setTimeout(function(){\n    if (done) return;\n    var rendered = 0;\n    try {\n      rendered = document.querySelectorAll(\'canvas, video, img, #tyrano_base, .tyrano_base\').length;\n      if (rendered === 0) {\n        var txt = ((document.body && document.body.innerText) || \'\').replace(/\\s+/g, \'\');\n        if (txt.length > 8) rendered = 1; // a populated text page counts as booted too\n      }\n    } catch(e){}\n    if (rendered === 0) reload(\'nothing-rendered\');\n  }, 6000);\n})();\n        </script>\n    "

    .line 1684
    .line 1685
    invoke-static {v5}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v5

    .line 1689
    invoke-static {v5, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    new-instance v5, Lkotlin/text/Regex;

    .line 1694
    .line 1695
    const-string v6, "<head[^>]*>"

    .line 1696
    .line 1697
    sget-object v7, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 1698
    .line 1699
    invoke-direct {v5, v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 1700
    .line 1701
    .line 1702
    const/4 v6, 0x0

    .line 1703
    const/4 v11, 0x0

    .line 1704
    const/4 v13, 0x2

    .line 1705
    invoke-static {v5, v2, v6, v13, v11}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v5

    .line 1709
    if-eqz v5, :cond_32

    .line 1710
    .line 1711
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v5

    .line 1715
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 1716
    .line 1717
    .line 1718
    move-result v5

    .line 1719
    add-int/lit8 v5, v5, 0x1

    .line 1720
    .line 1721
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v8

    .line 1725
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    .line 1727
    .line 1728
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v2

    .line 1732
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    .line 1734
    .line 1735
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1736
    .line 1737
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1747
    .line 1748
    .line 1749
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v0

    .line 1759
    goto :goto_1f

    .line 1760
    :cond_32
    new-instance v5, Lkotlin/text/Regex;

    .line 1761
    .line 1762
    const-string v6, "<script\\b"

    .line 1763
    .line 1764
    invoke-direct {v5, v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 1765
    .line 1766
    .line 1767
    const/4 v6, 0x0

    .line 1768
    const/4 v11, 0x0

    .line 1769
    const/4 v13, 0x2

    .line 1770
    invoke-static {v5, v2, v6, v13, v11}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v5

    .line 1774
    if-eqz v5, :cond_33

    .line 1775
    .line 1776
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v5

    .line 1780
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    .line 1781
    .line 1782
    .line 1783
    move-result v5

    .line 1784
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v8

    .line 1788
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1789
    .line 1790
    .line 1791
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v2

    .line 1795
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1796
    .line 1797
    .line 1798
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1799
    .line 1800
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    .line 1814
    .line 1815
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v0

    .line 1819
    goto :goto_1f

    .line 1820
    :cond_33
    invoke-static {v0, v3, v2}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v0

    .line 1824
    :goto_1f
    sget-object v2, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1825
    .line 1826
    if-ne v15, v2, :cond_2d

    .line 1827
    .line 1828
    const-string v2, "\n"

    .line 1829
    .line 1830
    const-string v3, "substring(...)"

    .line 1831
    .line 1832
    const-string v4, "indexHtml"

    .line 1833
    .line 1834
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1835
    .line 1836
    .line 1837
    const-string v4, "\n        <script>\n        (function() {\n  if (window.__mhEarlyFix) return;\n  window.__mhEarlyFix = true;\n\n  // \u2500\u2500 Prefer WebGL2 on capable devices \u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\n  // PIXI 5.3 sets PREFER_ENV = WEBGL(1) for ALL mobile user-agents, so RPG Maker MZ\n  // creates a WebGL1 renderer even on phones that fully support WebGL2. WebGL1 forces\n  // our SFPatch/WLPatch fallbacks (filter/stencil stripping), which break filter-based\n  // rendering such as PictureLive2D\'s Cubism clipping masks \u2014 the Live2D model then\n  // renders completely invisible. We flip PREFER_ENV to WEBGL2 the instant PIXI is\n  // assigned (this <head> script runs before pixi.js, and `var PIXI = (...)()` triggers\n  // this accessor on assignment, with PIXI.settings/ENV already populated), i.e. before\n  // Graphics._createPixiApp runs. PIXI still auto-falls-back to a WebGL1 context when\n  // WebGL2 is unavailable (old emulators), so the WebGL1 patches remain the safety net.\n  try {\n    if (!(\'PIXI\' in window)) {\n      var _mhPixi;\n      Object.defineProperty(window, \'PIXI\', {\n        configurable: true, enumerable: true,\n        get: function() { return _mhPixi; },\n        set: function(v) {\n          _mhPixi = v;\n          try {\n            if (v && v.settings && v.ENV && typeof v.ENV.WEBGL2 !== \'undefined\') {\n              v.settings.PREFER_ENV = v.ENV.WEBGL2;\n              console.log(\'[MH-FIX] PIXI.settings.PREFER_ENV -> WEBGL2\');\n            }\n          } catch (e) {}\n          // Swap the accessor for a plain data property so later reads/writes are normal.\n          try {\n            Object.defineProperty(window, \'PIXI\', { value: v, writable: true, configurable: true, enumerable: true });\n          } catch (e) {}\n        }\n      });\n    }\n  } catch (e) {}\n\n  // Log the FULL JS stack of any uncaught error (capture phase, before RPG Maker\'s\n  // own handler). Plugin crashes that surface as window.onerror \u2014 e.g. \"Cannot read\n  // properties of null (reading \'pivot\')\" from a use-after-destroy display object \u2014\n  // otherwise reach the engine only as an ErrorEvent (no .stack), so we read\n  // ErrorEvent.error.stack here to pinpoint the offending plugin/function.\n  window.addEventListener(\'error\', function(ev) {\n    try {\n      var err = ev && ev.error;\n      if (err && err.stack) {\n        console.error(\'[MH-FIX] uncaught:\\n\' + String(err.stack).substring(0, 1500));\n      } else if (ev) {\n        console.error(\'[MH-FIX] uncaught: \' + ev.message + \' @ \' + ev.filename + \':\' + ev.lineno + \':\' + ev.colno);\n      }\n    } catch(e) {}\n  }, true);\n\n  // FIX: Patch JSON.parse to restore Chrome 91 silent-pass behaviour for non-JSON strings.\n  //\n  // Chrome 91 (LDPlayer) swallowed exceptions thrown inside reviver functions AND some\n  // callers had outer try/catch that silently swallowed direct-call failures.\n  // Chrome 120+ propagates both, causing \"Uncaught SyntaxError: Unexpected non-whitespace\n  // character after JSON at position 5 (line 1 column 6)\" with input \"1280 / 1000\".\n  //\n  // Two cases fixed:\n  // 1. Reviver (e.g. VisuMZ _paramReplacer): wrap in try/catch so failed inner\n  //    JSON.parse(value) returns original value instead of propagating.\n  // 2. Direct call (e.g. JSON.parse(\"1280 / 1000\")): try Function-based eval as fallback\n  //    ONLY for primitive results (number/string/boolean/null).\n  //    SAFETY: Must NOT return objects/arrays \u2014 eval(\"window\") returns the Window global,\n  //    and PluginCommonBase.js:160 then calls JSON.stringify(window) which throws\n  //    \"Converting circular structure to JSON\" (window.window === window).\n  //    If eval fails or returns a non-primitive, return original string \u2014 same silent-pass\n  //    behaviour as Chrome 91\'s outer try/catch.\n  var _origParse = JSON.parse;\n  JSON.parse = function(text, reviver) {\n    if (typeof reviver === \'function\') {\n      // Case 1: reviver \u2014 wrap in try/catch, return original value on failure.\n      var _safeReviver = function(k, v) {\n        try { return reviver.call(this, k, v); } catch(e) { return v; }\n      };\n      return _origParse.call(JSON, text, _safeReviver);\n    }\n    try {\n      return _origParse.apply(JSON, arguments);\n    } catch(e) {\n      // Case 2: direct call \u2014 try JS expression eval as fallback (primitives only).\n      if (typeof text === \'string\' && text.trim() !== \'\') {\n        try {\n          // Use Function constructor (not bare eval) to avoid polluting outer scope.\n          // \"1280 / 1000\" \u2192 1.28, \"true\" \u2192 true, \"null\" \u2192 null, etc.\n          //\n          // SAFETY: Skip eval if text contains a comma \u2014 the JS comma operator would\n          // silently return the last value (e.g. \"0.5,0.25\" \u2192 0.25 via eval).\n          // Plugin parameters like \"0.5,0.25\" (parallax) are intentional comma-strings,\n          // not arithmetic. Returning 0.25 breaks .split(\',\') calls downstream.\n          if (text.indexOf(\',\') !== -1) { return text; }\n          // SAFETY: a bare integer range like \"5-7\" (or \"1-3-5\") is a common plugin-param\n          // convention for id lists (e.g. PictureCallCommon(-extended) DisableRules.pictureIds,\n          // parsed later via text.split(\',\')). JS would eval \"5-7\" to the NUMBER -2, so the\n          // downstream .split then throws \"text.split is not a function\" every frame. On desktop\n          // JSON.parse(\"5-7\") throws and the caller keeps the original string, so match that:\n          // keep digit ranges as strings instead of evaluating the subtraction.\n          if (/^\\s*\\d+(?:\\s*-\\s*\\d+)+\\s*$/.test(text)) { return text; }\n          var _r = Function(\'\"use strict\"; return (\' + text + \')\')();\n          // Only return primitives. Non-primitives (object, array, function) would\n          // cause JSON.stringify circular-reference errors downstream if they capture\n          // the window global or other complex state.\n          if (_r === null || typeof _r === \'string\' || typeof _r === \'number\' || typeof _r === \'boolean\') {\n            return _r;\n          }\n          // Non-primitive result \u2192 fall through to return original string below.\n        } catch(ex) {\n          // Eval failed (e.g. bare identifiers like \"ecg_ans1\", malformed expressions).\n        }\n        // Return original string \u2014 replicates Chrome 91 silent-pass for callers\n        // that just need any value to continue (they ignore the returned string).\n        return text;\n      }\n      throw e;\n    }\n  };\n  console.log(\'[MH-FIX] JSON.parse reviver+eval guard installed\');\n\n  // Hook Graphics.printError so any remaining on-screen errors appear in logcat.\n  var _hgfx = function(n) {\n    if (typeof Graphics === \'undefined\' || typeof Graphics.printError !== \'function\') {\n      if (n < 80) setTimeout(function() { _hgfx(n + 1); }, 100);\n      return;\n    }\n    if (Graphics.__mhDiagHooked) return;\n    Graphics.__mhDiagHooked = true;\n    var _o = Graphics.printError;\n    Graphics.printError = function(name, msg, e) {\n      try {\n        // RPG Maker sometimes forwards an ErrorEvent (no .stack); the real Error is on .error.\n        var realErr = (e && e.error) ? e.error : e;\n        var st = (realErr && realErr.stack) ? String(realErr.stack).substring(0, 800) : (e ? String(e) : \'\');\n        console.error(\'[MH-FIX] printError: \' + name + \': \' + msg + \'\\n\' + st);\n      } catch(ex) {}\n      return _o.apply(this, arguments);\n    };\n    console.log(\'[MH-FIX] Graphics.printError hooked\');\n  };\n  _hgfx(0);\n})();\n        </script>\n    "

    .line 1838
    .line 1839
    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v4

    .line 1843
    new-instance v5, Lkotlin/text/Regex;

    .line 1844
    .line 1845
    const-string v6, "<head[^>]*>"

    .line 1846
    .line 1847
    invoke-direct {v5, v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 1848
    .line 1849
    .line 1850
    const/4 v6, 0x0

    .line 1851
    const/4 v11, 0x0

    .line 1852
    const/4 v13, 0x2

    .line 1853
    invoke-static {v5, v0, v6, v13, v11}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v5

    .line 1857
    if-eqz v5, :cond_34

    .line 1858
    .line 1859
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 1860
    .line 1861
    .line 1862
    move-result-object v5

    .line 1863
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getLast()I

    .line 1864
    .line 1865
    .line 1866
    move-result v5

    .line 1867
    add-int/lit8 v5, v5, 0x1

    .line 1868
    .line 1869
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v6

    .line 1873
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1881
    .line 1882
    .line 1883
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1884
    .line 1885
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    .line 1890
    .line 1891
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1892
    .line 1893
    .line 1894
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    .line 1899
    .line 1900
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1901
    .line 1902
    .line 1903
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v0

    .line 1907
    goto/16 :goto_1c

    .line 1908
    .line 1909
    :cond_34
    new-instance v5, Lkotlin/text/Regex;

    .line 1910
    .line 1911
    const-string v6, "<script\\b"

    .line 1912
    .line 1913
    invoke-direct {v5, v6, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 1914
    .line 1915
    .line 1916
    const/4 v6, 0x0

    .line 1917
    const/4 v11, 0x0

    .line 1918
    const/4 v13, 0x2

    .line 1919
    invoke-static {v5, v0, v6, v13, v11}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v5

    .line 1923
    if-eqz v5, :cond_35

    .line 1924
    .line 1925
    invoke-interface {v5}, Lkotlin/text/MatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v5

    .line 1929
    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->getFirst()I

    .line 1930
    .line 1931
    .line 1932
    move-result v5

    .line 1933
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v6

    .line 1937
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1938
    .line 1939
    .line 1940
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v0

    .line 1944
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1945
    .line 1946
    .line 1947
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1950
    .line 1951
    .line 1952
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    .line 1954
    .line 1955
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    .line 1961
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1965
    .line 1966
    .line 1967
    move-result-object v0

    .line 1968
    goto/16 :goto_1d

    .line 1969
    .line 1970
    :cond_35
    invoke-static {v4, v2, v0}, Lkotlin/collections/unsigned/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v0

    .line 1974
    goto/16 :goto_1d

    .line 1975
    .line 1976
    :goto_20
    const-string v0, "engine"

    .line 1977
    .line 1978
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1979
    .line 1980
    .line 1981
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->TYRANO:Lcom/minhub/gamehub/data/GameEngine;

    .line 1982
    .line 1983
    if-ne v15, v0, :cond_36

    .line 1984
    .line 1985
    goto :goto_21

    .line 1986
    :cond_36
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 1987
    .line 1988
    if-eq v15, v0, :cond_38

    .line 1989
    .line 1990
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 1991
    .line 1992
    if-eq v15, v0, :cond_38

    .line 1993
    .line 1994
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->HTML:Lcom/minhub/gamehub/data/GameEngine;

    .line 1995
    .line 1996
    if-ne v15, v0, :cond_37

    .line 1997
    .line 1998
    goto :goto_21

    .line 1999
    :cond_37
    move-object v0, v11

    .line 2000
    goto :goto_23

    .line 2001
    :cond_38
    :goto_21
    :try_start_c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2002
    .line 2003
    sget-object v0, Ly1/X;->a:Ljava/util/HashMap;

    .line 2004
    .line 2005
    iget-object v0, v12, LS1/b;->a:Ljava/io/File;

    .line 2006
    .line 2007
    invoke-static {v0, v3}, Ly1/X;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 2008
    .line 2009
    .line 2010
    move-result-object v0

    .line 2011
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    .line 2013
    .line 2014
    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 2015
    goto :goto_22

    .line 2016
    :catchall_7
    move-exception v0

    .line 2017
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2018
    .line 2019
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 2020
    .line 2021
    .line 2022
    move-result-object v0

    .line 2023
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v0

    .line 2027
    :goto_22
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2028
    .line 2029
    .line 2030
    move-result-object v2

    .line 2031
    if-eqz v2, :cond_39

    .line 2032
    .line 2033
    const-string v4, "MinHub-Launch"

    .line 2034
    .line 2035
    const-string v5, "Boot page write failed"

    .line 2036
    .line 2037
    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2038
    .line 2039
    .line 2040
    :cond_39
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 2041
    .line 2042
    .line 2043
    move-result v2

    .line 2044
    if-eqz v2, :cond_3a

    .line 2045
    .line 2046
    move-object v0, v11

    .line 2047
    :cond_3a
    check-cast v0, Ljava/io/File;

    .line 2048
    .line 2049
    :goto_23
    if-eqz v0, :cond_3b

    .line 2050
    .line 2051
    iget-object v2, v12, LS1/b;->a:Ljava/io/File;

    .line 2052
    .line 2053
    iput-object v2, v9, Lcom/minhub/gamehub/game/GameActivity;->I:Ljava/io/File;

    .line 2054
    .line 2055
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2056
    .line 2057
    .line 2058
    move-result-object v0

    .line 2059
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2060
    .line 2061
    const-string v3, "file://"

    .line 2062
    .line 2063
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2064
    .line 2065
    .line 2066
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    .line 2068
    .line 2069
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2070
    .line 2071
    .line 2072
    move-result-object v0

    .line 2073
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2074
    .line 2075
    .line 2076
    goto/16 :goto_24

    .line 2077
    .line 2078
    :cond_3b
    const-string v4, "text/html"

    .line 2079
    .line 2080
    const-string v5, "UTF-8"

    .line 2081
    .line 2082
    move-object/from16 v6, v19

    .line 2083
    .line 2084
    move-object/from16 v2, v19

    .line 2085
    .line 2086
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    .line 2088
    .line 2089
    goto/16 :goto_24

    .line 2090
    .line 2091
    :cond_3c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 2092
    .line 2093
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 2094
    .line 2095
    .line 2096
    throw v0

    .line 2097
    :cond_3d
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->RENPY8:Lcom/minhub/gamehub/data/GameEngine;

    .line 2098
    .line 2099
    if-eq v15, v0, :cond_3e

    .line 2100
    .line 2101
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 2102
    .line 2103
    if-ne v15, v0, :cond_3f

    .line 2104
    .line 2105
    :cond_3e
    iget-object v0, v12, LS1/b;->a:Ljava/io/File;

    .line 2106
    .line 2107
    invoke-static {v0}, Ly1/L1;->n(Ljava/io/File;)Z

    .line 2108
    .line 2109
    .line 2110
    move-result v0

    .line 2111
    if-nez v0, :cond_3f

    .line 2112
    .line 2113
    invoke-static {v9}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v0

    .line 2117
    sget-object v7, LV1/H;->b:Lc2/c;

    .line 2118
    .line 2119
    move-object v3, v1

    .line 2120
    new-instance v1, LC1/w0;

    .line 2121
    .line 2122
    const/4 v6, 0x6

    .line 2123
    move-object v4, v2

    .line 2124
    move-object v5, v11

    .line 2125
    move-object v2, v12

    .line 2126
    invoke-direct/range {v1 .. v6}, LC1/w0;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V

    .line 2127
    .line 2128
    .line 2129
    const/4 v13, 0x2

    .line 2130
    invoke-static {v0, v7, v1, v13}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 2131
    .line 2132
    .line 2133
    goto/16 :goto_24

    .line 2134
    .line 2135
    :cond_3f
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2136
    .line 2137
    .line 2138
    goto/16 :goto_24

    .line 2139
    .line 2140
    :cond_40
    move/from16 v20, v10

    .line 2141
    .line 2142
    const-string v0, "MinHub-Launch"

    .line 2143
    .line 2144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2145
    .line 2146
    const-string v3, "Missing index.html for path="

    .line 2147
    .line 2148
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2149
    .line 2150
    .line 2151
    move-object/from16 v13, v25

    .line 2152
    .line 2153
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    .line 2155
    .line 2156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v2

    .line 2160
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    .line 2162
    .line 2163
    const-string v0, "MinHub-Launch"

    .line 2164
    .line 2165
    const-string v2, "finalUrl=<demo-html-fallback>"

    .line 2166
    .line 2167
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    .line 2169
    .line 2170
    const v0, 0x7f1203ee

    .line 2171
    .line 2172
    .line 2173
    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v0

    .line 2177
    invoke-static {v9, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v0

    .line 2181
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2182
    .line 2183
    .line 2184
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getCoverColor1()Ljava/lang/String;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v0

    .line 2188
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 2189
    .line 2190
    .line 2191
    move-result-object v2

    .line 2192
    invoke-static {v2, v10}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v2

    .line 2196
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2197
    .line 2198
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v2

    .line 2202
    const-string v3, "toUpperCase(...)"

    .line 2203
    .line 2204
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 2208
    .line 2209
    .line 2210
    move-result-object v3

    .line 2211
    const v4, 0x7f120323

    .line 2212
    .line 2213
    .line 2214
    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v4

    .line 2218
    invoke-virtual/range {p1 .. p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 2219
    .line 2220
    .line 2221
    move-result-object v5

    .line 2222
    const-string v6, "\n        <!DOCTYPE html>\n        <html style=\"margin:0;padding:0;background:#09090d;height:100%;font-family:sans-serif\">\n        <body style=\"margin:0;display:flex;align-items:center;justify-content:center;height:100%;flex-direction:column;gap:16px\">\n          <div style=\"width:64px;height:64px;border-radius:16px;background:"

    .line 2223
    .line 2224
    const-string v7, ";display:flex;align-items:center;justify-content:center;font-size:24px;font-weight:900;color:rgba(255,255,255,0.8)\">\n            "

    .line 2225
    .line 2226
    const-string v8, "\n          </div>\n          <div style=\"font-size:20px;font-weight:900;color:#F0F0F6;letter-spacing:-0.5px\">"

    .line 2227
    .line 2228
    invoke-static {v6, v0, v7, v2, v8}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    .line 2230
    .line 2231
    move-result-object v0

    .line 2232
    const-string v2, "</div>\n          <div style=\"font-size:12px;color:#8888A4\">"

    .line 2233
    .line 2234
    const-string v6, "</div>\n          <div style=\"margin-top:8px;font-size:10px;color:rgba(255,255,255,0.2);letter-spacing:1px\">MINHUB ENGINE DEMO</div>\n          <script>window.MinHub?.log?.(\'Demo game loaded for: "

    .line 2235
    .line 2236
    invoke-static {v0, v3, v2, v4, v6}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    .line 2242
    const-string v2, "\')</script>\n        </body></html>\n    "

    .line 2243
    .line 2244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    .line 2246
    .line 2247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2248
    .line 2249
    .line 2250
    move-result-object v0

    .line 2251
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    .line 2252
    .line 2253
    .line 2254
    move-result-object v3

    .line 2255
    const-string v4, "text/html"

    .line 2256
    .line 2257
    const-string v5, "UTF-8"

    .line 2258
    .line 2259
    const/4 v6, 0x0

    .line 2260
    const/4 v2, 0x0

    .line 2261
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    .line 2263
    .line 2264
    :goto_24
    return-void

    .line 2265
    :goto_25
    monitor-exit v2

    .line 2266
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final D()V
    .locals 8

    .line 1
    const-string v0, "MinHub_"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v2, v2, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 9
    .line 10
    const-string v3, "webView"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-static {v5, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 33
    .line 34
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "createBitmap(...)"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroid/graphics/Canvas;

    .line 44
    .line 45
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    const-string v4, "_"

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    const/16 v5, 0x14

    .line 64
    .line 65
    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    new-instance v5, Lkotlin/text/Regex;

    .line 72
    .line 73
    const-string v6, "\\W+"

    .line 74
    .line 75
    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-nez v2, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_2

    .line 87
    :cond_0
    :goto_0
    const-string v2, "Game"

    .line 88
    .line 89
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v5

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v0, ".png"

    .line 108
    .line 109
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, v3, v0}, Lcom/minhub/gamehub/game/GameActivity;->A(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_2

    .line 121
    .line 122
    const v0, 0x7f12037f

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    const v0, 0x7f12037e

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_2
    const-string v2, "MinHub"

    .line 146
    .line 147
    const-string v3, "screenshot failed"

    .line 148
    .line 149
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const v2, 0x7f1200f7

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final E()V
    .locals 6

    .line 1
    const v0, 0x7f1202da

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v2, 0x7f1202db

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Lw1/d;->Q:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 30
    .line 31
    iget-boolean v3, v3, Ly1/o1;->a:Z

    .line 32
    .line 33
    const/16 v4, 0x8

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    move v3, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v3, v4

    .line 41
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v1, v1, Lw1/d;->S:Landroid/widget/LinearLayout;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 51
    .line 52
    iget-boolean v3, v3, Ly1/o1;->b:Z

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    move v3, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v3, v4

    .line 59
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v1, v1, Lw1/d;->V:Landroid/widget/LinearLayout;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 69
    .line 70
    iget-boolean v3, v3, Ly1/o1;->c:Z

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    move v3, v5

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v3, v4

    .line 77
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v1, v1, Lw1/d;->T:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 87
    .line 88
    iget-boolean v3, v3, Ly1/o1;->d:Z

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    move v3, v5

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    move v3, v4

    .line 95
    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v1, v1, Lw1/d;->U:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 105
    .line 106
    iget-boolean v3, v3, Ly1/o1;->e:Z

    .line 107
    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    move v4, v5

    .line 111
    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v1, v1, Lw1/d;->g0:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 121
    .line 122
    iget-boolean v3, v3, Ly1/o1;->a:Z

    .line 123
    .line 124
    if-eqz v3, :cond_5

    .line 125
    .line 126
    move-object v3, v2

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move-object v3, v0

    .line 129
    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    iget-object v1, v1, Lw1/d;->h0:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 139
    .line 140
    iget-boolean v3, v3, Ly1/o1;->b:Z

    .line 141
    .line 142
    if-eqz v3, :cond_6

    .line 143
    .line 144
    move-object v3, v2

    .line 145
    goto :goto_5

    .line 146
    :cond_6
    move-object v3, v0

    .line 147
    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iget-object v1, v1, Lw1/d;->k0:Landroid/widget/TextView;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 157
    .line 158
    iget-boolean v3, v3, Ly1/o1;->c:Z

    .line 159
    .line 160
    if-eqz v3, :cond_7

    .line 161
    .line 162
    move-object v3, v2

    .line 163
    goto :goto_6

    .line 164
    :cond_7
    move-object v3, v0

    .line 165
    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v1, v1, Lw1/d;->i0:Landroid/widget/TextView;

    .line 173
    .line 174
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 175
    .line 176
    iget-boolean v3, v3, Ly1/o1;->d:Z

    .line 177
    .line 178
    if-eqz v3, :cond_8

    .line 179
    .line 180
    move-object v3, v2

    .line 181
    goto :goto_7

    .line 182
    :cond_8
    move-object v3, v0

    .line 183
    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v1, v1, Lw1/d;->j0:Landroid/widget/TextView;

    .line 191
    .line 192
    iget-object v3, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 193
    .line 194
    iget-boolean v3, v3, Ly1/o1;->e:Z

    .line 195
    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    move-object v0, v2

    .line 199
    :cond_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public final F()V
    .locals 6

    .line 1
    invoke-static {p0}, LS1/d;->g(Lcom/minhub/gamehub/game/GameActivity;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lw1/d;->x:Landroid/widget/Button;

    .line 10
    .line 11
    const-string v2, "device-width"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v2, v2, Lw1/d;->v:Landroid/widget/Button;

    .line 22
    .line 23
    const-string v3, "960x540"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v3, v3, Lw1/d;->w:Landroid/widget/Button;

    .line 34
    .line 35
    const-string v4, "1280x720"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v4, v4, Lw1/d;->u:Landroid/widget/Button;

    .line 46
    .line 47
    const-string v5, "1920x1080"

    .line 48
    .line 49
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    filled-new-array {v1, v2, v3, v4}, [Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lkotlin/Pair;

    .line 76
    .line 77
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "component1(...)"

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    check-cast v3, Landroid/widget/Button;

    .line 87
    .line 88
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_0

    .line 99
    .line 100
    const-string v2, "#EF4444"

    .line 101
    .line 102
    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_2

    .line 107
    :cond_0
    const-string v2, "#F0F0F6"

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x401

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const v0, 0x1000010

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Ly1/L1;->i(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-super {p0, p1}, Le/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ly1/L1;->i(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-super {p0, p1}, Le/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/minhub/gamehub/game/GameActivity;->z:LB1/z;

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    const-string v1, "physicalGamepadMappingManager"

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    const-string v2, "inputId"

    .line 68
    .line 69
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, LB1/z;->c()Ljava/util/LinkedHashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p0}, LS1/d;->e(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const-string v2, "keyCode"

    .line 102
    .line 103
    const/4 v3, 0x1

    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    if-eq v1, v3, :cond_5

    .line 107
    .line 108
    invoke-super {p0, p1}, Le/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    return p1

    .line 113
    :cond_5
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 118
    .line 119
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v0, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->e(Ljava/lang/String;Z)V

    .line 127
    .line 128
    .line 129
    return v3

    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object p1, p1, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 135
    .line 136
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0, v3}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->e(Ljava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    return v3

    .line 146
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Le/j;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    return p1
.end method

.method public final m()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lw1/d;->n:Landroid/widget/Button;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7f12012b

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const v1, 0x7f12012a

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lw1/d;->f0:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const/16 v1, 0x8

    .line 39
    .line 40
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/minhub/gamehub/game/GameActivity;->s:Z

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->m:Ly1/t1;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 56
    .line 57
    const-string v1, "webView"

    .line 58
    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v1, "wv"

    .line 63
    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "(function(){\n  if (window.__minhubFps) return;\n  window.__minhubFps = true;\n  var frames = 0, last = performance.now();\n  function loop(now){\n    frames++;\n    if (now - last >= 1000) {\n      try { window.MinHub && window.MinHub.setFps(frames); } catch(e) {}\n      frames = 0; last = now;\n    }\n    requestAnimationFrame(loop);\n  }\n  requestAnimationFrame(loop);\n})();"

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public final n(I)V
    .locals 4

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "(function(){var s=document.getElementById(\'_mh_fs\');if(s)s.remove();})();"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "(function(){var s=document.getElementById(\'_mh_fs\');if(!s){s=document.createElement(\'style\');s.id=\'_mh_fs\';document.head.appendChild(s);}s.textContent=\'*{font-size:"

    .line 7
    .line 8
    const-string v1, "px!important}\';})();"

    .line 9
    .line 10
    invoke-static {p1, v0, v1}, LE/b;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v0, v2

    .line 34
    :goto_1
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    sget-object v1, Ly1/K;->a:[I

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    aget v0, v1, v0

    .line 45
    .line 46
    :goto_2
    const/4 v1, 0x6

    .line 47
    if-eq v0, v1, :cond_5

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    if-gtz p1, :cond_4

    .line 54
    .line 55
    const-string p1, "(function(){try{if(window.Game_System&&Game_System.prototype._mhOrigMainFs){Game_System.prototype.mainFontSize=Game_System.prototype._mhOrigMainFs;delete Game_System.prototype._mhOrigMainFs;}if(typeof $gameSystem!==\'undefined\'&&$gameSystem&&$gameSystem._mhOrigMainFs){$gameSystem.mainFontSize=$gameSystem._mhOrigMainFs;delete $gameSystem._mhOrigMainFs;}}catch(e){}})();"

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v1, "(function(){try{if(window.Game_System&&typeof Game_System.prototype.mainFontSize===\'function\'){if(!Game_System.prototype._mhOrigMainFs)Game_System.prototype._mhOrigMainFs=Game_System.prototype.mainFontSize;Game_System.prototype.mainFontSize=function(){return "

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ";};}if(typeof $gameSystem!==\'undefined\'&&$gameSystem){if(!$gameSystem._mhOrigMainFs&&typeof $gameSystem.mainFontSize===\'function\')$gameSystem._mhOrigMainFs=$gameSystem.mainFontSize;$gameSystem.mainFontSize=function(){return "

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ";};}}catch(e){}})();"

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :goto_3
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 90
    .line 91
    invoke-virtual {v0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    if-gtz p1, :cond_6

    .line 96
    .line 97
    const-string p1, "(function(){if(window.Window_Base&&Window_Base.prototype._mhOrigStdFs){Window_Base.prototype.standardFontSize=Window_Base.prototype._mhOrigStdFs;delete Window_Base.prototype._mhOrigStdFs;}if(window.Game_System){if(Game_System.prototype._mhOrigGetMsgFs){Game_System.prototype.getMessageFontSize=Game_System.prototype._mhOrigGetMsgFs;delete Game_System.prototype._mhOrigGetMsgFs;}if(Game_System.prototype._mhOrigMainFs){Game_System.prototype.mainFontSize=Game_System.prototype._mhOrigMainFs;delete Game_System.prototype._mhOrigMainFs;}}})();"

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_6
    const-string v0, ";};}if(window.Game_System){if(typeof Game_System.prototype.getMessageFontSize===\'function\'){if(!Game_System.prototype._mhOrigGetMsgFs)Game_System.prototype._mhOrigGetMsgFs=Game_System.prototype.getMessageFontSize;Game_System.prototype.getMessageFontSize=function(){return "

    .line 101
    .line 102
    const-string v1, ";};}if(typeof Game_System.prototype.mainFontSize===\'function\'){if(!Game_System.prototype._mhOrigMainFs)Game_System.prototype._mhOrigMainFs=Game_System.prototype.mainFontSize;Game_System.prototype.mainFontSize=function(){return "

    .line 103
    .line 104
    const-string v3, "(function(){if(window.Window_Base){if(!Window_Base.prototype._mhOrigStdFs&&typeof Window_Base.prototype.standardFontSize===\'function\')Window_Base.prototype._mhOrigStdFs=Window_Base.prototype.standardFontSize;Window_Base.prototype.standardFontSize=function(){return "

    .line 105
    .line 106
    invoke-static {v3, p1, p1, v0, v1}, LE/b;->p(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, ";};}}})();"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    :goto_4
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 127
    .line 128
    invoke-virtual {v0, p1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->MV:Lcom/minhub/gamehub/data/GameEngine;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->MZ:Lcom/minhub/gamehub/data/GameEngine;

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const-string p1, "(function(){try{if(typeof $gameSystem!==\'undefined\'&&$gameSystem&&typeof $gameSystem.setMessageWindowWordWrap===\'function\')$gameSystem.setMessageWindowWordWrap(true);}catch(e){}if(typeof Window_Message!==\'undefined\'&&typeof Window_Message.prototype.isWordWrap===\'function\'){if(!Window_Message.prototype._mhOrigIsWW)Window_Message.prototype._mhOrigIsWW=Window_Message.prototype.isWordWrap;Window_Message.prototype.isWordWrap=function(){return true;};}})();"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const-string p1, "(function(){try{if(typeof $gameSystem!==\'undefined\'&&$gameSystem&&typeof $gameSystem.setMessageWindowWordWrap===\'function\')$gameSystem.setMessageWindowWordWrap(false);}catch(e){}if(typeof Window_Message!==\'undefined\'&&Window_Message.prototype._mhOrigIsWW){Window_Message.prototype.isWordWrap=Window_Message.prototype._mhOrigIsWW;delete Window_Message.prototype._mhOrigIsWW;}})();"

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    :goto_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "controlsCoordinator"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ly1/j1;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lw1/d;->O:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v0, v0, Lw1/d;->O:Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->x()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 83

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ly1/x;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Ly1/x;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ly1/x;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v2, v1, v3}, Ly1/x;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 16
    .line 17
    .line 18
    const-string v3, "web"

    .line 19
    .line 20
    invoke-static {v1, v3, v0, v2}, La/a;->r(Landroid/app/Activity;Ljava/lang/String;Ly1/x;Ly1/x;)LA1/v0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, v1, Lcom/minhub/gamehub/game/GameActivity;->H:LA1/v0;

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    sput-boolean v9, Ly1/L1;->b:Z

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v10, "game_id"

    .line 36
    .line 37
    const/4 v11, -0x1

    .line 38
    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {v1, v0}, Ly1/e0;->a(Landroid/app/Activity;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v2, 0x80

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->w()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const v2, 0x7f0c0020

    .line 62
    .line 63
    .line 64
    const/4 v12, 0x0

    .line 65
    invoke-virtual {v0, v2, v12, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const v2, 0x7f090077

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move-object v15, v3

    .line 77
    check-cast v15, Landroid/widget/Button;

    .line 78
    .line 79
    if-eqz v15, :cond_3

    .line 80
    .line 81
    const v2, 0x7f090078

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    move-object/from16 v16, v3

    .line 89
    .line 90
    check-cast v16, Landroid/widget/Button;

    .line 91
    .line 92
    if-eqz v16, :cond_3

    .line 93
    .line 94
    const v2, 0x7f090084

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Landroid/widget/TextView;

    .line 102
    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    const v2, 0x7f090085

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move-object/from16 v17, v3

    .line 113
    .line 114
    check-cast v17, Landroid/widget/TextView;

    .line 115
    .line 116
    if-eqz v17, :cond_3

    .line 117
    .line 118
    const v2, 0x7f09009c

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    move-object/from16 v18, v3

    .line 126
    .line 127
    check-cast v18, Landroid/widget/TextView;

    .line 128
    .line 129
    if-eqz v18, :cond_3

    .line 130
    .line 131
    const v2, 0x7f09009d

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move-object/from16 v19, v3

    .line 139
    .line 140
    check-cast v19, Landroid/widget/TextView;

    .line 141
    .line 142
    if-eqz v19, :cond_3

    .line 143
    .line 144
    const v2, 0x7f0900b4

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    move-object/from16 v20, v3

    .line 152
    .line 153
    check-cast v20, Landroid/widget/ImageView;

    .line 154
    .line 155
    if-eqz v20, :cond_3

    .line 156
    .line 157
    const v2, 0x7f0900b5

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    move-object/from16 v21, v3

    .line 165
    .line 166
    check-cast v21, Landroid/widget/Button;

    .line 167
    .line 168
    if-eqz v21, :cond_3

    .line 169
    .line 170
    const v2, 0x7f0900b6

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    move-object/from16 v22, v3

    .line 178
    .line 179
    check-cast v22, Landroid/widget/Button;

    .line 180
    .line 181
    if-eqz v22, :cond_3

    .line 182
    .line 183
    const v2, 0x7f0900b7

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    move-object/from16 v23, v3

    .line 191
    .line 192
    check-cast v23, Landroid/widget/Button;

    .line 193
    .line 194
    if-eqz v23, :cond_3

    .line 195
    .line 196
    const v2, 0x7f0900b8

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    move-object/from16 v24, v3

    .line 204
    .line 205
    check-cast v24, Landroid/widget/Button;

    .line 206
    .line 207
    if-eqz v24, :cond_3

    .line 208
    .line 209
    const v2, 0x7f0900ba

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    move-object/from16 v25, v3

    .line 217
    .line 218
    check-cast v25, Landroid/widget/Button;

    .line 219
    .line 220
    if-eqz v25, :cond_3

    .line 221
    .line 222
    const v2, 0x7f0900bb

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    move-object/from16 v26, v3

    .line 230
    .line 231
    check-cast v26, Landroid/widget/Button;

    .line 232
    .line 233
    if-eqz v26, :cond_3

    .line 234
    .line 235
    const v2, 0x7f0900bc

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    move-object/from16 v27, v3

    .line 243
    .line 244
    check-cast v27, Landroid/widget/Button;

    .line 245
    .line 246
    if-eqz v27, :cond_3

    .line 247
    .line 248
    const v2, 0x7f0900bd

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    move-object/from16 v28, v3

    .line 256
    .line 257
    check-cast v28, Landroid/widget/Button;

    .line 258
    .line 259
    if-eqz v28, :cond_3

    .line 260
    .line 261
    const v2, 0x7f0900be

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    move-object/from16 v29, v3

    .line 269
    .line 270
    check-cast v29, Landroid/widget/Button;

    .line 271
    .line 272
    if-eqz v29, :cond_3

    .line 273
    .line 274
    const v2, 0x7f0900bf

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    move-object/from16 v30, v3

    .line 282
    .line 283
    check-cast v30, Landroid/widget/Button;

    .line 284
    .line 285
    if-eqz v30, :cond_3

    .line 286
    .line 287
    const v2, 0x7f0900c0

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    move-object/from16 v31, v3

    .line 295
    .line 296
    check-cast v31, Landroid/widget/Button;

    .line 297
    .line 298
    if-eqz v31, :cond_3

    .line 299
    .line 300
    const v2, 0x7f0900c1

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    move-object/from16 v32, v3

    .line 308
    .line 309
    check-cast v32, Landroid/widget/Button;

    .line 310
    .line 311
    if-eqz v32, :cond_3

    .line 312
    .line 313
    const v2, 0x7f0900c2

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    move-object/from16 v33, v3

    .line 321
    .line 322
    check-cast v33, Landroid/widget/Button;

    .line 323
    .line 324
    if-eqz v33, :cond_3

    .line 325
    .line 326
    const v2, 0x7f0900d4

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    move-object/from16 v34, v3

    .line 334
    .line 335
    check-cast v34, Landroid/widget/Button;

    .line 336
    .line 337
    if-eqz v34, :cond_3

    .line 338
    .line 339
    const v2, 0x7f0900d5

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    move-object/from16 v35, v3

    .line 347
    .line 348
    check-cast v35, Landroid/widget/Button;

    .line 349
    .line 350
    if-eqz v35, :cond_3

    .line 351
    .line 352
    const v2, 0x7f0900d6

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    move-object/from16 v36, v3

    .line 360
    .line 361
    check-cast v36, Landroid/widget/Button;

    .line 362
    .line 363
    if-eqz v36, :cond_3

    .line 364
    .line 365
    const v2, 0x7f0900d7

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    move-object/from16 v37, v3

    .line 373
    .line 374
    check-cast v37, Landroid/widget/Button;

    .line 375
    .line 376
    if-eqz v37, :cond_3

    .line 377
    .line 378
    const v2, 0x7f0900dc

    .line 379
    .line 380
    .line 381
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    check-cast v3, Landroid/widget/LinearLayout;

    .line 386
    .line 387
    if-eqz v3, :cond_3

    .line 388
    .line 389
    const v2, 0x7f0900dd

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Landroid/widget/LinearLayout;

    .line 397
    .line 398
    if-eqz v3, :cond_3

    .line 399
    .line 400
    const v2, 0x7f0900de

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    check-cast v3, Landroid/widget/LinearLayout;

    .line 408
    .line 409
    if-eqz v3, :cond_3

    .line 410
    .line 411
    const v2, 0x7f0900e5

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    check-cast v3, Landroid/widget/TextView;

    .line 419
    .line 420
    if-eqz v3, :cond_3

    .line 421
    .line 422
    const v2, 0x7f090102

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 426
    .line 427
    .line 428
    move-result-object v38

    .line 429
    if-eqz v38, :cond_3

    .line 430
    .line 431
    const v2, 0x7f090103

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 435
    .line 436
    .line 437
    move-result-object v39

    .line 438
    if-eqz v39, :cond_3

    .line 439
    .line 440
    const v2, 0x7f090104

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object v40

    .line 447
    if-eqz v40, :cond_3

    .line 448
    .line 449
    const v2, 0x7f090105

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 453
    .line 454
    .line 455
    move-result-object v41

    .line 456
    if-eqz v41, :cond_3

    .line 457
    .line 458
    const v2, 0x7f090106

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v42

    .line 465
    if-eqz v42, :cond_3

    .line 466
    .line 467
    const v2, 0x7f090107

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object v43

    .line 474
    if-eqz v43, :cond_3

    .line 475
    .line 476
    const v2, 0x7f090108

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object v44

    .line 483
    if-eqz v44, :cond_3

    .line 484
    .line 485
    const v2, 0x7f090109

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 489
    .line 490
    .line 491
    move-result-object v45

    .line 492
    if-eqz v45, :cond_3

    .line 493
    .line 494
    const v2, 0x7f09010a

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 498
    .line 499
    .line 500
    move-result-object v46

    .line 501
    if-eqz v46, :cond_3

    .line 502
    .line 503
    const v2, 0x7f09011d

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 507
    .line 508
    .line 509
    move-result-object v3

    .line 510
    move-object/from16 v47, v3

    .line 511
    .line 512
    check-cast v47, Landroid/widget/FrameLayout;

    .line 513
    .line 514
    if-eqz v47, :cond_3

    .line 515
    .line 516
    const v2, 0x7f09014b

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 520
    .line 521
    .line 522
    move-result-object v3

    .line 523
    move-object/from16 v48, v3

    .line 524
    .line 525
    check-cast v48, Landroid/widget/FrameLayout;

    .line 526
    .line 527
    if-eqz v48, :cond_3

    .line 528
    .line 529
    const v2, 0x7f090154

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    move-object/from16 v49, v3

    .line 537
    .line 538
    check-cast v49, Landroid/widget/EditText;

    .line 539
    .line 540
    if-eqz v49, :cond_3

    .line 541
    .line 542
    const v2, 0x7f090175

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    move-object/from16 v50, v3

    .line 550
    .line 551
    check-cast v50, Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 552
    .line 553
    if-eqz v50, :cond_3

    .line 554
    .line 555
    const v2, 0x7f09019d

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    move-object/from16 v51, v3

    .line 563
    .line 564
    check-cast v51, Landroid/widget/FrameLayout;

    .line 565
    .line 566
    if-eqz v51, :cond_3

    .line 567
    .line 568
    const v2, 0x7f0901ba

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    check-cast v3, Landroid/widget/LinearLayout;

    .line 576
    .line 577
    if-eqz v3, :cond_3

    .line 578
    .line 579
    const v2, 0x7f0901bb

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    move-object/from16 v52, v3

    .line 587
    .line 588
    check-cast v52, Landroid/widget/LinearLayout;

    .line 589
    .line 590
    if-eqz v52, :cond_3

    .line 591
    .line 592
    const v2, 0x7f0901bc

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    move-object/from16 v53, v3

    .line 600
    .line 601
    check-cast v53, Landroid/widget/LinearLayout;

    .line 602
    .line 603
    if-eqz v53, :cond_3

    .line 604
    .line 605
    const v2, 0x7f0901c8

    .line 606
    .line 607
    .line 608
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    move-object/from16 v54, v3

    .line 613
    .line 614
    check-cast v54, Landroid/widget/FrameLayout;

    .line 615
    .line 616
    if-eqz v54, :cond_3

    .line 617
    .line 618
    const v2, 0x7f0901ca

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 622
    .line 623
    .line 624
    move-result-object v3

    .line 625
    move-object/from16 v55, v3

    .line 626
    .line 627
    check-cast v55, Landroid/widget/FrameLayout;

    .line 628
    .line 629
    if-eqz v55, :cond_3

    .line 630
    .line 631
    const v2, 0x7f0901cb

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    move-object/from16 v56, v3

    .line 639
    .line 640
    check-cast v56, Landroid/widget/LinearLayout;

    .line 641
    .line 642
    if-eqz v56, :cond_3

    .line 643
    .line 644
    const v2, 0x7f0901cc

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    move-object/from16 v57, v3

    .line 652
    .line 653
    check-cast v57, Landroid/widget/ScrollView;

    .line 654
    .line 655
    if-eqz v57, :cond_3

    .line 656
    .line 657
    const v2, 0x7f0901cd

    .line 658
    .line 659
    .line 660
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    move-object/from16 v58, v3

    .line 665
    .line 666
    check-cast v58, Landroid/widget/LinearLayout;

    .line 667
    .line 668
    if-eqz v58, :cond_3

    .line 669
    .line 670
    const v2, 0x7f0901ce

    .line 671
    .line 672
    .line 673
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    move-object/from16 v59, v3

    .line 678
    .line 679
    check-cast v59, Landroid/widget/LinearLayout;

    .line 680
    .line 681
    if-eqz v59, :cond_3

    .line 682
    .line 683
    const v2, 0x7f0901cf

    .line 684
    .line 685
    .line 686
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    move-object/from16 v60, v3

    .line 691
    .line 692
    check-cast v60, Landroid/widget/LinearLayout;

    .line 693
    .line 694
    if-eqz v60, :cond_3

    .line 695
    .line 696
    const v2, 0x7f0901d0

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v3

    .line 703
    move-object/from16 v61, v3

    .line 704
    .line 705
    check-cast v61, Landroid/widget/LinearLayout;

    .line 706
    .line 707
    if-eqz v61, :cond_3

    .line 708
    .line 709
    const v2, 0x7f0901d3

    .line 710
    .line 711
    .line 712
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 713
    .line 714
    .line 715
    move-result-object v3

    .line 716
    move-object/from16 v62, v3

    .line 717
    .line 718
    check-cast v62, Landroid/widget/LinearLayout;

    .line 719
    .line 720
    if-eqz v62, :cond_3

    .line 721
    .line 722
    const v2, 0x7f090282

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    move-object/from16 v63, v3

    .line 730
    .line 731
    check-cast v63, Landroid/widget/LinearLayout;

    .line 732
    .line 733
    if-eqz v63, :cond_3

    .line 734
    .line 735
    const v2, 0x7f090283

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    move-object/from16 v64, v3

    .line 743
    .line 744
    check-cast v64, Landroid/widget/LinearLayout;

    .line 745
    .line 746
    if-eqz v64, :cond_3

    .line 747
    .line 748
    const v2, 0x7f090284

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    move-object/from16 v65, v3

    .line 756
    .line 757
    check-cast v65, Landroid/widget/LinearLayout;

    .line 758
    .line 759
    if-eqz v65, :cond_3

    .line 760
    .line 761
    const v2, 0x7f090285

    .line 762
    .line 763
    .line 764
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    move-object/from16 v66, v3

    .line 769
    .line 770
    check-cast v66, Landroid/widget/LinearLayout;

    .line 771
    .line 772
    if-eqz v66, :cond_3

    .line 773
    .line 774
    const v2, 0x7f090286

    .line 775
    .line 776
    .line 777
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    move-object/from16 v67, v3

    .line 782
    .line 783
    check-cast v67, Landroid/widget/LinearLayout;

    .line 784
    .line 785
    if-eqz v67, :cond_3

    .line 786
    .line 787
    const v2, 0x7f090289

    .line 788
    .line 789
    .line 790
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    move-object/from16 v68, v3

    .line 795
    .line 796
    check-cast v68, Landroidx/recyclerview/widget/RecyclerView;

    .line 797
    .line 798
    if-eqz v68, :cond_3

    .line 799
    .line 800
    const v2, 0x7f090292

    .line 801
    .line 802
    .line 803
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    move-object/from16 v69, v3

    .line 808
    .line 809
    check-cast v69, Landroid/widget/SeekBar;

    .line 810
    .line 811
    if-eqz v69, :cond_3

    .line 812
    .line 813
    const v2, 0x7f0902a7

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    check-cast v3, Landroid/widget/SeekBar;

    .line 821
    .line 822
    if-eqz v3, :cond_3

    .line 823
    .line 824
    const v2, 0x7f0902a8

    .line 825
    .line 826
    .line 827
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    check-cast v3, Landroid/widget/SeekBar;

    .line 832
    .line 833
    if-eqz v3, :cond_3

    .line 834
    .line 835
    const v2, 0x7f0902ac

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    check-cast v3, Landroid/widget/LinearLayout;

    .line 843
    .line 844
    if-eqz v3, :cond_3

    .line 845
    .line 846
    const v2, 0x7f0902d8

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    move-object/from16 v70, v3

    .line 854
    .line 855
    check-cast v70, Landroid/widget/Switch;

    .line 856
    .line 857
    if-eqz v70, :cond_3

    .line 858
    .line 859
    const v2, 0x7f090323

    .line 860
    .line 861
    .line 862
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    check-cast v3, Landroid/widget/TextView;

    .line 867
    .line 868
    if-eqz v3, :cond_3

    .line 869
    .line 870
    const v2, 0x7f09034b

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    move-object/from16 v71, v3

    .line 878
    .line 879
    check-cast v71, Landroid/widget/TextView;

    .line 880
    .line 881
    if-eqz v71, :cond_3

    .line 882
    .line 883
    const v2, 0x7f090364

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    check-cast v3, Landroid/widget/TextView;

    .line 891
    .line 892
    if-eqz v3, :cond_3

    .line 893
    .line 894
    const v2, 0x7f09036a

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    move-object/from16 v72, v3

    .line 902
    .line 903
    check-cast v72, Landroid/widget/TextView;

    .line 904
    .line 905
    if-eqz v72, :cond_3

    .line 906
    .line 907
    const v2, 0x7f09036b

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 911
    .line 912
    .line 913
    move-result-object v3

    .line 914
    move-object/from16 v73, v3

    .line 915
    .line 916
    check-cast v73, Landroid/widget/TextView;

    .line 917
    .line 918
    if-eqz v73, :cond_3

    .line 919
    .line 920
    const v2, 0x7f09036c

    .line 921
    .line 922
    .line 923
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 924
    .line 925
    .line 926
    move-result-object v3

    .line 927
    move-object/from16 v74, v3

    .line 928
    .line 929
    check-cast v74, Landroid/widget/TextView;

    .line 930
    .line 931
    if-eqz v74, :cond_3

    .line 932
    .line 933
    const v2, 0x7f09036d

    .line 934
    .line 935
    .line 936
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 937
    .line 938
    .line 939
    move-result-object v3

    .line 940
    move-object/from16 v75, v3

    .line 941
    .line 942
    check-cast v75, Landroid/widget/TextView;

    .line 943
    .line 944
    if-eqz v75, :cond_3

    .line 945
    .line 946
    const v2, 0x7f09036e

    .line 947
    .line 948
    .line 949
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 950
    .line 951
    .line 952
    move-result-object v3

    .line 953
    move-object/from16 v76, v3

    .line 954
    .line 955
    check-cast v76, Landroid/widget/TextView;

    .line 956
    .line 957
    if-eqz v76, :cond_3

    .line 958
    .line 959
    const v2, 0x7f09036f

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    move-object/from16 v77, v3

    .line 967
    .line 968
    check-cast v77, Landroid/widget/TextView;

    .line 969
    .line 970
    if-eqz v77, :cond_3

    .line 971
    .line 972
    const v2, 0x7f090372

    .line 973
    .line 974
    .line 975
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 976
    .line 977
    .line 978
    move-result-object v3

    .line 979
    move-object/from16 v78, v3

    .line 980
    .line 981
    check-cast v78, Landroid/widget/TextView;

    .line 982
    .line 983
    if-eqz v78, :cond_3

    .line 984
    .line 985
    const v2, 0x7f090374

    .line 986
    .line 987
    .line 988
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 989
    .line 990
    .line 991
    move-result-object v3

    .line 992
    check-cast v3, Landroid/widget/TextView;

    .line 993
    .line 994
    if-eqz v3, :cond_3

    .line 995
    .line 996
    const v2, 0x7f090382

    .line 997
    .line 998
    .line 999
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v3

    .line 1003
    move-object/from16 v79, v3

    .line 1004
    .line 1005
    check-cast v79, Landroid/widget/TextView;

    .line 1006
    .line 1007
    if-eqz v79, :cond_3

    .line 1008
    .line 1009
    const v2, 0x7f0903a3

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    check-cast v3, Landroid/widget/TextView;

    .line 1017
    .line 1018
    if-eqz v3, :cond_3

    .line 1019
    .line 1020
    const v2, 0x7f0903a8

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v3

    .line 1027
    move-object/from16 v80, v3

    .line 1028
    .line 1029
    check-cast v80, Landroid/widget/TextView;

    .line 1030
    .line 1031
    if-eqz v80, :cond_3

    .line 1032
    .line 1033
    const v2, 0x7f0903b8

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v3

    .line 1040
    move-object/from16 v81, v3

    .line 1041
    .line 1042
    check-cast v81, Landroid/widget/TextView;

    .line 1043
    .line 1044
    if-eqz v81, :cond_3

    .line 1045
    .line 1046
    const v2, 0x7f0903ca

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v3

    .line 1053
    move-object/from16 v82, v3

    .line 1054
    .line 1055
    check-cast v82, Landroid/webkit/WebView;

    .line 1056
    .line 1057
    if-eqz v82, :cond_3

    .line 1058
    .line 1059
    new-instance v13, Lw1/d;

    .line 1060
    .line 1061
    move-object v14, v0

    .line 1062
    check-cast v14, Landroid/widget/FrameLayout;

    .line 1063
    .line 1064
    invoke-direct/range {v13 .. v82}, Lw1/d;-><init>(Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/EditText;Lcom/minhub/gamehub/gamepad/GamepadOverlay;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/SeekBar;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/webkit/WebView;)V

    .line 1065
    .line 1066
    .line 1067
    const-string v0, "inflate(...)"

    .line 1068
    .line 1069
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    const-string v0, "<set-?>"

    .line 1073
    .line 1074
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    iput-object v13, v1, Lcom/minhub/gamehub/game/GameActivity;->e:Lw1/d;

    .line 1078
    .line 1079
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v2

    .line 1083
    iget-object v2, v2, Lw1/d;->a:Landroid/widget/FrameLayout;

    .line 1084
    .line 1085
    invoke-virtual {v1, v2}, Le/j;->setContentView(Landroid/view/View;)V

    .line 1086
    .line 1087
    .line 1088
    new-instance v2, Lcom/minhub/gamehub/data/SaveRepository;

    .line 1089
    .line 1090
    invoke-direct {v2, v1}, Lcom/minhub/gamehub/data/SaveRepository;-><init>(Landroid/content/Context;)V

    .line 1091
    .line 1092
    .line 1093
    iput-object v2, v1, Lcom/minhub/gamehub/game/GameActivity;->x:Lcom/minhub/gamehub/data/SaveRepository;

    .line 1094
    .line 1095
    new-instance v2, LB1/z;

    .line 1096
    .line 1097
    invoke-direct {v2, v1}, LB1/z;-><init>(Landroid/content/Context;)V

    .line 1098
    .line 1099
    .line 1100
    iput-object v2, v1, Lcom/minhub/gamehub/game/GameActivity;->z:LB1/z;

    .line 1101
    .line 1102
    const v2, 0x7f09007b

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v2

    .line 1109
    const-string v3, "findViewById(...)"

    .line 1110
    .line 1111
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    check-cast v2, Landroid/widget/ImageView;

    .line 1115
    .line 1116
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    .line 1118
    .line 1119
    iput-object v2, v1, Lcom/minhub/gamehub/game/GameActivity;->f:Landroid/widget/ImageView;

    .line 1120
    .line 1121
    const v2, 0x7f09007f

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v1, v2}, Le/j;->findViewById(I)Landroid/view/View;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v2

    .line 1128
    const-string v3, "null cannot be cast to non-null type android.widget.ImageView"

    .line 1129
    .line 1130
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    check-cast v2, Landroid/widget/ImageView;

    .line 1134
    .line 1135
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    iput-object v2, v1, Lcom/minhub/gamehub/game/GameActivity;->g:Landroid/widget/ImageView;

    .line 1139
    .line 1140
    new-instance v0, Ly1/j1;

    .line 1141
    .line 1142
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v2

    .line 1146
    iget-object v2, v2, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 1147
    .line 1148
    const-string v3, "gamepadOverlay"

    .line 1149
    .line 1150
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v3

    .line 1157
    iget-object v3, v3, Lw1/d;->H:Landroid/widget/FrameLayout;

    .line 1158
    .line 1159
    const-string v4, "controlsHost"

    .line 1160
    .line 1161
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v4

    .line 1168
    iget-object v4, v4, Lw1/d;->L:Landroid/widget/FrameLayout;

    .line 1169
    .line 1170
    const-string v5, "keyboardHost"

    .line 1171
    .line 1172
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v5

    .line 1179
    iget-object v5, v5, Lw1/d;->I:Landroid/widget/FrameLayout;

    .line 1180
    .line 1181
    const-string v6, "editorHost"

    .line 1182
    .line 1183
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v6

    .line 1190
    iget-object v6, v6, Lw1/d;->N:Landroid/widget/LinearLayout;

    .line 1191
    .line 1192
    const-string v7, "layoutArrangeToolbar"

    .line 1193
    .line 1194
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v7

    .line 1201
    iget-object v7, v7, Lw1/d;->M:Landroid/widget/LinearLayout;

    .line 1202
    .line 1203
    const-string v8, "layoutArrangeProperties"

    .line 1204
    .line 1205
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    new-instance v8, Ly1/u;

    .line 1209
    .line 1210
    const/4 v13, 0x2

    .line 1211
    invoke-direct {v8, v1, v13}, Ly1/u;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1212
    .line 1213
    .line 1214
    invoke-direct/range {v0 .. v8}, Ly1/j1;-><init>(Landroid/app/Activity;Lcom/minhub/gamehub/gamepad/GamepadOverlay;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 1215
    .line 1216
    .line 1217
    iput-object v0, v1, Lcom/minhub/gamehub/game/GameActivity;->u:Ly1/j1;

    .line 1218
    .line 1219
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    iget-object v0, v0, Lw1/d;->b:Landroid/widget/Button;

    .line 1224
    .line 1225
    new-instance v2, Ly1/G;

    .line 1226
    .line 1227
    const/4 v3, 0x1

    .line 1228
    invoke-direct {v2, v1, v3}, Ly1/G;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v0

    .line 1238
    iget-object v0, v0, Lw1/d;->c:Landroid/widget/Button;

    .line 1239
    .line 1240
    new-instance v2, Ly1/G;

    .line 1241
    .line 1242
    const/4 v3, 0x0

    .line 1243
    invoke-direct {v2, v1, v3}, Ly1/G;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1247
    .line 1248
    .line 1249
    new-instance v0, LC1/g2;

    .line 1250
    .line 1251
    new-instance v2, Lcom/minhub/gamehub/hub/catalog/h;

    .line 1252
    .line 1253
    const/16 v3, 0xc

    .line 1254
    .line 1255
    invoke-direct {v2, v3}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 1256
    .line 1257
    .line 1258
    new-instance v3, Lcom/minhub/gamehub/hub/catalog/h;

    .line 1259
    .line 1260
    const/16 v4, 0xd

    .line 1261
    .line 1262
    invoke-direct {v3, v4}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 1263
    .line 1264
    .line 1265
    new-instance v4, Ly1/v;

    .line 1266
    .line 1267
    const/4 v5, 0x0

    .line 1268
    invoke-direct {v4, v1, v5}, Ly1/v;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1269
    .line 1270
    .line 1271
    invoke-direct {v0, v2, v3, v4, v9}, LC1/g2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    .line 1272
    .line 1273
    .line 1274
    iput-object v0, v1, Lcom/minhub/gamehub/game/GameActivity;->y:LC1/g2;

    .line 1275
    .line 1276
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    iget-object v0, v0, Lw1/d;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 1281
    .line 1282
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1283
    .line 1284
    const/4 v3, 0x1

    .line 1285
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LP/g0;)V

    .line 1289
    .line 1290
    .line 1291
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1292
    .line 1293
    .line 1294
    move-result-object v0

    .line 1295
    iget-object v0, v0, Lw1/d;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 1296
    .line 1297
    iget-object v2, v1, Lcom/minhub/gamehub/game/GameActivity;->y:LC1/g2;

    .line 1298
    .line 1299
    if-nez v2, :cond_1

    .line 1300
    .line 1301
    const-string v2, "loadSaveAdapter"

    .line 1302
    .line 1303
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1304
    .line 1305
    .line 1306
    goto :goto_0

    .line 1307
    :cond_1
    move-object v12, v2

    .line 1308
    :goto_0
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LP/W;)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual {v1}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    iget-object v0, v0, Lw1/d;->d:Landroid/widget/TextView;

    .line 1316
    .line 1317
    new-instance v2, Ly1/w;

    .line 1318
    .line 1319
    const/4 v3, 0x0

    .line 1320
    invoke-direct {v2, v1, v3}, Ly1/w;-><init>(Lcom/minhub/gamehub/game/GameActivity;I)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    .line 1325
    .line 1326
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1327
    .line 1328
    .line 1329
    move-result-object v0

    .line 1330
    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1331
    .line 1332
    .line 1333
    move-result v0

    .line 1334
    if-ne v0, v11, :cond_2

    .line 1335
    .line 1336
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1337
    .line 1338
    .line 1339
    return-void

    .line 1340
    :cond_2
    iget-object v2, v1, Lcom/minhub/gamehub/game/GameActivity;->k:Landroidx/lifecycle/ViewModelLazy;

    .line 1341
    .line 1342
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    check-cast v2, LC1/Z0;

    .line 1347
    .line 1348
    iget-object v2, v2, LC1/Z0;->b:Landroidx/lifecycle/LiveData;

    .line 1349
    .line 1350
    new-instance v3, LA1/F;

    .line 1351
    .line 1352
    const/4 v4, 0x3

    .line 1353
    invoke-direct {v3, v1, v0, v4}, LA1/F;-><init>(Ljava/lang/Object;II)V

    .line 1354
    .line 1355
    .line 1356
    new-instance v0, LC1/x0;

    .line 1357
    .line 1358
    const/4 v4, 0x0

    .line 1359
    invoke-direct {v0, v3, v4}, LC1/x0;-><init>(LA1/F;B)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v2, v1, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 1363
    .line 1364
    .line 1365
    return-void

    .line 1366
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v0

    .line 1374
    new-instance v2, Ljava/lang/NullPointerException;

    .line 1375
    .line 1376
    const-string v3, "Missing required view with ID: "

    .line 1377
    .line 1378
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v0

    .line 1382
    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1383
    .line 1384
    .line 1385
    throw v2
.end method

.method public final onDestroy()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->I:Ljava/io/File;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget-object v1, Ly1/X;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v1, "gameRoot"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 13
    .line 14
    invoke-static {v0}, Ly1/X;->a(Ljava/io/File;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Ly1/X;->a:Ljava/util/HashMap;

    .line 19
    .line 20
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Ljava/lang/Integer;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_4

    .line 37
    :cond_0
    move v3, v4

    .line 38
    :goto_0
    const/4 v5, 0x1

    .line 39
    sub-int/2addr v3, v5

    .line 40
    if-lez v3, :cond_1

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v2, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_1
    if-lez v3, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v5, v4

    .line 57
    :goto_2
    :try_start_2
    monitor-exit v2

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 62
    .line 63
    const-string v2, "_minhub_boot.html"

    .line 64
    .line 65
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_6

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    goto :goto_5

    .line 90
    :goto_4
    monitor-exit v2

    .line 91
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    :goto_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    move-object v0, v1

    .line 111
    :cond_5
    check-cast v0, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    :cond_6
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->I:Ljava/io/File;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    invoke-virtual {v1}, LQ1/d;->b()V

    .line 124
    .line 125
    .line 126
    :cond_7
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->H:LA1/v0;

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    invoke-virtual {v0}, LA1/v0;->b()V

    .line 133
    .line 134
    .line 135
    :cond_8
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->h:Landroid/animation/AnimatorSet;

    .line 136
    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 140
    .line 141
    .line 142
    :cond_9
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->i:Landroid/animation/AnimatorSet;

    .line 143
    .line 144
    if-eqz v0, :cond_a

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 147
    .line 148
    .line 149
    :cond_a
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->j:Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    if-eqz v0, :cond_b

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 154
    .line 155
    .line 156
    :cond_b
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 163
    .line 164
    .line 165
    invoke-super {p0}, Le/j;->onDestroy()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, LS1/d;->e(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_b

    .line 11
    .line 12
    const v0, 0x1000010

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    const/16 v0, 0xf

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x3f000000    # 0.5f

    .line 40
    .line 41
    cmpg-float v2, v2, v3

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-gez v2, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    cmpg-float v2, v2, v3

    .line 51
    .line 52
    if-gez v2, :cond_1

    .line 53
    .line 54
    move-object v0, v4

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    cmpl-float v2, v2, v3

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    if-lez v2, :cond_3

    .line 68
    .line 69
    cmpl-float v0, v0, v3

    .line 70
    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    const-string v0, "DPAD_RIGHT"

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "DPAD_LEFT"

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    cmpl-float v0, v1, v3

    .line 80
    .line 81
    if-lez v0, :cond_4

    .line 82
    .line 83
    const-string v0, "DPAD_DOWN"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const-string v0, "DPAD_UP"

    .line 87
    .line 88
    :goto_0
    iget-object v1, p0, Lcom/minhub/gamehub/game/GameActivity;->B:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/minhub/gamehub/game/GameActivity;->B:Ljava/lang/String;

    .line 102
    .line 103
    const-string v2, "inputId"

    .line 104
    .line 105
    const-string v3, "keyCode"

    .line 106
    .line 107
    const-string v5, "physicalGamepadMappingManager"

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    iget-object v6, p0, Lcom/minhub/gamehub/game/GameActivity;->z:LB1/z;

    .line 112
    .line 113
    if-nez v6, :cond_6

    .line 114
    .line 115
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    move-object v6, v4

    .line 119
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, LB1/z;->c()Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    iget-object v6, v6, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 142
    .line 143
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-virtual {v6, v1, v7}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->e(Ljava/lang/String;Z)V

    .line 148
    .line 149
    .line 150
    :cond_7
    const/4 v1, 0x1

    .line 151
    if-eqz v0, :cond_9

    .line 152
    .line 153
    iget-object v6, p0, Lcom/minhub/gamehub/game/GameActivity;->z:LB1/z;

    .line 154
    .line 155
    if-nez v6, :cond_8

    .line 156
    .line 157
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_8
    move-object v4, v6

    .line 162
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4}, LB1/z;->c()Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/String;

    .line 177
    .line 178
    if-eqz v2, :cond_9

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget-object v4, v4, Lw1/d;->K:Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 185
    .line 186
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v2, v1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->e(Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    :cond_9
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->B:Ljava/lang/String;

    .line 193
    .line 194
    if-eqz v0, :cond_a

    .line 195
    .line 196
    return v1

    .line 197
    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    return p1

    .line 202
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    return p1
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onTrimMemory(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    if-ge p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->e:Lw1/d;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v1, "onTrimMemory level="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, " -> trimming textures"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "MinHub-Memory"

    .line 34
    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lw1/d;->q0:Landroid/webkit/WebView;

    .line 43
    .line 44
    const-string v0, "(function(){try{var r=window.Graphics&&(Graphics._renderer||(Graphics.app&&Graphics.app.renderer));if(r&&r.textureGC){var m=r.textureGC.maxIdle;r.textureGC.maxIdle=60;r.textureGC.run();r.textureGC.maxIdle=m;}var c=window.ImageManager&&ImageManager._imageCache;if(c&&c._truncateCache&&window.ImageCache){var l=ImageCache.limit;ImageCache.limit=l/2;c._truncateCache();ImageCache.limit=l;}}catch(e){}})()"

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LS1/c;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->w()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/minhub/gamehub/game/GameActivity;->p:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const v2, 0xea60

    .line 9
    .line 10
    .line 11
    int-to-long v2, v2

    .line 12
    div-long/2addr v0, v2

    .line 13
    long-to-int v0, v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v3, LC1/i1;

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v3, p0, v1, v0, v4}, LC1/i1;-><init>(Lcom/minhub/gamehub/game/GameActivity;Lcom/minhub/gamehub/data/Game;ILkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    invoke-static {v2, v4, v3, v0}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final u()Lw1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->e:Lw1/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final v()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "basicCheatQuickButton"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getDecorView(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x1e

    .line 17
    .line 18
    if-lt v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/core/view/o;->m(Landroid/view/Window;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, LP0/c;->l(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Landroidx/core/view/o;->p()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v0, v1}, LP0/c;->C(Landroid/view/WindowInsetsController;I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Landroidx/core/view/o;->r(Landroid/view/WindowInsetsController;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void

    .line 44
    :cond_1
    const/16 v1, 0x1706

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final x()V
    .locals 5

    .line 1
    new-instance v0, Ly1/o1;

    .line 2
    .line 3
    invoke-direct {v0}, Ly1/o1;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->r:Ly1/o1;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->E()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->o:Lcom/minhub/gamehub/data/Game;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    sget-object v1, Lcom/minhub/gamehub/data/GameEngine;->BROWSE:Lcom/minhub/gamehub/data/GameEngine;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v2

    .line 29
    :goto_1
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lw1/d;->X:Landroid/widget/LinearLayout;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lw1/d;->Y:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    const/16 v3, 0x8

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    move v4, v3

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    move v4, v2

    .line 51
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Lw1/d;->b0:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    move v4, v3

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    move v4, v2

    .line 65
    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v1, v1, Lw1/d;->Z:Landroid/widget/LinearLayout;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    move v3, v2

    .line 78
    :goto_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v0, v0, Lw1/d;->a0:Landroid/widget/LinearLayout;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/minhub/gamehub/game/GameActivity;->u()Lw1/d;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v0, v0, Lw1/d;->P:Landroid/widget/FrameLayout;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final y(LQ1/d;)Z
    .locals 1

    .line 1
    const-string v0, "session"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/game/GameActivity;->n:LQ1/d;

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    iget-boolean p1, p1, LQ1/d;->c:Z

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method
