.class Lorg/libsdl/app/HIDDeviceBLESteamController$1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;->checkConnectionForChromebookIssue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

.field final synthetic val$finalThis:Lorg/libsdl/app/HIDDeviceBLESteamController;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/HIDDeviceBLESteamController;Lorg/libsdl/app/HIDDeviceBLESteamController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$1;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$1;->val$finalThis:Lorg/libsdl/app/HIDDeviceBLESteamController;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$1;->val$finalThis:Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->checkConnectionForChromebookIssue()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
