.class Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cocos2dxEGLConfigChooser"
.end annotation


# instance fields
.field private final EGL_OPENGL_ES2_BIT:I

.field private final EGL_OPENGL_ES3_BIT:I

.field private mConfigAttributes:[I

.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;IIIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 p1, 0x40

    .line 3
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES3_BIT:I

    .line 4
    filled-new-array/range {p2 .. p8}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    return-void
.end method

.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;[I)V
    .locals 0

    .line 5
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->this$0:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    const/16 p1, 0x40

    .line 7
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->EGL_OPENGL_ES3_BIT:I

    .line 8
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    return-void
.end method

.method private doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v4, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 3
    .line 4
    new-array v6, v0, [I

    .line 5
    .line 6
    const/4 v5, 0x1

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v3, p3

    .line 10
    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    aget p2, v6, p1

    .line 18
    .line 19
    if-lez p2, :cond_0

    .line 20
    .line 21
    aget-object p1, v4, p1

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->mConfigAttributes:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aget v4, v1, v2

    .line 7
    .line 8
    const/16 v22, 0x1

    .line 9
    .line 10
    aget v6, v1, v22

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    aget v8, v1, v3

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    aget v10, v1, v3

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    aget v12, v1, v3

    .line 20
    .line 21
    const/4 v5, 0x5

    .line 22
    aget v14, v1, v5

    .line 23
    .line 24
    const/4 v5, 0x6

    .line 25
    aget v18, v1, v5

    .line 26
    .line 27
    if-lez v18, :cond_0

    .line 28
    .line 29
    move/from16 v16, v22

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move/from16 v16, v2

    .line 33
    .line 34
    :goto_0
    const/16 v20, 0x4

    .line 35
    .line 36
    const/16 v21, 0x3038

    .line 37
    .line 38
    move v1, v3

    .line 39
    const/16 v3, 0x3024

    .line 40
    .line 41
    const/16 v5, 0x3023

    .line 42
    .line 43
    const/16 v7, 0x3022

    .line 44
    .line 45
    const/16 v9, 0x3021

    .line 46
    .line 47
    const/16 v11, 0x3025

    .line 48
    .line 49
    const/16 v13, 0x3026

    .line 50
    .line 51
    const/16 v15, 0x3032

    .line 52
    .line 53
    const/16 v17, 0x3031

    .line 54
    .line 55
    const/16 v19, 0x3040

    .line 56
    .line 57
    filled-new-array/range {v3 .. v21}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move v5, v4

    .line 62
    move v4, v12

    .line 63
    const/16 v23, 0x10

    .line 64
    .line 65
    const/16 v7, 0x18

    .line 66
    .line 67
    if-lt v4, v7, :cond_1

    .line 68
    .line 69
    move/from16 v12, v23

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v12, v4

    .line 73
    :goto_1
    if-lez v18, :cond_2

    .line 74
    .line 75
    move/from16 v16, v22

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    move/from16 v16, v2

    .line 79
    .line 80
    :goto_2
    const/16 v20, 0x4

    .line 81
    .line 82
    const/16 v21, 0x3038

    .line 83
    .line 84
    move-object v9, v3

    .line 85
    const/16 v3, 0x3024

    .line 86
    .line 87
    move v11, v4

    .line 88
    move v4, v5

    .line 89
    const/16 v5, 0x3023

    .line 90
    .line 91
    move v13, v7

    .line 92
    const/16 v7, 0x3022

    .line 93
    .line 94
    move-object v15, v9

    .line 95
    const/16 v9, 0x3021

    .line 96
    .line 97
    move/from16 v17, v11

    .line 98
    .line 99
    const/16 v11, 0x3025

    .line 100
    .line 101
    move/from16 v19, v13

    .line 102
    .line 103
    const/16 v13, 0x3026

    .line 104
    .line 105
    move-object/from16 v22, v15

    .line 106
    .line 107
    const/16 v15, 0x3032

    .line 108
    .line 109
    move/from16 v24, v17

    .line 110
    .line 111
    const/16 v17, 0x3031

    .line 112
    .line 113
    move/from16 v25, v19

    .line 114
    .line 115
    const/16 v19, 0x3040

    .line 116
    .line 117
    move-object/from16 v26, v22

    .line 118
    .line 119
    move/from16 v2, v24

    .line 120
    .line 121
    move/from16 v1, v25

    .line 122
    .line 123
    filled-new-array/range {v3 .. v21}, [I

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-lt v2, v1, :cond_3

    .line 128
    .line 129
    move/from16 v12, v23

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    move v12, v2

    .line 133
    :goto_3
    const/16 v20, 0x4

    .line 134
    .line 135
    const/16 v21, 0x3038

    .line 136
    .line 137
    move-object v1, v3

    .line 138
    const/16 v3, 0x3024

    .line 139
    .line 140
    const/16 v5, 0x3023

    .line 141
    .line 142
    const/16 v7, 0x3022

    .line 143
    .line 144
    const/16 v9, 0x3021

    .line 145
    .line 146
    const/16 v11, 0x3025

    .line 147
    .line 148
    const/16 v13, 0x3026

    .line 149
    .line 150
    const/16 v15, 0x3032

    .line 151
    .line 152
    const/16 v16, 0x0

    .line 153
    .line 154
    const/16 v17, 0x3031

    .line 155
    .line 156
    const/16 v18, 0x0

    .line 157
    .line 158
    const/16 v19, 0x3040

    .line 159
    .line 160
    filled-new-array/range {v3 .. v21}, [I

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const/16 v3, 0x3040

    .line 165
    .line 166
    const/16 v4, 0x3038

    .line 167
    .line 168
    const/4 v5, 0x4

    .line 169
    filled-new-array {v3, v5, v4}, [I

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    move-object/from16 v15, v26

    .line 174
    .line 175
    filled-new-array {v15, v1, v2, v3}, [[I

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const/4 v2, 0x0

    .line 180
    :goto_4
    if-ge v2, v5, :cond_5

    .line 181
    .line 182
    aget-object v3, v1, v2

    .line 183
    .line 184
    move-object/from16 v4, p1

    .line 185
    .line 186
    move-object/from16 v6, p2

    .line 187
    .line 188
    invoke-direct {v0, v4, v6, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity$Cocos2dxEGLConfigChooser;->doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    if-eqz v3, :cond_4

    .line 193
    .line 194
    return-object v3

    .line 195
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    const-string v1, "device_policy"

    .line 199
    .line 200
    const-string v2, "Can not select an EGLConfig for rendering."

    .line 201
    .line 202
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    const/4 v1, 0x0

    .line 206
    return-object v1
.end method
