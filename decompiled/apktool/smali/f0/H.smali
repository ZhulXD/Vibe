.class public final Lf0/H;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ld0/f;


# static fields
.field public static final j:Ly0/j;


# instance fields
.field public final b:Lg0/g;

.field public final c:Ld0/f;

.field public final d:Ld0/f;

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/Class;

.field public final h:Ld0/i;

.field public final i:Ld0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ly0/j;

    .line 2
    .line 3
    const-wide/16 v1, 0x32

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ly0/j;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lf0/H;->j:Ly0/j;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lg0/g;Ld0/f;Ld0/f;IILd0/m;Ljava/lang/Class;Ld0/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/H;->b:Lg0/g;

    .line 5
    .line 6
    iput-object p2, p0, Lf0/H;->c:Ld0/f;

    .line 7
    .line 8
    iput-object p3, p0, Lf0/H;->d:Ld0/f;

    .line 9
    .line 10
    iput p4, p0, Lf0/H;->e:I

    .line 11
    .line 12
    iput p5, p0, Lf0/H;->f:I

    .line 13
    .line 14
    iput-object p6, p0, Lf0/H;->i:Ld0/m;

    .line 15
    .line 16
    iput-object p7, p0, Lf0/H;->g:Ljava/lang/Class;

    .line 17
    .line 18
    iput-object p8, p0, Lf0/H;->h:Ld0/i;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final b(Ljava/security/MessageDigest;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/H;->b:Lg0/g;

    .line 2
    .line 3
    const-class v1, [B

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, v0, Lg0/g;->b:Lg0/f;

    .line 7
    .line 8
    iget-object v3, v2, Lg0/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v3, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lg0/i;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lg0/f;->b()Lg0/i;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :cond_0
    check-cast v3, Lg0/e;

    .line 25
    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    iput v2, v3, Lg0/e;->b:I

    .line 29
    .line 30
    iput-object v1, v3, Lg0/e;->c:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1}, Lg0/g;->e(Lg0/e;Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    .line 37
    check-cast v1, [B

    .line 38
    .line 39
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget v2, p0, Lf0/H;->e:I

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v2, p0, Lf0/H;->f:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lf0/H;->d:Ld0/f;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Ld0/f;->b(Ljava/security/MessageDigest;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lf0/H;->c:Ld0/f;

    .line 64
    .line 65
    invoke-interface {v0, p1}, Ld0/f;->b(Ljava/security/MessageDigest;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lf0/H;->i:Ld0/m;

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-interface {v0, p1}, Ld0/f;->b(Ljava/security/MessageDigest;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v0, p0, Lf0/H;->h:Ld0/i;

    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ld0/i;->b(Ljava/security/MessageDigest;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lf0/H;->j:Ly0/j;

    .line 84
    .line 85
    iget-object v2, p0, Lf0/H;->g:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ly0/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, [B

    .line 92
    .line 93
    if-nez v3, :cond_2

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    sget-object v4, Ld0/f;->a:Ljava/nio/charset/Charset;

    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v2, v3}, Ly0/j;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {p1, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lf0/H;->b:Lg0/g;

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Lg0/g;->g(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lf0/H;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lf0/H;

    .line 7
    .line 8
    iget v0, p0, Lf0/H;->f:I

    .line 9
    .line 10
    iget v2, p1, Lf0/H;->f:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lf0/H;->e:I

    .line 15
    .line 16
    iget v2, p1, Lf0/H;->e:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lf0/H;->i:Ld0/m;

    .line 21
    .line 22
    iget-object v2, p1, Lf0/H;->i:Ld0/m;

    .line 23
    .line 24
    invoke-static {v0, v2}, Ly0/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lf0/H;->g:Ljava/lang/Class;

    .line 31
    .line 32
    iget-object v2, p1, Lf0/H;->g:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lf0/H;->c:Ld0/f;

    .line 41
    .line 42
    iget-object v2, p1, Lf0/H;->c:Ld0/f;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Ld0/f;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lf0/H;->d:Ld0/f;

    .line 51
    .line 52
    iget-object v2, p1, Lf0/H;->d:Ld0/f;

    .line 53
    .line 54
    invoke-interface {v0, v2}, Ld0/f;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    iget-object v0, p0, Lf0/H;->h:Ld0/i;

    .line 61
    .line 62
    iget-object p1, p1, Lf0/H;->h:Ld0/i;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ld0/i;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    const/4 p1, 0x1

    .line 71
    return p1

    .line 72
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/H;->c:Ld0/f;

    .line 2
    .line 3
    invoke-interface {v0}, Ld0/f;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lf0/H;->d:Ld0/f;

    .line 10
    .line 11
    invoke-interface {v1}, Ld0/f;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Lf0/H;->e:I

    .line 19
    .line 20
    add-int/2addr v1, v0

    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    iget v0, p0, Lf0/H;->f:I

    .line 24
    .line 25
    add-int/2addr v1, v0

    .line 26
    iget-object v0, p0, Lf0/H;->i:Ld0/m;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-int/2addr v1, v0

    .line 37
    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    .line 38
    .line 39
    iget-object v0, p0, Lf0/H;->g:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, v1

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-object v1, p0, Lf0/H;->h:Ld0/i;

    .line 49
    .line 50
    iget-object v1, v1, Ld0/i;->b:Ly0/c;

    .line 51
    .line 52
    invoke-virtual {v1}, Ly0/c;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v1, v0

    .line 57
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ResourceCacheKey{sourceKey="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lf0/H;->c:Ld0/f;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", signature="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lf0/H;->d:Ld0/f;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", width="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lf0/H;->e:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", height="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lf0/H;->f:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", decodedResourceClass="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lf0/H;->g:Ljava/lang/Class;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", transformation=\'"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lf0/H;->i:Ld0/m;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\', options="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lf0/H;->h:Ld0/i;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v1, 0x7d

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method
