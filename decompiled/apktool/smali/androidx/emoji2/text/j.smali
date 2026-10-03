.class public final Landroidx/emoji2/text/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Landroidx/emoji2/text/j;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Lq/f;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Landroidx/emoji2/text/f;

.field public final f:Landroidx/emoji2/text/i;

.field public final g:LY0/e;

.field public final h:I

.field public final i:Landroidx/emoji2/text/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/emoji2/text/j;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/r;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Landroidx/emoji2/text/j;->c:I

    .line 13
    .line 14
    iget-object v1, p1, LP/Q;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroidx/emoji2/text/i;

    .line 17
    .line 18
    iput-object v1, p0, Landroidx/emoji2/text/j;->f:Landroidx/emoji2/text/i;

    .line 19
    .line 20
    iget v2, p1, LP/Q;->a:I

    .line 21
    .line 22
    iput v2, p0, Landroidx/emoji2/text/j;->h:I

    .line 23
    .line 24
    iget-object p1, p1, LP/Q;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/emoji2/text/d;

    .line 27
    .line 28
    iput-object p1, p0, Landroidx/emoji2/text/j;->i:Landroidx/emoji2/text/d;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/emoji2/text/j;->d:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p1, Lq/f;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {p1, v3}, Lq/f;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/emoji2/text/j;->b:Lq/f;

    .line 48
    .line 49
    new-instance p1, LY0/e;

    .line 50
    .line 51
    const/16 v4, 0x12

    .line 52
    .line 53
    invoke-direct {p1, v4}, LY0/e;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/emoji2/text/j;->g:LY0/e;

    .line 57
    .line 58
    new-instance p1, Landroidx/emoji2/text/f;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Landroidx/emoji2/text/f;-><init>(Landroidx/emoji2/text/j;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Landroidx/emoji2/text/j;->e:Landroidx/emoji2/text/f;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    .line 71
    .line 72
    if-nez v2, :cond_0

    .line 73
    .line 74
    :try_start_0
    iput v3, p0, Landroidx/emoji2/text/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroidx/emoji2/text/j;->b()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    :try_start_1
    new-instance v0, Landroidx/emoji2/text/e;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/f;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v0}, Landroidx/emoji2/text/i;->a(Lcom/bumptech/glide/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/j;->d(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void
.end method

.method public static a()Landroidx/emoji2/text/j;
    .locals 4

    .line 1
    sget-object v0, Landroidx/emoji2/text/j;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/emoji2/text/j;->k:Landroidx/emoji2/text/j;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 12
    .line 13
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/emoji2/text/j;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const-string v3, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 11
    .line 12
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/emoji2/text/j;->b()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/j;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/j;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroidx/emoji2/text/j;->e:Landroidx/emoji2/text/f;

    .line 57
    .line 58
    iget-object v1, v0, Landroidx/emoji2/text/f;->a:Landroidx/emoji2/text/j;

    .line 59
    .line 60
    :try_start_2
    new-instance v2, Landroidx/emoji2/text/e;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/f;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v1, Landroidx/emoji2/text/j;->f:Landroidx/emoji2/text/i;

    .line 66
    .line 67
    invoke-interface {v0, v2}, Landroidx/emoji2/text/i;->a(Lcom/bumptech/glide/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v1, v0}, Landroidx/emoji2/text/j;->d(Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    iget-object v1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/j;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/emoji2/text/j;->b:Lq/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Landroidx/emoji2/text/j;->b:Lq/f;

    .line 24
    .line 25
    invoke-virtual {v1}, Lq/f;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroidx/emoji2/text/j;->d:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, LT0/a;

    .line 40
    .line 41
    iget v3, p0, Landroidx/emoji2/text/j;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v0, v3, p1}, LT0/a;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final e(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/emoji2/text/j;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const-string v3, "Not initialized yet"

    .line 13
    .line 14
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "start cannot be negative"

    .line 18
    .line 19
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const-string v0, "end cannot be negative"

    .line 23
    .line 24
    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const-string v0, "maxEmojiCount cannot be negative"

    .line 28
    .line 29
    const v3, 0x7fffffff

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 33
    .line 34
    .line 35
    if-gt p2, p3, :cond_1

    .line 36
    .line 37
    move v0, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v0, v1

    .line 40
    :goto_1
    const-string v3, "start should be <= than end"

    .line 41
    .line 42
    invoke-static {v0, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-gt p2, v3, :cond_3

    .line 54
    .line 55
    move v3, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    move v3, v1

    .line 58
    :goto_2
    const-string v4, "start should be < than charSequence length"

    .line 59
    .line 60
    invoke-static {v3, v4}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-gt p3, v3, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    move v2, v1

    .line 71
    :goto_3
    const-string v3, "end should be < than charSequence length"

    .line 72
    .line 73
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    if-ne p2, p3, :cond_6

    .line 83
    .line 84
    :cond_5
    move-object v4, p1

    .line 85
    goto/16 :goto_c

    .line 86
    .line 87
    :cond_6
    iget-object v2, p0, Landroidx/emoji2/text/j;->e:Landroidx/emoji2/text/f;

    .line 88
    .line 89
    iget-object v3, v2, Landroidx/emoji2/text/f;->b:LF/b;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    instance-of v2, p1, Landroidx/emoji2/text/u;

    .line 95
    .line 96
    if-eqz v2, :cond_7

    .line 97
    .line 98
    move-object v4, p1

    .line 99
    check-cast v4, Landroidx/emoji2/text/u;

    .line 100
    .line 101
    invoke-virtual {v4}, Landroidx/emoji2/text/u;->a()V

    .line 102
    .line 103
    .line 104
    :cond_7
    const-class v4, Landroidx/emoji2/text/w;

    .line 105
    .line 106
    if-nez v2, :cond_9

    .line 107
    .line 108
    :try_start_0
    instance-of v5, p1, Landroid/text/Spannable;

    .line 109
    .line 110
    if-eqz v5, :cond_8

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_8
    instance-of v5, p1, Landroid/text/Spanned;

    .line 114
    .line 115
    if-eqz v5, :cond_a

    .line 116
    .line 117
    move-object v5, p1

    .line 118
    check-cast v5, Landroid/text/Spanned;

    .line 119
    .line 120
    add-int/lit8 v6, p2, -0x1

    .line 121
    .line 122
    add-int/lit8 v7, p3, 0x1

    .line 123
    .line 124
    invoke-interface {v5, v6, v7, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-gt v5, p3, :cond_a

    .line 129
    .line 130
    new-instance v0, Landroidx/emoji2/text/y;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-boolean v1, v0, Landroidx/emoji2/text/y;->b:Z

    .line 136
    .line 137
    new-instance v5, Landroid/text/SpannableString;

    .line 138
    .line 139
    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iput-object v5, v0, Landroidx/emoji2/text/y;->c:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :goto_4
    move-object v4, p1

    .line 146
    goto/16 :goto_b

    .line 147
    .line 148
    :catchall_0
    move-exception v0

    .line 149
    move-object p2, v0

    .line 150
    goto :goto_4

    .line 151
    :cond_9
    :goto_5
    :try_start_1
    new-instance v0, Landroidx/emoji2/text/y;

    .line 152
    .line 153
    move-object v5, p1

    .line 154
    check-cast v5, Landroid/text/Spannable;

    .line 155
    .line 156
    invoke-direct {v0, v5}, Landroidx/emoji2/text/y;-><init>(Landroid/text/Spannable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 157
    .line 158
    .line 159
    :cond_a
    :goto_6
    if-eqz v0, :cond_c

    .line 160
    .line 161
    :try_start_2
    iget-object v5, v0, Landroidx/emoji2/text/y;->c:Landroid/text/Spannable;

    .line 162
    .line 163
    invoke-interface {v5, p2, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, [Landroidx/emoji2/text/w;

    .line 168
    .line 169
    if-eqz v4, :cond_c

    .line 170
    .line 171
    array-length v5, v4

    .line 172
    if-lez v5, :cond_c

    .line 173
    .line 174
    array-length v5, v4

    .line 175
    :goto_7
    if-ge v1, v5, :cond_c

    .line 176
    .line 177
    aget-object v6, v4, v1

    .line 178
    .line 179
    iget-object v7, v0, Landroidx/emoji2/text/y;->c:Landroid/text/Spannable;

    .line 180
    .line 181
    invoke-interface {v7, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    iget-object v8, v0, Landroidx/emoji2/text/y;->c:Landroid/text/Spannable;

    .line 186
    .line 187
    invoke-interface {v8, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-eq v7, p3, :cond_b

    .line 192
    .line 193
    invoke-virtual {v0, v6}, Landroidx/emoji2/text/y;->removeSpan(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :cond_b
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    .line 201
    .line 202
    .line 203
    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    add-int/lit8 v1, v1, 0x1

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_c
    move v5, p2

    .line 208
    move v6, p3

    .line 209
    if-eq v5, v6, :cond_d

    .line 210
    .line 211
    :try_start_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    if-lt v5, p2, :cond_e

    .line 216
    .line 217
    :cond_d
    move-object v4, p1

    .line 218
    goto :goto_a

    .line 219
    :cond_e
    new-instance v9, LA1/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 220
    .line 221
    :try_start_4
    iget-object p2, v3, LF/b;->c:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p2, LY0/e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 224
    .line 225
    const/16 p3, 0xb

    .line 226
    .line 227
    :try_start_5
    invoke-direct {v9, p3, v0, p2}, LA1/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 228
    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    const v7, 0x7fffffff

    .line 232
    .line 233
    .line 234
    move-object v4, p1

    .line 235
    :try_start_6
    invoke-virtual/range {v3 .. v9}, LF/b;->k(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/n;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    check-cast p1, Landroidx/emoji2/text/y;

    .line 240
    .line 241
    if-eqz p1, :cond_10

    .line 242
    .line 243
    iget-object p1, p1, Landroidx/emoji2/text/y;->c:Landroid/text/Spannable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 244
    .line 245
    if-eqz v2, :cond_f

    .line 246
    .line 247
    move-object p2, v4

    .line 248
    check-cast p2, Landroidx/emoji2/text/u;

    .line 249
    .line 250
    invoke-virtual {p2}, Landroidx/emoji2/text/u;->b()V

    .line 251
    .line 252
    .line 253
    :cond_f
    return-object p1

    .line 254
    :catchall_1
    move-exception v0

    .line 255
    :goto_8
    move-object p2, v0

    .line 256
    goto :goto_b

    .line 257
    :cond_10
    if-eqz v2, :cond_12

    .line 258
    .line 259
    :goto_9
    move-object p1, v4

    .line 260
    check-cast p1, Landroidx/emoji2/text/u;

    .line 261
    .line 262
    invoke-virtual {p1}, Landroidx/emoji2/text/u;->b()V

    .line 263
    .line 264
    .line 265
    return-object v4

    .line 266
    :catchall_2
    move-exception v0

    .line 267
    move-object v4, p1

    .line 268
    goto :goto_8

    .line 269
    :catchall_3
    move-exception v0

    .line 270
    move-object v4, p1

    .line 271
    move-object p1, v0

    .line 272
    move-object p2, p1

    .line 273
    goto :goto_b

    .line 274
    :goto_a
    if-eqz v2, :cond_12

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :goto_b
    if-eqz v2, :cond_11

    .line 278
    .line 279
    move-object p1, v4

    .line 280
    check-cast p1, Landroidx/emoji2/text/u;

    .line 281
    .line 282
    invoke-virtual {p1}, Landroidx/emoji2/text/u;->b()V

    .line 283
    .line 284
    .line 285
    :cond_11
    throw p2

    .line 286
    :cond_12
    :goto_c
    return-object v4
.end method

.method public final f(Landroidx/emoji2/text/h;)V
    .locals 4

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget v1, p0, Landroidx/emoji2/text/j;->c:I

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    iget v1, p0, Landroidx/emoji2/text/j;->c:I

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/j;->b:Lq/f;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lq/f;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/emoji2/text/j;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v2, LT0/a;

    .line 37
    .line 38
    iget v3, p0, Landroidx/emoji2/text/j;->c:I

    .line 39
    .line 40
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/emoji2/text/h;

    .line 45
    .line 46
    filled-new-array {p1}, [Landroidx/emoji2/text/h;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-direct {v2, p1, v3, v0}, LT0/a;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object p1, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_2
    iget-object v0, p0, Landroidx/emoji2/text/j;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 78
    .line 79
    .line 80
    throw p1
.end method
