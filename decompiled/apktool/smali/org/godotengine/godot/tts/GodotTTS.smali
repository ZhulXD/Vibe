.class public Lorg/godotengine/godot/tts/GodotTTS;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation build Lc/a;
.end annotation


# static fields
.field private static final EVENT_BOUNDARY:I = 0x3

.field private static final EVENT_CANCEL:I = 0x2

.field private static final EVENT_END:I = 0x1

.field private static final EVENT_START:I = 0x0

.field private static final INIT_STATE_FAIL:I = -0x1

.field private static final INIT_STATE_SUCCESS:I = 0x1

.field private static final INIT_STATE_UNKNOWN:I


# instance fields
.field private final context:Landroid/content/Context;

.field private lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

.field private final lock:Ljava/lang/Object;

.field private paused:Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/godotengine/godot/tts/GodotUtterance;",
            ">;"
        }
    .end annotation
.end field

.field private speaking:Z

.field private state:I

.field private synth:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->context:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method private updateTTS()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lorg/godotengine/godot/tts/GodotUtterance;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/speech/tts/Voice;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, v0, Lorg/godotengine/godot/tts/GodotUtterance;->voice:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 64
    .line 65
    iget v2, v0, Lorg/godotengine/godot/tts/GodotUtterance;->pitch:F

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 71
    .line 72
    iget v2, v0, Lorg/godotengine/godot/tts/GodotUtterance;->rate:F

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 75
    .line 76
    .line 77
    new-instance v1, Landroid/os/Bundle;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    .line 81
    .line 82
    iget v2, v0, Lorg/godotengine/godot/tts/GodotUtterance;->volume:I

    .line 83
    .line 84
    int-to-float v2, v2

    .line 85
    const/high16 v3, 0x42c80000    # 100.0f

    .line 86
    .line 87
    div-float/2addr v2, v3

    .line 88
    const-string v3, "volume"

    .line 89
    .line 90
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    iput v2, v0, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 97
    .line 98
    iput v2, v0, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 99
    .line 100
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 101
    .line 102
    iget-object v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 103
    .line 104
    iget-object v4, v0, Lorg/godotengine/godot/tts/GodotUtterance;->text:Ljava/lang/String;

    .line 105
    .line 106
    iget-wide v5, v0, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 107
    .line 108
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v3, v4, v2, v1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 117
    .line 118
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public getVoices()[Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    new-array v1, v3, [Ljava/lang/String;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-array v1, v3, [Ljava/lang/String;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object v1

    .line 28
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    new-array v2, v2, [Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Landroid/speech/tts/Voice;

    .line 49
    .line 50
    add-int/lit8 v5, v3, 0x1

    .line 51
    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v7, ";"

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    aput-object v4, v2, v3

    .line 85
    .line 86
    move v3, v5

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    monitor-exit v0

    .line 89
    return-object v2

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw v1
.end method

.method public init()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 3
    .line 4
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 12
    .line 13
    new-instance v0, Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 19
    .line 20
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 17
    .line 18
    iget-wide v3, p1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 19
    .line 20
    cmp-long p1, v1, v3

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v3, v4, v1}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 27
    .line 28
    .line 29
    iput-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 30
    .line 31
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public onError(Ljava/lang/String;)V
    .locals 5

    .line 7
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget-wide v3, p1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v3, v4, v1}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 10
    iput-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 11
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    iget-wide v2, p1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v2, v3, v0}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 4
    iput-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 5
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onInit(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    :try_start_0
    iput p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 14
    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 4

    .line 1
    iget-object p3, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    iget-object p4, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 13
    .line 14
    iget-wide v2, p1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 15
    .line 16
    cmp-long p4, v0, v2

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    iput p2, p1, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 21
    .line 22
    iget p1, p1, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 23
    .line 24
    add-int/2addr p2, p1

    .line 25
    const/4 p1, 0x3

    .line 26
    invoke-static {p1, v2, v3, p2}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p3

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 17
    .line 18
    iget-wide v3, p1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 19
    .line 20
    cmp-long p1, v1, v3

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p1, v3, v4, p1}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p1
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object p2, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p2

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 17
    .line 18
    iget-wide v2, p1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 19
    .line 20
    cmp-long p1, v0, v2

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v2, v3, v0}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 30
    .line 31
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p2

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public pauseSpeaking()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 18
    .line 19
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 22
    .line 23
    .line 24
    :cond_1
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method

