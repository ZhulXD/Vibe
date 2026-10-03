.class public final LB1/u;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:LB1/v;

.field public final e:I

.field public final f:I

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:F

.field public final n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LB1/v;IFFIILjava/lang/String;Ljava/lang/String;FI)V
    .locals 6

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    move/from16 v1, p13

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x10

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    move p5, v3

    .line 11
    :cond_0
    and-int/lit8 v2, v1, 0x20

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v2, v4

    .line 19
    :goto_0
    and-int/lit16 v5, v1, 0x800

    .line 20
    .line 21
    if-eqz v5, :cond_2

    .line 22
    .line 23
    const-string v5, "CIRCLE"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    move-object/from16 v5, p11

    .line 27
    .line 28
    :goto_1
    and-int/lit16 v1, v1, 0x2000

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    move v3, v4

    .line 33
    :cond_3
    const-string v1, "id"

    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "label"

    .line 39
    .line 40
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "description"

    .line 44
    .line 45
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "kind"

    .line 49
    .line 50
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "colorHex"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "shape"

    .line 59
    .line 60
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, LB1/u;->a:Ljava/lang/String;

    .line 67
    .line 68
    iput-object p2, p0, LB1/u;->b:Ljava/lang/String;

    .line 69
    .line 70
    iput-object p3, p0, LB1/u;->c:Ljava/lang/String;

    .line 71
    .line 72
    iput-object p4, p0, LB1/u;->d:LB1/v;

    .line 73
    .line 74
    iput p5, p0, LB1/u;->e:I

    .line 75
    .line 76
    iput v2, p0, LB1/u;->f:I

    .line 77
    .line 78
    iput p6, p0, LB1/u;->g:F

    .line 79
    .line 80
    iput p7, p0, LB1/u;->h:F

    .line 81
    .line 82
    iput p8, p0, LB1/u;->i:I

    .line 83
    .line 84
    iput p9, p0, LB1/u;->j:I

    .line 85
    .line 86
    iput-object v0, p0, LB1/u;->k:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v5, p0, LB1/u;->l:Ljava/lang/String;

    .line 89
    .line 90
    move/from16 p1, p12

    .line 91
    .line 92
    iput p1, p0, LB1/u;->m:F

    .line 93
    .line 94
    iput-boolean v3, p0, LB1/u;->n:Z

    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, LB1/u;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_1
    check-cast p1, LB1/u;

    .line 12
    .line 13
    iget-object v0, p0, LB1/u;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, p1, LB1/u;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, LB1/u;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p1, LB1/u;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, LB1/u;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v1, p1, LB1/u;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_4
    iget-object v0, p0, LB1/u;->d:LB1/v;

    .line 50
    .line 51
    iget-object v1, p1, LB1/u;->d:LB1/v;

    .line 52
    .line 53
    if-eq v0, v1, :cond_5

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    iget v0, p0, LB1/u;->e:I

    .line 57
    .line 58
    iget v1, p1, LB1/u;->e:I

    .line 59
    .line 60
    if-eq v0, v1, :cond_6

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_6
    iget v0, p0, LB1/u;->f:I

    .line 64
    .line 65
    iget v1, p1, LB1/u;->f:I

    .line 66
    .line 67
    if-eq v0, v1, :cond_7

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_7
    iget v0, p0, LB1/u;->g:F

    .line 71
    .line 72
    iget v1, p1, LB1/u;->g:F

    .line 73
    .line 74
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_8

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_8
    iget v0, p0, LB1/u;->h:F

    .line 82
    .line 83
    iget v1, p1, LB1/u;->h:F

    .line 84
    .line 85
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_9
    iget v0, p0, LB1/u;->i:I

    .line 93
    .line 94
    iget v1, p1, LB1/u;->i:I

    .line 95
    .line 96
    if-eq v0, v1, :cond_a

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_a
    iget v0, p0, LB1/u;->j:I

    .line 100
    .line 101
    iget v1, p1, LB1/u;->j:I

    .line 102
    .line 103
    if-eq v0, v1, :cond_b

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_b
    iget-object v0, p0, LB1/u;->k:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v1, p1, LB1/u;->k:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_c

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_c
    iget-object v0, p0, LB1/u;->l:Ljava/lang/String;

    .line 118
    .line 119
    iget-object v1, p1, LB1/u;->l:Ljava/lang/String;

    .line 120
    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_d

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_d
    iget v0, p0, LB1/u;->m:F

    .line 129
    .line 130
    iget v1, p1, LB1/u;->m:F

    .line 131
    .line 132
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_e

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_e
    iget-boolean v0, p0, LB1/u;->n:Z

    .line 140
    .line 141
    iget-boolean p1, p1, LB1/u;->n:Z

    .line 142
    .line 143
    if-eq v0, p1, :cond_f

    .line 144
    .line 145
    :goto_0
    const/4 p1, 0x0

    .line 146
    return p1

    .line 147
    :cond_f
    :goto_1
    const/4 p1, 0x1

    .line 148
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, LB1/u;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget-object v2, p0, LB1/u;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v2, p0, LB1/u;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, LB1/u;->d:LB1/v;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v0

    .line 29
    mul-int/2addr v2, v1

    .line 30
    iget v0, p0, LB1/u;->e:I

    .line 31
    .line 32
    invoke-static {v0, v2, v1}, LE/b;->a(III)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, LB1/u;->f:I

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget v2, p0, LB1/u;->g:F

    .line 43
    .line 44
    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/2addr v2, v0

    .line 49
    mul-int/2addr v2, v1

    .line 50
    iget v0, p0, LB1/u;->h:F

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/2addr v0, v2

    .line 57
    mul-int/2addr v0, v1

    .line 58
    iget v2, p0, LB1/u;->i:I

    .line 59
    .line 60
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iget v2, p0, LB1/u;->j:I

    .line 65
    .line 66
    invoke-static {v2, v0, v1}, LE/b;->a(III)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, LB1/u;->k:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v2, p0, LB1/u;->l:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v2, v0, v1}, LE/b;->d(Ljava/lang/String;II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget v2, p0, LB1/u;->m:F

    .line 83
    .line 84
    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    add-int/2addr v2, v0

    .line 89
    mul-int/2addr v2, v1

    .line 90
    iget-boolean v0, p0, LB1/u;->n:Z

    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/2addr v0, v2

    .line 97
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ", label="

    .line 2
    .line 3
    const-string v1, ", description="

    .line 4
    .line 5
    const-string v2, "GodotButtonDef(id="

    .line 6
    .line 7
    iget-object v3, p0, LB1/u;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, LB1/u;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v4, v1}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, LB1/u;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", kind="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, LB1/u;->d:LB1/v;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", primaryIndex="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, LB1/u;->e:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", secondaryIndex="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, LB1/u;->f:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", defaultX="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, LB1/u;->g:F

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", defaultY="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, LB1/u;->h:F

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", defaultWidthDp="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, p0, LB1/u;->i:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", defaultHeightDp="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, LB1/u;->j:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, ", colorHex="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", shape="

    .line 96
    .line 97
    const-string v2, ", opacity="

    .line 98
    .line 99
    iget-object v3, p0, LB1/u;->k:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v4, p0, LB1/u;->l:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0, v3, v1, v4, v2}, Lkotlin/collections/unsigned/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v1, p0, LB1/u;->m:F

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, ", defaultVisible="

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-boolean v1, p0, LB1/u;->n:Z

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ")"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0
.end method
