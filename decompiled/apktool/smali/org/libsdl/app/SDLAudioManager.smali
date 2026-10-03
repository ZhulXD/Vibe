.class public Lorg/libsdl/app/SDLAudioManager;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SDLAudio"

.field protected static mAudioRecord:Landroid/media/AudioRecord;

.field protected static mAudioTrack:Landroid/media/AudioTrack;


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

.method public static audioClose()V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static audioOpen(IIII)[I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static audioSetThreadPriority(ZI)V
    .locals 2

    .line 1
    const-string v0, "SDLAudioP"

    .line 2
    .line 3
    const-string v1, "SDLAudioC"

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const/16 p0, -0x10

    .line 47
    .line 48
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v0, "modify thread properties failed "

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "SDLAudio"

    .line 72
    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static audioWriteByteBuffer([B)V
    .locals 4

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    const-string v1, "SDLAudio"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :catch_0
    :goto_0
    array-length v2, p0

    .line 15
    if-ge v0, v2, :cond_3

    .line 16
    .line 17
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 18
    .line 19
    array-length v3, p0

    .line 20
    sub-int/2addr v3, v0

    .line 21
    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-nez v2, :cond_2

    .line 30
    .line 31
    const-wide/16 v2, 0x1

    .line 32
    .line 33
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p0, "SDL audio: error return from write(byte)"

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public static audioWriteFloatBuffer([F)V
    .locals 5

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    const-string v1, "SDLAudio"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    move v2, v0

    .line 15
    :catch_0
    :goto_0
    array-length v3, p0

    .line 16
    if-ge v2, v3, :cond_3

    .line 17
    .line 18
    sget-object v3, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 19
    .line 20
    array-length v4, p0

    .line 21
    sub-int/2addr v4, v2

    .line 22
    invoke-virtual {v3, p0, v2, v4, v0}, Landroid/media/AudioTrack;->write([FIII)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lez v3, :cond_1

    .line 27
    .line 28
    add-int/2addr v2, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    if-nez v3, :cond_2

    .line 31
    .line 32
    const-wide/16 v3, 0x1

    .line 33
    .line 34
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-string p0, "SDL audio: error return from write(float)"

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public static audioWriteShortBuffer([S)V
    .locals 4

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 2
    .line 3
    const-string v1, "SDLAudio"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Attempted to make audio call with uninitialized audio!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :catch_0
    :goto_0
    array-length v2, p0

    .line 15
    if-ge v0, v2, :cond_3

    .line 16
    .line 17
    sget-object v2, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 18
    .line 19
    array-length v3, p0

    .line 20
    sub-int/2addr v3, v0

    .line 21
    invoke-virtual {v2, p0, v0, v3}, Landroid/media/AudioTrack;->write([SII)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-nez v2, :cond_2

    .line 30
    .line 31
    const-wide/16 v2, 0x1

    .line 32
    .line 33
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string p0, "SDL audio: error return from write(short)"

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method

.method public static captureClose()V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static captureOpen(IIII)[I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p0, p1, p2, p3}, Lorg/libsdl/app/SDLAudioManager;->open(ZIIII)[I

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static captureReadByteBuffer([BZ)I
    .locals 3

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([BIII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static captureReadFloatBuffer([FZ)I
    .locals 3

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([FIII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static captureReadShortBuffer([SZ)I
    .locals 3

    .line 1
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    xor-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2, v1, p1}, Landroid/media/AudioRecord;->read([SIII)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static getAudioFormatString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string p0, "float"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    const-string p0, "8-bit"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string p0, "16-bit"

    .line 22
    .line 23
    return-object p0
.end method

.method public static initialize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 3
    .line 4
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 5
    .line 6
    return-void
.end method

.method public static native nativeSetupJNI()I
.end method

.method public static open(ZIIII)[I
    .locals 23

    .line 1
    move/from16 v2, p1

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v7, "Opening "

    .line 12
    .line 13
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v8, "playback"

    .line 17
    .line 18
    const-string v9, "capture"

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    move-object v5, v9

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v5, v8

    .line 25
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, ", requested "

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v10, " frames of "

    .line 37
    .line 38
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v11, " channel "

    .line 45
    .line 46
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v12, " audio at "

    .line 57
    .line 58
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v13, " Hz"

    .line 65
    .line 66
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v14, "SDLAudio"

    .line 74
    .line 75
    invoke-static {v14, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    const/4 v15, 0x3

    .line 79
    const/4 v4, 0x4

    .line 80
    const/4 v6, 0x1

    .line 81
    const/4 v5, 0x2

    .line 82
    if-eq v0, v5, :cond_3

    .line 83
    .line 84
    if-eq v0, v15, :cond_2

    .line 85
    .line 86
    if-eq v0, v4, :cond_1

    .line 87
    .line 88
    move/from16 v16, v15

    .line 89
    .line 90
    new-instance v15, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v4, "Requested format "

    .line 93
    .line 94
    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", getting ENCODING_PCM_16BIT"

    .line 101
    .line 102
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move v0, v5

    .line 113
    move v4, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    move/from16 v16, v15

    .line 116
    .line 117
    move v4, v0

    .line 118
    const/4 v0, 0x4

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    move/from16 v16, v15

    .line 121
    .line 122
    move v4, v0

    .line 123
    move v0, v6

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move/from16 v16, v15

    .line 126
    .line 127
    move v4, v0

    .line 128
    move v0, v5

    .line 129
    :goto_1
    const-string v15, " channels, getting stereo"

    .line 130
    .line 131
    const-string v5, "Requested "

    .line 132
    .line 133
    const/16 v19, 0xc

    .line 134
    .line 135
    if-eqz p0, :cond_6

    .line 136
    .line 137
    if-eq v1, v6, :cond_5

    .line 138
    .line 139
    move/from16 v20, v6

    .line 140
    .line 141
    const/4 v6, 0x2

    .line 142
    if-eq v1, v6, :cond_4

    .line 143
    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    :goto_2
    move/from16 v5, v19

    .line 163
    .line 164
    const/4 v1, 0x2

    .line 165
    goto :goto_4

    .line 166
    :cond_4
    :goto_3
    :pswitch_0
    move/from16 v5, v19

    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    move/from16 v20, v6

    .line 170
    .line 171
    const/16 v19, 0x10

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    move/from16 v20, v6

    .line 175
    .line 176
    packed-switch v1, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :pswitch_1
    const/16 v19, 0x18fc

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :pswitch_2
    const/16 v19, 0x4fc

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :pswitch_3
    const/16 v19, 0xfc

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :pswitch_4
    const/16 v19, 0xdc

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :pswitch_5
    const/16 v19, 0xcc

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :pswitch_6
    const/16 v19, 0x1c

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :pswitch_7
    const/4 v5, 0x4

    .line 217
    :goto_4
    mul-int/2addr v0, v1

    .line 218
    if-eqz p0, :cond_7

    .line 219
    .line 220
    invoke-static {v2, v5, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    goto :goto_5

    .line 225
    :cond_7
    invoke-static {v2, v5, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    :goto_5
    add-int/2addr v1, v0

    .line 230
    add-int/lit8 v1, v1, -0x1

    .line 231
    .line 232
    div-int/2addr v1, v0

    .line 233
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 234
    .line 235
    .line 236
    move-result v15

    .line 237
    const/4 v1, 0x4

    .line 238
    new-array v6, v1, [I

    .line 239
    .line 240
    const/16 v17, 0x0

    .line 241
    .line 242
    const/16 v19, 0x0

    .line 243
    .line 244
    if-eqz p0, :cond_a

    .line 245
    .line 246
    sget-object v1, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 247
    .line 248
    if-nez v1, :cond_9

    .line 249
    .line 250
    move v1, v0

    .line 251
    new-instance v0, Landroid/media/AudioRecord;

    .line 252
    .line 253
    move v3, v1

    .line 254
    const/4 v1, 0x0

    .line 255
    move/from16 v22, v5

    .line 256
    .line 257
    move v5, v3

    .line 258
    move/from16 v3, v22

    .line 259
    .line 260
    mul-int/2addr v5, v15

    .line 261
    const/16 v18, 0x2

    .line 262
    .line 263
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 264
    .line 265
    .line 266
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    move/from16 v1, v20

    .line 273
    .line 274
    if-eq v0, v1, :cond_8

    .line 275
    .line 276
    const-string v0, "Failed during initialization of AudioRecord"

    .line 277
    .line 278
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 282
    .line 283
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 284
    .line 285
    .line 286
    sput-object v19, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 287
    .line 288
    return-object v19

    .line 289
    :cond_8
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 290
    .line 291
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 292
    .line 293
    .line 294
    goto :goto_6

    .line 295
    :cond_9
    const/16 v18, 0x2

    .line 296
    .line 297
    :goto_6
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getSampleRate()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    aput v0, v6, v17

    .line 304
    .line 305
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 306
    .line 307
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    const/16 v20, 0x1

    .line 312
    .line 313
    aput v0, v6, v20

    .line 314
    .line 315
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioRecord:Landroid/media/AudioRecord;

    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    aput v0, v6, v18

    .line 322
    .line 323
    move-object/from16 v21, v8

    .line 324
    .line 325
    move/from16 v8, v20

    .line 326
    .line 327
    move-object/from16 v20, v6

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_a
    move v3, v5

    .line 331
    const/16 v18, 0x2

    .line 332
    .line 333
    move v5, v0

    .line 334
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 335
    .line 336
    if-nez v0, :cond_c

    .line 337
    .line 338
    new-instance v0, Landroid/media/AudioTrack;

    .line 339
    .line 340
    mul-int/2addr v5, v15

    .line 341
    move-object v1, v6

    .line 342
    const/4 v6, 0x1

    .line 343
    move-object v2, v1

    .line 344
    const/4 v1, 0x3

    .line 345
    move-object/from16 v21, v8

    .line 346
    .line 347
    move/from16 v8, v20

    .line 348
    .line 349
    move-object/from16 v20, v2

    .line 350
    .line 351
    move/from16 v2, p1

    .line 352
    .line 353
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 354
    .line 355
    .line 356
    sput-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 357
    .line 358
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eq v0, v8, :cond_b

    .line 363
    .line 364
    const-string v0, "Failed during initialization of Audio Track"

    .line 365
    .line 366
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 370
    .line 371
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 372
    .line 373
    .line 374
    sput-object v19, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 375
    .line 376
    return-object v19

    .line 377
    :cond_b
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 378
    .line 379
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 380
    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_c
    move-object/from16 v21, v8

    .line 384
    .line 385
    move/from16 v8, v20

    .line 386
    .line 387
    move-object/from16 v20, v6

    .line 388
    .line 389
    :goto_7
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 390
    .line 391
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    aput v0, v20, v17

    .line 396
    .line 397
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 398
    .line 399
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    aput v0, v20, v8

    .line 404
    .line 405
    sget-object v0, Lorg/libsdl/app/SDLAudioManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    aput v0, v20, v18

    .line 412
    .line 413
    :goto_8
    aput v15, v20, v16

    .line 414
    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    if-eqz p0, :cond_d

    .line 421
    .line 422
    goto :goto_9

    .line 423
    :cond_d
    move-object/from16 v9, v21

    .line 424
    .line 425
    :goto_9
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v1, ", got "

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    aget v1, v20, v16

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    aget v1, v20, v18

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    aget v1, v20, v8

    .line 450
    .line 451
    invoke-static {v1}, Lorg/libsdl/app/SDLAudioManager;->getAudioFormatString(I)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    aget v1, v20, v17

    .line 462
    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .line 475
    .line 476
    return-object v20

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
