.class Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

.field final synthetic val$s:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$s:Landroid/text/Editable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;

    .line 4
    .line 5
    iget v0, v0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1;->val$index:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper$1$1$1;->val$s:Landroid/text/Editable;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxEditBoxHelper;->__editBoxEditingChanged(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
