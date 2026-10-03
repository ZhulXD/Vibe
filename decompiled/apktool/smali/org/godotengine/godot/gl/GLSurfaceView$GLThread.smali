.class Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/gl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWantRenderNotification:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/gl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

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
    iput-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    .line 19
    .line 20
    iput v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    .line 21
    .line 22
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 23
    .line 24
    iput v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 25
    .line 26
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 27
    .line 28
    iput-object p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic b(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mExited:Z

    .line 3
    .line 4
    return-void
.end method

.method private guardedRun()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 4
    .line 5
    iget-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-direct {v0, v2}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 14
    .line 15
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 16
    .line 17
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 18
    .line 19
    move v3, v0

    .line 20
    move v4, v3

    .line 21
    move v5, v4

    .line 22
    move v8, v5

    .line 23
    move v9, v8

    .line 24
    move v10, v9

    .line 25
    move v11, v10

    .line 26
    move v12, v11

    .line 27
    move v13, v12

    .line 28
    move v14, v13

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v15, 0x0

    .line 32
    :goto_0
    :try_start_0
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 33
    .line 34
    .line 35
    move-result-object v16

    .line 36
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    :goto_1
    :try_start_1
    iget-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    monitor-enter v2

    .line 47
    :try_start_2
    const-string v0, "GLThread"

    .line 48
    .line 49
    const-string v3, "Exiting render thread"

    .line 50
    .line 51
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 61
    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->h(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onRenderThreadExiting()V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_3

    .line 74
    :cond_0
    :goto_2
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 75
    .line 76
    .line 77
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 78
    .line 79
    .line 80
    monitor-exit v2

    .line 81
    return-void

    .line 82
    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    throw v0

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    goto/16 :goto_e

    .line 86
    .line 87
    :cond_1
    :try_start_3
    iget-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 94
    .line 95
    iget-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 96
    .line 97
    const/4 v15, 0x0

    .line 98
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object v15, v2

    .line 103
    check-cast v15, Ljava/lang/Runnable;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    goto/16 :goto_8

    .line 107
    .line 108
    :cond_2
    iget-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mPaused:Z

    .line 109
    .line 110
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 111
    .line 112
    if-eq v2, v0, :cond_3

    .line 113
    .line 114
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mPaused:Z

    .line 115
    .line 116
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_3
    const/4 v0, 0x0

    .line 125
    :goto_4
    iget-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 126
    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 130
    .line 131
    .line 132
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 133
    .line 134
    .line 135
    const/4 v2, 0x0

    .line 136
    iput-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 137
    .line 138
    const/4 v5, 0x1

    .line 139
    :cond_4
    if-eqz v3, :cond_5

    .line 140
    .line 141
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 142
    .line 143
    .line 144
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 145
    .line 146
    .line 147
    const/4 v3, 0x0

    .line 148
    :cond_5
    if-eqz v0, :cond_6

    .line 149
    .line 150
    iget-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 151
    .line 152
    if-eqz v2, :cond_6

    .line 153
    .line 154
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 155
    .line 156
    .line 157
    :cond_6
    if-eqz v0, :cond_8

    .line 158
    .line 159
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 160
    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 170
    .line 171
    if-nez v0, :cond_7

    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    goto :goto_5

    .line 175
    :cond_7
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->g(Lorg/godotengine/godot/gl/GLSurfaceView;)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    :goto_5
    if-nez v0, :cond_8

    .line 180
    .line 181
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 182
    .line 183
    .line 184
    :cond_8
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 185
    .line 186
    if-nez v0, :cond_a

    .line 187
    .line 188
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 189
    .line 190
    if-nez v0, :cond_a

    .line 191
    .line 192
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 193
    .line 194
    if-eqz v0, :cond_9

    .line 195
    .line 196
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 197
    .line 198
    .line 199
    :cond_9
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    iput-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 204
    .line 205
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 210
    .line 211
    .line 212
    :cond_a
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 213
    .line 214
    if-eqz v0, :cond_b

    .line 215
    .line 216
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 217
    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    iput-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 222
    .line 223
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    .line 229
    .line 230
    :cond_b
    if-eqz v4, :cond_c

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    iput-boolean v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 234
    .line 235
    const/4 v0, 0x1

    .line 236
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 237
    .line 238
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 243
    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    :cond_c
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 247
    .line 248
    if-eqz v0, :cond_d

    .line 249
    .line 250
    const/4 v2, 0x0

    .line 251
    iput-object v2, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 252
    .line 253
    move-object v6, v0

    .line 254
    goto :goto_6

    .line 255
    :cond_d
    const/4 v2, 0x0

    .line 256
    :goto_6
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->readyToDraw()Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_20

    .line 261
    .line 262
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    .line 264
    if-nez v0, :cond_f

    .line 265
    .line 266
    if-eqz v5, :cond_e

    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    goto :goto_7

    .line 270
    :cond_e
    :try_start_4
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 271
    .line 272
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->start()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 273
    .line 274
    .line 275
    const/4 v0, 0x1

    .line 276
    :try_start_5
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 277
    .line 278
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 283
    .line 284
    .line 285
    const/4 v8, 0x1

    .line 286
    goto :goto_7

    .line 287
    :catch_0
    move-exception v0

    .line 288
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v2, v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 293
    .line 294
    .line 295
    throw v0

    .line 296
    :cond_f
    :goto_7
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 297
    .line 298
    if-eqz v0, :cond_10

    .line 299
    .line 300
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 301
    .line 302
    if-nez v0, :cond_10

    .line 303
    .line 304
    const/4 v0, 0x1

    .line 305
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 306
    .line 307
    const/4 v9, 0x1

    .line 308
    const/4 v10, 0x1

    .line 309
    const/4 v11, 0x1

    .line 310
    :cond_10
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 311
    .line 312
    if-eqz v0, :cond_21

    .line 313
    .line 314
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 315
    .line 316
    if-eqz v0, :cond_11

    .line 317
    .line 318
    iget v13, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    .line 319
    .line 320
    iget v14, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    .line 321
    .line 322
    const/4 v0, 0x1

    .line 323
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 324
    .line 325
    const/4 v0, 0x0

    .line 326
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 327
    .line 328
    const/4 v9, 0x1

    .line 329
    const/4 v11, 0x1

    .line 330
    :cond_11
    const/4 v0, 0x0

    .line 331
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 332
    .line 333
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 334
    .line 335
    .line 336
    move-result-object v17

    .line 337
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 338
    .line 339
    .line 340
    iget-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 341
    .line 342
    if-eqz v0, :cond_12

    .line 343
    .line 344
    const/4 v12, 0x1

    .line 345
    :cond_12
    :goto_8
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 346
    if-eqz v15, :cond_14

    .line 347
    .line 348
    :try_start_6
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    .line 349
    .line 350
    .line 351
    move-object v15, v2

    .line 352
    :cond_13
    :goto_9
    const/4 v0, 0x0

    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :catchall_2
    move-exception v0

    .line 356
    goto/16 :goto_f

    .line 357
    .line 358
    :cond_14
    if-eqz v9, :cond_16

    .line 359
    .line 360
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 361
    .line 362
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->createSurface()Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-eqz v0, :cond_15

    .line 367
    .line 368
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    monitor-enter v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 373
    const/4 v0, 0x1

    .line 374
    :try_start_7
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 375
    .line 376
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 381
    .line 382
    .line 383
    monitor-exit v9

    .line 384
    const/4 v9, 0x0

    .line 385
    goto :goto_a

    .line 386
    :catchall_3
    move-exception v0

    .line 387
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 388
    :try_start_8
    throw v0

    .line 389
    :cond_15
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 390
    .line 391
    .line 392
    move-result-object v16

    .line 393
    monitor-enter v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 394
    const/4 v0, 0x1

    .line 395
    :try_start_9
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 396
    .line 397
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 398
    .line 399
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 404
    .line 405
    .line 406
    monitor-exit v16

    .line 407
    goto :goto_9

    .line 408
    :catchall_4
    move-exception v0

    .line 409
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 410
    :try_start_a
    throw v0

    .line 411
    :cond_16
    :goto_a
    if-eqz v10, :cond_17

    .line 412
    .line 413
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 414
    .line 415
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    .line 420
    .line 421
    move-object v7, v0

    .line 422
    const/4 v10, 0x0

    .line 423
    :cond_17
    if-eqz v8, :cond_19

    .line 424
    .line 425
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 426
    .line 427
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 432
    .line 433
    if-eqz v0, :cond_18

    .line 434
    .line 435
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->h(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    iget-object v8, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 440
    .line 441
    iget-object v8, v8, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 442
    .line 443
    invoke-interface {v0, v7, v8}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 444
    .line 445
    .line 446
    :cond_18
    const/4 v8, 0x0

    .line 447
    :cond_19
    if-eqz v11, :cond_1b

    .line 448
    .line 449
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 456
    .line 457
    if-eqz v0, :cond_1a

    .line 458
    .line 459
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->h(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-interface {v0, v7, v13, v14}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 464
    .line 465
    .line 466
    :cond_1a
    const/4 v11, 0x0

    .line 467
    :cond_1b
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 474
    .line 475
    if-eqz v0, :cond_1c

    .line 476
    .line 477
    invoke-static {v0}, Lorg/godotengine/godot/gl/GLSurfaceView;->h(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-interface {v0, v7}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)Z

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    if-eqz v6, :cond_1d

    .line 486
    .line 487
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 488
    .line 489
    .line 490
    move-object v6, v2

    .line 491
    goto :goto_b

    .line 492
    :cond_1c
    const/4 v0, 0x0

    .line 493
    :cond_1d
    :goto_b
    if-eqz v0, :cond_1f

    .line 494
    .line 495
    iget-object v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 496
    .line 497
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->swap()I

    .line 498
    .line 499
    .line 500
    move-result v0

    .line 501
    const/16 v2, 0x3000

    .line 502
    .line 503
    if-eq v0, v2, :cond_1f

    .line 504
    .line 505
    const/16 v2, 0x300e

    .line 506
    .line 507
    if-eq v0, v2, :cond_1e

    .line 508
    .line 509
    const-string v2, "GLThread"

    .line 510
    .line 511
    move/from16 v18, v3

    .line 512
    .line 513
    const-string v3, "eglSwapBuffers"

    .line 514
    .line 515
    invoke-static {v2, v3, v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 516
    .line 517
    .line 518
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 523
    const/4 v0, 0x1

    .line 524
    :try_start_b
    iput-boolean v0, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 525
    .line 526
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 531
    .line 532
    .line 533
    monitor-exit v2

    .line 534
    goto :goto_c

    .line 535
    :catchall_5
    move-exception v0

    .line 536
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 537
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 538
    :cond_1e
    const/4 v0, 0x1

    .line 539
    move v3, v0

    .line 540
    goto :goto_d

    .line 541
    :cond_1f
    move/from16 v18, v3

    .line 542
    .line 543
    const/4 v0, 0x1

    .line 544
    :goto_c
    move/from16 v3, v18

    .line 545
    .line 546
    :goto_d
    if-eqz v12, :cond_13

    .line 547
    .line 548
    move v4, v0

    .line 549
    const/4 v12, 0x0

    .line 550
    goto/16 :goto_9

    .line 551
    .line 552
    :cond_20
    if-eqz v6, :cond_21

    .line 553
    .line 554
    :try_start_d
    const-string v0, "GLSurfaceView"

    .line 555
    .line 556
    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 557
    .line 558
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 562
    .line 563
    .line 564
    const/4 v6, 0x0

    .line 565
    :cond_21
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 570
    .line 571
    .line 572
    const/4 v0, 0x0

    .line 573
    goto/16 :goto_1

    .line 574
    .line 575
    :goto_e
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 576
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 577
    :goto_f
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    monitor-enter v2

    .line 582
    :try_start_f
    const-string v3, "GLThread"

    .line 583
    .line 584
    const-string v4, "Exiting render thread"

    .line 585
    .line 586
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    .line 588
    .line 589
    iget-object v3, v1, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 590
    .line 591
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v3

    .line 595
    check-cast v3, Lorg/godotengine/godot/gl/GLSurfaceView;

    .line 596
    .line 597
    if-eqz v3, :cond_22

    .line 598
    .line 599
    invoke-static {v3}, Lorg/godotengine/godot/gl/GLSurfaceView;->h(Lorg/godotengine/godot/gl/GLSurfaceView;)Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-interface {v3}, Lorg/godotengine/godot/gl/GLSurfaceView$Renderer;->onRenderThreadExiting()V

    .line 604
    .line 605
    .line 606
    goto :goto_10

    .line 607
    :catchall_6
    move-exception v0

    .line 608
    goto :goto_11

    .line 609
    :cond_22
    :goto_10
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 610
    .line 611
    .line 612
    invoke-direct {v1}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 613
    .line 614
    .line 615
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 616
    throw v0

    .line 617
    :goto_11
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 618
    throw v0
.end method

.method private static synthetic lambda$requestRenderAndNotify$0(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    :cond_1
    return-void
.end method

.method private readyToDraw()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mPaused:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    .line 14
    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    :cond_0
    return v1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return v0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->finish()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 12
    .line 13
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 7
    .line 8
    iget-object v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEglHelper:Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/godotengine/godot/gl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->readyToDraw()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public getRenderMode()I
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 8
    .line 9
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 13
    .line 14
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public onWindowResize(II)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWidth:I

    .line 7
    .line 8
    iput p2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHeight:I

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-ne p1, p0, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "r must not be null"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public requestExitAndWait()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 3
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestExitAndWait(J)Z
    .locals 2

    .line 8
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 9
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 10
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    iget-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 12
    :try_start_1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 14
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mExited:Z

    monitor-exit v0

    return p1

    .line 15
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 3
    .line 4
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 8
    .line 9
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p0, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 18
    .line 19
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 23
    .line 24
    iget-object v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 25
    .line 26
    new-instance v2, Lorg/godotengine/godot/gl/a;

    .line 27
    .line 28
    invoke-direct {v2, v1, p1}, Lorg/godotengine/godot/gl/a;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GLThread "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-direct {p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :catch_0
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, p0}, Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iput p1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 12
    .line 13
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "renderMode"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public surfaceCreated()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 11
    .line 12
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lorg/godotengine/godot/gl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 8
    .line 9
    invoke-static {}, Lorg/godotengine/godot/gl/GLSurfaceView;->i()Lorg/godotengine/godot/gl/GLSurfaceView$GLThreadManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method
