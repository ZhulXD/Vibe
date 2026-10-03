.class Lorg/cocos2dx/lib/Cocos2dxVideoView$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->q(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->p(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 20
    .line 21
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 28
    .line 29
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 42
    .line 43
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iget-object p3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 48
    .line 49
    invoke-static {p3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method
