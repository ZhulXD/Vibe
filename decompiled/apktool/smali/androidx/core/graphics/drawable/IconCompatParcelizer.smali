.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static read(LU/a;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p0, v2}, LU/a;->e(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v1, p0

    .line 17
    check-cast v1, LU/b;

    .line 18
    .line 19
    iget-object v1, v1, LU/b;->e:Landroid/os/Parcel;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    :goto_0
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 26
    .line 27
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {p0, v2}, LU/a;->e(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, p0

    .line 38
    check-cast v1, LU/b;

    .line 39
    .line 40
    iget-object v1, v1, LU/b;->e:Landroid/os/Parcel;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-gez v2, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    new-array v2, v2, [B

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 53
    .line 54
    .line 55
    move-object v1, v2

    .line 56
    :goto_1
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 57
    .line 58
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    invoke-virtual {p0, v1, v2}, LU/a;->f(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 66
    .line 67
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 68
    .line 69
    const/4 v2, 0x4

    .line 70
    invoke-virtual {p0, v2}, LU/a;->e(I)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v1, p0

    .line 78
    check-cast v1, LU/b;

    .line 79
    .line 80
    iget-object v1, v1, LU/b;->e:Landroid/os/Parcel;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_2
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 87
    .line 88
    iget v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 89
    .line 90
    const/4 v2, 0x5

    .line 91
    invoke-virtual {p0, v2}, LU/a;->e(I)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    move-object v1, p0

    .line 99
    check-cast v1, LU/b;

    .line 100
    .line 101
    iget-object v1, v1, LU/b;->e:Landroid/os/Parcel;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :goto_3
    iput v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 108
    .line 109
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 110
    .line 111
    const/4 v2, 0x6

    .line 112
    invoke-virtual {p0, v1, v2}, LU/a;->f(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 119
    .line 120
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 121
    .line 122
    const/4 v2, 0x7

    .line 123
    invoke-virtual {p0, v2}, LU/a;->e(I)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_5

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_5
    move-object v1, p0

    .line 131
    check-cast v1, LU/b;

    .line 132
    .line 133
    iget-object v1, v1, LU/b;->e:Landroid/os/Parcel;

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    :goto_4
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 140
    .line 141
    iget-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    .line 142
    .line 143
    const/16 v2, 0x8

    .line 144
    .line 145
    invoke-virtual {p0, v2}, LU/a;->e(I)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_6

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_6
    check-cast p0, LU/b;

    .line 153
    .line 154
    iget-object p0, p0, LU/b;->e:Landroid/os/Parcel;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :goto_5
    iput-object v1, v0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->onPostParceling()V

    .line 163
    .line 164
    .line 165
    return-object v0
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;LU/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->onPreParceling(Z)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v2, v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v2}, LU/a;->h(I)V

    .line 15
    .line 16
    .line 17
    move-object v2, p1

    .line 18
    check-cast v2, LU/b;

    .line 19
    .line 20
    iget-object v2, v2, LU/b;->e:Landroid/os/Parcel;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {p1, v2}, LU/a;->h(I)V

    .line 31
    .line 32
    .line 33
    move-object v2, p1

    .line 34
    check-cast v2, LU/b;

    .line 35
    .line 36
    iget-object v2, v2, LU/b;->e:Landroid/os/Parcel;

    .line 37
    .line 38
    array-length v3, v1

    .line 39
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-virtual {p1, v2}, LU/a;->h(I)V

    .line 51
    .line 52
    .line 53
    move-object v2, p1

    .line 54
    check-cast v2, LU/b;

    .line 55
    .line 56
    iget-object v2, v2, LU/b;->e:Landroid/os/Parcel;

    .line 57
    .line 58
    invoke-virtual {v2, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    invoke-virtual {p1, v2}, LU/a;->h(I)V

    .line 67
    .line 68
    .line 69
    move-object v2, p1

    .line 70
    check-cast v2, LU/b;

    .line 71
    .line 72
    iget-object v2, v2, LU/b;->e:Landroid/os/Parcel;

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    const/4 v2, 0x5

    .line 82
    invoke-virtual {p1, v2}, LU/a;->h(I)V

    .line 83
    .line 84
    .line 85
    move-object v2, p1

    .line 86
    check-cast v2, LU/b;

    .line 87
    .line 88
    iget-object v2, v2, LU/b;->e:Landroid/os/Parcel;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    const/4 v2, 0x6

    .line 98
    invoke-virtual {p1, v2}, LU/a;->h(I)V

    .line 99
    .line 100
    .line 101
    move-object v2, p1

    .line 102
    check-cast v2, LU/b;

    .line 103
    .line 104
    iget-object v2, v2, LU/b;->e:Landroid/os/Parcel;

    .line 105
    .line 106
    invoke-virtual {v2, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    .line 108
    .line 109
    :cond_5
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    const/4 v1, 0x7

    .line 114
    invoke-virtual {p1, v1}, LU/a;->h(I)V

    .line 115
    .line 116
    .line 117
    move-object v1, p1

    .line 118
    check-cast v1, LU/b;

    .line 119
    .line 120
    iget-object v1, v1, LU/b;->e:Landroid/os/Parcel;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz p0, :cond_7

    .line 128
    .line 129
    const/16 v0, 0x8

    .line 130
    .line 131
    invoke-virtual {p1, v0}, LU/a;->h(I)V

    .line 132
    .line 133
    .line 134
    check-cast p1, LU/b;

    .line 135
    .line 136
    iget-object p1, p1, LU/b;->e:Landroid/os/Parcel;

    .line 137
    .line 138
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    return-void
.end method
