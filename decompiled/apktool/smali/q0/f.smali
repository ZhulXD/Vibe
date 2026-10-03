.class public final Lq0/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Lc0/d;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/bumptech/glide/n;

.field public final e:Lg0/b;

.field public f:Z

.field public g:Z

.field public h:Lcom/bumptech/glide/k;

.field public i:Lq0/d;

.field public j:Z

.field public k:Lq0/d;

.field public l:Landroid/graphics/Bitmap;

.field public m:Lq0/d;

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/b;Lc0/d;IILandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/bumptech/glide/b;->b:Lg0/b;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 10
    .line 11
    invoke-static {v1, v2}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/manager/m;->c(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v2}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v2, v2, Lcom/bumptech/glide/b;->f:Lcom/bumptech/glide/manager/m;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/manager/m;->c(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/bumptech/glide/k;

    .line 45
    .line 46
    iget-object v3, p1, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/b;

    .line 47
    .line 48
    iget-object v4, p1, Lcom/bumptech/glide/n;->c:Landroid/content/Context;

    .line 49
    .line 50
    const-class v5, Landroid/graphics/Bitmap;

    .line 51
    .line 52
    invoke-direct {v2, v3, p1, v5, v4}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/n;Ljava/lang/Class;Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/bumptech/glide/n;->l:Lu0/e;

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/k;->s(Lu0/a;)Lcom/bumptech/glide/k;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v2, Lu0/e;

    .line 62
    .line 63
    invoke-direct {v2}, Lu0/a;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v3, Lf0/l;->b:Lf0/l;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lu0/a;->d(Lf0/l;)Lu0/a;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lu0/e;

    .line 73
    .line 74
    invoke-virtual {v2}, Lu0/a;->q()Lu0/a;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lu0/e;

    .line 79
    .line 80
    invoke-virtual {v2}, Lu0/a;->m()Lu0/a;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Lu0/e;

    .line 85
    .line 86
    invoke-virtual {v2, p3, p4}, Lu0/a;->h(II)Lu0/a;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/k;->s(Lu0/a;)Lcom/bumptech/glide/k;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance p3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p3, p0, Lq0/f;->c:Ljava/util/ArrayList;

    .line 103
    .line 104
    iput-object v1, p0, Lq0/f;->d:Lcom/bumptech/glide/n;

    .line 105
    .line 106
    new-instance p3, Landroid/os/Handler;

    .line 107
    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    new-instance v1, Lb1/d;

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    invoke-direct {v1, v2, p0}, Lb1/d;-><init>(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lq0/f;->e:Lg0/b;

    .line 122
    .line 123
    iput-object p3, p0, Lq0/f;->b:Landroid/os/Handler;

    .line 124
    .line 125
    iput-object p1, p0, Lq0/f;->h:Lcom/bumptech/glide/k;

    .line 126
    .line 127
    iput-object p2, p0, Lq0/f;->a:Lc0/d;

    .line 128
    .line 129
    sget-object p1, Ll0/c;->b:Ll0/c;

    .line 130
    .line 131
    invoke-virtual {p0, p1, p5}, Lq0/f;->c(Ld0/m;Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lq0/f;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lq0/f;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lq0/f;->m:Lq0/d;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lq0/f;->m:Lq0/d;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lq0/f;->b(Lq0/d;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lq0/f;->g:Z

    .line 23
    .line 24
    iget-object v1, p0, Lq0/f;->a:Lc0/d;

    .line 25
    .line 26
    iget-object v2, v1, Lc0/d;->l:Lc0/b;

    .line 27
    .line 28
    iget v3, v2, Lc0/b;->c:I

    .line 29
    .line 30
    if-lez v3, :cond_4

    .line 31
    .line 32
    iget v4, v1, Lc0/d;->k:I

    .line 33
    .line 34
    if-gez v4, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-ltz v4, :cond_3

    .line 38
    .line 39
    if-ge v4, v3, :cond_3

    .line 40
    .line 41
    iget-object v2, v2, Lc0/b;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lc0/a;

    .line 48
    .line 49
    iget v2, v2, Lc0/a;->i:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    const/4 v2, -0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    :goto_0
    const/4 v2, 0x0

    .line 55
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    int-to-long v5, v2

    .line 60
    add-long/2addr v3, v5

    .line 61
    iget v2, v1, Lc0/d;->k:I

    .line 62
    .line 63
    add-int/2addr v2, v0

    .line 64
    iget-object v0, v1, Lc0/d;->l:Lc0/b;

    .line 65
    .line 66
    iget v0, v0, Lc0/b;->c:I

    .line 67
    .line 68
    rem-int/2addr v2, v0

    .line 69
    iput v2, v1, Lc0/d;->k:I

    .line 70
    .line 71
    new-instance v0, Lq0/d;

    .line 72
    .line 73
    iget-object v5, p0, Lq0/f;->b:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {v0, v5, v2, v3, v4}, Lq0/d;-><init>(Landroid/os/Handler;IJ)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lq0/f;->k:Lq0/d;

    .line 79
    .line 80
    iget-object v0, p0, Lq0/f;->h:Lcom/bumptech/glide/k;

    .line 81
    .line 82
    new-instance v2, Lx0/b;

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-direct {v2, v3}, Lx0/b;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lu0/e;

    .line 96
    .line 97
    invoke-direct {v3}, Lu0/a;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2}, Lu0/a;->l(Lx0/b;)Lu0/a;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    check-cast v2, Lu0/e;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/k;->s(Lu0/a;)Lcom/bumptech/glide/k;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->x(Ljava/lang/Object;)Lcom/bumptech/glide/k;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lq0/f;->k:Lq0/d;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v0}, Lcom/bumptech/glide/k;->w(Lv0/f;Lu0/a;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Lq0/d;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq0/f;->g:Z

    .line 3
    .line 4
    iget-boolean v0, p0, Lq0/f;->j:Z

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iget-object v2, p0, Lq0/f;->b:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-boolean v0, p0, Lq0/f;->f:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iput-object p1, p0, Lq0/f;->m:Lq0/d;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p1, Lq0/d;->h:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    if-eqz v0, :cond_9

    .line 29
    .line 30
    iget-object v0, p0, Lq0/f;->l:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v3, p0, Lq0/f;->e:Lg0/b;

    .line 35
    .line 36
    invoke-interface {v3, v0}, Lg0/b;->f(Landroid/graphics/Bitmap;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lq0/f;->l:Landroid/graphics/Bitmap;

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lq0/f;->i:Lq0/d;

    .line 43
    .line 44
    iput-object p1, p0, Lq0/f;->i:Lq0/d;

    .line 45
    .line 46
    iget-object p1, p0, Lq0/f;->c:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    :goto_0
    if-ltz v3, :cond_8

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lq0/e;

    .line 61
    .line 62
    check-cast v4, Lq0/b;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    :goto_1
    instance-of v6, v5, Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    if-eqz v6, :cond_3

    .line 71
    .line 72
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    if-nez v5, :cond_4

    .line 80
    .line 81
    invoke-virtual {v4}, Lq0/b;->stop()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 89
    .line 90
    .line 91
    iget-object v5, v4, Lq0/b;->b:LT/e;

    .line 92
    .line 93
    iget-object v5, v5, LT/e;->b:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v5, Lq0/f;

    .line 96
    .line 97
    iget-object v6, v5, Lq0/f;->i:Lq0/d;

    .line 98
    .line 99
    const/4 v7, -0x1

    .line 100
    if-eqz v6, :cond_5

    .line 101
    .line 102
    iget v6, v6, Lq0/d;->f:I

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move v6, v7

    .line 106
    :goto_2
    iget-object v5, v5, Lq0/f;->a:Lc0/d;

    .line 107
    .line 108
    iget-object v5, v5, Lc0/d;->l:Lc0/b;

    .line 109
    .line 110
    iget v5, v5, Lc0/b;->c:I

    .line 111
    .line 112
    add-int/lit8 v5, v5, -0x1

    .line 113
    .line 114
    if-ne v6, v5, :cond_6

    .line 115
    .line 116
    iget v5, v4, Lq0/b;->g:I

    .line 117
    .line 118
    add-int/lit8 v5, v5, 0x1

    .line 119
    .line 120
    iput v5, v4, Lq0/b;->g:I

    .line 121
    .line 122
    :cond_6
    iget v5, v4, Lq0/b;->h:I

    .line 123
    .line 124
    if-eq v5, v7, :cond_7

    .line 125
    .line 126
    iget v6, v4, Lq0/b;->g:I

    .line 127
    .line 128
    if-lt v6, v5, :cond_7

    .line 129
    .line 130
    invoke-virtual {v4}, Lq0/b;->stop()V

    .line 131
    .line 132
    .line 133
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    if-eqz v0, :cond_9

    .line 137
    .line 138
    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-virtual {p0}, Lq0/f;->a()V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final c(Ld0/m;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    const-string v0, "Argument must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Ly0/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lq0/f;->l:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v0, p0, Lq0/f;->h:Lcom/bumptech/glide/k;

    .line 12
    .line 13
    new-instance v1, Lu0/e;

    .line 14
    .line 15
    invoke-direct {v1}, Lu0/a;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p1, v2}, Lu0/a;->n(Ld0/m;Z)Lu0/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/k;->s(Lu0/a;)Lcom/bumptech/glide/k;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lq0/f;->h:Lcom/bumptech/glide/k;

    .line 28
    .line 29
    invoke-static {p2}, Ly0/n;->c(Landroid/graphics/Bitmap;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lq0/f;->n:I

    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lq0/f;->o:I

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lq0/f;->p:I

    .line 46
    .line 47
    return-void
.end method
