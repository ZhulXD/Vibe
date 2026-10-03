.class Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


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


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 1
    const-string v0, "onAudioFocusChange: "

    .line 2
    .line 3
    const-string v1, ", thread: "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "AudioFocusManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    const-string p1, "Pause music by AUDIOFOCUS_LOSS"

    .line 33
    .line 34
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$1;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const/4 v0, -0x2

    .line 47
    if-ne p1, v0, :cond_1

    .line 48
    .line 49
    const-string p1, "Pause music by AUDIOFOCUS_LOSS_TRANSILENT"

    .line 50
    .line 51
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$2;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$2;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    const/4 v0, -0x3

    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    const-string p1, "Lower the volume, keep playing by AUDIOFOCUS_LOSS_TRANSILENT_CAN_DUCK"

    .line 67
    .line 68
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$3;

    .line 72
    .line 73
    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$3;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    const/4 v0, 0x1

    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    const-string p1, "Resume music by AUDIOFOCUS_GAIN"

    .line 84
    .line 85
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    new-instance p1, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$4;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$4;-><init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method
