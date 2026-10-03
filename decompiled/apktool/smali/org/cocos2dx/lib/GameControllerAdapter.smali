.class public Lorg/cocos2dx/lib/GameControllerAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static sRunnableFrameStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


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

.method public static bridge synthetic a(Ljava/lang/String;IIFZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerAxisEvent(Ljava/lang/String;IIFZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static addRunnableToFrameStartList(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic b(Ljava/lang/String;IIZFZ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerButtonEvent(Ljava/lang/String;IIZFZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic c(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerConnected(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic d(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lorg/cocos2dx/lib/GameControllerAdapter;->nativeControllerDisconnected(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native nativeControllerAxisEvent(Ljava/lang/String;IIFZ)V
.end method

.method private static native nativeControllerButtonEvent(Ljava/lang/String;IIZFZ)V
.end method

.method private static native nativeControllerConnected(Ljava/lang/String;I)V
.end method

.method private static native nativeControllerDisconnected(Ljava/lang/String;I)V
.end method

.method public static onAxisEvent(Ljava/lang/String;IIFZ)V
    .locals 6

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$4;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/cocos2dx/lib/GameControllerAdapter$4;-><init>(Ljava/lang/String;IIFZ)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static onButtonEvent(Ljava/lang/String;IIZFZ)V
    .locals 7

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$3;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lorg/cocos2dx/lib/GameControllerAdapter$3;-><init>(Ljava/lang/String;IIZFZ)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static onConnected(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter$1;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static onDisconnected(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/cocos2dx/lib/GameControllerAdapter$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lib/GameControllerAdapter$2;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static onDrawFrameStart()V
    .locals 3

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    sget-object v2, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public static removeRunnableFromFrameStartList(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/cocos2dx/lib/GameControllerAdapter;->sRunnableFrameStartList:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
