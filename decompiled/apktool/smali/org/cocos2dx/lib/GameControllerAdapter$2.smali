.class Lorg/cocos2dx/lib/GameControllerAdapter$2;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/GameControllerAdapter;->onDisconnected(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$controller:I

.field final synthetic val$vendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$2;->val$vendorName:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lorg/cocos2dx/lib/GameControllerAdapter$2;->val$controller:I

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
    iget-object v0, p0, Lorg/cocos2dx/lib/GameControllerAdapter$2;->val$vendorName:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/cocos2dx/lib/GameControllerAdapter$2;->val$controller:I

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/cocos2dx/lib/GameControllerAdapter;->d(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
