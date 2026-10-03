.class Lorg/libsdl/app/HIDDeviceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libsdl/app/HIDDeviceManager;


# direct methods
.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "device"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 20
    .line 21
    iget-object p2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    .line 22
    .line 23
    invoke-static {p2, p1}, Lorg/libsdl/app/HIDDeviceManager;->a(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 40
    .line 41
    iget-object p2, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    .line 42
    .line 43
    invoke-static {p2, p1}, Lorg/libsdl/app/HIDDeviceManager;->b(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    const-string v0, "org.libsdl.app.USB_PERMISSION"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 60
    .line 61
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager$1;->this$0:Lorg/libsdl/app/HIDDeviceManager;

    .line 62
    .line 63
    const-string v1, "permission"

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-static {v0, p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->c(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;Z)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method
