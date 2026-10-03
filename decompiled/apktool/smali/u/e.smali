.class public final Lu/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static o:I = 0x3e8

.field public static p:Z = true


# instance fields
.field public a:I

.field public final b:Lu/g;

.field public c:I

.field public d:I

.field public e:[Lu/c;

.field public f:Z

.field public g:[Z

.field public h:I

.field public i:I

.field public j:I

.field public final k:LN1/w;

.field public l:[Lu/i;

.field public m:I

.field public n:Lu/c;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lu/e;->a:I

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    iput v1, p0, Lu/e;->c:I

    .line 10
    .line 11
    iput v1, p0, Lu/e;->d:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lu/e;->e:[Lu/c;

    .line 15
    .line 16
    iput-boolean v0, p0, Lu/e;->f:Z

    .line 17
    .line 18
    new-array v2, v1, [Z

    .line 19
    .line 20
    iput-object v2, p0, Lu/e;->g:[Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    iput v2, p0, Lu/e;->h:I

    .line 24
    .line 25
    iput v0, p0, Lu/e;->i:I

    .line 26
    .line 27
    iput v1, p0, Lu/e;->j:I

    .line 28
    .line 29
    sget v2, Lu/e;->o:I

    .line 30
    .line 31
    new-array v2, v2, [Lu/i;

    .line 32
    .line 33
    iput-object v2, p0, Lu/e;->l:[Lu/i;

    .line 34
    .line 35
    iput v0, p0, Lu/e;->m:I

    .line 36
    .line 37
    new-array v2, v1, [Lu/c;

    .line 38
    .line 39
    iput-object v2, p0, Lu/e;->e:[Lu/c;

    .line 40
    .line 41
    invoke-virtual {p0}, Lu/e;->q()V

    .line 42
    .line 43
    .line 44
    new-instance v2, LN1/w;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v3, Le/f;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v3, v4}, Le/f;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object v3, v2, LN1/w;->a:Ljava/lang/Object;

    .line 56
    .line 57
    new-instance v3, Le/f;

    .line 58
    .line 59
    invoke-direct {v3, v4}, Le/f;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object v3, v2, LN1/w;->b:Ljava/lang/Object;

    .line 63
    .line 64
    new-instance v3, Le/f;

    .line 65
    .line 66
    invoke-direct {v3, v4}, Le/f;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iput-object v3, v2, LN1/w;->c:Ljava/lang/Object;

    .line 70
    .line 71
    new-array v1, v1, [Lu/i;

    .line 72
    .line 73
    iput-object v1, v2, LN1/w;->d:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object v2, p0, Lu/e;->k:LN1/w;

    .line 76
    .line 77
    new-instance v1, Lu/g;

    .line 78
    .line 79
    invoke-direct {v1, v2}, Lu/c;-><init>(LN1/w;)V

    .line 80
    .line 81
    .line 82
    const/16 v3, 0x80

    .line 83
    .line 84
    new-array v4, v3, [Lu/i;

    .line 85
    .line 86
    iput-object v4, v1, Lu/g;->f:[Lu/i;

    .line 87
    .line 88
    new-array v3, v3, [Lu/i;

    .line 89
    .line 90
    iput-object v3, v1, Lu/g;->g:[Lu/i;

    .line 91
    .line 92
    iput v0, v1, Lu/g;->h:I

    .line 93
    .line 94
    new-instance v0, Lu/f;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lu/f;-><init>(Lu/g;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, v1, Lu/g;->i:Lu/f;

    .line 100
    .line 101
    iput-object v1, p0, Lu/e;->b:Lu/g;

    .line 102
    .line 103
    sget-boolean v0, Lu/e;->p:Z

    .line 104
    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    new-instance v0, Lu/d;

    .line 108
    .line 109
    invoke-direct {v0, v2}, Lu/d;-><init>(LN1/w;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lu/e;->n:Lu/c;

    .line 113
    .line 114
    return-void

    .line 115
    :cond_0
    new-instance v0, Lu/c;

    .line 116
    .line 117
    invoke-direct {v0, v2}, Lu/c;-><init>(LN1/w;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lu/e;->n:Lu/c;

    .line 121
    .line 122
    return-void
.end method

.method public static m(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p0, Lv/c;

    .line 2
    .line 3
    iget-object p0, p0, Lv/c;->g:Lu/i;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lu/i;->e:F

    .line 8
    .line 9
    const/high16 v0, 0x3f000000    # 0.5f

    .line 10
    .line 11
    add-float/2addr p0, v0

    .line 12
    float-to-int p0, p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method


# virtual methods
.method public final a(I)Lu/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lu/e;->k:LN1/w;

    .line 2
    .line 3
    iget-object v0, v0, LN1/w;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Le/f;

    .line 6
    .line 7
    invoke-virtual {v0}, Le/f;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lu/i;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lu/i;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lu/i;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput p1, v0, Lu/i;->l:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lu/i;->c()V

    .line 24
    .line 25
    .line 26
    iput p1, v0, Lu/i;->l:I

    .line 27
    .line 28
    :goto_0
    iget p1, p0, Lu/e;->m:I

    .line 29
    .line 30
    sget v1, Lu/e;->o:I

    .line 31
    .line 32
    if-lt p1, v1, :cond_1

    .line 33
    .line 34
    mul-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    sput v1, Lu/e;->o:I

    .line 37
    .line 38
    iget-object p1, p0, Lu/e;->l:[Lu/i;

    .line 39
    .line 40
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, [Lu/i;

    .line 45
    .line 46
    iput-object p1, p0, Lu/e;->l:[Lu/i;

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lu/e;->l:[Lu/i;

    .line 49
    .line 50
    iget v1, p0, Lu/e;->m:I

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    iput v2, p0, Lu/e;->m:I

    .line 55
    .line 56
    aput-object v0, p1, v1

    .line 57
    .line 58
    return-object v0
.end method

.method public final b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lu/e;->k()Lu/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    if-ne p2, p5, :cond_0

    .line 8
    .line 9
    iget-object p3, v0, Lu/c;->d:Lu/b;

    .line 10
    .line 11
    invoke-interface {p3, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 12
    .line 13
    .line 14
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 15
    .line 16
    invoke-interface {p1, p6, v1}, Lu/b;->h(Lu/i;F)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 20
    .line 21
    const/high16 p3, -0x40000000    # -2.0f

    .line 22
    .line 23
    invoke-interface {p1, p2, p3}, Lu/b;->h(Lu/i;F)V

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    .line 30
    cmpl-float v2, p4, v2

    .line 31
    .line 32
    const/high16 v3, -0x40800000    # -1.0f

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget-object p4, v0, Lu/c;->d:Lu/b;

    .line 37
    .line 38
    invoke-interface {p4, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 39
    .line 40
    .line 41
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 42
    .line 43
    invoke-interface {p1, p2, v3}, Lu/b;->h(Lu/i;F)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 47
    .line 48
    invoke-interface {p1, p5, v3}, Lu/b;->h(Lu/i;F)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 52
    .line 53
    invoke-interface {p1, p6, v1}, Lu/b;->h(Lu/i;F)V

    .line 54
    .line 55
    .line 56
    if-gtz p3, :cond_1

    .line 57
    .line 58
    if-lez p7, :cond_6

    .line 59
    .line 60
    :cond_1
    neg-int p1, p3

    .line 61
    add-int/2addr p1, p7

    .line 62
    int-to-float p1, p1

    .line 63
    iput p1, v0, Lu/c;->b:F

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    cmpg-float v2, p4, v2

    .line 68
    .line 69
    if-gtz v2, :cond_3

    .line 70
    .line 71
    iget-object p4, v0, Lu/c;->d:Lu/b;

    .line 72
    .line 73
    invoke-interface {p4, p1, v3}, Lu/b;->h(Lu/i;F)V

    .line 74
    .line 75
    .line 76
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 77
    .line 78
    invoke-interface {p1, p2, v1}, Lu/b;->h(Lu/i;F)V

    .line 79
    .line 80
    .line 81
    int-to-float p1, p3

    .line 82
    iput p1, v0, Lu/c;->b:F

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    cmpl-float v2, p4, v1

    .line 86
    .line 87
    if-ltz v2, :cond_4

    .line 88
    .line 89
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 90
    .line 91
    invoke-interface {p1, p6, v3}, Lu/b;->h(Lu/i;F)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 95
    .line 96
    invoke-interface {p1, p5, v1}, Lu/b;->h(Lu/i;F)V

    .line 97
    .line 98
    .line 99
    neg-int p1, p7

    .line 100
    int-to-float p1, p1

    .line 101
    iput p1, v0, Lu/c;->b:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, v0, Lu/c;->d:Lu/b;

    .line 105
    .line 106
    sub-float v4, v1, p4

    .line 107
    .line 108
    mul-float v5, v4, v1

    .line 109
    .line 110
    invoke-interface {v2, p1, v5}, Lu/b;->h(Lu/i;F)V

    .line 111
    .line 112
    .line 113
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 114
    .line 115
    mul-float v2, v4, v3

    .line 116
    .line 117
    invoke-interface {p1, p2, v2}, Lu/b;->h(Lu/i;F)V

    .line 118
    .line 119
    .line 120
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 121
    .line 122
    mul-float/2addr v3, p4

    .line 123
    invoke-interface {p1, p5, v3}, Lu/b;->h(Lu/i;F)V

    .line 124
    .line 125
    .line 126
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 127
    .line 128
    mul-float/2addr v1, p4

    .line 129
    invoke-interface {p1, p6, v1}, Lu/b;->h(Lu/i;F)V

    .line 130
    .line 131
    .line 132
    if-gtz p3, :cond_5

    .line 133
    .line 134
    if-lez p7, :cond_6

    .line 135
    .line 136
    :cond_5
    neg-int p1, p3

    .line 137
    int-to-float p1, p1

    .line 138
    mul-float/2addr p1, v4

    .line 139
    int-to-float p2, p7

    .line 140
    mul-float/2addr p2, p4

    .line 141
    add-float/2addr p2, p1

    .line 142
    iput p2, v0, Lu/c;->b:F

    .line 143
    .line 144
    :cond_6
    :goto_0
    const/16 p1, 0x8

    .line 145
    .line 146
    if-eq p8, p1, :cond_7

    .line 147
    .line 148
    invoke-virtual {v0, p0, p8}, Lu/c;->a(Lu/e;I)V

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-virtual {p0, v0}, Lu/e;->c(Lu/c;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final c(Lu/c;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lu/e;->i:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/2addr v2, v3

    .line 9
    iget v4, v0, Lu/e;->j:I

    .line 10
    .line 11
    if-ge v2, v4, :cond_0

    .line 12
    .line 13
    iget v2, v0, Lu/e;->h:I

    .line 14
    .line 15
    add-int/2addr v2, v3

    .line 16
    iget v4, v0, Lu/e;->d:I

    .line 17
    .line 18
    if-lt v2, v4, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0}, Lu/e;->n()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-boolean v2, v1, Lu/c;->e:Z

    .line 24
    .line 25
    if-nez v2, :cond_1e

    .line 26
    .line 27
    iget-object v2, v1, Lu/c;->c:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v5, v0, Lu/e;->e:[Lu/c;

    .line 30
    .line 31
    array-length v5, v5

    .line 32
    const/4 v6, -0x1

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_2
    const/4 v5, 0x0

    .line 37
    :goto_0
    if-nez v5, :cond_9

    .line 38
    .line 39
    iget-object v7, v1, Lu/c;->d:Lu/b;

    .line 40
    .line 41
    invoke-interface {v7}, Lu/b;->d()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v8, 0x0

    .line 46
    :goto_1
    if-ge v8, v7, :cond_5

    .line 47
    .line 48
    iget-object v9, v1, Lu/c;->d:Lu/b;

    .line 49
    .line 50
    invoke-interface {v9, v8}, Lu/b;->i(I)Lu/i;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    iget v10, v9, Lu/i;->c:I

    .line 55
    .line 56
    if-ne v10, v6, :cond_3

    .line 57
    .line 58
    iget-boolean v10, v9, Lu/i;->f:Z

    .line 59
    .line 60
    if-eqz v10, :cond_4

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-lez v7, :cond_8

    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    const/4 v8, 0x0

    .line 79
    :goto_2
    if-ge v8, v7, :cond_7

    .line 80
    .line 81
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    add-int/lit8 v8, v8, 0x1

    .line 86
    .line 87
    check-cast v9, Lu/i;

    .line 88
    .line 89
    iget-boolean v10, v9, Lu/i;->f:Z

    .line 90
    .line 91
    if-eqz v10, :cond_6

    .line 92
    .line 93
    invoke-virtual {v1, v9, v3}, Lu/c;->g(Lu/i;Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_6
    iget-object v10, v0, Lu/e;->e:[Lu/c;

    .line 98
    .line 99
    iget v9, v9, Lu/i;->c:I

    .line 100
    .line 101
    aget-object v9, v10, v9

    .line 102
    .line 103
    invoke-virtual {v1, v9, v3}, Lu/c;->h(Lu/c;Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_8
    move v5, v3

    .line 112
    goto :goto_0

    .line 113
    :cond_9
    :goto_3
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 114
    .line 115
    const/4 v5, 0x0

    .line 116
    if-nez v2, :cond_a

    .line 117
    .line 118
    iget v2, v1, Lu/c;->b:F

    .line 119
    .line 120
    cmpl-float v2, v2, v5

    .line 121
    .line 122
    if-nez v2, :cond_a

    .line 123
    .line 124
    iget-object v2, v1, Lu/c;->d:Lu/b;

    .line 125
    .line 126
    invoke-interface {v2}, Lu/b;->d()I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_a

    .line 131
    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :cond_a
    iget v2, v1, Lu/c;->b:F

    .line 135
    .line 136
    cmpg-float v7, v2, v5

    .line 137
    .line 138
    if-gez v7, :cond_b

    .line 139
    .line 140
    const/high16 v7, -0x40800000    # -1.0f

    .line 141
    .line 142
    mul-float/2addr v2, v7

    .line 143
    iput v2, v1, Lu/c;->b:F

    .line 144
    .line 145
    iget-object v2, v1, Lu/c;->d:Lu/b;

    .line 146
    .line 147
    invoke-interface {v2}, Lu/b;->k()V

    .line 148
    .line 149
    .line 150
    :cond_b
    iget-object v2, v1, Lu/c;->d:Lu/b;

    .line 151
    .line 152
    invoke-interface {v2}, Lu/b;->d()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/4 v7, 0x0

    .line 157
    move v11, v5

    .line 158
    move v13, v11

    .line 159
    move-object v9, v7

    .line 160
    move-object v10, v9

    .line 161
    const/4 v8, 0x0

    .line 162
    const/4 v12, 0x0

    .line 163
    const/4 v14, 0x0

    .line 164
    :goto_4
    if-ge v8, v2, :cond_14

    .line 165
    .line 166
    iget-object v15, v1, Lu/c;->d:Lu/b;

    .line 167
    .line 168
    invoke-interface {v15, v8}, Lu/b;->a(I)F

    .line 169
    .line 170
    .line 171
    move-result v15

    .line 172
    iget-object v4, v1, Lu/c;->d:Lu/b;

    .line 173
    .line 174
    invoke-interface {v4, v8}, Lu/b;->i(I)Lu/i;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    move/from16 v16, v5

    .line 179
    .line 180
    iget v5, v4, Lu/i;->l:I

    .line 181
    .line 182
    if-ne v5, v3, :cond_f

    .line 183
    .line 184
    if-nez v9, :cond_d

    .line 185
    .line 186
    iget v5, v4, Lu/i;->k:I

    .line 187
    .line 188
    if-gt v5, v3, :cond_c

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_c
    const/4 v12, 0x0

    .line 192
    :goto_5
    move-object v9, v4

    .line 193
    move v11, v15

    .line 194
    goto :goto_9

    .line 195
    :cond_d
    cmpl-float v5, v11, v15

    .line 196
    .line 197
    if-lez v5, :cond_e

    .line 198
    .line 199
    iget v5, v4, Lu/i;->k:I

    .line 200
    .line 201
    if-gt v5, v3, :cond_c

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_e
    if-nez v12, :cond_13

    .line 205
    .line 206
    iget v5, v4, Lu/i;->k:I

    .line 207
    .line 208
    if-gt v5, v3, :cond_13

    .line 209
    .line 210
    :goto_6
    move v12, v3

    .line 211
    goto :goto_5

    .line 212
    :cond_f
    if-nez v9, :cond_13

    .line 213
    .line 214
    cmpg-float v5, v15, v16

    .line 215
    .line 216
    if-gez v5, :cond_13

    .line 217
    .line 218
    if-nez v10, :cond_11

    .line 219
    .line 220
    iget v5, v4, Lu/i;->k:I

    .line 221
    .line 222
    if-gt v5, v3, :cond_10

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_10
    const/4 v14, 0x0

    .line 226
    :goto_7
    move-object v10, v4

    .line 227
    move v13, v15

    .line 228
    goto :goto_9

    .line 229
    :cond_11
    cmpl-float v5, v13, v15

    .line 230
    .line 231
    if-lez v5, :cond_12

    .line 232
    .line 233
    iget v5, v4, Lu/i;->k:I

    .line 234
    .line 235
    if-gt v5, v3, :cond_10

    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_12
    if-nez v14, :cond_13

    .line 239
    .line 240
    iget v5, v4, Lu/i;->k:I

    .line 241
    .line 242
    if-gt v5, v3, :cond_13

    .line 243
    .line 244
    :goto_8
    move v14, v3

    .line 245
    goto :goto_7

    .line 246
    :cond_13
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 247
    .line 248
    move/from16 v5, v16

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_14
    move/from16 v16, v5

    .line 252
    .line 253
    if-eqz v9, :cond_15

    .line 254
    .line 255
    goto :goto_a

    .line 256
    :cond_15
    move-object v9, v10

    .line 257
    :goto_a
    if-nez v9, :cond_16

    .line 258
    .line 259
    move v2, v3

    .line 260
    goto :goto_b

    .line 261
    :cond_16
    invoke-virtual {v1, v9}, Lu/c;->f(Lu/i;)V

    .line 262
    .line 263
    .line 264
    const/4 v2, 0x0

    .line 265
    :goto_b
    iget-object v4, v1, Lu/c;->d:Lu/b;

    .line 266
    .line 267
    invoke-interface {v4}, Lu/b;->d()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_17

    .line 272
    .line 273
    iput-boolean v3, v1, Lu/c;->e:Z

    .line 274
    .line 275
    :cond_17
    if-eqz v2, :cond_1d

    .line 276
    .line 277
    iget v2, v0, Lu/e;->h:I

    .line 278
    .line 279
    add-int/2addr v2, v3

    .line 280
    iget v4, v0, Lu/e;->d:I

    .line 281
    .line 282
    if-lt v2, v4, :cond_18

    .line 283
    .line 284
    invoke-virtual {v0}, Lu/e;->n()V

    .line 285
    .line 286
    .line 287
    :cond_18
    const/4 v2, 0x3

    .line 288
    invoke-virtual {v0, v2}, Lu/e;->a(I)Lu/i;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget v4, v0, Lu/e;->a:I

    .line 293
    .line 294
    add-int/2addr v4, v3

    .line 295
    iput v4, v0, Lu/e;->a:I

    .line 296
    .line 297
    iget v5, v0, Lu/e;->h:I

    .line 298
    .line 299
    add-int/2addr v5, v3

    .line 300
    iput v5, v0, Lu/e;->h:I

    .line 301
    .line 302
    iput v4, v2, Lu/i;->b:I

    .line 303
    .line 304
    iget-object v5, v0, Lu/e;->k:LN1/w;

    .line 305
    .line 306
    iget-object v5, v5, LN1/w;->d:Ljava/lang/Object;

    .line 307
    .line 308
    check-cast v5, [Lu/i;

    .line 309
    .line 310
    aput-object v2, v5, v4

    .line 311
    .line 312
    iput-object v2, v1, Lu/c;->a:Lu/i;

    .line 313
    .line 314
    invoke-virtual/range {p0 .. p1}, Lu/e;->h(Lu/c;)V

    .line 315
    .line 316
    .line 317
    iget-object v4, v0, Lu/e;->n:Lu/c;

    .line 318
    .line 319
    iput-object v7, v4, Lu/c;->a:Lu/i;

    .line 320
    .line 321
    iget-object v5, v4, Lu/c;->d:Lu/b;

    .line 322
    .line 323
    invoke-interface {v5}, Lu/b;->clear()V

    .line 324
    .line 325
    .line 326
    const/4 v5, 0x0

    .line 327
    :goto_c
    iget-object v8, v1, Lu/c;->d:Lu/b;

    .line 328
    .line 329
    invoke-interface {v8}, Lu/b;->d()I

    .line 330
    .line 331
    .line 332
    move-result v8

    .line 333
    if-ge v5, v8, :cond_19

    .line 334
    .line 335
    iget-object v8, v1, Lu/c;->d:Lu/b;

    .line 336
    .line 337
    invoke-interface {v8, v5}, Lu/b;->i(I)Lu/i;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    iget-object v9, v1, Lu/c;->d:Lu/b;

    .line 342
    .line 343
    invoke-interface {v9, v5}, Lu/b;->a(I)F

    .line 344
    .line 345
    .line 346
    move-result v9

    .line 347
    iget-object v10, v4, Lu/c;->d:Lu/b;

    .line 348
    .line 349
    invoke-interface {v10, v8, v9, v3}, Lu/b;->f(Lu/i;FZ)V

    .line 350
    .line 351
    .line 352
    add-int/lit8 v5, v5, 0x1

    .line 353
    .line 354
    goto :goto_c

    .line 355
    :cond_19
    iget-object v4, v0, Lu/e;->n:Lu/c;

    .line 356
    .line 357
    invoke-virtual {v0, v4}, Lu/e;->p(Lu/c;)V

    .line 358
    .line 359
    .line 360
    iget v4, v2, Lu/i;->c:I

    .line 361
    .line 362
    if-ne v4, v6, :cond_1c

    .line 363
    .line 364
    iget-object v4, v1, Lu/c;->a:Lu/i;

    .line 365
    .line 366
    if-ne v4, v2, :cond_1a

    .line 367
    .line 368
    invoke-virtual {v1, v7, v2}, Lu/c;->e([ZLu/i;)Lu/i;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    if-eqz v2, :cond_1a

    .line 373
    .line 374
    invoke-virtual {v1, v2}, Lu/c;->f(Lu/i;)V

    .line 375
    .line 376
    .line 377
    :cond_1a
    iget-boolean v2, v1, Lu/c;->e:Z

    .line 378
    .line 379
    if-nez v2, :cond_1b

    .line 380
    .line 381
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 382
    .line 383
    invoke-virtual {v2, v1}, Lu/i;->d(Lu/c;)V

    .line 384
    .line 385
    .line 386
    :cond_1b
    iget v2, v0, Lu/e;->i:I

    .line 387
    .line 388
    sub-int/2addr v2, v3

    .line 389
    iput v2, v0, Lu/e;->i:I

    .line 390
    .line 391
    :cond_1c
    move v4, v3

    .line 392
    goto :goto_d

    .line 393
    :cond_1d
    const/4 v4, 0x0

    .line 394
    :goto_d
    iget-object v2, v1, Lu/c;->a:Lu/i;

    .line 395
    .line 396
    if-eqz v2, :cond_20

    .line 397
    .line 398
    iget v2, v2, Lu/i;->l:I

    .line 399
    .line 400
    if-eq v2, v3, :cond_1f

    .line 401
    .line 402
    iget v2, v1, Lu/c;->b:F

    .line 403
    .line 404
    cmpg-float v2, v2, v16

    .line 405
    .line 406
    if-ltz v2, :cond_20

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_1e
    const/4 v4, 0x0

    .line 410
    :cond_1f
    :goto_e
    if-nez v4, :cond_20

    .line 411
    .line 412
    invoke-virtual/range {p0 .. p1}, Lu/e;->h(Lu/c;)V

    .line 413
    .line 414
    .line 415
    :cond_20
    :goto_f
    return-void
.end method

.method public final d(Lu/i;I)V
    .locals 4

    .line 1
    iget v0, p1, Lu/i;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_1

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    iput p2, p1, Lu/i;->e:F

    .line 9
    .line 10
    iput-boolean v1, p1, Lu/i;->f:Z

    .line 11
    .line 12
    iget p2, p1, Lu/i;->j:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    move v1, v0

    .line 16
    :goto_0
    if-ge v1, p2, :cond_0

    .line 17
    .line 18
    iget-object v2, p1, Lu/i;->i:[Lu/c;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    invoke-virtual {v2, p1, v0}, Lu/c;->g(Lu/i;Z)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput v0, p1, Lu/i;->j:I

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-eq v0, v2, :cond_5

    .line 32
    .line 33
    iget-object v3, p0, Lu/e;->e:[Lu/c;

    .line 34
    .line 35
    aget-object v0, v3, v0

    .line 36
    .line 37
    iget-boolean v3, v0, Lu/c;->e:Z

    .line 38
    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    int-to-float p1, p2

    .line 42
    iput p1, v0, Lu/c;->b:F

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    iget-object v3, v0, Lu/c;->d:Lu/b;

    .line 46
    .line 47
    invoke-interface {v3}, Lu/b;->d()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    iput-boolean v1, v0, Lu/c;->e:Z

    .line 54
    .line 55
    int-to-float p1, p2

    .line 56
    iput p1, v0, Lu/c;->b:F

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-virtual {p0}, Lu/e;->k()Lu/c;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-gez p2, :cond_4

    .line 64
    .line 65
    mul-int/2addr p2, v2

    .line 66
    int-to-float p2, p2

    .line 67
    iput p2, v0, Lu/c;->b:F

    .line 68
    .line 69
    iget-object p2, v0, Lu/c;->d:Lu/b;

    .line 70
    .line 71
    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    .line 73
    invoke-interface {p2, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    int-to-float p2, p2

    .line 78
    iput p2, v0, Lu/c;->b:F

    .line 79
    .line 80
    iget-object p2, v0, Lu/c;->d:Lu/b;

    .line 81
    .line 82
    const/high16 v1, -0x40800000    # -1.0f

    .line 83
    .line 84
    invoke-interface {p2, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0, v0}, Lu/e;->c(Lu/c;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p0}, Lu/e;->k()Lu/c;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object p1, v0, Lu/c;->a:Lu/i;

    .line 96
    .line 97
    int-to-float p2, p2

    .line 98
    iput p2, p1, Lu/i;->e:F

    .line 99
    .line 100
    iput p2, v0, Lu/c;->b:F

    .line 101
    .line 102
    iput-boolean v1, v0, Lu/c;->e:Z

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lu/e;->c(Lu/c;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final e(Lu/i;Lu/i;II)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/16 v2, 0x8

    .line 4
    .line 5
    if-ne p4, v2, :cond_1

    .line 6
    .line 7
    iget-boolean v3, p2, Lu/i;->f:Z

    .line 8
    .line 9
    if-eqz v3, :cond_1

    .line 10
    .line 11
    iget v3, p1, Lu/i;->c:I

    .line 12
    .line 13
    const/4 v4, -0x1

    .line 14
    if-ne v3, v4, :cond_1

    .line 15
    .line 16
    iget p2, p2, Lu/i;->e:F

    .line 17
    .line 18
    int-to-float p3, p3

    .line 19
    add-float/2addr p2, p3

    .line 20
    iput p2, p1, Lu/i;->e:F

    .line 21
    .line 22
    iput-boolean v1, p1, Lu/i;->f:Z

    .line 23
    .line 24
    iget p2, p1, Lu/i;->j:I

    .line 25
    .line 26
    move p3, v0

    .line 27
    :goto_0
    if-ge p3, p2, :cond_0

    .line 28
    .line 29
    iget-object p4, p1, Lu/i;->i:[Lu/c;

    .line 30
    .line 31
    aget-object p4, p4, p3

    .line 32
    .line 33
    invoke-virtual {p4, p1, v0}, Lu/c;->g(Lu/i;Z)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 p3, p3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput v0, p1, Lu/i;->j:I

    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0}, Lu/e;->k()Lu/c;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz p3, :cond_3

    .line 47
    .line 48
    if-gez p3, :cond_2

    .line 49
    .line 50
    mul-int/lit8 p3, p3, -0x1

    .line 51
    .line 52
    move v0, v1

    .line 53
    :cond_2
    int-to-float p3, p3

    .line 54
    iput p3, v3, Lu/c;->b:F

    .line 55
    .line 56
    :cond_3
    const/high16 p3, 0x3f800000    # 1.0f

    .line 57
    .line 58
    const/high16 v1, -0x40800000    # -1.0f

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 63
    .line 64
    invoke-interface {v0, p1, v1}, Lu/b;->h(Lu/i;F)V

    .line 65
    .line 66
    .line 67
    iget-object p1, v3, Lu/c;->d:Lu/b;

    .line 68
    .line 69
    invoke-interface {p1, p2, p3}, Lu/b;->h(Lu/i;F)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 74
    .line 75
    invoke-interface {v0, p1, p3}, Lu/b;->h(Lu/i;F)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v3, Lu/c;->d:Lu/b;

    .line 79
    .line 80
    invoke-interface {p1, p2, v1}, Lu/b;->h(Lu/i;F)V

    .line 81
    .line 82
    .line 83
    :goto_1
    if-eq p4, v2, :cond_5

    .line 84
    .line 85
    invoke-virtual {v3, p0, p4}, Lu/c;->a(Lu/e;I)V

    .line 86
    .line 87
    .line 88
    :cond_5
    invoke-virtual {p0, v3}, Lu/e;->c(Lu/c;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final f(Lu/i;Lu/i;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/e;->k()Lu/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lu/e;->l()Lu/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lu/i;->d:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Lu/c;->b(Lu/i;Lu/i;Lu/i;I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lu/b;->g(Lu/i;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Lu/e;->i(I)Lu/i;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p3, v0, Lu/c;->d:Lu/b;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Lu/b;->h(Lu/i;F)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Lu/e;->c(Lu/c;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final g(Lu/i;Lu/i;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu/e;->k()Lu/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lu/e;->l()Lu/i;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    iput v2, v1, Lu/i;->d:I

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, v1, p3}, Lu/c;->c(Lu/i;Lu/i;Lu/i;I)V

    .line 13
    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-eq p4, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, v0, Lu/c;->d:Lu/b;

    .line 20
    .line 21
    invoke-interface {p1, v1}, Lu/b;->g(Lu/i;)F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/high16 p2, -0x40800000    # -1.0f

    .line 26
    .line 27
    mul-float/2addr p1, p2

    .line 28
    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, p4}, Lu/e;->i(I)Lu/i;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object p3, v0, Lu/c;->d:Lu/b;

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    invoke-interface {p3, p2, p1}, Lu/b;->h(Lu/i;F)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0, v0}, Lu/e;->c(Lu/c;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final h(Lu/c;)V
    .locals 3

    .line 1
    sget-boolean v0, Lu/e;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lu/e;->k:LN1/w;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 8
    .line 9
    iget v2, p0, Lu/e;->i:I

    .line 10
    .line 11
    aget-object v0, v0, v2

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, v1, LN1/w;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Le/f;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Le/f;->d(Lu/c;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 24
    .line 25
    iget v2, p0, Lu/e;->i:I

    .line 26
    .line 27
    aget-object v0, v0, v2

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, LN1/w;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Le/f;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Le/f;->d(Lu/c;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 39
    .line 40
    iget v1, p0, Lu/e;->i:I

    .line 41
    .line 42
    aput-object p1, v0, v1

    .line 43
    .line 44
    iget-object v0, p1, Lu/c;->a:Lu/i;

    .line 45
    .line 46
    iput v1, v0, Lu/i;->c:I

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    iput v1, p0, Lu/e;->i:I

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lu/i;->d(Lu/c;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final i(I)Lu/i;
    .locals 4

    .line 1
    iget v0, p0, Lu/e;->h:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lu/e;->d:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/e;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, Lu/e;->a(I)Lu/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, v0, Lu/i;->h:[F

    .line 18
    .line 19
    iget v2, p0, Lu/e;->a:I

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    iput v2, p0, Lu/e;->a:I

    .line 24
    .line 25
    iget v3, p0, Lu/e;->h:I

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    iput v3, p0, Lu/e;->h:I

    .line 30
    .line 31
    iput v2, v0, Lu/i;->b:I

    .line 32
    .line 33
    iput p1, v0, Lu/i;->d:I

    .line 34
    .line 35
    iget-object p1, p0, Lu/e;->k:LN1/w;

    .line 36
    .line 37
    iget-object p1, p1, LN1/w;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, [Lu/i;

    .line 40
    .line 41
    aput-object v0, p1, v2

    .line 42
    .line 43
    iget-object p1, p0, Lu/e;->b:Lu/g;

    .line 44
    .line 45
    iget-object v2, p1, Lu/g;->i:Lu/f;

    .line 46
    .line 47
    iput-object v0, v2, Lu/f;->b:Lu/i;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 51
    .line 52
    .line 53
    iget v2, v0, Lu/i;->d:I

    .line 54
    .line 55
    const/high16 v3, 0x3f800000    # 1.0f

    .line 56
    .line 57
    aput v3, v1, v2

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lu/g;->i(Lu/i;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Lu/i;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Lu/e;->h:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    add-int/2addr v0, v1

    .line 8
    iget v2, p0, Lu/e;->d:I

    .line 9
    .line 10
    if-lt v0, v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lu/e;->n()V

    .line 13
    .line 14
    .line 15
    :cond_1
    instance-of v0, p1, Lv/c;

    .line 16
    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    check-cast p1, Lv/c;

    .line 20
    .line 21
    iget-object v0, p1, Lv/c;->g:Lu/i;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Lv/c;->i()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lv/c;->g:Lu/i;

    .line 29
    .line 30
    :cond_2
    iget p1, v0, Lu/i;->b:I

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    iget-object v3, p0, Lu/e;->k:LN1/w;

    .line 34
    .line 35
    if-eq p1, v2, :cond_4

    .line 36
    .line 37
    iget v4, p0, Lu/e;->a:I

    .line 38
    .line 39
    if-gt p1, v4, :cond_4

    .line 40
    .line 41
    iget-object v4, v3, LN1/w;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, [Lu/i;

    .line 44
    .line 45
    aget-object v4, v4, p1

    .line 46
    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-object v0

    .line 51
    :cond_4
    :goto_0
    if-eq p1, v2, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lu/i;->c()V

    .line 54
    .line 55
    .line 56
    :cond_5
    iget p1, p0, Lu/e;->a:I

    .line 57
    .line 58
    add-int/2addr p1, v1

    .line 59
    iput p1, p0, Lu/e;->a:I

    .line 60
    .line 61
    iget v2, p0, Lu/e;->h:I

    .line 62
    .line 63
    add-int/2addr v2, v1

    .line 64
    iput v2, p0, Lu/e;->h:I

    .line 65
    .line 66
    iput p1, v0, Lu/i;->b:I

    .line 67
    .line 68
    iput v1, v0, Lu/i;->l:I

    .line 69
    .line 70
    iget-object v1, v3, LN1/w;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, [Lu/i;

    .line 73
    .line 74
    aput-object v0, v1, p1

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 78
    return-object p1
.end method

.method public final k()Lu/c;
    .locals 5

    .line 1
    sget-boolean v0, Lu/e;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p0, Lu/e;->k:LN1/w;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v4, LN1/w;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Le/f;

    .line 13
    .line 14
    invoke-virtual {v0}, Le/f;->b()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lu/c;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lu/d;

    .line 23
    .line 24
    invoke-direct {v0, v4}, Lu/d;-><init>(LN1/w;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-object v3, v0, Lu/c;->a:Lu/i;

    .line 29
    .line 30
    iget-object v3, v0, Lu/c;->d:Lu/b;

    .line 31
    .line 32
    invoke-interface {v3}, Lu/b;->clear()V

    .line 33
    .line 34
    .line 35
    iput v2, v0, Lu/c;->b:F

    .line 36
    .line 37
    iput-boolean v1, v0, Lu/c;->e:Z

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, v4, LN1/w;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Le/f;

    .line 43
    .line 44
    invoke-virtual {v0}, Le/f;->b()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lu/c;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    new-instance v0, Lu/c;

    .line 53
    .line 54
    invoke-direct {v0, v4}, Lu/c;-><init>(LN1/w;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iput-object v3, v0, Lu/c;->a:Lu/i;

    .line 59
    .line 60
    iget-object v3, v0, Lu/c;->d:Lu/b;

    .line 61
    .line 62
    invoke-interface {v3}, Lu/b;->clear()V

    .line 63
    .line 64
    .line 65
    iput v2, v0, Lu/c;->b:F

    .line 66
    .line 67
    iput-boolean v1, v0, Lu/c;->e:Z

    .line 68
    .line 69
    :goto_0
    return-object v0
.end method

.method public final l()Lu/i;
    .locals 3

    .line 1
    iget v0, p0, Lu/e;->h:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lu/e;->d:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/e;->n()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lu/e;->a(I)Lu/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lu/e;->a:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lu/e;->a:I

    .line 22
    .line 23
    iget v2, p0, Lu/e;->h:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lu/e;->h:I

    .line 28
    .line 29
    iput v1, v0, Lu/i;->b:I

    .line 30
    .line 31
    iget-object v2, p0, Lu/e;->k:LN1/w;

    .line 32
    .line 33
    iget-object v2, v2, LN1/w;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, [Lu/i;

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public final n()V
    .locals 3

    .line 1
    iget v0, p0, Lu/e;->c:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lu/e;->c:I

    .line 6
    .line 7
    iget-object v1, p0, Lu/e;->e:[Lu/c;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lu/c;

    .line 14
    .line 15
    iput-object v0, p0, Lu/e;->e:[Lu/c;

    .line 16
    .line 17
    iget-object v0, p0, Lu/e;->k:LN1/w;

    .line 18
    .line 19
    iget-object v1, v0, LN1/w;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, [Lu/i;

    .line 22
    .line 23
    iget v2, p0, Lu/e;->c:I

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, [Lu/i;

    .line 30
    .line 31
    iput-object v1, v0, LN1/w;->d:Ljava/lang/Object;

    .line 32
    .line 33
    iget v0, p0, Lu/e;->c:I

    .line 34
    .line 35
    new-array v1, v0, [Z

    .line 36
    .line 37
    iput-object v1, p0, Lu/e;->g:[Z

    .line 38
    .line 39
    iput v0, p0, Lu/e;->d:I

    .line 40
    .line 41
    iput v0, p0, Lu/e;->j:I

    .line 42
    .line 43
    return-void
.end method

.method public final o(Lu/g;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v3, v0, Lu/e;->i:I

    .line 5
    .line 6
    if-ge v2, v3, :cond_d

    .line 7
    .line 8
    iget-object v3, v0, Lu/e;->e:[Lu/c;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    iget-object v4, v3, Lu/c;->a:Lu/i;

    .line 13
    .line 14
    iget v4, v4, Lu/i;->l:I

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v4, v5, :cond_0

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_0
    iget v3, v3, Lu/c;->b:F

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    cmpg-float v3, v3, v4

    .line 25
    .line 26
    if-gez v3, :cond_c

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_1
    if-nez v2, :cond_d

    .line 31
    .line 32
    add-int/2addr v3, v5

    .line 33
    const/4 v6, -0x1

    .line 34
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 35
    .line 36
    .line 37
    move v9, v6

    .line 38
    move v10, v9

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v11, 0x0

    .line 41
    :goto_2
    iget v12, v0, Lu/e;->i:I

    .line 42
    .line 43
    iget-object v13, v0, Lu/e;->k:LN1/w;

    .line 44
    .line 45
    if-ge v8, v12, :cond_9

    .line 46
    .line 47
    iget-object v12, v0, Lu/e;->e:[Lu/c;

    .line 48
    .line 49
    aget-object v12, v12, v8

    .line 50
    .line 51
    iget-object v14, v12, Lu/c;->a:Lu/i;

    .line 52
    .line 53
    iget v14, v14, Lu/i;->l:I

    .line 54
    .line 55
    if-ne v14, v5, :cond_1

    .line 56
    .line 57
    goto :goto_6

    .line 58
    :cond_1
    iget-boolean v14, v12, Lu/c;->e:Z

    .line 59
    .line 60
    if-eqz v14, :cond_2

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_2
    iget v14, v12, Lu/c;->b:F

    .line 64
    .line 65
    cmpg-float v14, v14, v4

    .line 66
    .line 67
    if-gez v14, :cond_8

    .line 68
    .line 69
    move v14, v5

    .line 70
    :goto_3
    iget v15, v0, Lu/e;->h:I

    .line 71
    .line 72
    if-ge v14, v15, :cond_8

    .line 73
    .line 74
    iget-object v15, v13, LN1/w;->d:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v15, [Lu/i;

    .line 77
    .line 78
    aget-object v15, v15, v14

    .line 79
    .line 80
    iget-object v1, v12, Lu/c;->d:Lu/b;

    .line 81
    .line 82
    invoke-interface {v1, v15}, Lu/b;->g(Lu/i;)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    cmpg-float v16, v1, v4

    .line 87
    .line 88
    if-gtz v16, :cond_3

    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_3
    const/4 v4, 0x0

    .line 92
    :goto_4
    const/16 v5, 0x9

    .line 93
    .line 94
    if-ge v4, v5, :cond_7

    .line 95
    .line 96
    iget-object v5, v15, Lu/i;->g:[F

    .line 97
    .line 98
    aget v5, v5, v4

    .line 99
    .line 100
    div-float/2addr v5, v1

    .line 101
    cmpg-float v17, v5, v7

    .line 102
    .line 103
    if-gez v17, :cond_4

    .line 104
    .line 105
    if-eq v4, v11, :cond_5

    .line 106
    .line 107
    :cond_4
    if-le v4, v11, :cond_6

    .line 108
    .line 109
    :cond_5
    move v11, v4

    .line 110
    move v7, v5

    .line 111
    move v9, v8

    .line 112
    move v10, v14

    .line 113
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v5, 0x1

    .line 120
    goto :goto_3

    .line 121
    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x1

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    if-eq v9, v6, :cond_a

    .line 127
    .line 128
    iget-object v1, v0, Lu/e;->e:[Lu/c;

    .line 129
    .line 130
    aget-object v1, v1, v9

    .line 131
    .line 132
    iget-object v4, v1, Lu/c;->a:Lu/i;

    .line 133
    .line 134
    iput v6, v4, Lu/i;->c:I

    .line 135
    .line 136
    iget-object v4, v13, LN1/w;->d:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v4, [Lu/i;

    .line 139
    .line 140
    aget-object v4, v4, v10

    .line 141
    .line 142
    invoke-virtual {v1, v4}, Lu/c;->f(Lu/i;)V

    .line 143
    .line 144
    .line 145
    iget-object v4, v1, Lu/c;->a:Lu/i;

    .line 146
    .line 147
    iput v9, v4, Lu/i;->c:I

    .line 148
    .line 149
    invoke-virtual {v4, v1}, Lu/i;->d(Lu/c;)V

    .line 150
    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    const/4 v2, 0x1

    .line 154
    :goto_7
    iget v1, v0, Lu/e;->h:I

    .line 155
    .line 156
    div-int/lit8 v1, v1, 0x2

    .line 157
    .line 158
    if-le v3, v1, :cond_b

    .line 159
    .line 160
    const/4 v2, 0x1

    .line 161
    :cond_b
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x1

    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_c
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_d
    invoke-virtual/range {p0 .. p1}, Lu/e;->p(Lu/c;)V

    .line 170
    .line 171
    .line 172
    const/4 v1, 0x0

    .line 173
    :goto_9
    iget v2, v0, Lu/e;->i:I

    .line 174
    .line 175
    if-ge v1, v2, :cond_e

    .line 176
    .line 177
    iget-object v2, v0, Lu/e;->e:[Lu/c;

    .line 178
    .line 179
    aget-object v2, v2, v1

    .line 180
    .line 181
    iget-object v3, v2, Lu/c;->a:Lu/i;

    .line 182
    .line 183
    iget v2, v2, Lu/c;->b:F

    .line 184
    .line 185
    iput v2, v3, Lu/i;->e:F

    .line 186
    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_e
    return-void
.end method

.method public final p(Lu/c;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lu/e;->h:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lu/e;->g:[Z

    .line 8
    .line 9
    aput-boolean v0, v2, v1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v0

    .line 15
    move v2, v1

    .line 16
    :cond_1
    :goto_1
    if-nez v1, :cond_b

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    add-int/2addr v2, v3

    .line 20
    iget v4, p0, Lu/e;->h:I

    .line 21
    .line 22
    mul-int/lit8 v4, v4, 0x2

    .line 23
    .line 24
    if-lt v2, v4, :cond_2

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_2
    iget-object v4, p1, Lu/c;->a:Lu/i;

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    iget-object v5, p0, Lu/e;->g:[Z

    .line 33
    .line 34
    iget v4, v4, Lu/i;->b:I

    .line 35
    .line 36
    aput-boolean v3, v5, v4

    .line 37
    .line 38
    :cond_3
    iget-object v4, p0, Lu/e;->g:[Z

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Lu/c;->d([Z)Lu/i;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-eqz v4, :cond_5

    .line 45
    .line 46
    iget-object v5, p0, Lu/e;->g:[Z

    .line 47
    .line 48
    iget v6, v4, Lu/i;->b:I

    .line 49
    .line 50
    aget-boolean v7, v5, v6

    .line 51
    .line 52
    if-eqz v7, :cond_4

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    aput-boolean v3, v5, v6

    .line 56
    .line 57
    :cond_5
    if-eqz v4, :cond_a

    .line 58
    .line 59
    const/4 v5, -0x1

    .line 60
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    .line 62
    .line 63
    move v7, v0

    .line 64
    move v8, v5

    .line 65
    :goto_2
    iget v9, p0, Lu/e;->i:I

    .line 66
    .line 67
    if-ge v7, v9, :cond_9

    .line 68
    .line 69
    iget-object v9, p0, Lu/e;->e:[Lu/c;

    .line 70
    .line 71
    aget-object v9, v9, v7

    .line 72
    .line 73
    iget-object v10, v9, Lu/c;->a:Lu/i;

    .line 74
    .line 75
    iget v10, v10, Lu/i;->l:I

    .line 76
    .line 77
    if-ne v10, v3, :cond_6

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_6
    iget-boolean v10, v9, Lu/c;->e:Z

    .line 81
    .line 82
    if-eqz v10, :cond_7

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_7
    iget-object v10, v9, Lu/c;->d:Lu/b;

    .line 86
    .line 87
    invoke-interface {v10, v4}, Lu/b;->e(Lu/i;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_8

    .line 92
    .line 93
    iget-object v10, v9, Lu/c;->d:Lu/b;

    .line 94
    .line 95
    invoke-interface {v10, v4}, Lu/b;->g(Lu/i;)F

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    const/4 v11, 0x0

    .line 100
    cmpg-float v11, v10, v11

    .line 101
    .line 102
    if-gez v11, :cond_8

    .line 103
    .line 104
    iget v9, v9, Lu/c;->b:F

    .line 105
    .line 106
    neg-float v9, v9

    .line 107
    div-float/2addr v9, v10

    .line 108
    cmpg-float v10, v9, v6

    .line 109
    .line 110
    if-gez v10, :cond_8

    .line 111
    .line 112
    move v8, v7

    .line 113
    move v6, v9

    .line 114
    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_9
    if-le v8, v5, :cond_1

    .line 118
    .line 119
    iget-object v3, p0, Lu/e;->e:[Lu/c;

    .line 120
    .line 121
    aget-object v3, v3, v8

    .line 122
    .line 123
    iget-object v6, v3, Lu/c;->a:Lu/i;

    .line 124
    .line 125
    iput v5, v6, Lu/i;->c:I

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Lu/c;->f(Lu/i;)V

    .line 128
    .line 129
    .line 130
    iget-object v4, v3, Lu/c;->a:Lu/i;

    .line 131
    .line 132
    iput v8, v4, Lu/i;->c:I

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Lu/i;->d(Lu/c;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_a
    move v1, v3

    .line 139
    goto :goto_1

    .line 140
    :cond_b
    :goto_4
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    sget-boolean v0, Lu/e;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lu/e;->k:LN1/w;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 10
    .line 11
    array-length v4, v0

    .line 12
    if-ge v3, v4, :cond_3

    .line 13
    .line 14
    aget-object v0, v0, v3

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v4, v2, LN1/w;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v4, Le/f;

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Le/f;->d(Lu/c;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 26
    .line 27
    aput-object v1, v0, v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    :goto_1
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 33
    .line 34
    array-length v4, v0

    .line 35
    if-ge v3, v4, :cond_3

    .line 36
    .line 37
    aget-object v0, v0, v3

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v4, v2, LN1/w;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v4, Le/f;

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Le/f;->d(Lu/c;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lu/e;->e:[Lu/c;

    .line 49
    .line 50
    aput-object v1, v0, v3

    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    return-void
.end method

.method public final r()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lu/e;->k:LN1/w;

    .line 4
    .line 5
    iget-object v3, v2, LN1/w;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, [Lu/i;

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    if-ge v1, v4, :cond_1

    .line 11
    .line 12
    aget-object v2, v3, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lu/i;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v2, LN1/w;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Le/f;

    .line 25
    .line 26
    iget-object v3, p0, Lu/e;->l:[Lu/i;

    .line 27
    .line 28
    iget v4, p0, Lu/e;->m:I

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    array-length v5, v3

    .line 34
    if-le v4, v5, :cond_2

    .line 35
    .line 36
    array-length v4, v3

    .line 37
    :cond_2
    move v5, v0

    .line 38
    :goto_1
    if-ge v5, v4, :cond_4

    .line 39
    .line 40
    aget-object v6, v3, v5

    .line 41
    .line 42
    iget v7, v1, Le/f;->b:I

    .line 43
    .line 44
    iget-object v8, v1, Le/f;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v8, [Ljava/lang/Object;

    .line 47
    .line 48
    array-length v9, v8

    .line 49
    if-ge v7, v9, :cond_3

    .line 50
    .line 51
    aput-object v6, v8, v7

    .line 52
    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    iput v7, v1, Le/f;->b:I

    .line 56
    .line 57
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    iput v0, p0, Lu/e;->m:I

    .line 61
    .line 62
    iget-object v1, v2, LN1/w;->d:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, [Lu/i;

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput v0, p0, Lu/e;->a:I

    .line 71
    .line 72
    iget-object v1, p0, Lu/e;->b:Lu/g;

    .line 73
    .line 74
    iput v0, v1, Lu/g;->h:I

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    iput v3, v1, Lu/c;->b:F

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    iput v1, p0, Lu/e;->h:I

    .line 81
    .line 82
    move v1, v0

    .line 83
    :goto_2
    iget v3, p0, Lu/e;->i:I

    .line 84
    .line 85
    if-ge v1, v3, :cond_5

    .line 86
    .line 87
    iget-object v3, p0, Lu/e;->e:[Lu/c;

    .line 88
    .line 89
    aget-object v3, v3, v1

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p0}, Lu/e;->q()V

    .line 98
    .line 99
    .line 100
    iput v0, p0, Lu/e;->i:I

    .line 101
    .line 102
    sget-boolean v0, Lu/e;->p:Z

    .line 103
    .line 104
    if-eqz v0, :cond_6

    .line 105
    .line 106
    new-instance v0, Lu/d;

    .line 107
    .line 108
    invoke-direct {v0, v2}, Lu/d;-><init>(LN1/w;)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lu/e;->n:Lu/c;

    .line 112
    .line 113
    return-void

    .line 114
    :cond_6
    new-instance v0, Lu/c;

    .line 115
    .line 116
    invoke-direct {v0, v2}, Lu/c;-><init>(LN1/w;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lu/e;->n:Lu/c;

    .line 120
    .line 121
    return-void
.end method
