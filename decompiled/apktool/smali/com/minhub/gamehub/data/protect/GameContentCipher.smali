.class public final Lcom/minhub/gamehub/data/protect/GameContentCipher;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001&B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005J(\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018J(\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0007H\u0002J\u0010\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u0007H\u0002J \u0010#\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/protect/GameContentCipher;",
        "",
        "<init>",
        "()V",
        "MAGIC",
        "",
        "FORMAT_VERSION",
        "",
        "HEADER_BYTES",
        "NONCE_PREFIX_BYTES",
        "TAG_BITS",
        "TAG_BYTES",
        "CHUNK_PLAIN_BYTES",
        "CHUNK_CIPHER_BYTES",
        "hasMagic",
        "",
        "header",
        "encrypt",
        "",
        "source",
        "Ljava/io/InputStream;",
        "sink",
        "Ljava/io/OutputStream;",
        "key",
        "Ljavax/crypto/SecretKey;",
        "random",
        "Ljava/security/SecureRandom;",
        "decrypt",
        "chunkCipher",
        "Ljavax/crypto/Cipher;",
        "mode",
        "noncePrefix",
        "index",
        "intBytes",
        "value",
        "readFully",
        "into",
        "limit",
        "ChunkDecryptingStream",
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
        "SMAP\nGameContentCipher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameContentCipher.kt\ncom/minhub/gamehub/data/protect/GameContentCipher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1740#2,3:188\n1#3:191\n*S KotlinDebug\n*F\n+ 1 GameContentCipher.kt\ncom/minhub/gamehub/data/protect/GameContentCipher\n*L\n61#1:188,3\n*E\n"
    }
.end annotation


# static fields
.field private static final CHUNK_CIPHER_BYTES:I = 0x10010

.field public static final CHUNK_PLAIN_BYTES:I = 0x10000

.field public static final FORMAT_VERSION:I = 0x1

.field public static final HEADER_BYTES:I = 0x10

.field public static final INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentCipher;

.field private static final MAGIC:[B

.field private static final NONCE_PREFIX_BYTES:I = 0x8

.field private static final TAG_BITS:I = 0x80

.field private static final TAG_BYTES:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/data/protect/GameContentCipher;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/data/protect/GameContentCipher;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/data/protect/GameContentCipher;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentCipher;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    fill-array-data v0, :array_0

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/minhub/gamehub/data/protect/GameContentCipher;->MAGIC:[B

    .line 15
    .line 16
    return-void

    .line 17
    :array_0
    .array-data 1
        0x4dt
        0x48t
        0x47t
        0x43t
    .end array-data
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

.method public static final synthetic access$chunkCipher(Lcom/minhub/gamehub/data/protect/GameContentCipher;ILjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->chunkCipher(ILjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$readFully(Lcom/minhub/gamehub/data/protect/GameContentCipher;Ljava/io/InputStream;[BI)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->readFully(Ljava/io/InputStream;[BI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final chunkCipher(ILjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const-string v0, "copyOf(...)"

    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p4}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->intBytes(I)[B

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    const-string v0, "AES/GCM/NoPadding"

    .line 24
    .line 25
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 30
    .line 31
    const/16 v2, 0x80

    .line 32
    .line 33
    invoke-direct {v1, v2, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 40
    .line 41
    .line 42
    const-string p1, "apply(...)"

    .line 43
    .line 44
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public static synthetic encrypt$default(Lcom/minhub/gamehub/data/protect/GameContentCipher;Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    new-instance p4, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final intBytes(I)[B
    .locals 5

    .line 1
    ushr-int/lit8 v0, p1, 0x18

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    ushr-int/lit8 v1, p1, 0x10

    .line 5
    .line 6
    int-to-byte v1, v1

    .line 7
    ushr-int/lit8 v2, p1, 0x8

    .line 8
    .line 9
    int-to-byte v2, v2

    .line 10
    int-to-byte p1, p1

    .line 11
    const/4 v3, 0x4

    .line 12
    new-array v3, v3, [B

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    aput-byte v0, v3, v4

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-byte v1, v3, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-byte v2, v3, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte p1, v3, v0

    .line 25
    .line 26
    return-object v3
.end method

.method private final readFully(Ljava/io/InputStream;[BI)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-ge v0, p3, :cond_0

    .line 3
    .line 4
    sub-int v1, p3, v0

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return v0
.end method


# virtual methods
.method public final decrypt(Ljava/io/InputStream;Ljavax/crypto/SecretKey;)Ljava/io/InputStream;
    .locals 4

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "key"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v1, v0, [B

    .line 14
    .line 15
    invoke-direct {p0, p1, v1, v0}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->readFully(Ljava/io/InputStream;[BI)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v2, v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->hasMagic([B)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aget-byte v2, v1, v2

    .line 29
    .line 30
    and-int/lit16 v2, v2, 0xff

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    new-instance v2, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;

    .line 36
    .line 37
    const/16 v3, 0x8

    .line 38
    .line 39
    invoke-static {v1, v3, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v2, p1, p2, v0}, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 48
    .line 49
    const-string p2, "Unsupported protected-content version "

    .line 50
    .line 51
    invoke-static {v2, p2}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 60
    .line 61
    const-string p2, "Not a protected game file"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 68
    .line 69
    const-string p2, "Protected file is shorter than its header"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1
.end method

.method public final encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)V
    .locals 7

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sink"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "key"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "random"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/16 v0, 0x8

    .line 22
    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    invoke-virtual {p4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 26
    .line 27
    .line 28
    sget-object p4, Lcom/minhub/gamehub/data/protect/GameContentCipher;->MAGIC:[B

    .line 29
    .line 30
    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write([B)V

    .line 31
    .line 32
    .line 33
    const/4 p4, 0x1

    .line 34
    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write(I)V

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x3

    .line 38
    new-array v1, v1, [B

    .line 39
    .line 40
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 44
    .line 45
    .line 46
    const/high16 v1, 0x10000

    .line 47
    .line 48
    new-array v2, v1, [B

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    move v4, v3

    .line 52
    :cond_0
    invoke-direct {p0, p1, v2, v1}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->readFully(Ljava/io/InputStream;[BI)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-direct {p0, p4, p3, v0, v4}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->chunkCipher(ILjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6, v2, v3, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    add-int/2addr v4, p4

    .line 68
    if-ge v5, v1, :cond_0

    .line 69
    .line 70
    return-void
.end method

.method public final hasMagic([B)Z
    .locals 4

    .line 1
    const-string v0, "header"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    sget-object v1, Lcom/minhub/gamehub/data/protect/GameContentCipher;->MAGIC:[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-lt v0, v2, :cond_2

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Ljava/util/Collection;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    move-object v1, v0

    .line 41
    check-cast v1, Lkotlin/collections/IntIterator;

    .line 42
    .line 43
    invoke-virtual {v1}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    aget-byte v2, p1, v1

    .line 48
    .line 49
    sget-object v3, Lcom/minhub/gamehub/data/protect/GameContentCipher;->MAGIC:[B

    .line 50
    .line 51
    aget-byte v1, v3, v1

    .line 52
    .line 53
    if-ne v2, v1, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    return p1
.end method
