.class final Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;
.super Ljava/io/InputStream;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/minhub/gamehub/data/protect/GameContentCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkDecryptingStream"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0010\u001a\u00020\u000cH\u0016J \u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\u000cH\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;",
        "Ljava/io/InputStream;",
        "source",
        "key",
        "Ljavax/crypto/SecretKey;",
        "noncePrefix",
        "",
        "<init>",
        "(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)V",
        "raw",
        "chunk",
        "offset",
        "",
        "index",
        "atEnd",
        "",
        "read",
        "destination",
        "destinationOffset",
        "length",
        "available",
        "close",
        "",
        "fill",
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


# instance fields
.field private atEnd:Z

.field private chunk:[B

.field private index:I

.field private final key:Ljavax/crypto/SecretKey;

.field private final noncePrefix:[B

.field private offset:I

.field private final raw:[B

.field private final source:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)V
    .locals 1

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
    const-string v0, "noncePrefix"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->source:Ljava/io/InputStream;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->key:Ljavax/crypto/SecretKey;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->noncePrefix:[B

    .line 24
    .line 25
    const p1, 0x10010

    .line 26
    .line 27
    .line 28
    new-array p1, p1, [B

    .line 29
    .line 30
    iput-object p1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->raw:[B

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    new-array p1, p1, [B

    .line 34
    .line 35
    iput-object p1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->chunk:[B

    .line 36
    .line 37
    return-void
.end method

.method private final fill()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->atEnd:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    sget-object v0, Lcom/minhub/gamehub/data/protect/GameContentCipher;->INSTANCE:Lcom/minhub/gamehub/data/protect/GameContentCipher;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->source:Ljava/io/InputStream;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->raw:[B

    .line 12
    .line 13
    const v4, 0x10010

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v2, v3, v4}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->access$readFully(Lcom/minhub/gamehub/data/protect/GameContentCipher;Ljava/io/InputStream;[BI)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x10

    .line 21
    .line 22
    if-lt v2, v3, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->key:Ljavax/crypto/SecretKey;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->noncePrefix:[B

    .line 27
    .line 28
    iget v5, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->index:I

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    invoke-static {v0, v6, v3, v4, v5}, Lcom/minhub/gamehub/data/protect/GameContentCipher;->access$chunkCipher(Lcom/minhub/gamehub/data/protect/GameContentCipher;ILjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v3, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->raw:[B

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "doFinal(...)"

    .line 42
    .line 43
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->chunk:[B

    .line 47
    .line 48
    iput v1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->offset:I

    .line 49
    .line 50
    iget v1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->index:I

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    add-int/2addr v1, v2

    .line 54
    iput v1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->index:I

    .line 55
    .line 56
    array-length v0, v0

    .line 57
    const/high16 v1, 0x10000

    .line 58
    .line 59
    if-ge v0, v1, :cond_1

    .line 60
    .line 61
    iput-boolean v2, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->atEnd:Z

    .line 62
    .line 63
    :cond_1
    return v2

    .line 64
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 65
    .line 66
    const-string v1, "Protected file ended mid-chunk"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->chunk:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->offset:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->source:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read()I
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->offset:I

    iget-object v1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->chunk:[B

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->fill()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_1
    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6
    iget-object v0, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->chunk:[B

    iget v1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget p1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->offset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/minhub/gamehub/data/protect/GameContentCipher$ChunkDecryptingStream;->offset:I

    return p3
.end method
