.class public final LP/g;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements LP/O;


# instance fields
.field public final b:LP/O;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(LA1/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LP/g;->c:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, LP/g;->d:I

    .line 9
    .line 10
    iput v0, p0, LP/g;->e:I

    .line 11
    .line 12
    iput-object p1, p0, LP/g;->b:LP/O;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    .line 1
    iget v0, p0, LP/g;->c:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, LP/g;->d:I

    .line 7
    .line 8
    if-lt v0, p1, :cond_0

    .line 9
    .line 10
    add-int v2, p1, p2

    .line 11
    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p0, LP/g;->e:I

    .line 15
    .line 16
    add-int/2addr v0, p2

    .line 17
    iput v0, p0, LP/g;->e:I

    .line 18
    .line 19
    iput p1, p0, LP/g;->d:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, LP/g;->c()V

    .line 23
    .line 24
    .line 25
    iput p1, p0, LP/g;->d:I

    .line 26
    .line 27
    iput p2, p0, LP/g;->e:I

    .line 28
    .line 29
    iput v1, p0, LP/g;->c:I

    .line 30
    .line 31
    return-void
.end method

.method public final b(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LP/g;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LP/g;->b:LP/O;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, LP/O;->b(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, LP/g;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iget-object v2, p0, LP/g;->b:LP/O;

    .line 8
    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget v0, p0, LP/g;->d:I

    .line 19
    .line 20
    iget v1, p0, LP/g;->e:I

    .line 21
    .line 22
    invoke-interface {v2, v0, v1}, LP/O;->g(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget v0, p0, LP/g;->d:I

    .line 27
    .line 28
    iget v1, p0, LP/g;->e:I

    .line 29
    .line 30
    invoke-interface {v2, v0, v1}, LP/O;->a(II)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget v0, p0, LP/g;->d:I

    .line 35
    .line 36
    iget v1, p0, LP/g;->e:I

    .line 37
    .line 38
    invoke-interface {v2, v0, v1}, LP/O;->i(II)V

    .line 39
    .line 40
    .line 41
    :goto_0
    const/4 v0, 0x0

    .line 42
    iput v0, p0, LP/g;->c:I

    .line 43
    .line 44
    return-void
.end method

.method public final g(II)V
    .locals 4

    .line 1
    iget v0, p0, LP/g;->c:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, LP/g;->d:I

    .line 7
    .line 8
    iget v2, p0, LP/g;->e:I

    .line 9
    .line 10
    add-int/2addr v2, v0

    .line 11
    if-gt p1, v2, :cond_0

    .line 12
    .line 13
    add-int v3, p1, p2

    .line 14
    .line 15
    if-lt v3, v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, LP/g;->d:I

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget p2, p0, LP/g;->d:I

    .line 28
    .line 29
    sub-int/2addr p1, p2

    .line 30
    iput p1, p0, LP/g;->e:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, LP/g;->c()V

    .line 34
    .line 35
    .line 36
    iput p1, p0, LP/g;->d:I

    .line 37
    .line 38
    iput p2, p0, LP/g;->e:I

    .line 39
    .line 40
    iput v1, p0, LP/g;->c:I

    .line 41
    .line 42
    return-void
.end method

.method public final i(II)V
    .locals 4

    .line 1
    iget v0, p0, LP/g;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, LP/g;->d:I

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    iget v2, p0, LP/g;->e:I

    .line 11
    .line 12
    add-int v3, v0, v2

    .line 13
    .line 14
    if-gt p1, v3, :cond_0

    .line 15
    .line 16
    add-int/2addr v2, p2

    .line 17
    iput v2, p0, LP/g;->e:I

    .line 18
    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, LP/g;->d:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, LP/g;->c()V

    .line 27
    .line 28
    .line 29
    iput p1, p0, LP/g;->d:I

    .line 30
    .line 31
    iput p2, p0, LP/g;->e:I

    .line 32
    .line 33
    iput v1, p0, LP/g;->c:I

    .line 34
    .line 35
    return-void
.end method
