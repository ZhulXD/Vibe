.class public interface abstract Lorg/cocos2dx/lib/GameControllerDelegate$ControllerEventListener;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/GameControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerEventListener"
.end annotation


# virtual methods
.method public abstract onAxisEvent(Ljava/lang/String;IIFZ)V
.end method

.method public abstract onButtonEvent(Ljava/lang/String;IIZFZ)V
.end method

.method public abstract onConnected(Ljava/lang/String;I)V
.end method

.method public abstract onDisconnected(Ljava/lang/String;I)V
.end method
