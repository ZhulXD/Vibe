.class public final Lcom/minhub/gamehub/data/protect/GameContentProtection;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\tJ\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u00020\tH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/protect/GameContentProtection;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "PROBE",
        "",
        "cached",
        "",
        "Ljava/lang/Boolean;",
        "isUsable",
        "invalidate",
        "",
        "runProbe",
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
        "SMAP\nGameContentProtection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameContentProtection.kt\ncom/minhub/gamehub/data/protect/GameContentProtection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentProtection;

.field private static final PROBE:[B

.field private static final TAG:Ljava/lang/String; = "MinHub-Protect"

.field private static volatile cached:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/protect/GameContentProtection;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/data/protect/GameContentProtection;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/data/protect/GameContentProtection;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentProtection;

    .line 7
    .line 8
    const-string v0, "MinHub content protection probe \u2014 ki\u1ec3m tra th\u1eadt"

    .line 9
    .line 10
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getBytes(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/minhub/gamehub/data/protect/GameContentProtection;->PROBE:[B

    .line 22
    .line 23
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

.method private final runProbe()Z
    .locals 10

    .line 1
    const-string v1, "MinHub-Protect"

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v0, Lcom/minhub/gamehub/data/protect/GameContentKeys;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentKeys;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/protect/GameContentKeys;->getOrCreate()Ljavax/crypto/SecretKey;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    if-nez v6, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 14
    .line 15
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v3, Lcom/minhub/gamehub/data/protect/GameContentCipher;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentCipher;

    .line 19
    .line 20
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 21
    .line 22
    sget-object v0, Lcom/minhub/gamehub/data/protect/GameContentProtection;->PROBE:[B

    .line 23
    .line 24
    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .line 26
    .line 27
    const/16 v8, 0x8

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    invoke-static/range {v3 .. v9}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->encrypt$default(Lcom/minhub/gamehub/data/protect/GameContentCipher;Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 39
    .line 40
    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v5, v6}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->decrypt(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v3, "probe round-trip returned different bytes; refusing to protect content"

    .line 58
    .line 59
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return v0

    .line 66
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v5, "probe failed: "

    .line 81
    .line 82
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, ": "

    .line 89
    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    return v2
.end method


# virtual methods
.method public final invalidate()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    sput-object v0, Lcom/minhub/gamehub/data/protect/GameContentProtection;->cached:Ljava/lang/Boolean;

    .line 4
    .line 5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final isUsable()Z
    .locals 5

    .line 1
    const-string v0, "content protection available; key backed by "

    .line 2
    .line 3
    sget-object v1, Lcom/minhub/gamehub/data/protect/GameContentProtection;->cached:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    monitor-enter p0

    .line 13
    :try_start_0
    sget-object v1, Lcom/minhub/gamehub/data/protect/GameContentProtection;->cached:Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_1

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    sget-object v1, Lcom/minhub/gamehub/data/protect/GameContentProtection;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentProtection;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/minhub/gamehub/data/protect/GameContentProtection;->runProbe()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lcom/minhub/gamehub/data/protect/GameContentProtection;->cached:Ljava/lang/Boolean;

    .line 35
    .line 36
    const-string v2, "MinHub-Protect"

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    sget-object v3, Lcom/minhub/gamehub/data/protect/GameContentKeys;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentKeys;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/protect/GameContentKeys;->backingDescription()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "content protection NOT available"

    .line 60
    .line 61
    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    move v0, v1

    .line 65
    :goto_1
    monitor-exit p0

    .line 66
    return v0

    .line 67
    :goto_2
    monitor-exit p0

    .line 68
    throw v0
.end method
