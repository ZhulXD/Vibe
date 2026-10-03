.class Lorg/libsdl/app/HIDDeviceBLESteamController$3;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$3;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

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
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$3;->this$0:Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->a(Lorg/libsdl/app/HIDDeviceBLESteamController;)Landroid/bluetooth/BluetoothGatt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
