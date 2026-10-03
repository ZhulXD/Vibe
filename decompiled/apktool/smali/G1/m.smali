.class public abstract LG1/m;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/lang/Object;


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
    sput-object v0, LG1/m;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ljava/io/File;)Lkotlin/Pair;
    .locals 4

    .line 1
    const-string v0, "storeDir"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, LN1/i;

    .line 7
    .line 8
    const-wide/32 v1, 0x2000000

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2}, LN1/i;-><init>(Ljava/io/File;J)V

    .line 12
    .line 13
    .line 14
    new-instance p0, LA1/n;

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    invoke-direct {p0, v3, v0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, LN1/i;->q(Lkotlin/jvm/functions/Function0;)LN1/q;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget-object p0, p0, LN1/q;->a:LN1/r;

    .line 26
    .line 27
    iget-object v3, p0, LN1/r;->a:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, LN1/r;->d:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string p0, "version"

    .line 42
    .line 43
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, LN1/h;

    .line 47
    .line 48
    invoke-direct {p0, v0, v3, v1, v2}, LN1/h;-><init>(LN1/i;Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, LN1/i;->q(Lkotlin/jvm/functions/Function0;)LN1/q;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget-object p0, p0, LN1/q;->c:[B

    .line 56
    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {p0}, LG1/m;->e([B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-static {v3, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :catch_0
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 72
    return-object p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v0, LN1/i;

    .line 7
    .line 8
    new-instance v1, Ljava/io/File;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v2, "runtime_patch_v2"

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-wide/32 v2, 0x2000000

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v1, v2, v3}, LN1/i;-><init>(Ljava/io/File;J)V

    .line 23
    .line 24
    .line 25
    new-instance p0, LA1/n;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-direct {p0, v1, v0}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0}, LN1/i;->q(Lkotlin/jvm/functions/Function0;)LN1/q;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object p0, p0, LN1/q;->a:LN1/r;

    .line 37
    .line 38
    iget-object v0, p0, LN1/r;->a:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, LN1/r;->d:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-nez p0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return p0

    .line 65
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public static c(Landroid/content/Context;I)LG1/i;
    .locals 3

    .line 1
    const-string v0, "ctx"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0, p1}, LG1/m;->d(Landroid/content/Context;I)LG1/k;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 10
    invoke-static {p0}, LG1/m;->b(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "runtime_patch"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 31
    .line 32
    .line 33
    const-string v1, "bundle.enc"

    .line 34
    .line 35
    new-instance v2, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :try_start_3
    const-string v0, "runtime_patch_ota"

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    .line 60
    .line 61
    :catch_1
    :cond_0
    iget-object p0, p1, LG1/k;->a:LG1/l;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    if-eq p0, p1, :cond_2

    .line 71
    .line 72
    const/4 p1, 0x2

    .line 73
    if-eq p0, p1, :cond_1

    .line 74
    .line 75
    sget-object p0, LG1/i;->e:LG1/i;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sget-object p0, LG1/i;->d:LG1/i;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object p0, LG1/i;->c:LG1/i;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object p0, LG1/i;->b:LG1/i;

    .line 85
    .line 86
    :goto_0
    return-object p0

    .line 87
    :catch_2
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "v2 update failed: "

    .line 93
    .line 94
    const-string v0, "MinHub-PatchOTA"

    .line 95
    .line 96
    invoke-static {p1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object p0, LG1/i;->e:LG1/i;

    .line 100
    .line 101
    return-object p0
.end method

.method public static d(Landroid/content/Context;I)LG1/k;
    .locals 5

    .line 1
    const-string v0, " v2 manifest URL not configured"

    .line 2
    .line 3
    const-string v1, "status="

    .line 4
    .line 5
    const-string v2, "ctx"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, LG1/m;->a:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2

    .line 13
    :try_start_0
    const-string v3, "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json"

    .line 14
    .line 15
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    new-instance p0, LG1/k;

    .line 22
    .line 23
    sget-object p1, LG1/l;->f:LG1/l;

    .line 24
    .line 25
    const-string v3, "v2 manifest URL not configured"

    .line 26
    .line 27
    invoke-direct {p0, p1, v3}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "MinHub-PatchOTAv2"

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    new-instance v0, LN1/p;

    .line 54
    .line 55
    const-string v1, "pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev"

    .line 56
    .line 57
    const-string v4, "/Patch"

    .line 58
    .line 59
    invoke-direct {v0, v1, v4}, LN1/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/io/File;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v4, "runtime_patch_v2"

    .line 69
    .line 70
    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v3, v0, p1}, LG1/m;->k(Ljava/io/File;Ljava/lang/String;LN1/p;I)LG1/k;

    .line 74
    .line 75
    .line 76
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit v2

    .line 78
    return-object p0

    .line 79
    :goto_1
    monitor-exit v2

    .line 80
    throw p0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "enc"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p0

    .line 7
    const/16 v1, 0x1c

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/minhub/gamehub/NativeKeys;->patchKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lkotlin/text/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "getBytes(...)"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    array-length v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->q([B)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    const/16 v3, 0xc

    .line 39
    .line 40
    :try_start_2
    invoke-static {p0, v1, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    array-length v4, p0

    .line 45
    invoke-static {p0, v3, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v3, "AES/GCM/NoPadding"

    .line 50
    .line 51
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 56
    .line 57
    const-string v5, "AES"

    .line 58
    .line 59
    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    .line 63
    .line 64
    const/16 v6, 0x80

    .line 65
    .line 66
    invoke-direct {v5, v6, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 67
    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-virtual {v3, v1, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v1, "doFinal(...)"

    .line 78
    .line 79
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    .line 84
    new-instance v3, Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {v3, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->q([B)V

    .line 90
    .line 91
    .line 92
    return-object v3

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    move-object v2, v0

    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-object v0, v2

    .line 99
    goto :goto_1

    .line 100
    :goto_0
    if-eqz v2, :cond_2

    .line 101
    .line 102
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->q([B)V

    .line 103
    .line 104
    .line 105
    :cond_2
    throw p0

    .line 106
    :catch_1
    :goto_1
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->q([B)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_2
    return-object v2
.end method

.method public static f([B)LN1/n;
    .locals 27

    .line 1
    const-string v0, "killSwitch"

    .line 2
    .line 3
    const-string v1, "revocation"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 7
    .line 8
    new-instance v4, Ljava/lang/String;

    .line 9
    .line 10
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    move-object/from16 v6, p0

    .line 13
    .line 14
    invoke-direct {v4, v6, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v4, "revokeVersion"

    .line 21
    .line 22
    invoke-static {v3, v4}, LG1/m;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v22

    .line 26
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    const-string v5, "version"

    .line 31
    .line 32
    const-string v6, "signature"

    .line 33
    .line 34
    const-string v7, "Failed requirement."

    .line 35
    .line 36
    if-eqz v4, :cond_6

    .line 37
    .line 38
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    instance-of v4, v1, Lorg/json/JSONObject;

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    move-object v4, v1

    .line 54
    check-cast v4, Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object v8, v1

    .line 61
    check-cast v8, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    check-cast v1, Lorg/json/JSONObject;

    .line 68
    .line 69
    const-string v9, "reason"

    .line 70
    .line 71
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    instance-of v9, v4, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v9, :cond_4

    .line 78
    .line 79
    instance-of v9, v8, Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v9, :cond_4

    .line 82
    .line 83
    sget-object v9, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-nez v9, :cond_1

    .line 90
    .line 91
    instance-of v9, v1, Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v9, :cond_4

    .line 94
    .line 95
    :cond_1
    new-instance v9, LN1/o;

    .line 96
    .line 97
    check-cast v4, Ljava/lang/String;

    .line 98
    .line 99
    check-cast v8, Ljava/lang/String;

    .line 100
    .line 101
    instance-of v10, v1, Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v10, :cond_2

    .line 104
    .line 105
    check-cast v1, Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    move-object v1, v2

    .line 109
    :goto_0
    if-nez v1, :cond_3

    .line 110
    .line 111
    const-string v1, ""

    .line 112
    .line 113
    :cond_3
    invoke-direct {v9, v4, v8, v1}, LN1/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v23, v9

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_6
    :goto_1
    move-object/from16 v23, v2

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_a

    .line 138
    .line 139
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_7
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    instance-of v1, v0, Lorg/json/JSONObject;

    .line 151
    .line 152
    if-eqz v1, :cond_9

    .line 153
    .line 154
    move-object v1, v0

    .line 155
    check-cast v1, Lorg/json/JSONObject;

    .line 156
    .line 157
    const-string v4, "enabled"

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v0, Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    instance-of v4, v1, Ljava/lang/Boolean;

    .line 170
    .line 171
    if-eqz v4, :cond_8

    .line 172
    .line 173
    instance-of v4, v0, Ljava/lang/String;

    .line 174
    .line 175
    if-eqz v4, :cond_8

    .line 176
    .line 177
    new-instance v4, LN1/l;

    .line 178
    .line 179
    check-cast v1, Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    check-cast v0, Ljava/lang/String;

    .line 186
    .line 187
    invoke-direct {v4, v1, v0}, LN1/l;-><init>(ZLjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    move-object/from16 v24, v4

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 200
    .line 201
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_a
    :goto_3
    move-object/from16 v24, v2

    .line 206
    .line 207
    :goto_4
    new-instance v0, LN1/n;

    .line 208
    .line 209
    const-string v1, "url"

    .line 210
    .line 211
    invoke-static {v3, v1}, LG1/m;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    if-nez v1, :cond_b

    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_b
    invoke-static {v3, v5}, LG1/m;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    if-nez v7, :cond_c

    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :cond_c
    const-string v4, "sha256"

    .line 228
    .line 229
    invoke-static {v3, v4}, LG1/m;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-nez v4, :cond_d

    .line 234
    .line 235
    goto/16 :goto_5

    .line 236
    .line 237
    :cond_d
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 238
    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    const-string v4, "toLowerCase(...)"

    .line 244
    .line 245
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-static {v3, v6}, LG1/m;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v9

    .line 252
    if-nez v9, :cond_e

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_e
    const-string v4, "sequence"

    .line 256
    .line 257
    invoke-static {v3, v4}, LG1/m;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    if-eqz v4, :cond_10

    .line 262
    .line 263
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 264
    .line 265
    .line 266
    move-result-wide v10

    .line 267
    const-string v4, "issuedAt"

    .line 268
    .line 269
    invoke-static {v3, v4}, LG1/m;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    if-eqz v4, :cond_10

    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 276
    .line 277
    .line 278
    move-result-wide v12

    .line 279
    const-string v4, "expiresAt"

    .line 280
    .line 281
    invoke-static {v3, v4}, LG1/m;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    if-eqz v4, :cond_10

    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 288
    .line 289
    .line 290
    move-result-wide v14

    .line 291
    const-string v4, "manifestBytes"

    .line 292
    .line 293
    invoke-static {v3, v4}, LG1/m;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    if-eqz v4, :cond_10

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 300
    .line 301
    .line 302
    move-result-wide v16

    .line 303
    const-string v4, "bundleBytes"

    .line 304
    .line 305
    invoke-static {v3, v4}, LG1/m;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    if-eqz v4, :cond_10

    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 312
    .line 313
    .line 314
    move-result-wide v18

    .line 315
    const-string v4, "plaintextBytes"

    .line 316
    .line 317
    invoke-static {v3, v4}, LG1/m;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    if-eqz v4, :cond_10

    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 324
    .line 325
    .line 326
    move-result-wide v20

    .line 327
    const-string v4, "rollbackMarker"

    .line 328
    .line 329
    invoke-static {v3, v4}, LG1/m;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v25

    .line 333
    const-string v4, "minAppVersion"

    .line 334
    .line 335
    const/4 v5, 0x0

    .line 336
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 337
    .line 338
    .line 339
    move-result v26

    .line 340
    move-object v5, v0

    .line 341
    move-object v6, v1

    .line 342
    invoke-direct/range {v5 .. v26}, LN1/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJLjava/lang/String;LN1/o;LN1/l;Ljava/lang/String;I)V

    .line 343
    .line 344
    .line 345
    move-object/from16 v0, v22

    .line 346
    .line 347
    move-object/from16 v9, v23

    .line 348
    .line 349
    if-eqz v9, :cond_f

    .line 350
    .line 351
    if-eqz v0, :cond_f

    .line 352
    .line 353
    iget-object v1, v9, LN1/o;->a:Ljava/lang/String;

    .line 354
    .line 355
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    if-eqz v0, :cond_10

    .line 360
    .line 361
    :cond_f
    return-object v5

    .line 362
    :catch_0
    :cond_10
    :goto_5
    return-object v2
.end method

.method public static final g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, LG1/m;->i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "invalid "

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static final h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    instance-of p1, p0, Ljava/lang/Number;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    check-cast p0, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    long-to-double v0, v0

    .line 37
    cmpg-double p0, v2, v0

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static final i(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static j([B)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string p0, "digest(...)"

    .line 12
    .line 13
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v6, LA1/e;

    .line 17
    .line 18
    const/16 p0, 0x1c

    .line 19
    .line 20
    invoke-direct {v6, p0}, LA1/e;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const/16 v7, 0x1e

    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->u([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static k(Ljava/io/File;Ljava/lang/String;LN1/p;I)LG1/k;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move/from16 v2, p3

    .line 8
    .line 9
    const-string v6, "status="

    .line 10
    .line 11
    const-string v4, "status="

    .line 12
    .line 13
    const-string v7, "status="

    .line 14
    .line 15
    const-string v5, "status="

    .line 16
    .line 17
    const-string v8, "status="

    .line 18
    .line 19
    const-string v9, "status="

    .line 20
    .line 21
    const-string v10, "status=UP_TO_DATE version="

    .line 22
    .line 23
    const-string v11, "status="

    .line 24
    .line 25
    const-string v12, "status="

    .line 26
    .line 27
    const-string v13, "status="

    .line 28
    .line 29
    const-string v14, "status="

    .line 30
    .line 31
    const-string v15, "status="

    .line 32
    .line 33
    move-object/from16 v16, v6

    .line 34
    .line 35
    const-string v6, "status="

    .line 36
    .line 37
    move-object/from16 v17, v4

    .line 38
    .line 39
    const-string v4, "storeDir"

    .line 40
    .line 41
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "manifestUrl"

    .line 45
    .line 46
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v4, "p"

    .line 50
    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v18, LG1/m;->a:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v18

    .line 57
    :try_start_0
    sget-object v4, LG1/a;->a:LG1/a;

    .line 58
    .line 59
    move-object/from16 v19, v7

    .line 60
    .line 61
    move-object/from16 v20, v8

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    move-object/from16 v21, v5

    .line 68
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "?t="

    .line 78
    .line 79
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-wide/32 v7, 0x40000

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v1, v7, v8}, LG1/a;->b(Ljava/lang/String;J)[B

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    new-instance v0, LG1/k;

    .line 99
    .line 100
    sget-object v1, LG1/l;->h:LG1/l;

    .line 101
    .line 102
    const-string v2, "manifest transport"

    .line 103
    .line 104
    invoke-direct {v0, v1, v2}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v1, "MinHub-PatchOTAv2"

    .line 108
    .line 109
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v0}, LG1/k;->a()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, " "

    .line 126
    .line 127
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :catch_0
    move-exception v0

    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_0
    invoke-static {v1}, LG1/m;->f([B)LN1/n;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    if-nez v5, :cond_1

    .line 153
    .line 154
    new-instance v0, LG1/k;

    .line 155
    .line 156
    sget-object v1, LG1/l;->g:LG1/l;

    .line 157
    .line 158
    const-string v2, "required v2 fields"

    .line 159
    .line 160
    invoke-direct {v0, v1, v2}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "MinHub-PatchOTAv2"

    .line 164
    .line 165
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v0}, LG1/k;->a()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v2, " "

    .line 182
    .line 183
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 199
    .line 200
    .line 201
    move-result-wide v6

    .line 202
    invoke-virtual {v5, v3, v6, v7}, LN1/n;->a(LN1/p;J)LN1/u;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-virtual {v6}, LN1/u;->b()Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-nez v7, :cond_2

    .line 211
    .line 212
    new-instance v0, LG1/k;

    .line 213
    .line 214
    sget-object v1, LG1/l;->g:LG1/l;

    .line 215
    .line 216
    invoke-virtual {v6}, LN1/u;->a()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    const-string v8, ","

    .line 221
    .line 222
    const/4 v11, 0x0

    .line 223
    const/16 v12, 0x3e

    .line 224
    .line 225
    const/4 v9, 0x0

    .line 226
    const/4 v10, 0x0

    .line 227
    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-direct {v0, v1, v2}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const-string v1, "MinHub-PatchOTAv2"

    .line 235
    .line 236
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v0}, LG1/k;->a()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v2, " "

    .line 253
    .line 254
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    goto/16 :goto_5

    .line 268
    .line 269
    :cond_2
    iget-wide v6, v5, LN1/n;->h:J

    .line 270
    .line 271
    array-length v8, v1

    .line 272
    int-to-long v14, v8

    .line 273
    cmp-long v6, v6, v14

    .line 274
    .line 275
    if-eqz v6, :cond_3

    .line 276
    .line 277
    new-instance v0, LG1/k;

    .line 278
    .line 279
    sget-object v2, LG1/l;->g:LG1/l;

    .line 280
    .line 281
    const-string v3, "manifest size"

    .line 282
    .line 283
    invoke-direct {v0, v2, v3}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v2, "MinHub-PatchOTAv2"

    .line 287
    .line 288
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    iget-wide v4, v5, LN1/n;->h:J

    .line 293
    .line 294
    array-length v1, v1

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v3, " expected="

    .line 304
    .line 305
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v3, " got="

    .line 312
    .line 313
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    goto/16 :goto_5

    .line 327
    .line 328
    :cond_3
    iget v1, v5, LN1/n;->o:I

    .line 329
    .line 330
    if-le v1, v2, :cond_4

    .line 331
    .line 332
    new-instance v0, LG1/k;

    .line 333
    .line 334
    sget-object v1, LG1/l;->d:LG1/l;

    .line 335
    .line 336
    const-string v3, "minimum app version"

    .line 337
    .line 338
    invoke-direct {v0, v1, v3}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    const-string v1, "MinHub-PatchOTAv2"

    .line 342
    .line 343
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    iget v4, v5, LN1/n;->o:I

    .line 348
    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v3, " needApp="

    .line 358
    .line 359
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v3, " have="

    .line 366
    .line 367
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    goto/16 :goto_5

    .line 381
    .line 382
    :cond_4
    const-string v1, "GyqoKzP180cOF6RMqbGfMIjDw/h+nxwC4UZkfoTUb2k="

    .line 383
    .line 384
    new-instance v2, LN1/b;

    .line 385
    .line 386
    invoke-direct {v2}, LN1/b;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    if-eqz v1, :cond_5

    .line 394
    .line 395
    new-instance v0, LG1/k;

    .line 396
    .line 397
    sget-object v1, LG1/l;->e:LG1/l;

    .line 398
    .line 399
    const-string v2, "Ed25519 public key unavailable; update not activated"

    .line 400
    .line 401
    invoke-direct {v0, v1, v2}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string v1, "MinHub-PatchOTAv2"

    .line 405
    .line 406
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v0}, LG1/k;->a()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v2, " "

    .line 423
    .line 424
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    goto/16 :goto_5

    .line 438
    .line 439
    :cond_5
    new-instance v1, LN1/i;

    .line 440
    .line 441
    const-wide/32 v6, 0x2000000

    .line 442
    .line 443
    .line 444
    invoke-direct {v1, v0, v6, v7}, LN1/i;-><init>(Ljava/io/File;J)V

    .line 445
    .line 446
    .line 447
    new-instance v0, LA1/n;

    .line 448
    .line 449
    const/16 v8, 0x8

    .line 450
    .line 451
    invoke-direct {v0, v8, v1}, LA1/n;-><init>(ILjava/lang/Object;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v0}, LN1/i;->q(Lkotlin/jvm/functions/Function0;)LN1/q;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0}, LN1/q;->c()LN1/r;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v0}, LN1/r;->b()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    iget-object v11, v5, LN1/n;->b:Ljava/lang/String;

    .line 467
    .line 468
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    if-eqz v8, :cond_6

    .line 473
    .line 474
    invoke-virtual {v0}, LN1/r;->c()Ljava/util/Set;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    iget-object v8, v5, LN1/n;->b:Ljava/lang/String;

    .line 479
    .line 480
    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    if-nez v0, :cond_6

    .line 485
    .line 486
    iget-object v0, v5, LN1/n;->b:Ljava/lang/String;

    .line 487
    .line 488
    const-string v8, "version"

    .line 489
    .line 490
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    new-instance v8, LN1/h;

    .line 494
    .line 495
    invoke-direct {v8, v1, v0, v6, v7}, LN1/h;-><init>(LN1/i;Ljava/lang/String;J)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1, v8}, LN1/i;->q(Lkotlin/jvm/functions/Function0;)LN1/q;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, LN1/q;->a()[B

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-eqz v0, :cond_6

    .line 507
    .line 508
    new-instance v0, LG1/k;

    .line 509
    .line 510
    sget-object v1, LG1/l;->c:LG1/l;

    .line 511
    .line 512
    invoke-direct {v0, v1}, LG1/k;-><init>(LG1/l;)V

    .line 513
    .line 514
    .line 515
    const-string v1, "MinHub-PatchOTAv2"

    .line 516
    .line 517
    iget-object v2, v5, LN1/n;->b:Ljava/lang/String;

    .line 518
    .line 519
    iget-wide v3, v5, LN1/n;->e:J

    .line 520
    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const-string v2, " sequence="

    .line 530
    .line 531
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .line 543
    .line 544
    goto/16 :goto_5

    .line 545
    .line 546
    :cond_6
    iget-object v0, v5, LN1/n;->a:Ljava/lang/String;

    .line 547
    .line 548
    const-string v8, "?"

    .line 549
    .line 550
    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 551
    .line 552
    .line 553
    move-result v8

    .line 554
    if-eqz v8, :cond_7

    .line 555
    .line 556
    const-string v8, "&"

    .line 557
    .line 558
    goto :goto_0

    .line 559
    :cond_7
    const-string v8, "?"

    .line 560
    .line 561
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 562
    .line 563
    .line 564
    move-result-wide v10

    .line 565
    new-instance v12, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string v0, "t="

    .line 577
    .line 578
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    invoke-virtual {v4, v0, v6, v7}, LG1/a;->b(Ljava/lang/String;J)[B

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-nez v0, :cond_8

    .line 593
    .line 594
    new-instance v0, LG1/k;

    .line 595
    .line 596
    sget-object v1, LG1/l;->h:LG1/l;

    .line 597
    .line 598
    const-string v2, "bundle transport"

    .line 599
    .line 600
    invoke-direct {v0, v1, v2}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    const-string v1, "MinHub-PatchOTAv2"

    .line 604
    .line 605
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v0}, LG1/k;->a()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    const-string v2, " "

    .line 622
    .line 623
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    .line 635
    .line 636
    goto/16 :goto_5

    .line 637
    .line 638
    :cond_8
    array-length v4, v0

    .line 639
    int-to-long v6, v4

    .line 640
    iget-wide v8, v5, LN1/n;->i:J

    .line 641
    .line 642
    cmp-long v4, v6, v8

    .line 643
    .line 644
    if-nez v4, :cond_9

    .line 645
    .line 646
    invoke-static {v0}, LG1/m;->j([B)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    iget-object v6, v5, LN1/n;->c:Ljava/lang/String;

    .line 651
    .line 652
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    if-nez v4, :cond_a

    .line 657
    .line 658
    :cond_9
    move-object v2, v0

    .line 659
    move-object v1, v5

    .line 660
    goto/16 :goto_3

    .line 661
    .line 662
    :cond_a
    invoke-virtual {v2, v5, v0}, LN1/b;->a(LN1/n;[B)LN1/y;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-virtual {v2}, LN1/y;->a()LN1/z;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    sget-object v6, LN1/z;->g:LN1/z;

    .line 671
    .line 672
    if-ne v4, v6, :cond_c

    .line 673
    .line 674
    sget-object v0, LG1/l;->e:LG1/l;

    .line 675
    .line 676
    iget-object v1, v2, LN1/y;->b:Ljava/lang/String;

    .line 677
    .line 678
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 679
    .line 680
    .line 681
    move-result v2

    .line 682
    if-eqz v2, :cond_b

    .line 683
    .line 684
    const-string v1, "Ed25519 verifier unavailable; update not activated"

    .line 685
    .line 686
    :cond_b
    new-instance v2, LG1/k;

    .line 687
    .line 688
    invoke-direct {v2, v0, v1}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    const-string v0, "MinHub-PatchOTAv2"

    .line 692
    .line 693
    invoke-virtual {v2}, LG1/k;->b()LG1/l;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v2}, LG1/k;->a()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    move-object/from16 v5, v20

    .line 704
    .line 705
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v1, " "

    .line 712
    .line 713
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .line 725
    .line 726
    move-object v0, v2

    .line 727
    goto/16 :goto_5

    .line 728
    .line 729
    :cond_c
    invoke-virtual {v2}, LN1/y;->b()Z

    .line 730
    .line 731
    .line 732
    move-result v4

    .line 733
    if-nez v4, :cond_d

    .line 734
    .line 735
    new-instance v0, LG1/k;

    .line 736
    .line 737
    sget-object v1, LG1/l;->g:LG1/l;

    .line 738
    .line 739
    const-string v3, "signature"

    .line 740
    .line 741
    invoke-direct {v0, v1, v3}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    const-string v1, "MinHub-PatchOTAv2"

    .line 745
    .line 746
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    iget-object v2, v2, LN1/y;->b:Ljava/lang/String;

    .line 751
    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    move-object/from16 v5, v21

    .line 755
    .line 756
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    const-string v3, " diag="

    .line 763
    .line 764
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    .line 776
    .line 777
    goto/16 :goto_5

    .line 778
    .line 779
    :cond_d
    move-object v2, v0

    .line 780
    move-object v0, v1

    .line 781
    move-object v1, v5

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 783
    .line 784
    .line 785
    move-result-wide v4

    .line 786
    invoke-virtual/range {v0 .. v5}, LN1/i;->h(LN1/n;[BLN1/p;J)LN1/q;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    iget-object v2, v0, LN1/q;->d:Ljava/lang/String;

    .line 791
    .line 792
    if-nez v2, :cond_e

    .line 793
    .line 794
    const/4 v2, 0x1

    .line 795
    goto :goto_1

    .line 796
    :cond_e
    const/4 v2, 0x0

    .line 797
    :goto_1
    if-eqz v2, :cond_f

    .line 798
    .line 799
    new-instance v0, LG1/k;

    .line 800
    .line 801
    sget-object v2, LG1/l;->b:LG1/l;

    .line 802
    .line 803
    invoke-direct {v0, v2}, LG1/k;-><init>(LG1/l;)V

    .line 804
    .line 805
    .line 806
    goto :goto_2

    .line 807
    :cond_f
    new-instance v2, LG1/k;

    .line 808
    .line 809
    sget-object v3, LG1/l;->g:LG1/l;

    .line 810
    .line 811
    invoke-virtual {v0}, LN1/q;->b()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    if-nez v0, :cond_10

    .line 816
    .line 817
    const-string v0, ""

    .line 818
    .line 819
    :cond_10
    invoke-direct {v2, v3, v0}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    move-object v0, v2

    .line 823
    :goto_2
    const-string v2, "MinHub-PatchOTAv2"

    .line 824
    .line 825
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 826
    .line 827
    .line 828
    move-result-object v3

    .line 829
    iget-object v4, v1, LN1/n;->b:Ljava/lang/String;

    .line 830
    .line 831
    iget-wide v5, v1, LN1/n;->e:J

    .line 832
    .line 833
    iget-object v1, v1, LN1/n;->c:Ljava/lang/String;

    .line 834
    .line 835
    const/16 v7, 0xc

    .line 836
    .line 837
    invoke-static {v1, v7}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    invoke-virtual {v0}, LG1/k;->a()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v7

    .line 845
    new-instance v8, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    move-object/from16 v9, v19

    .line 848
    .line 849
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    const-string v3, " version="

    .line 856
    .line 857
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    const-string v3, " sequence="

    .line 864
    .line 865
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    const-string v3, " sha="

    .line 872
    .line 873
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    const-string v1, " diag="

    .line 880
    .line 881
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .line 893
    .line 894
    goto :goto_5

    .line 895
    :goto_3
    new-instance v0, LG1/k;

    .line 896
    .line 897
    sget-object v3, LG1/l;->g:LG1/l;

    .line 898
    .line 899
    const-string v4, "bundle size/hash"

    .line 900
    .line 901
    invoke-direct {v0, v3, v4}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    const-string v3, "MinHub-PatchOTAv2"

    .line 905
    .line 906
    invoke-virtual {v0}, LG1/k;->b()LG1/l;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    array-length v2, v2

    .line 911
    iget-wide v5, v1, LN1/n;->i:J

    .line 912
    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    move-object/from16 v7, v17

    .line 916
    .line 917
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    const-string v4, " size="

    .line 924
    .line 925
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    const-string v2, "/"

    .line 932
    .line 933
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    .line 945
    .line 946
    goto :goto_5

    .line 947
    :goto_4
    :try_start_1
    new-instance v1, LG1/k;

    .line 948
    .line 949
    sget-object v2, LG1/l;->h:LG1/l;

    .line 950
    .line 951
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    if-nez v3, :cond_11

    .line 956
    .line 957
    const-string v3, ""

    .line 958
    .line 959
    :cond_11
    invoke-direct {v1, v2, v3}, LG1/k;-><init>(LG1/l;Ljava/lang/String;)V

    .line 960
    .line 961
    .line 962
    const-string v2, "MinHub-PatchOTAv2"

    .line 963
    .line 964
    invoke-virtual {v1}, LG1/k;->b()LG1/l;

    .line 965
    .line 966
    .line 967
    move-result-object v3

    .line 968
    invoke-virtual {v1}, LG1/k;->a()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    new-instance v5, Ljava/lang/StringBuilder;

    .line 973
    .line 974
    move-object/from16 v6, v16

    .line 975
    .line 976
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    const-string v3, " "

    .line 983
    .line 984
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    .line 986
    .line 987
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v3

    .line 994
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    .line 996
    .line 997
    move-object v0, v1

    .line 998
    :goto_5
    monitor-exit v18

    .line 999
    return-object v0

    .line 1000
    :goto_6
    monitor-exit v18

    .line 1001
    throw v0
.end method
