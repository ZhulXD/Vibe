.class Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxAudioFocusManager;->a(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->setAudioFocus(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
