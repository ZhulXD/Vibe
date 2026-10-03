.class Lorg/cocos2dx/lib/ResizeLayout$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/ResizeLayout;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/ResizeLayout;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/ResizeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/ResizeLayout$1;->this$0:Lorg/cocos2dx/lib/ResizeLayout;

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
    iget-object v0, p0, Lorg/cocos2dx/lib/ResizeLayout$1;->this$0:Lorg/cocos2dx/lib/ResizeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/cocos2dx/lib/ResizeLayout$1;->this$0:Lorg/cocos2dx/lib/ResizeLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
