.class Lorg/cocos2dx/lib/Cocos2dxVideoView$6;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->h(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x3

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    move p1, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 16
    .line 17
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->j(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-ne p2, p3, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 24
    .line 25
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->i(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-ne p2, p4, :cond_1

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_1
    iget-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 33
    .line 34
    invoke-static {p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->c(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 45
    .line 46
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->g(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 53
    .line 54
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->g(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1, p2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 62
    .line 63
    invoke-virtual {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->n(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->r(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->n(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$6;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->s(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
