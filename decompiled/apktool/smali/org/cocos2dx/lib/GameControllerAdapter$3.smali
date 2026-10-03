.class Lorg/cocos2dx/lib/GameControllerAdapter$3;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/GameControllerAdapter;->onButtonEvent(Ljava/lang/String;IIZFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$button:I

.field final synthetic val$controller:I

.field final synthetic val$isAnalog:Z

.field final synthetic val$isPressed:Z

.field final synthetic val$value:F

.field final synthetic val$vendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$vendorName:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$controller:I

    .line 4
    .line 5
    iput p3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$button:I

    .line 6
    .line 7
    iput-boolean p4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isPressed:Z

    .line 8
    .line 9
    iput p5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$value:F

    .line 10
    .line 11
    iput-boolean p6, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isAnalog:Z

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$vendorName:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$controller:I

    .line 4
    .line 5
    iget v2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$button:I

    .line 6
    .line 7
    iget-boolean v3, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isPressed:Z

    .line 8
    .line 9
    iget v4, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$value:F

    .line 10
    .line 11
    iget-boolean v5, p0, Lorg/cocos2dx/lib/GameControllerAdapter$3;->val$isAnalog:Z

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter;->b(Ljava/lang/String;IIZFZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
