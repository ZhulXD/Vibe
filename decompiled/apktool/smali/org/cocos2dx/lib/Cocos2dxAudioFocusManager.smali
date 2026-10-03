.class Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x0

.field private static final AUDIOFOCUS_LOST:I = 0x1

.field private static final AUDIOFOCUS_LOST_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_LOST_TRANSIENT_CAN_DUCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic a(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->nativeOnAudioFocusChange(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native nativeOnAudioFocusChange(I)V
.end method

.method public static registerAudioFocusListener(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/media/AudioManager;

    .line 8
    .line 9
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string v0, "AudioFocusManager"

    .line 18
    .line 19
    if-ne p0, v2, :cond_0

    .line 20
    .line 21
    const-string p0, "requestAudioFocus succeed"

    .line 22
    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    const-string p0, "requestAudioFocus failed!"

    .line 28
    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public static unregisterAudioFocusListener(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/media/AudioManager;

    .line 8
    .line 9
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->sAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    const-string v1, "AudioFocusManager"

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    const-string p0, "abandonAudioFocus succeed!"

    .line 21
    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "abandonAudioFocus failed!"

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance p0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;

    .line 32
    .line 33
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$2;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
