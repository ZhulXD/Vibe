.class Lorg/libsdl/app/SDLJoystickHandler_API16;
.super Lorg/libsdl/app/SDLJoystickHandler;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;,
        Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;
    }
.end annotation


# instance fields
.field private final mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler;-><init>()V

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
    iput-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method public getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

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
    check-cast v3, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 17
    .line 18
    iget v4, v3, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

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

.method public getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x2

    .line 11
    if-ne v1, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p0, v1}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_0
    iget-object v6, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-ge v5, v6, :cond_0

    .line 32
    .line 33
    iget-object v6, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    check-cast v6, Landroid/view/InputDevice$MotionRange;

    .line 40
    .line 41
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    invoke-virtual {p1, v7, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getMin()F

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    sub-float/2addr v7, v8

    .line 54
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getRange()F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    div-float/2addr v7, v6

    .line 59
    const/high16 v6, 0x40000000    # 2.0f

    .line 60
    .line 61
    mul-float/2addr v7, v6

    .line 62
    const/high16 v6, 0x3f800000    # 1.0f

    .line 63
    .line 64
    sub-float/2addr v7, v6

    .line 65
    iget v6, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 66
    .line 67
    invoke-static {v6, v5, v7}, Lorg/libsdl/app/SDLControllerManager;->onNativeJoy(IIF)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    :goto_1
    iget-object v5, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    div-int/2addr v5, v3

    .line 80
    if-ge v4, v5, :cond_1

    .line 81
    .line 82
    iget-object v5, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 83
    .line 84
    mul-int/lit8 v6, v4, 0x2

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Landroid/view/InputDevice$MotionRange;

    .line 91
    .line 92
    invoke-virtual {v5}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual {p1, v5, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    iget-object v7, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 105
    .line 106
    add-int/2addr v6, v2

    .line 107
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Landroid/view/InputDevice$MotionRange;

    .line 112
    .line 113
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-virtual {p1, v6, v0}, Landroid/view/MotionEvent;->getAxisValue(II)F

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    iget v7, v1, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 126
    .line 127
    invoke-static {v7, v4, v5, v6}, Lorg/libsdl/app/SDLControllerManager;->onNativeHat(IIII)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    return v2
.end method

.method public pollInputDevices()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v4, v2, :cond_5

    .line 11
    .line 12
    aget v5, v1, v4

    .line 13
    .line 14
    invoke-static {v5}, Lorg/libsdl/app/SDLControllerManager;->isDeviceSDLJoystick(I)Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-eqz v6, :cond_4

    .line 19
    .line 20
    invoke-virtual {v0, v5}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystick(I)Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    if-nez v6, :cond_4

    .line 25
    .line 26
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    new-instance v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 31
    .line 32
    invoke-direct {v7}, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;-><init>()V

    .line 33
    .line 34
    .line 35
    iput v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->name:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getJoystickDescriptor(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->desc:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v5, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 55
    .line 56
    new-instance v5, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v6}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    new-instance v8, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;

    .line 68
    .line 69
    invoke-direct {v8}, Lorg/libsdl/app/SDLJoystickHandler_API16$RangeComparator;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    check-cast v8, Landroid/view/InputDevice$MotionRange;

    .line 90
    .line 91
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getSource()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    const/16 v10, 0x10

    .line 96
    .line 97
    and-int/2addr v9, v10

    .line 98
    if-eqz v9, :cond_0

    .line 99
    .line 100
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    const/16 v11, 0xf

    .line 105
    .line 106
    if-eq v9, v11, :cond_2

    .line 107
    .line 108
    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    if-ne v9, v10, :cond_1

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    iget-object v9, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    :goto_2
    iget-object v9, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    iget-object v5, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    iget v8, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 133
    .line 134
    iget-object v9, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->name:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v10, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->desc:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getVendorId(Landroid/view/InputDevice;)I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getProductId(Landroid/view/InputDevice;)I

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    invoke-virtual {v0, v6}, Lorg/libsdl/app/SDLJoystickHandler_API16;->getButtonMask(Landroid/view/InputDevice;)I

    .line 147
    .line 148
    .line 149
    move-result v14

    .line 150
    iget-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    iget-object v5, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    div-int/lit8 v16, v5, 0x2

    .line 163
    .line 164
    const/16 v17, 0x0

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    invoke-static/range {v8 .. v17}, Lorg/libsdl/app/SDLControllerManager;->nativeAddJoystick(ILjava/lang/String;Ljava/lang/String;IIZIIII)I

    .line 168
    .line 169
    .line 170
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_5
    iget-object v2, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    const/4 v5, 0x0

    .line 181
    move v6, v3

    .line 182
    :cond_6
    :goto_3
    if-ge v6, v4, :cond_a

    .line 183
    .line 184
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    .line 190
    check-cast v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 191
    .line 192
    iget v7, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 193
    .line 194
    move v8, v3

    .line 195
    :goto_4
    array-length v9, v1

    .line 196
    if-ge v8, v9, :cond_8

    .line 197
    .line 198
    aget v9, v1, v8

    .line 199
    .line 200
    if-ne v7, v9, :cond_7

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_8
    :goto_5
    array-length v9, v1

    .line 207
    if-ne v8, v9, :cond_6

    .line 208
    .line 209
    if-nez v5, :cond_9

    .line 210
    .line 211
    new-instance v5, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    :cond_9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_a
    if-eqz v5, :cond_d

    .line 225
    .line 226
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    move v2, v3

    .line 231
    :cond_b
    :goto_6
    if-ge v2, v1, :cond_d

    .line 232
    .line 233
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 238
    .line 239
    check-cast v4, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-static {v4}, Lorg/libsdl/app/SDLControllerManager;->nativeRemoveJoystick(I)I

    .line 246
    .line 247
    .line 248
    move v6, v3

    .line 249
    :goto_7
    iget-object v7, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    if-ge v6, v7, :cond_b

    .line 256
    .line 257
    iget-object v7, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    check-cast v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;

    .line 264
    .line 265
    iget v7, v7, Lorg/libsdl/app/SDLJoystickHandler_API16$SDLJoystick;->device_id:I

    .line 266
    .line 267
    if-ne v7, v4, :cond_c

    .line 268
    .line 269
    iget-object v4, v0, Lorg/libsdl/app/SDLJoystickHandler_API16;->mJoysticks:Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_c
    add-int/lit8 v6, v6, 0x1

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_d
    return-void
.end method
