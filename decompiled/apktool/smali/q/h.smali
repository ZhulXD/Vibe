.class public abstract Lq/h;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq/h;->a:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lq/h;->b:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(Lq/f;I)V
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-array v0, p1, [I

    .line 7
    .line 8
    const-string v1, "<set-?>"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lq/f;->b:[I

    .line 14
    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lq/f;->c:[Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public static final b(Lq/f;Ljava/lang/Object;I)I
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lq/f;->d:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lq/f;->b:[I

    .line 16
    .line 17
    iget v2, p0, Lq/f;->d:I

    .line 18
    .line 19
    invoke-static {v2, p2, v0}, Lr/a;->a(II[I)I

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-gez v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, p0, Lq/f;->c:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v2, v2, v0

    .line 29
    .line 30
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    :goto_0
    return v0

    .line 37
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .line 38
    .line 39
    :goto_1
    if-ge v2, v1, :cond_4

    .line 40
    .line 41
    iget-object v3, p0, Lq/f;->b:[I

    .line 42
    .line 43
    aget v3, v3, v2

    .line 44
    .line 45
    if-ne v3, p2, :cond_4

    .line 46
    .line 47
    iget-object v3, p0, Lq/f;->c:[Ljava/lang/Object;

    .line 48
    .line 49
    aget-object v3, v3, v2

    .line 50
    .line 51
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    return v2

    .line 58
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    :goto_2
    if-ltz v0, :cond_6

    .line 64
    .line 65
    iget-object v1, p0, Lq/f;->b:[I

    .line 66
    .line 67
    aget v1, v1, v0

    .line 68
    .line 69
    if-ne v1, p2, :cond_6

    .line 70
    .line 71
    iget-object v1, p0, Lq/f;->c:[Ljava/lang/Object;

    .line 72
    .line 73
    aget-object v1, v1, v0

    .line 74
    .line 75
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    return v0

    .line 82
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    not-int p0, v2

    .line 86
    return p0

    .line 87
    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 88
    .line 89
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 90
    .line 91
    .line 92
    throw p0
.end method
