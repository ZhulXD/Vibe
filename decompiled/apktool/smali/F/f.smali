.class public final LF/f;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:LA1/b;

.field public e:Z

.field public f:F

.field public g:F

.field public h:J

.field public i:F

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public l:LF/g;

.field public m:F


# direct methods
.method public constructor <init>(LF/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LF/f;->a:F

    .line 6
    .line 7
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    .line 9
    .line 10
    iput v0, p0, LF/f;->b:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, LF/f;->c:Z

    .line 14
    .line 15
    iput-boolean v1, p0, LF/f;->e:Z

    .line 16
    .line 17
    iput v0, p0, LF/f;->f:F

    .line 18
    .line 19
    const v1, -0x800001

    .line 20
    .line 21
    .line 22
    iput v1, p0, LF/f;->g:F

    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    iput-wide v1, p0, LF/f;->h:J

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, LF/f;->j:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, LF/f;->k:Ljava/util/ArrayList;

    .line 41
    .line 42
    new-instance v1, LA1/b;

    .line 43
    .line 44
    invoke-direct {v1, p1}, LA1/b;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, LF/f;->d:LA1/b;

    .line 48
    .line 49
    const/high16 p1, 0x3f800000    # 1.0f

    .line 50
    .line 51
    iput p1, p0, LF/f;->i:F

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, LF/f;->l:LF/g;

    .line 55
    .line 56
    iput v0, p0, LF/f;->m:F

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LF/f;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, LF/f;->m:F

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, LF/f;->l:LF/g;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, LF/g;

    .line 13
    .line 14
    invoke-direct {v0, p1}, LF/g;-><init>(F)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, LF/f;->l:LF/g;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, LF/f;->l:LF/g;

    .line 20
    .line 21
    float-to-double v1, p1

    .line 22
    iput-wide v1, v0, LF/g;->i:D

    .line 23
    .line 24
    double-to-float p1, v1

    .line 25
    float-to-double v1, p1

    .line 26
    iget p1, p0, LF/f;->f:F

    .line 27
    .line 28
    float-to-double v3, p1

    .line 29
    cmpl-double p1, v1, v3

    .line 30
    .line 31
    if-gtz p1, :cond_a

    .line 32
    .line 33
    iget p1, p0, LF/f;->g:F

    .line 34
    .line 35
    float-to-double v3, p1

    .line 36
    cmpg-double p1, v1, v3

    .line 37
    .line 38
    if-ltz p1, :cond_9

    .line 39
    .line 40
    iget p1, p0, LF/f;->i:F

    .line 41
    .line 42
    const/high16 v1, 0x3f400000    # 0.75f

    .line 43
    .line 44
    mul-float/2addr p1, v1

    .line 45
    float-to-double v1, p1

    .line 46
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iput-wide v1, v0, LF/g;->d:D

    .line 51
    .line 52
    const-wide v3, 0x404f400000000000L    # 62.5

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    mul-double/2addr v1, v3

    .line 58
    iput-wide v1, v0, LF/g;->e:D

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-ne p1, v0, :cond_8

    .line 69
    .line 70
    iget-boolean p1, p0, LF/f;->e:Z

    .line 71
    .line 72
    if-nez p1, :cond_7

    .line 73
    .line 74
    if-nez p1, :cond_7

    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, LF/f;->e:Z

    .line 78
    .line 79
    iget-boolean p1, p0, LF/f;->c:Z

    .line 80
    .line 81
    if-nez p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, LF/f;->d:LA1/b;

    .line 84
    .line 85
    iget-object p1, p1, LA1/b;->b:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, LF/e;

    .line 88
    .line 89
    iget p1, p1, LF/e;->a:F

    .line 90
    .line 91
    iput p1, p0, LF/f;->b:F

    .line 92
    .line 93
    :cond_2
    iget p1, p0, LF/f;->b:F

    .line 94
    .line 95
    iget v0, p0, LF/f;->f:F

    .line 96
    .line 97
    cmpl-float v0, p1, v0

    .line 98
    .line 99
    if-gtz v0, :cond_6

    .line 100
    .line 101
    iget v0, p0, LF/f;->g:F

    .line 102
    .line 103
    cmpg-float p1, p1, v0

    .line 104
    .line 105
    if-ltz p1, :cond_6

    .line 106
    .line 107
    sget-object p1, LF/c;->f:Ljava/lang/ThreadLocal;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    new-instance v0, LF/c;

    .line 116
    .line 117
    invoke-direct {v0}, LF/c;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, LF/c;

    .line 128
    .line 129
    iget-object v0, p1, LF/c;->b:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    .line 137
    iget-object v1, p1, LF/c;->d:LF/b;

    .line 138
    .line 139
    if-nez v1, :cond_4

    .line 140
    .line 141
    new-instance v1, LF/b;

    .line 142
    .line 143
    iget-object v2, p1, LF/c;->c:LA1/b;

    .line 144
    .line 145
    invoke-direct {v1, v2}, LF/b;-><init>(LA1/b;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, p1, LF/c;->d:LF/b;

    .line 149
    .line 150
    :cond_4
    iget-object p1, p1, LF/c;->d:LF/b;

    .line 151
    .line 152
    iget-object v1, p1, LF/b;->d:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Landroid/view/Choreographer;

    .line 155
    .line 156
    iget-object p1, p1, LF/b;->e:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast p1, LF/a;

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_7

    .line 168
    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string v0, "Starting value need to be in between min value and max value"

    .line 176
    .line 177
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_7
    return-void

    .line 182
    :cond_8
    new-instance p1, Landroid/util/AndroidRuntimeException;

    .line 183
    .line 184
    const-string v0, "Animations may only be started on the main thread"

    .line 185
    .line 186
    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1

    .line 190
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 191
    .line 192
    const-string v0, "Final position of the spring cannot be less than the min value."

    .line 193
    .line 194
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 199
    .line 200
    const-string v0, "Final position of the spring cannot be greater than the max value."

    .line 201
    .line 202
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method

.method public final b(F)V
    .locals 7

    .line 1
    iget-object v0, p0, LF/f;->d:LA1/b;

    .line 2
    .line 3
    iget-object v0, v0, LA1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LF/e;

    .line 6
    .line 7
    iput p1, v0, LF/e;->a:F

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object v0, p0, LF/f;->k:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, LS/s;

    .line 29
    .line 30
    iget v1, p0, LF/f;->b:F

    .line 31
    .line 32
    iget-object v2, v0, LS/s;->g:LS/B;

    .line 33
    .line 34
    iget-wide v3, v2, LS/v;->y:J

    .line 35
    .line 36
    const-wide/16 v5, 0x1

    .line 37
    .line 38
    add-long/2addr v3, v5

    .line 39
    float-to-double v5, v1

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    const-wide/16 v5, -0x1

    .line 49
    .line 50
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-wide v5, v0, LS/s;->a:J

    .line 55
    .line 56
    invoke-virtual {v2, v3, v4, v5, v6}, LS/B;->F(JJ)V

    .line 57
    .line 58
    .line 59
    iput-wide v3, v0, LS/s;->a:J

    .line 60
    .line 61
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 69
    .line 70
    :goto_1
    if-ltz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    return-void
.end method
