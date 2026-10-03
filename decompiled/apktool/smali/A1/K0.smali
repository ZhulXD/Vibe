.class public final LA1/K0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final j:Ljava/util/List;

.field public static final k:Lkotlin/text/Regex;

.field public static final l:Ljava/util/Set;

.field public static final m:Ljava/util/Set;

.field public static final n:Ljava/util/Set;

.field public static final o:Ljava/util/Set;

.field public static final p:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final q:LA1/H0;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;

.field public final h:Ljava/io/File;

.field public volatile i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, LA1/K0;->j:Ljava/util/List;

    .line 6
    .line 7
    new-instance v0, Lkotlin/text/Regex;

    .line 8
    .line 9
    const-string v1, "[A-Za-z0-9._:-]{1,256}"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, LA1/K0;->k:Lkotlin/text/Regex;

    .line 15
    .line 16
    sget-object v0, LA1/L0;->b:LA1/L0;

    .line 17
    .line 18
    sget-object v1, LA1/L0;->f:LA1/L0;

    .line 19
    .line 20
    sget-object v2, LA1/L0;->g:LA1/L0;

    .line 21
    .line 22
    filled-new-array {v0, v1, v2}, [LA1/L0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, LA1/K0;->l:Ljava/util/Set;

    .line 31
    .line 32
    const-string v0, "pendingLaunch"

    .line 33
    .line 34
    const-string v1, "lastAppliedRequestIds"

    .line 35
    .line 36
    const-string v2, "schemaVersion"

    .line 37
    .line 38
    const-string v3, "revision"

    .line 39
    .line 40
    const-string v4, "activeSession"

    .line 41
    .line 42
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, LA1/K0;->m:Ljava/util/Set;

    .line 51
    .line 52
    const-string v10, "startedAt"

    .line 53
    .line 54
    const-string v11, "lastHeartbeatAt"

    .line 55
    .line 56
    const-string v1, "sessionId"

    .line 57
    .line 58
    const-string v2, "gameId"

    .line 59
    .line 60
    const-string v3, "engine"

    .line 61
    .line 62
    const-string v4, "processName"

    .line 63
    .line 64
    const-string v5, "pid"

    .line 65
    .line 66
    const-string v6, "state"

    .line 67
    .line 68
    const-string v7, "sessionTokenCiphertext"

    .line 69
    .line 70
    const-string v8, "sessionTokenIv"

    .line 71
    .line 72
    const-string v9, "requestId"

    .line 73
    .line 74
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sput-object v0, LA1/K0;->n:Ljava/util/Set;

    .line 83
    .line 84
    const-string v6, "attemptCount"

    .line 85
    .line 86
    const-string v7, "processName"

    .line 87
    .line 88
    const-string v1, "requestId"

    .line 89
    .line 90
    const-string v2, "gameId"

    .line 91
    .line 92
    const-string v3, "engine"

    .line 93
    .line 94
    const-string v4, "gamePath"

    .line 95
    .line 96
    const-string v5, "requestedAt"

    .line 97
    .line 98
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    sput-object v0, LA1/K0;->o:Ljava/util/Set;

    .line 107
    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 111
    .line 112
    .line 113
    sput-object v0, LA1/K0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    .line 115
    new-instance v0, LA1/F0;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 118
    .line 119
    .line 120
    new-instance v1, LA1/H0;

    .line 121
    .line 122
    invoke-direct {v1, v0}, LA1/H0;-><init>(LA1/F0;)V

    .line 123
    .line 124
    .line 125
    sput-object v1, LA1/K0;->q:LA1/H0;

    .line 126
    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const-string v0, "primary"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "allowedGameRoots"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, LA1/K0;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p2

    .line 32
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 33
    .line 34
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    :goto_0
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    :goto_1
    const-string p1, "getOrElse(...)"

    .line 58
    .line 59
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast p2, Ljava/lang/String;

    .line 63
    .line 64
    iput-object p2, p0, LA1/K0;->b:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p1, Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, LA1/K0;->c:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    iput-object p2, p0, LA1/K0;->d:Ljava/io/File;

    .line 80
    .line 81
    new-instance v0, Ljava/io/File;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, ".bak"

    .line 88
    .line 89
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, LA1/K0;->e:Ljava/io/File;

    .line 97
    .line 98
    new-instance v0, Ljava/io/File;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v2, ".tmp"

    .line 105
    .line 106
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, LA1/K0;->f:Ljava/io/File;

    .line 114
    .line 115
    new-instance v0, Ljava/io/File;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v2, ".lock"

    .line 122
    .line 123
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, LA1/K0;->g:Ljava/io/File;

    .line 131
    .line 132
    new-instance v0, Ljava/io/File;

    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, ".init"

    .line 139
    .line 140
    invoke-static {p1, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, LA1/K0;->h:Ljava/io/File;

    .line 148
    .line 149
    sget-object p1, LA1/w0;->b:LA1/w0;

    .line 150
    .line 151
    return-void

    .line 152
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p2, "registry file must have a parent"

    .line 155
    .line 156
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1
.end method

.method public static a(LA1/Z;)Li1/r;
    .locals 3

    .line 1
    new-instance v0, Li1/r;

    .line 2
    .line 3
    invoke-direct {v0}, Li1/r;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "sessionId"

    .line 7
    .line 8
    iget-object v2, p0, LA1/Z;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, LA1/Z;->b:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "gameId"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "engine"

    .line 25
    .line 26
    iget-object v2, p0, LA1/Z;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "processName"

    .line 32
    .line 33
    iget-object v2, p0, LA1/Z;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, LA1/Z;->e:I

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "pid"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, LA1/Z;->f:LA1/L0;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "state"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "sessionTokenCiphertext"

    .line 61
    .line 62
    iget-object v2, p0, LA1/Z;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v1, "sessionTokenIv"

    .line 68
    .line 69
    iget-object v2, p0, LA1/Z;->h:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v1, "requestId"

    .line 75
    .line 76
    iget-object v2, p0, LA1/Z;->i:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-wide v1, p0, LA1/Z;->j:J

    .line 82
    .line 83
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "startedAt"

    .line 88
    .line 89
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 90
    .line 91
    .line 92
    iget-wide v1, p0, LA1/Z;->k:J

    .line 93
    .line 94
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string v1, "lastHeartbeatAt"

    .line 99
    .line 100
    invoke-virtual {v0, v1, p0}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method

.method public static c(LA1/a0;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Li1/r;

    .line 2
    .line 3
    invoke-direct {v0}, Li1/r;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "schemaVersion"

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, LA1/a0;->b:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "revision"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, LA1/a0;->c:LA1/Z;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, LA1/K0;->a(LA1/Z;)Li1/r;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v2

    .line 38
    :goto_0
    const-string v3, "activeSession"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v1}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, LA1/a0;->d:LA1/o0;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-static {v1}, LA1/K0;->k(LA1/o0;)Li1/r;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_1
    const-string v1, "pendingLaunch"

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Li1/n;

    .line 57
    .line 58
    invoke-direct {v1}, Li1/n;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, LA1/a0;->e:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    sget-object v2, Li1/q;->b:Li1/q;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    new-instance v3, Li1/s;

    .line 85
    .line 86
    invoke-direct {v3, v2}, Li1/s;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    move-object v2, v3

    .line 90
    :goto_2
    iget-object v3, v1, Li1/n;->b:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 97
    .line 98
    const-string p0, "lastAppliedRequestIds"

    .line 99
    .line 100
    invoke-virtual {v0, p0, v1}, Li1/r;->g(Ljava/lang/String;Li1/o;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Li1/o;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v0, "toString(...)"

    .line 108
    .line 109
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object p0
.end method

.method public static d(Li1/r;Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object p0, p0, Li1/r;->b:Lk1/m;

    .line 2
    .line 3
    invoke-virtual {p0}, Lk1/m;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "keySet(...)"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object v0, p0

    .line 13
    check-cast v0, Ljava/util/AbstractCollection;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast p0, Lk1/k;

    .line 23
    .line 24
    invoke-virtual {p0}, Lk1/k;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance p0, LA1/I0;

    .line 48
    .line 49
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    :goto_1
    return-void
.end method

.method public static e(Li1/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, LA1/K0;->k:Lkotlin/text/Regex;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, LA1/I0;

    .line 15
    .line 16
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static f(LA1/K0;Lkotlin/jvm/functions/Function1;)LA1/a0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "change"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, LA1/K0;->q:LA1/H0;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, LA1/G0;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1, p0, p1}, LA1/G0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, LA1/K0;->t(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, LA1/a0;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance p0, LA1/E0;

    .line 37
    .line 38
    const-string p1, "nested registry mutation"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static h(Li1/r;)LA1/Z;
    .locals 15

    .line 1
    sget-object v0, LA1/K0;->n:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p0, v0}, LA1/K0;->d(Li1/r;Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pid"

    .line 7
    .line 8
    invoke-static {p0, v0}, LA1/K0;->p(Li1/r;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v6

    .line 12
    const-string v0, "state"

    .line 13
    .line 14
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 15
    .line 16
    invoke-static {p0, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, LA1/L0;->valueOf(Ljava/lang/String;)LA1/L0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    move-object v7, v0

    .line 47
    check-cast v7, LA1/L0;

    .line 48
    .line 49
    if-ltz v6, :cond_3

    .line 50
    .line 51
    if-nez v6, :cond_1

    .line 52
    .line 53
    sget-object v0, LA1/K0;->l:Ljava/util/Set;

    .line 54
    .line 55
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_0
    new-instance p0, LA1/I0;

    .line 63
    .line 64
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    :goto_1
    const-string v0, "sessionId"

    .line 69
    .line 70
    invoke-static {p0, v0}, LA1/K0;->e(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v0, "gameId"

    .line 75
    .line 76
    invoke-static {p0, v0}, LA1/K0;->p(Li1/r;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-ltz v3, :cond_2

    .line 81
    .line 82
    const-string v0, "engine"

    .line 83
    .line 84
    invoke-static {p0, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    const-string v0, "processName"

    .line 89
    .line 90
    invoke-static {p0, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const-string v0, "sessionTokenCiphertext"

    .line 95
    .line 96
    invoke-static {p0, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string v0, "sessionTokenIv"

    .line 101
    .line 102
    invoke-static {p0, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    const-string v0, "requestId"

    .line 107
    .line 108
    invoke-static {p0, v0}, LA1/K0;->e(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    const-string v0, "startedAt"

    .line 113
    .line 114
    invoke-static {p0, v0}, LA1/K0;->q(Li1/r;Ljava/lang/String;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v11

    .line 118
    const-string v0, "lastHeartbeatAt"

    .line 119
    .line 120
    invoke-static {p0, v0}, LA1/K0;->q(Li1/r;Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v13

    .line 124
    new-instance v1, LA1/Z;

    .line 125
    .line 126
    invoke-direct/range {v1 .. v14}, LA1/Z;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILA1/L0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 127
    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_2
    new-instance p0, LA1/I0;

    .line 131
    .line 132
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 133
    .line 134
    .line 135
    throw p0

    .line 136
    :cond_3
    new-instance p0, LA1/I0;

    .line 137
    .line 138
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_4
    new-instance p0, LA1/I0;

    .line 143
    .line 144
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 145
    .line 146
    .line 147
    throw p0
.end method

.method public static k(LA1/o0;)Li1/r;
    .locals 3

    .line 1
    new-instance v0, Li1/r;

    .line 2
    .line 3
    invoke-direct {v0}, Li1/r;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "requestId"

    .line 7
    .line 8
    iget-object v2, p0, LA1/o0;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v1, p0, LA1/o0;->b:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "gameId"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "engine"

    .line 25
    .line 26
    iget-object v2, p0, LA1/o0;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "gamePath"

    .line 32
    .line 33
    iget-object v2, p0, LA1/o0;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, LA1/o0;->e:J

    .line 39
    .line 40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "requestedAt"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, LA1/o0;->f:I

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "attemptCount"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Li1/r;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, LA1/o0;->g:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    const-string v1, "processName"

    .line 69
    .line 70
    invoke-virtual {v0, v1, p0}, Li1/r;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-object v0
.end method

.method public static n(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    new-instance p0, LA1/J0;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "failed to replace "

    .line 25
    .line 26
    invoke-static {v0, p1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0
.end method

.method public static o(Li1/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    instance-of p1, p0, Li1/q;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v0

    .line 14
    :goto_0
    if-eqz p0, :cond_4

    .line 15
    .line 16
    instance-of p1, p0, Li1/s;

    .line 17
    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p1, p1, Li1/s;->b:Ljava/io/Serializable;

    .line 25
    .line 26
    instance-of p1, p1, Ljava/lang/String;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Li1/o;->f()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    move-object v0, p0

    .line 44
    :cond_1
    if-eqz v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    new-instance p0, LA1/I0;

    .line 48
    .line 49
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_3
    new-instance p0, LA1/I0;

    .line 54
    .line 55
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_4
    new-instance p0, LA1/I0;

    .line 60
    .line 61
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public static p(Li1/r;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-static {p0, p1}, LA1/K0;->r(Li1/r;Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0

    .line 44
    :cond_0
    new-instance p0, LA1/I0;

    .line 45
    .line 46
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static q(Li1/r;Ljava/lang/String;)J
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    invoke-static {p0, p1}, LA1/K0;->r(Li1/r;Ljava/lang/String;)Ljava/math/BigDecimal;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    check-cast p0, Ljava/lang/Number;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    return-wide p0

    .line 44
    :cond_0
    new-instance p0, LA1/I0;

    .line 45
    .line 46
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static r(Li1/r;Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    instance-of p1, p0, Li1/q;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_3

    .line 14
    .line 15
    instance-of p1, p0, Li1/s;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Li1/o;->e()Li1/s;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Li1/s;->b:Ljava/io/Serializable;

    .line 24
    .line 25
    instance-of p1, p1, Ljava/lang/Number;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 30
    .line 31
    invoke-virtual {p0}, Li1/o;->a()Ljava/math/BigDecimal;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    .line 43
    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    const-string p1, "getOrElse(...)"

    .line 58
    .line 59
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    check-cast p0, Ljava/math/BigDecimal;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_1
    new-instance p0, LA1/I0;

    .line 66
    .line 67
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_2
    new-instance p0, LA1/I0;

    .line 72
    .line 73
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_3
    new-instance p0, LA1/I0;

    .line 78
    .line 79
    invoke-direct {p0}, LA1/I0;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public static v(Ljava/io/File;[B)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method


# virtual methods
.method public final b(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ".new"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, LA1/K0;->d:Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_2
    invoke-static {v1, p1, v2, v3, v4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    .line 46
    :try_start_3
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_4
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p2}, LA1/K0;->n(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_1

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :catchall_2
    move-exception p2

    .line 70
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 71
    :catchall_3
    move-exception v2

    .line 72
    :try_start_6
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    :goto_0
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 77
    :catchall_4
    move-exception p2

    .line 78
    :try_start_8
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 82
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_1

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    .line 90
    .line 91
    :cond_1
    throw p1
.end method

.method public final g(Ljava/lang/String;)Lkotlin/Pair;
    .locals 13

    .line 1
    invoke-static {p1}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Li1/o;->d()Li1/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, LA1/K0;->m:Ljava/util/Set;

    .line 13
    .line 14
    invoke-static {p1, v0}, LA1/K0;->d(Li1/r;Ljava/util/Set;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "schemaVersion"

    .line 18
    .line 19
    invoke-static {p1, v0}, LA1/K0;->p(Li1/r;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_e

    .line 25
    .line 26
    const-string v0, "revision"

    .line 27
    .line 28
    invoke-static {p1, v0}, LA1/K0;->q(Li1/r;Ljava/lang/String;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    const-wide/16 v0, 0x0

    .line 33
    .line 34
    cmp-long v0, v3, v0

    .line 35
    .line 36
    if-ltz v0, :cond_d

    .line 37
    .line 38
    const-string v0, "pendingLaunch"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "getAsJsonObject(...)"

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    instance-of v5, v0, Li1/q;

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v0, v2

    .line 55
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Li1/o;->d()Li1/r;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, LA1/K0;->j(Li1/r;)LA1/o0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    move-object v6, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v6, v2

    .line 71
    :goto_1
    sget-object v5, LA1/w0;->b:LA1/w0;

    .line 72
    .line 73
    const-string v0, "activeSession"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    instance-of v7, v0, Li1/q;

    .line 82
    .line 83
    if-nez v7, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move-object v0, v2

    .line 87
    :goto_2
    if-eqz v0, :cond_4

    .line 88
    .line 89
    :try_start_0
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 90
    .line 91
    invoke-virtual {v0}, Li1/o;->d()Li1/r;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, LA1/K0;->h(Li1/r;)LA1/Z;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    goto :goto_3

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 109
    .line 110
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-nez v1, :cond_3

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_3
    sget-object v5, LA1/w0;->c:LA1/w0;

    .line 126
    .line 127
    invoke-static {v3, v4}, La/a;->O(J)LA1/Z;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_4
    check-cast v0, LA1/Z;

    .line 132
    .line 133
    move-object v12, v5

    .line 134
    move-object v5, v0

    .line 135
    move-object v0, v12

    .line 136
    goto :goto_5

    .line 137
    :cond_4
    move-object v0, v5

    .line 138
    move-object v5, v2

    .line 139
    :goto_5
    const-string v1, "lastAppliedRequestIds"

    .line 140
    .line 141
    iget-object p1, p1, Li1/r;->b:Lk1/m;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Lk1/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Li1/n;

    .line 148
    .line 149
    if-eqz p1, :cond_c

    .line 150
    .line 151
    new-instance v7, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Li1/n;->b:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    const/4 v8, 0x0

    .line 167
    move v9, v8

    .line 168
    :goto_6
    if-ge v9, v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    add-int/lit8 v9, v9, 0x1

    .line 175
    .line 176
    check-cast v10, Li1/o;

    .line 177
    .line 178
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    instance-of v11, v10, Li1/s;

    .line 182
    .line 183
    if-eqz v11, :cond_5

    .line 184
    .line 185
    invoke-virtual {v10}, Li1/o;->e()Li1/s;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    iget-object v11, v11, Li1/s;->b:Ljava/io/Serializable;

    .line 190
    .line 191
    instance-of v11, v11, Ljava/lang/String;

    .line 192
    .line 193
    if-eqz v11, :cond_5

    .line 194
    .line 195
    invoke-virtual {v10}, Li1/o;->f()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_5
    new-instance p1, LA1/I0;

    .line 204
    .line 205
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    const/16 v1, 0x100

    .line 214
    .line 215
    if-gt p1, v1, :cond_b

    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    goto :goto_8

    .line 224
    :cond_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    :goto_7
    if-ge v8, p1, :cond_8

    .line 229
    .line 230
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    add-int/lit8 v8, v8, 0x1

    .line 235
    .line 236
    check-cast v1, Ljava/lang/String;

    .line 237
    .line 238
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    sget-object v9, LA1/K0;->k:Lkotlin/text/Regex;

    .line 242
    .line 243
    invoke-virtual {v9, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_b

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_8
    :goto_8
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-ne p1, v1, :cond_b

    .line 263
    .line 264
    if-eqz v5, :cond_9

    .line 265
    .line 266
    iget-object v2, v5, LA1/Z;->f:LA1/L0;

    .line 267
    .line 268
    :cond_9
    sget-object p1, LA1/L0;->g:LA1/L0;

    .line 269
    .line 270
    if-ne v2, p1, :cond_a

    .line 271
    .line 272
    sget-object v0, LA1/w0;->c:LA1/w0;

    .line 273
    .line 274
    :cond_a
    move-object v8, v0

    .line 275
    new-instance v1, LA1/a0;

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    invoke-direct/range {v1 .. v8}, LA1/a0;-><init>(IJLA1/Z;LA1/o0;Ljava/util/List;LA1/w0;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    return-object p1

    .line 286
    :cond_b
    new-instance p1, LA1/I0;

    .line 287
    .line 288
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 289
    .line 290
    .line 291
    throw p1

    .line 292
    :cond_c
    new-instance p1, LA1/I0;

    .line 293
    .line 294
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 295
    .line 296
    .line 297
    throw p1

    .line 298
    :cond_d
    new-instance p1, LA1/I0;

    .line 299
    .line 300
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 301
    .line 302
    .line 303
    throw p1

    .line 304
    :cond_e
    new-instance p1, LA1/I0;

    .line 305
    .line 306
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 307
    .line 308
    .line 309
    throw p1
.end method

.method public final i(Ljava/io/File;)Lkotlin/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const-wide/32 v4, 0x100000

    .line 14
    .line 15
    .line 16
    cmp-long v0, v2, v4

    .line 17
    .line 18
    if-lez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-object v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    :try_start_0
    invoke-static {p1}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, LA1/K0;->g(Ljava/lang/String;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v1, p1

    .line 61
    :goto_2
    check-cast v1, Lkotlin/Pair;

    .line 62
    .line 63
    return-object v1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    new-instance v0, LA1/J0;

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "registry read failed: "

    .line 72
    .line 73
    invoke-static {v1, p1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {v0, p1}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_3
    new-instance v0, LA1/J0;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v1, "registry file not readable: "

    .line 88
    .line 89
    invoke-static {v1, p1}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {v0, p1}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public final j(Li1/r;)LA1/o0;
    .locals 14

    .line 1
    sget-object v0, LA1/K0;->o:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {p1, v0}, LA1/K0;->d(Li1/r;Ljava/util/Set;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gamePath"

    .line 7
    .line 8
    invoke-static {p1, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_11

    .line 17
    .line 18
    new-instance v1, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_11

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    new-array v0, v2, [C

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/16 v4, 0x2f

    .line 34
    .line 35
    aput-char v4, v0, v3

    .line 36
    .line 37
    sget-char v6, Ljava/io/File;->separatorChar:C

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    aput-char v6, v0, v7

    .line 41
    .line 42
    invoke-static {v5, v0}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/String;

    .line 70
    .line 71
    const-string v8, ".."

    .line 72
    .line 73
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-nez v8, :cond_11

    .line 78
    .line 79
    const-string v8, "."

    .line 80
    .line 81
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_11

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-nez v6, :cond_11

    .line 115
    .line 116
    move-object v6, v0

    .line 117
    check-cast v6, Ljava/io/File;

    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_11

    .line 132
    .line 133
    iget-object v1, p0, LA1/K0;->a:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    goto/16 :goto_7

    .line 142
    .line 143
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_11

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    move v0, v3

    .line 154
    :goto_3
    if-ge v0, v8, :cond_11

    .line 155
    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    add-int/lit8 v10, v0, 0x1

    .line 161
    .line 162
    check-cast v9, Ljava/io/File;

    .line 163
    .line 164
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 174
    goto :goto_4

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 177
    .line 178
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    if-nez v9, :cond_10

    .line 191
    .line 192
    check-cast v0, Ljava/io/File;

    .line 193
    .line 194
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v9, "getPath(...)"

    .line 205
    .line 206
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-array v11, v2, [C

    .line 210
    .line 211
    aput-char v4, v11, v3

    .line 212
    .line 213
    sget-char v12, Ljava/io/File;->separatorChar:C

    .line 214
    .line 215
    aput-char v12, v11, v7

    .line 216
    .line 217
    invoke-static {v0, v11}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v11, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :cond_3
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v12

    .line 234
    if-eqz v12, :cond_4

    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    move-object v13, v12

    .line 241
    check-cast v13, Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-lez v13, :cond_3

    .line 248
    .line 249
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    new-array v9, v2, [C

    .line 261
    .line 262
    aput-char v4, v9, v3

    .line 263
    .line 264
    sget-char v12, Ljava/io/File;->separatorChar:C

    .line 265
    .line 266
    aput-char v12, v9, v7

    .line 267
    .line 268
    invoke-static {v0, v9}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    new-instance v9, Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    :cond_5
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v12

    .line 285
    if-eqz v12, :cond_6

    .line 286
    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    move-object v13, v12

    .line 292
    check-cast v13, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    if-lez v13, :cond_5

    .line 299
    .line 300
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 309
    .line 310
    .line 311
    move-result v12

    .line 312
    if-ge v0, v12, :cond_7

    .line 313
    .line 314
    goto/16 :goto_b

    .line 315
    .line 316
    :cond_7
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    instance-of v12, v0, Ljava/util/Collection;

    .line 321
    .line 322
    if-eqz v12, :cond_8

    .line 323
    .line 324
    move-object v12, v0

    .line 325
    check-cast v12, Ljava/util/Collection;

    .line 326
    .line 327
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v12

    .line 331
    if-eqz v12, :cond_8

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 339
    .line 340
    .line 341
    move-result v12

    .line 342
    if-eqz v12, :cond_a

    .line 343
    .line 344
    move-object v12, v0

    .line 345
    check-cast v12, Lkotlin/collections/IntIterator;

    .line 346
    .line 347
    invoke-virtual {v12}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v13

    .line 355
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v12

    .line 363
    if-nez v12, :cond_9

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_a
    :goto_7
    const-string v0, "processName"

    .line 367
    .line 368
    invoke-virtual {p1, v0}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-eqz v0, :cond_d

    .line 373
    .line 374
    instance-of v1, v0, Li1/s;

    .line 375
    .line 376
    if-eqz v1, :cond_c

    .line 377
    .line 378
    invoke-virtual {v0}, Li1/o;->e()Li1/s;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    iget-object v1, v1, Li1/s;->b:Ljava/io/Serializable;

    .line 383
    .line 384
    instance-of v1, v1, Ljava/lang/String;

    .line 385
    .line 386
    if-eqz v1, :cond_c

    .line 387
    .line 388
    invoke-virtual {v0}, Li1/o;->f()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    if-nez v0, :cond_b

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_b
    :goto_8
    move-object v9, v0

    .line 396
    goto :goto_a

    .line 397
    :cond_c
    new-instance p1, LA1/I0;

    .line 398
    .line 399
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 400
    .line 401
    .line 402
    throw p1

    .line 403
    :cond_d
    :goto_9
    const-string v0, ""

    .line 404
    .line 405
    goto :goto_8

    .line 406
    :goto_a
    const-string v0, "requestId"

    .line 407
    .line 408
    invoke-static {p1, v0}, LA1/K0;->e(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    const-string v0, "gameId"

    .line 413
    .line 414
    invoke-static {p1, v0}, LA1/K0;->p(Li1/r;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-ltz v3, :cond_f

    .line 419
    .line 420
    const-string v0, "engine"

    .line 421
    .line 422
    invoke-static {p1, v0}, LA1/K0;->o(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v4

    .line 426
    const-string v0, "requestedAt"

    .line 427
    .line 428
    invoke-static {p1, v0}, LA1/K0;->q(Li1/r;Ljava/lang/String;)J

    .line 429
    .line 430
    .line 431
    move-result-wide v6

    .line 432
    const-string v0, "attemptCount"

    .line 433
    .line 434
    invoke-static {p1, v0}, LA1/K0;->p(Li1/r;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    if-ltz v8, :cond_e

    .line 439
    .line 440
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 441
    .line 442
    new-instance v1, LA1/o0;

    .line 443
    .line 444
    invoke-direct/range {v1 .. v9}, LA1/o0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return-object v1

    .line 448
    :cond_e
    new-instance p1, LA1/I0;

    .line 449
    .line 450
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 451
    .line 452
    .line 453
    throw p1

    .line 454
    :cond_f
    new-instance p1, LA1/I0;

    .line 455
    .line 456
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 457
    .line 458
    .line 459
    throw p1

    .line 460
    :cond_10
    :goto_b
    move v0, v10

    .line 461
    goto/16 :goto_3

    .line 462
    .line 463
    :cond_11
    new-instance p1, LA1/I0;

    .line 464
    .line 465
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 466
    .line 467
    .line 468
    throw p1
.end method

.method public final l()LA1/a0;
    .locals 2

    .line 1
    new-instance v0, LA1/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, LA1/K0;->t(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, LA1/a0;

    .line 12
    .line 13
    return-object v0
.end method

.method public final m()LA1/a0;
    .locals 14

    .line 1
    iget-object v0, p0, LA1/K0;->c:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, LA1/K0;->e:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, LA1/K0;->h:Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object v0, LA1/w0;->b:LA1/w0;

    .line 28
    .line 29
    iput-boolean v2, p0, LA1/K0;->i:Z

    .line 30
    .line 31
    new-instance v0, LA1/a0;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/16 v2, 0x3f

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, LA1/a0;-><init>(LA1/Z;I)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    sget-object v0, LA1/w0;->b:LA1/w0;

    .line 41
    .line 42
    iput-boolean v1, p0, LA1/K0;->i:Z

    .line 43
    .line 44
    new-instance v0, LA1/a0;

    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    invoke-static {v1, v2}, La/a;->O(J)LA1/Z;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v2, 0x1b

    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, LA1/a0;-><init>(LA1/Z;I)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    iget-object v0, p0, LA1/K0;->c:Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, LA1/K0;->i(Ljava/io/File;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v3, v1

    .line 71
    check-cast v3, LA1/a0;

    .line 72
    .line 73
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v8, v0

    .line 78
    check-cast v8, LA1/w0;

    .line 79
    .line 80
    iput-boolean v2, p0, LA1/K0;->i:Z

    .line 81
    .line 82
    const/4 v7, 0x0

    .line 83
    const/16 v9, 0x1f

    .line 84
    .line 85
    const-wide/16 v4, 0x0

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v3 .. v9}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_2
    iget-object v0, p0, LA1/K0;->e:Ljava/io/File;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, LA1/K0;->i(Ljava/io/File;)Lkotlin/Pair;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v2, v0

    .line 106
    check-cast v2, LA1/a0;

    .line 107
    .line 108
    sget-object v7, LA1/w0;->c:LA1/w0;

    .line 109
    .line 110
    iput-boolean v1, p0, LA1/K0;->i:Z

    .line 111
    .line 112
    iget-object v8, v2, LA1/a0;->c:LA1/Z;

    .line 113
    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    sget-object v10, LA1/L0;->g:LA1/L0;

    .line 117
    .line 118
    const-wide/16 v11, 0x0

    .line 119
    .line 120
    const/16 v13, 0x7df

    .line 121
    .line 122
    const/4 v9, 0x0

    .line 123
    invoke-static/range {v8 .. v13}, LA1/Z;->a(LA1/Z;ILA1/L0;JI)LA1/Z;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_0
    move-object v5, v0

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    iget-wide v0, v2, LA1/a0;->b:J

    .line 130
    .line 131
    invoke-static {v0, v1}, La/a;->O(J)LA1/Z;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_0

    .line 136
    :goto_1
    const/4 v6, 0x0

    .line 137
    const/16 v8, 0x1b

    .line 138
    .line 139
    const-wide/16 v3, 0x0

    .line 140
    .line 141
    invoke-static/range {v2 .. v8}, LA1/a0;->a(LA1/a0;JLA1/Z;LA1/o0;LA1/w0;I)LA1/a0;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    return-object v0

    .line 146
    :cond_4
    new-instance v0, LA1/I0;

    .line 147
    .line 148
    invoke-direct {v0}, LA1/I0;-><init>()V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public final s(LA1/a0;)V
    .locals 6

    .line 1
    iget v0, p1, LA1/a0;->a:I

    .line 2
    .line 3
    iget-object v1, p1, LA1/a0;->e:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v2, :cond_6

    .line 7
    .line 8
    iget-wide v2, p1, LA1/a0;->b:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-ltz v0, :cond_6

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v2, 0x100

    .line 21
    .line 22
    if-gt v0, v2, :cond_6

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v3, LA1/K0;->k:Lkotlin/text/Regex;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-ne v0, v1, :cond_6

    .line 69
    .line 70
    iget-object v0, p1, LA1/a0;->c:LA1/Z;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 75
    .line 76
    invoke-static {v0}, LA1/K0;->a(LA1/Z;)Li1/r;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, LA1/K0;->h(Li1/r;)LA1/Z;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_2

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    .line 92
    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    new-instance p1, LA1/I0;

    .line 111
    .line 112
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_3
    :goto_3
    iget-object p1, p1, LA1/a0;->d:LA1/o0;

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 121
    .line 122
    invoke-static {p1}, LA1/K0;->k(LA1/o0;)Li1/r;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, LA1/K0;->j(Li1/r;)LA1/o0;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    goto :goto_4

    .line 135
    :catchall_1
    move-exception p1

    .line 136
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 137
    .line 138
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_4
    new-instance p1, LA1/I0;

    .line 157
    .line 158
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_5
    :goto_5
    return-void

    .line 163
    :cond_6
    new-instance p1, LA1/I0;

    .line 164
    .line 165
    invoke-direct {p1}, LA1/I0;-><init>()V

    .line 166
    .line 167
    .line 168
    throw p1
.end method

.method public final t(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "registry lock failed: "

    .line 2
    .line 3
    iget-object v1, p0, LA1/K0;->d:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, LA1/J0;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "cannot create registry directory "

    .line 31
    .line 32
    invoke-static {v1, v0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_0
    new-instance v1, LA1/e;

    .line 41
    .line 42
    const/16 v2, 0xd

    .line 43
    .line 44
    invoke-direct {v1, v2}, LA1/e;-><init>(I)V

    .line 45
    .line 46
    .line 47
    new-instance v2, LA1/f;

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-direct {v2, v1, v3}, LA1/f;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 51
    .line 52
    .line 53
    sget-object v1, LA1/K0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    iget-object v3, p0, LA1/K0;->b:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "computeIfAbsent(...)"

    .line 62
    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    check-cast v1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    .line 70
    .line 71
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/4 v3, 0x1

    .line 76
    if-le v2, v3, :cond_2

    .line 77
    .line 78
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 89
    .line 90
    iget-object v3, p0, LA1/K0;->g:Ljava/io/File;

    .line 91
    .line 92
    const-string v4, "rw"

    .line 93
    .line 94
    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 102
    .line 103
    .line 104
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :try_start_3
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 109
    const/4 v3, 0x0

    .line 110
    :try_start_4
    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    .line 112
    .line 113
    :try_start_5
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    goto :goto_1

    .line 122
    :catchall_2
    move-exception p1

    .line 123
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 124
    :catchall_3
    move-exception v3

    .line 125
    :try_start_7
    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    throw v3

    .line 129
    :catch_0
    move-exception p1

    .line 130
    new-instance v3, LA1/J0;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v3, p1}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 152
    :goto_1
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 153
    :catchall_4
    move-exception v0

    .line 154
    :try_start_9
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 155
    .line 156
    .line 157
    throw v0

    .line 158
    :catch_1
    move-exception p1

    .line 159
    new-instance v2, LA1/J0;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {v2, p1}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 181
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    .line 183
    .line 184
    throw p1
.end method

.method public final u(LA1/a0;)V
    .locals 5

    .line 1
    iget-object v0, p0, LA1/K0;->h:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, LA1/K0;->c:Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p0, LA1/K0;->f:Ljava/io/File;

    .line 6
    .line 7
    const-string v3, "registry write failed: "

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0, v1}, LA1/K0;->i(Ljava/io/File;)Lkotlin/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, LA1/K0;->e:Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {p0, v1, v4}, LA1/K0;->b(Ljava/io/File;Ljava/io/File;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_3

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    invoke-static {p1}, LA1/K0;->c(LA1/a0;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v4, "getBytes(...)"

    .line 36
    .line 37
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p1}, LA1/K0;->v(Ljava/io/File;[B)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v1}, LA1/K0;->n(Ljava/io/File;Ljava/io/File;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 47
    .line 48
    .line 49
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    new-array p1, p1, [B

    .line 56
    .line 57
    invoke-static {v0, p1}, LA1/K0;->v(Ljava/io/File;[B)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 61
    .line 62
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void

    .line 86
    :goto_2
    :try_start_3
    new-instance v0, LA1/J0;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {v0, p1}, LA1/J0;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    .line 116
    .line 117
    :cond_3
    throw p1
.end method
