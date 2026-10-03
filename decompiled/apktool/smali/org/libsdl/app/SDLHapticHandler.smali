.class Lorg/libsdl/app/SDLHapticHandler;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    }
.end annotation


# instance fields
.field private final mHaptics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 17
    .line 18
    iget v4, v3, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 19
    .line 20
    if-ne v4, p1, :cond_0

    .line 21
    .line 22
    return-object v3

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public pollHapticDevices()V
    .locals 11

    .line 1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    :goto_0
    const/4 v2, -0x1

    .line 9
    if-le v1, v2, :cond_1

    .line 10
    .line 11
    aget v2, v0, v1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    aget v2, v0, v1

    .line 20
    .line 21
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    new-instance v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 36
    .line 37
    invoke-direct {v4}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>()V

    .line 38
    .line 39
    .line 40
    aget v5, v0, v1

    .line 41
    .line 42
    iput v5, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v3, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 51
    .line 52
    iget-object v2, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget v2, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 58
    .line 59
    iget-object v3, v4, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2, v3}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lorg/libsdl/app/SDL;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "vibrator"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroid/os/Vibrator;

    .line 78
    .line 79
    const v2, 0xf423f

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0, v2}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-nez v5, :cond_3

    .line 96
    .line 97
    new-instance v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 98
    .line 99
    invoke-direct {v5}, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;-><init>()V

    .line 100
    .line 101
    .line 102
    iput v2, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 103
    .line 104
    const-string v6, "VIBRATOR_SERVICE"

    .line 105
    .line 106
    iput-object v6, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v1, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 109
    .line 110
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iget v1, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 116
    .line 117
    iget-object v5, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->name:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1, v5}, Lorg/libsdl/app/SDLControllerManager;->nativeAddHaptic(ILjava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    move v4, v3

    .line 124
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    const/4 v6, 0x0

    .line 131
    move v7, v3

    .line 132
    :cond_4
    :goto_2
    if-ge v7, v5, :cond_9

    .line 133
    .line 134
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    add-int/lit8 v7, v7, 0x1

    .line 139
    .line 140
    check-cast v8, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 141
    .line 142
    iget v8, v8, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 143
    .line 144
    move v9, v3

    .line 145
    :goto_3
    array-length v10, v0

    .line 146
    if-ge v9, v10, :cond_6

    .line 147
    .line 148
    aget v10, v0, v9

    .line 149
    .line 150
    if-ne v8, v10, :cond_5

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_6
    :goto_4
    if-ne v8, v2, :cond_7

    .line 157
    .line 158
    if-nez v4, :cond_4

    .line 159
    .line 160
    :cond_7
    array-length v10, v0

    .line 161
    if-ne v9, v10, :cond_4

    .line 162
    .line 163
    if-nez v6, :cond_8

    .line 164
    .line 165
    new-instance v6, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .line 169
    .line 170
    :cond_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_9
    if-eqz v6, :cond_c

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    move v1, v3

    .line 185
    :cond_a
    :goto_5
    if-ge v1, v0, :cond_c

    .line 186
    .line 187
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 192
    .line 193
    check-cast v2, Ljava/lang/Integer;

    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    invoke-static {v2}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveHaptic(I)I

    .line 200
    .line 201
    .line 202
    move v4, v3

    .line 203
    :goto_6
    iget-object v5, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-ge v4, v5, :cond_a

    .line 210
    .line 211
    iget-object v5, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 218
    .line 219
    iget v5, v5, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->device_id:I

    .line 220
    .line 221
    if-ne v5, v2, :cond_b

    .line 222
    .line 223
    iget-object v2, p0, Lorg/libsdl/app/SDLHapticHandler;->mHaptics:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_c
    return-void
.end method

.method public run(IFI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 8
    .line 9
    int-to-long p2, p3

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public stop(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/libsdl/app/SDLHapticHandler;->getHaptic(I)Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lorg/libsdl/app/SDLHapticHandler$SDLHaptic;->vib:Landroid/os/Vibrator;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