.method public resumeSpeaking()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    iget-boolean v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 20
    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getVoices()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Landroid/speech/tts/Voice;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget-object v6, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 54
    .line 55
    iget-object v6, v6, Lorg/godotengine/godot/tts/GodotUtterance;->voice:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/speech/tts/TextToSpeech;->setVoice(Landroid/speech/tts/Voice;)I

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 69
    .line 70
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 71
    .line 72
    iget v4, v4, Lorg/godotengine/godot/tts/GodotUtterance;->pitch:F

    .line 73
    .line 74
    invoke-virtual {v1, v4}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 78
    .line 79
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 80
    .line 81
    iget v4, v4, Lorg/godotengine/godot/tts/GodotUtterance;->rate:F

    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 84
    .line 85
    .line 86
    new-instance v1, Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "volume"

    .line 92
    .line 93
    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 94
    .line 95
    iget v5, v5, Lorg/godotengine/godot/tts/GodotUtterance;->volume:I

    .line 96
    .line 97
    int-to-float v5, v5

    .line 98
    const/high16 v6, 0x42c80000    # 100.0f

    .line 99
    .line 100
    div-float/2addr v5, v6

    .line 101
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 105
    .line 106
    iget v5, v4, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 107
    .line 108
    iput v5, v4, Lorg/godotengine/godot/tts/GodotUtterance;->start:I

    .line 109
    .line 110
    iput v3, v4, Lorg/godotengine/godot/tts/GodotUtterance;->offset:I

    .line 111
    .line 112
    iput-boolean v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 113
    .line 114
    iget-object v6, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 115
    .line 116
    iget-object v4, v4, Lorg/godotengine/godot/tts/GodotUtterance;->text:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v5, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 123
    .line 124
    iget-wide v7, v5, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 125
    .line 126
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {v6, v4, v3, v1, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iput-boolean v2, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    iput-boolean v3, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 137
    .line 138
    :goto_0
    monitor-exit v0

    .line 139
    return-void

    .line 140
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    throw v1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;IFFJZ)V
    .locals 10

    .line 1
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    move-object p1, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    new-instance v2, Lorg/godotengine/godot/tts/GodotUtterance;

    .line 15
    .line 16
    move-object v3, p1

    .line 17
    move-object v4, p2

    .line 18
    move v5, p3

    .line 19
    move v6, p4

    .line 20
    move v7, p5

    .line 21
    move-wide/from16 v8, p6

    .line 22
    .line 23
    invoke-direct/range {v2 .. v9}, Lorg/godotengine/godot/tts/GodotUtterance;-><init>(Ljava/lang/String;Ljava/lang/String;IFFJ)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/godotengine/godot/tts/GodotTTS;->isPaused()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/godotengine/godot/tts/GodotTTS;->resumeSpeaking()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0}, Lorg/godotengine/godot/tts/GodotTTS;->updateTTS()V

    .line 42
    .line 43
    .line 44
    :goto_0
    monitor-exit v1

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public stopSpeaking()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/tts/GodotTTS;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->state:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lorg/godotengine/godot/tts/GodotUtterance;

    .line 32
    .line 33
    iget-wide v5, v2, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 34
    .line 35
    invoke-static {v3, v5, v6, v4}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->queue:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-wide v1, v1, Lorg/godotengine/godot/tts/GodotUtterance;->id:J

    .line 49
    .line 50
    invoke-static {v3, v1, v2, v4}, Lorg/godotengine/godot/GodotLib;->ttsCallback(IJI)V

    .line 51
    .line 52
    .line 53
    :cond_2
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->lastUtterance:Lorg/godotengine/godot/tts/GodotUtterance;

    .line 55
    .line 56
    iput-boolean v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->paused:Z

    .line 57
    .line 58
    iput-boolean v4, p0, Lorg/godotengine/godot/tts/GodotTTS;->speaking:Z

    .line 59
    .line 60
    iget-object v1, p0, Lorg/godotengine/godot/tts/GodotTTS;->synth:Landroid/speech/tts/TextToSpeech;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 63
    .line 64
    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw v1
.end method
