.class public abstract Ly1/G1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;

.field public static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "^renpy7(-\\d+(\\.\\d+)*)?$"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly1/G1;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    new-instance v2, LL1/a;

    .line 11
    .line 12
    sget-object v0, Ly1/v1;->i:Ly1/v1;

    .line 13
    .line 14
    iget-object v3, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v1, LL1/e;->c:Lkotlin/text/Regex;

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    const/4 v12, 0x7

    .line 21
    filled-new-array {v12, v1, v12}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, La/a;->v([I)LL1/e;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget v6, v0, Ly1/v1;->e:I

    .line 30
    .line 31
    iget-object v10, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 32
    .line 33
    const/16 v11, 0x70

    .line 34
    .line 35
    const-string v5, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.8.7/PluginRenpy7.zip"

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    invoke-direct/range {v2 .. v11}, LL1/a;-><init>(Ljava/lang/String;LL1/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    new-instance v13, LL1/a;

    .line 44
    .line 45
    iget-object v14, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v0, 0x6

    .line 48
    const/4 v1, 0x3

    .line 49
    filled-new-array {v12, v0, v1}, [I

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, La/a;->v([I)LL1/e;

    .line 54
    .line 55
    .line 56
    move-result-object v15

    .line 57
    const/16 v21, 0x0

    .line 58
    .line 59
    const/16 v22, 0xf8

    .line 60
    .line 61
    const-string v16, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.6.3/PluginRenpy7.zip"

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    const/16 v19, 0x0

    .line 68
    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    invoke-direct/range {v13 .. v22}, LL1/a;-><init>(Ljava/lang/String;LL1/e;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    filled-new-array {v2, v13}, [LL1/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, Ly1/G1;->b:Ljava/util/List;

    .line 83
    .line 84
    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 1
    const-string v0, "gamePath"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, LS1/b;->a:Ljava/io/File;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    move-object v0, p0

    .line 22
    :cond_1
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    move-object p0, v0

    .line 45
    :goto_3
    check-cast p0, Ljava/io/File;

    .line 46
    .line 47
    return-object p0
.end method

.method public static b(LL1/a;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "build"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, LL1/a;->b:LL1/e;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Ren\'Py "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " Runtime"

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
    return-object p0
.end method

.method public static final c(Ljava/lang/String;)LL1/a;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    sget-object v1, Ly1/G1;->a:Lkotlin/text/Regex;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Ly1/G1;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v3, v2

    .line 30
    check-cast v3, LL1/a;

    .line 31
    .line 32
    invoke-virtual {v3}, LL1/a;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    move-object v0, v2

    .line 43
    :cond_2
    check-cast v0, LL1/a;

    .line 44
    .line 45
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "installKey"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ly1/v1;->i:Ly1/v1;

    .line 7
    .line 8
    iget-object v0, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, "renpy7-priv"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string v0, "-priv"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "installKey"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ly1/v1;->i:Ly1/v1;

    .line 7
    .line 8
    iget-object v0, v0, Ly1/v1;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string p0, "renpy7_priv.version"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string v0, "_priv.version"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v2, "saves"

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance v3, Ljava/io/File;

    .line 21
    .line 22
    sget-object v4, Lcom/minhub/gamehub/data/RenpySaveIsolation;->INSTANCE:Lcom/minhub/gamehub/data/RenpySaveIsolation;

    .line 23
    .line 24
    invoke-virtual {v4, p0, p2}, Lcom/minhub/gamehub/data/RenpySaveIsolation;->publicDirFor(Ljava/io/File;I)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p1, v1

    .line 44
    :goto_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    new-instance p0, Ljava/io/File;

    .line 47
    .line 48
    sget-object p2, Ly1/E1;->a:Ljava/util/Set;

    .line 49
    .line 50
    new-instance p2, Ljava/io/File;

    .line 51
    .line 52
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Ly1/E1;->c(Ljava/io/File;)Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-direct {p0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return-object v0
.end method

.method public static g(Lcom/minhub/gamehub/data/GameEngine;Ljava/lang/String;Ljava/util/ArrayList;)LL1/c;
    .locals 7

    .line 1
    const-string v0, "engine"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "saveDirs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/minhub/gamehub/data/GameEngine;->RENPY7:Lcom/minhub/gamehub/data/GameEngine;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_e

    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_8

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object p1, v1

    .line 28
    :goto_0
    if-eqz p1, :cond_8

    .line 29
    .line 30
    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    new-instance p0, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "gamePath"

    .line 38
    .line 39
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Ly1/B1;->b(Ljava/io/File;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    goto :goto_5

    .line 49
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p1, LS1/b;->a:Ljava/io/File;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move-object p1, v1

    .line 61
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    goto :goto_3

    .line 66
    :goto_2
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    move-object p1, v1

    .line 83
    :cond_4
    check-cast p1, Ljava/io/File;

    .line 84
    .line 85
    if-eqz p1, :cond_6

    .line 86
    .line 87
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_5

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    move-object p1, v1

    .line 95
    :goto_4
    if-eqz p1, :cond_6

    .line 96
    .line 97
    invoke-static {p1}, Ly1/B1;->b(Ljava/io/File;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    move-object p1, p0

    .line 102
    goto :goto_5

    .line 103
    :cond_6
    move-object p1, v1

    .line 104
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    goto :goto_6

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 111
    .line 112
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :goto_6
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    move-object p0, v1

    .line 127
    :cond_7
    check-cast p0, Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_8
    move-object p0, v1

    .line 131
    :goto_7
    :try_start_3
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 132
    .line 133
    invoke-static {p2}, Ly1/L1;->q(Ljava/util/ArrayList;)LL1/e;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    goto :goto_8

    .line 142
    :catchall_2
    move-exception p1

    .line 143
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 144
    .line 145
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    :goto_8
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_9

    .line 158
    .line 159
    move-object p1, v1

    .line 160
    :cond_9
    check-cast p1, LL1/e;

    .line 161
    .line 162
    sget-object p2, LL1/e;->c:Lkotlin/text/Regex;

    .line 163
    .line 164
    if-eqz p0, :cond_b

    .line 165
    .line 166
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    if-eqz p2, :cond_a

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_a
    sget-object p2, LL1/e;->c:Lkotlin/text/Regex;

    .line 174
    .line 175
    const/4 v0, 0x2

    .line 176
    const/4 v2, 0x0

    .line 177
    invoke-static {p2, p0, v2, v0, v1}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    new-instance v0, LL1/d;

    .line 182
    .line 183
    invoke-direct {v0, v2}, LL1/d;-><init>(I)V

    .line 184
    .line 185
    .line 186
    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    const/4 v0, 0x4

    .line 191
    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->take(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-static {p2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_c

    .line 204
    .line 205
    :cond_b
    :goto_9
    move-object v0, v1

    .line 206
    goto :goto_a

    .line 207
    :cond_c
    new-instance v0, LL1/e;

    .line 208
    .line 209
    invoke-direct {v0, p2}, LL1/e;-><init>(Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    :goto_a
    const-string p2, "builds"

    .line 213
    .line 214
    sget-object v2, Ly1/G1;->b:Ljava/util/List;

    .line 215
    .line 216
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v2, v0}, Lcom/bumptech/glide/d;->W(Ljava/util/List;LL1/e;)LL1/c;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    if-nez p2, :cond_d

    .line 224
    .line 225
    move-object p2, v1

    .line 226
    goto/16 :goto_d

    .line 227
    .line 228
    :cond_d
    if-eqz p1, :cond_16

    .line 229
    .line 230
    new-instance v0, LL1/e;

    .line 231
    .line 232
    iget-object v3, p1, LL1/e;->b:Ljava/util/List;

    .line 233
    .line 234
    const/4 v4, 0x3

    .line 235
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-direct {v0, v3}, LL1/e;-><init>(Ljava/util/List;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, p2, LL1/c;->a:LL1/a;

    .line 243
    .line 244
    iget-object v3, v3, LL1/a;->b:LL1/e;

    .line 245
    .line 246
    invoke-virtual {v3, v0}, LL1/e;->a(LL1/e;)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-ltz v3, :cond_e

    .line 251
    .line 252
    goto :goto_d

    .line 253
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    :cond_f
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_10

    .line 267
    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    move-object v5, v4

    .line 273
    check-cast v5, LL1/a;

    .line 274
    .line 275
    iget-object v5, v5, LL1/a;->b:LL1/e;

    .line 276
    .line 277
    invoke-virtual {v5, v0}, LL1/e;->a(LL1/e;)I

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-ltz v5, :cond_f

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-nez v2, :cond_11

    .line 296
    .line 297
    move-object v2, v1

    .line 298
    goto :goto_c

    .line 299
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_12

    .line 308
    .line 309
    goto :goto_c

    .line 310
    :cond_12
    move-object v3, v2

    .line 311
    check-cast v3, LL1/a;

    .line 312
    .line 313
    iget-object v3, v3, LL1/a;->b:LL1/e;

    .line 314
    .line 315
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    move-object v5, v4

    .line 320
    check-cast v5, LL1/a;

    .line 321
    .line 322
    iget-object v5, v5, LL1/a;->b:LL1/e;

    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3, v5}, LL1/e;->a(LL1/e;)I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-lez v6, :cond_14

    .line 332
    .line 333
    move-object v2, v4

    .line 334
    move-object v3, v5

    .line 335
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v4

    .line 339
    if-nez v4, :cond_13

    .line 340
    .line 341
    :goto_c
    check-cast v2, LL1/a;

    .line 342
    .line 343
    if-nez v2, :cond_15

    .line 344
    .line 345
    goto :goto_d

    .line 346
    :cond_15
    new-instance p2, LL1/c;

    .line 347
    .line 348
    sget-object v0, LL1/b;->f:LL1/b;

    .line 349
    .line 350
    invoke-direct {p2, v2, v0}, LL1/c;-><init>(LL1/a;LL1/b;)V

    .line 351
    .line 352
    .line 353
    :cond_16
    :goto_d
    if-nez p2, :cond_17

    .line 354
    .line 355
    :goto_e
    return-object v1

    .line 356
    :cond_17
    if-nez p0, :cond_18

    .line 357
    .line 358
    const-string p0, "no version"

    .line 359
    .line 360
    :cond_18
    if-eqz p1, :cond_19

    .line 361
    .line 362
    goto :goto_f

    .line 363
    :cond_19
    const-string p1, "none"

    .line 364
    .line 365
    :goto_f
    iget-object v0, p2, LL1/c;->a:LL1/a;

    .line 366
    .line 367
    iget-object v1, v0, LL1/a;->b:LL1/e;

    .line 368
    .line 369
    iget-object v2, p2, LL1/c;->b:LL1/b;

    .line 370
    .line 371
    invoke-virtual {v0}, LL1/a;->a()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v4, "game declares "

    .line 378
    .line 379
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string p0, ", saves written by "

    .line 386
    .line 387
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string p0, " -> Ren\'Py "

    .line 394
    .line 395
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string p0, " ("

    .line 402
    .line 403
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string p0, ", folder "

    .line 410
    .line 411
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string p0, ")"

    .line 418
    .line 419
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    const-string p1, "RenpyRuntimes"

    .line 427
    .line 428
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    return-object p2
.end method
