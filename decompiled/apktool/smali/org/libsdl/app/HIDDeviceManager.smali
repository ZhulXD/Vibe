.class public Lorg/libsdl/app/HIDDeviceManager;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "org.libsdl.app.USB_PERMISSION"

.field private static final TAG:Ljava/lang/String; = "hidapi"

.field private static sManager:Lorg/libsdl/app/HIDDeviceManager;

.field private static sManagerRefCount:I


# instance fields
.field private final mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

.field private mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lorg/libsdl/app/HIDDeviceBLESteamController;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mContext:Landroid/content/Context;

.field private mDevicesById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/libsdl/app/HIDDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsChromebook:Z

.field private mLastBluetoothDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUsbBroadcast:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    .line 25
    .line 26
    new-instance v1, Lorg/libsdl/app/HIDDeviceManager$1;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lorg/libsdl/app/HIDDeviceManager$1;-><init>(Lorg/libsdl/app/HIDDeviceManager;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbBroadcast:Landroid/content/BroadcastReceiver;

    .line 32
    .line 33
    new-instance v1, Lorg/libsdl/app/HIDDeviceManager$2;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lorg/libsdl/app/HIDDeviceManager$2;-><init>(Lorg/libsdl/app/HIDDeviceManager;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceRegisterCallback()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v1, "hidapi"

    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    .line 55
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "org.chromium.arc.device_management"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    .line 68
    .line 69
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 70
    .line 71
    const-string v1, "next_device_id"

    .line 72
    .line 73
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    .line 78
    .line 79
    return-void
.end method

.method private native HIDDeviceRegisterCallback()V
.end method

.method private native HIDDeviceReleaseCallback()V
.end method

.method public static bridge synthetic a(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static acquire(Landroid/content/Context;)Lorg/libsdl/app/HIDDeviceManager;
    .locals 1

    .line 1
    sget v0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/libsdl/app/HIDDeviceManager;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lorg/libsdl/app/HIDDeviceManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 11
    .line 12
    :cond_0
    sget p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 13
    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 15
    .line 16
    sput p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 17
    .line 18
    sget-object p0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 19
    .line 20
    return-object p0
.end method

.method public static bridge synthetic b(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic c(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDevicePermission(Landroid/hardware/usb/UsbDevice;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private close()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->shutdownUSB()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->shutdownBluetooth()V

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/libsdl/app/HIDDevice;

    .line 29
    .line 30
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->shutdown()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceReleaseCallback()V

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0
.end method

.method private connectHIDDeviceUSB(Landroid/hardware/usb/UsbDevice;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v14, v2

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v14, v3, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, v14}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v1, v0, v3}, Lorg/libsdl/app/HIDDeviceManager;->isHIDDeviceInterface(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x1

    .line 29
    shl-int v4, v5, v4

    .line 30
    .line 31
    and-int v5, v2, v4

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    or-int v15, v2, v4

    .line 37
    .line 38
    new-instance v2, Lorg/libsdl/app/HIDDeviceUSB;

    .line 39
    .line 40
    invoke-direct {v2, v1, v0, v14}, Lorg/libsdl/app/HIDDeviceUSB;-><init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/libsdl/app/HIDDeviceUSB;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v5, v1, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-object v5, v3

    .line 57
    invoke-virtual {v2}, Lorg/libsdl/app/HIDDeviceUSB;->getIdentifier()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    move-object v6, v2

    .line 62
    move v2, v4

    .line 63
    invoke-virtual {v6}, Lorg/libsdl/app/HIDDeviceUSB;->getVendorId()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    move-object v7, v5

    .line 68
    invoke-virtual {v6}, Lorg/libsdl/app/HIDDeviceUSB;->getProductId()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    move-object v8, v6

    .line 73
    invoke-virtual {v8}, Lorg/libsdl/app/HIDDeviceUSB;->getSerialNumber()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    move-object v9, v7

    .line 78
    invoke-virtual {v8}, Lorg/libsdl/app/HIDDeviceUSB;->getVersion()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    move-object v10, v8

    .line 83
    invoke-virtual {v10}, Lorg/libsdl/app/HIDDeviceUSB;->getManufacturerName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v10}, Lorg/libsdl/app/HIDDeviceUSB;->getProductName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    move-object v11, v9

    .line 92
    move-object v9, v10

    .line 93
    invoke-virtual {v11}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v10

    .line 97
    move-object v12, v11

    .line 98
    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    move-object v13, v12

    .line 103
    invoke-virtual {v13}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-virtual {v13}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    invoke-virtual/range {v1 .. v13}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 112
    .line 113
    .line 114
    move v2, v15

    .line 115
    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 119
    .line 120
    move-object/from16 v1, p0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    monitor-exit p0

    .line 124
    return-void

    .line 125
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw v0
.end method

.method private getDevice(I)Lorg/libsdl/app/HIDDevice;
    .locals 5

    .line 1
    const-string v0, "Available devices: "

    .line 2
    .line 3
    const-string v1, "No device for id: "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lorg/libsdl/app/HIDDevice;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v3, "hidapi"

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    const-string p1, "hidapi"

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    :goto_0
    monitor-exit p0

    .line 64
    return-object v2

    .line 65
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
.end method

.method private handleUsbDeviceAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->connectHIDDeviceUSB(Landroid/hardware/usb/UsbDevice;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private handleUsbDeviceDetached(Landroid/hardware/usb/UsbDevice;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lorg/libsdl/app/HIDDevice;

    .line 27
    .line 28
    invoke-interface {v2}, Lorg/libsdl/app/HIDDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v2}, Lorg/libsdl/app/HIDDevice;->getId()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-ge v1, p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    check-cast v2, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lorg/libsdl/app/HIDDevice;

    .line 76
    .line 77
    iget-object v5, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-interface {v4}, Lorg/libsdl/app/HIDDevice;->shutdown()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v3}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    return-void
.end method

.method private handleUsbDevicePermission(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/libsdl/app/HIDDevice;

    .line 22
    .line 23
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->open()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_1
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->getId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v1, v2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceOpenResult(IZ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method private initializeBluetooth()V
    .locals 5

    .line 1
    const-string v0, "Initializing Bluetooth"

    .line 2
    .line 3
    const-string v1, "hidapi"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1e

    .line 11
    .line 12
    if-gt v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "android.permission.BLUETOOTH"

    .line 27
    .line 28
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string v0, "Couldn\'t initialize Bluetooth, missing android.permission.BLUETOOTH"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "android.hardware.bluetooth_le"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-string v2, "bluetooth"

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 63
    .line 64
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v4, "Bluetooth device available: "

    .line 99
    .line 100
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v2}, Lorg/libsdl/app/HIDDeviceManager;->isSteamController(Landroid/bluetooth/BluetoothDevice;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_3

    .line 118
    .line 119
    invoke-virtual {p0, v2}, Lorg/libsdl/app/HIDDeviceManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    .line 124
    .line 125
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

    .line 141
    .line 142
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    new-instance v0, Landroid/os/Handler;

    .line 150
    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mHandler:Landroid/os/Handler;

    .line 159
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .line 164
    .line 165
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    .line 166
    .line 167
    :cond_5
    :goto_1
    return-void

    .line 168
    :cond_6
    const-string v0, "Couldn\'t initialize Bluetooth, this version of Android does not support Bluetooth LE"

    .line 169
    .line 170
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method private initializeUSB()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "usb"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "org.libsdl.app.USB_PERMISSION"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbBroadcast:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 68
    .line 69
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceManager;->handleUsbDeviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    return-void
.end method

.method private isHIDDeviceInterface(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->isXbox360Controller(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-direct {p0, p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->isXboxOneController(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_2
    :goto_0
    return v2
.end method

.method private isXbox360Controller(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    .locals 5

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/16 v3, 0xff

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-ne v2, v3, :cond_2

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x5d

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/16 v2, 0x81

    .line 37
    .line 38
    if-ne p2, v2, :cond_2

    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    move p2, v4

    .line 45
    :goto_0
    if-ge p2, v0, :cond_2

    .line 46
    .line 47
    aget v2, v1, p2

    .line 48
    .line 49
    if-ne p1, v2, :cond_1

    .line 50
    .line 51
    return v3

    .line 52
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v4

    .line 56
    nop

    :array_0
    .array-data 4
        0x79
        0x44f
        0x45e
        0x46d
        0x56e
        0x6a3
        0x738
        0x7ff
        0xe6f
        0xf0d
        0x1038
        0x11c9
        0x12ab
        0x1430
        0x146b
        0x1532
        0x15e4
        0x162e
        0x1689
        0x1949
        0x1bad
        0x20d6
        0x24c6
        0x2c22
    .end array-data
.end method

.method private isXboxOneController(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;)Z
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v4, 0xff

    .line 20
    .line 21
    if-ne v2, v4, :cond_1

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/16 v4, 0x47

    .line 28
    .line 29
    if-ne v2, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/16 v2, 0xd0

    .line 36
    .line 37
    if-ne p2, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    move p2, v3

    .line 44
    :goto_0
    if-ge p2, v0, :cond_1

    .line 45
    .line 46
    aget v2, v1, p2

    .line 47
    .line 48
    if-ne p1, v2, :cond_0

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return v3

    .line 56
    nop

    :array_0
    .array-data 4
        0x45e
        0x738
        0xe6f
        0xf0d
        0x1532
        0x20d6
        0x24c6
        0x2dc8
        0x2e24
    .end array-data
.end method

.method public static release(Lorg/libsdl/app/HIDDeviceManager;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 6
    .line 7
    add-int/lit8 p0, p0, -0x1

    .line 8
    .line 9
    sput p0, Lorg/libsdl/app/HIDDeviceManager;->sManagerRefCount:I

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/libsdl/app/HIDDeviceManager;->close()V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    sput-object p0, Lorg/libsdl/app/HIDDeviceManager;->sManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private shutdownBluetooth()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothBroadcast:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method private shutdownUSB()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbBroadcast:Landroid/content/BroadcastReceiver;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method


# virtual methods
.method public HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    return-void
.end method

.method public HIDDeviceDisconnected(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public HIDDeviceFeatureReport(I[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public HIDDeviceInputReport(I[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public HIDDeviceOpenPending(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public HIDDeviceOpenResult(IZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public chromebookConnectionHandler()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mIsChromebook:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 17
    .line 18
    const/4 v3, 0x7

    .line 19
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 38
    .line 39
    iget-object v5, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .line 69
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mLastBluetoothDevices:Ljava/util/List;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x0

    .line 86
    move v4, v3

    .line 87
    :goto_2
    if-ge v4, v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 94
    .line 95
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .line 97
    invoke-virtual {p0, v5}, Lorg/libsdl/app/HIDDeviceManager;->disconnectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    :goto_3
    if-ge v3, v0, :cond_6

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 114
    .line 115
    invoke-virtual {p0, v2}, Lorg/libsdl/app/HIDDeviceManager;->connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mHandler:Landroid/os/Handler;

    .line 120
    .line 121
    new-instance v1, Lorg/libsdl/app/HIDDeviceManager$3;

    .line 122
    .line 123
    invoke-direct {v1, p0, p0}, Lorg/libsdl/app/HIDDeviceManager$3;-><init>(Lorg/libsdl/app/HIDDeviceManager;Lorg/libsdl/app/HIDDeviceManager;)V

    .line 124
    .line 125
    .line 126
    const-wide/16 v2, 0x2710

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public closeDevice(I)V
    .locals 3

    .line 1
    const-string v0, "hidapi"

    .line 2
    .line 3
    const-string v1, "closeDevice deviceID="

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v1}, Lorg/libsdl/app/HIDDevice;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "Got exception: "

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public connectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1
    const-string v0, "Steam controller with address "

    .line 2
    .line 3
    const-string v1, "hidapi"

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "connectBluetoothDevice device="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "hidapi"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " already exists, attempting reconnect"

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 60
    .line 61
    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->reconnect()V

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    monitor-exit p0

    .line 66
    return p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;-><init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    const/4 p1, 0x1

    .line 94
    return p1

    .line 95
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p1
.end method

.method public disconnectBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/libsdl/app/HIDDeviceBLESteamController;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mBluetoothDevices:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->shutdown()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceIDForIdentifier(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    .line 17
    .line 18
    add-int/lit8 v2, v1, 0x1

    .line 19
    .line 20
    iput v2, p0, Lorg/libsdl/app/HIDDeviceManager;->mNextDeviceId:I

    .line 21
    .line 22
    const-string v3, "next_device_id"

    .line 23
    .line 24
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    .line 32
    .line 33
    return v1
.end method

.method public getFeatureReport(I[B)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1, p2}, Lorg/libsdl/app/HIDDevice;->getFeatureReport([B)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p1

    .line 19
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Got exception: "

    .line 22
    .line 23
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "hidapi"

    .line 38
    .line 39
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v0
.end method

.method public getUSBManager()Landroid/hardware/usb/UsbManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialize(ZZ)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "initialize("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "hidapi"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->initializeUSB()V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceManager;->initializeBluetooth()V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 p1, 0x1

    .line 44
    return p1
.end method

.method public isSteamController(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "SteamController"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    and-int/lit8 p1, p1, 0x2

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_2
    return v0
.end method

.method public openDevice(I)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "openDevice deviceID="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "hidapi"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    invoke-interface {v0}, Lorg/libsdl/app/HIDDevice;->getDevice()Landroid/hardware/usb/UsbDevice;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceOpenPending(I)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v4, 0x1f

    .line 51
    .line 52
    if-lt v0, v4, :cond_1

    .line 53
    .line 54
    const/high16 v0, 0x2000000

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v0, v2

    .line 58
    :goto_0
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceManager;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 59
    .line 60
    iget-object v5, p0, Lorg/libsdl/app/HIDDeviceManager;->mContext:Landroid/content/Context;

    .line 61
    .line 62
    new-instance v6, Landroid/content/Intent;

    .line 63
    .line 64
    const-string v7, "org.libsdl.app.USB_PERMISSION"

    .line 65
    .line 66
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v5, v2, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v4, v3, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "Couldn\'t request permission for USB device "

    .line 80
    .line 81
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceOpenResult(IZ)V

    .line 95
    .line 96
    .line 97
    :goto_1
    return v2

    .line 98
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lorg/libsdl/app/HIDDevice;->open()Z

    .line 99
    .line 100
    .line 101
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    return p1

    .line 103
    :catch_1
    move-exception p1

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, "Got exception: "

    .line 107
    .line 108
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return v2
.end method

.method public sendFeatureReport(I[B)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1, p2}, Lorg/libsdl/app/HIDDevice;->sendFeatureReport([B)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p1

    .line 19
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Got exception: "

    .line 22
    .line 23
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "hidapi"

    .line 38
    .line 39
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v0
.end method

.method public sendOutputReport(I[B)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->getDevice(I)Lorg/libsdl/app/HIDDevice;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceDisconnected(I)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v1, p2}, Lorg/libsdl/app/HIDDevice;->sendOutputReport([B)I

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return p1

    .line 19
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Got exception: "

    .line 22
    .line 23
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "hidapi"

    .line 38
    .line 39
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v0
.end method

.method public setFrozen(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceManager;->mDevicesById:Ljava/util/HashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/libsdl/app/HIDDevice;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lorg/libsdl/app/HIDDevice;->setFrozen(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method
