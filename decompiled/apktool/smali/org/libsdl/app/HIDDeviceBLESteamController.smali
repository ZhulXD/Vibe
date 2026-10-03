.class Lorg/libsdl/app/HIDDeviceBLESteamController;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/libsdl/app/HIDDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    }
.end annotation


# static fields
.field private static final CHROMEBOOK_CONNECTION_CHECK_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "hidapi"

.field private static final TRANSPORT_AUTO:I = 0x0

.field private static final TRANSPORT_BREDR:I = 0x1

.field private static final TRANSPORT_LE:I = 0x2

.field private static final enterValveMode:[B

.field public static final inputCharacteristic:Ljava/util/UUID;

.field public static final reportCharacteristic:Ljava/util/UUID;

.field public static final steamControllerService:Ljava/util/UUID;


# instance fields
.field mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:I

.field private mFrozen:Z

.field private mGatt:Landroid/bluetooth/BluetoothGatt;

.field private mHandler:Landroid/os/Handler;

.field private mIsChromebook:Z

.field private mIsConnected:Z

.field private mIsReconnecting:Z

.field private mIsRegistered:Z

.field private mManager:Lorg/libsdl/app/HIDDeviceManager;

.field private mOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "100F6C32-1735-4313-B402-38567131E5F3"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    .line 8
    .line 9
    const-string v0, "100F6C33-1735-4313-B402-38567131E5F3"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    .line 16
    .line 17
    const-string v0, "100F6C34-1735-4313-B402-38567131E5F3"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 24
    .line 25
    const/4 v0, 0x6

    .line 26
    new-array v0, v0, [B

    .line 27
    .line 28
    fill-array-data v0, :array_0

    .line 29
    .line 30
    .line 31
    sput-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->enterValveMode:[B

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 1
        -0x40t
        -0x79t
        0x3t
        0x8t
        0x7t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getIdentifier()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->getDeviceIDForIdentifier(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDeviceId:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 33
    .line 34
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "org.chromium.arc.device_management"

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    .line 51
    .line 52
    new-instance p1, Ljava/util/LinkedList;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 58
    .line 59
    new-instance p1, Landroid/os/Handler;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt()Landroid/bluetooth/BluetoothGatt;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 75
    .line 76
    return-void
.end method

.method public static bridge synthetic a(Lorg/libsdl/app/HIDDeviceBLESteamController;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lorg/libsdl/app/HIDDeviceBLESteamController;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object p0
.end method

.method private connectGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method private connectGatt(Z)Landroid/bluetooth/BluetoothGatt;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, p0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    return-object p1
.end method

.method private enableNotification(Ljava/util/UUID;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->enableNotification(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private executeNextGattOperation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 29
    .line 30
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    new-instance v1, Lorg/libsdl/app/HIDDeviceBLESteamController$2;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$2;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v1
.end method

.method private finishCurrentGattOperation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput-object v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mCurrentOperation:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move-object v1, v2

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->finish()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v1
.end method

.method private isRegistered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 2
    .line 3
    return v0
.end method

.method private probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "probeService controller="

    .line 18
    .line 19
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "hidapi"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    sget-object v5, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Found Valve steam controller service "

    .line 71
    .line 72
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    sget-object v4, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    const-string v3, "Found input characteristic"

    .line 122
    .line 123
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    .line 127
    .line 128
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-direct {p0, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->enableNotification(Ljava/util/UUID;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    return v1

    .line 147
    :cond_5
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_6

    .line 158
    .line 159
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    .line 160
    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 164
    .line 165
    if-nez p1, :cond_6

    .line 166
    .line 167
    const-string p1, "Chromebook: Discovered services were empty; this almost certainly means the BtGatt.ContextMap bug has bitten us."

    .line 168
    .line 169
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 173
    .line 174
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 175
    .line 176
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 186
    .line 187
    :cond_6
    return v2
.end method

.method private queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->executeNextGattOperation()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method private setRegistered()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public checkConnectionForChromebookIssue()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsChromebook:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getConnectionState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "hidapi"

    .line 13
    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    if-eq v0, v2, :cond_5

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-eq v0, v4, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    const-string v0, "Chromebook: We are in a very bad state; the controller shows as connected in the underlying Bluetooth layer, but we never received a callback.  Forcing a reconnect."

    .line 27
    .line 28
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 32
    .line 33
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_3

    .line 62
    .line 63
    const-string v0, "Chromebook: We are connected to a controller, but never got our registration.  Trying to recover."

    .line 64
    .line 65
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const-string v0, "Chromebook: We are connected to a controller, but never discovered services.  Trying to recover."

    .line 73
    .line 74
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 78
    .line 79
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const-string v0, "Chromebook: We are connected, and registered.  Everything\'s good!"

    .line 92
    .line 93
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_5
    const-string v0, "Chromebook: We\'re still trying to connect.  Waiting a bit longer."

    .line 98
    .line 99
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    const-string v0, "Chromebook: We have either been disconnected, or the Chromebook BtGatt.ContextMap bug has bitten us.  Attempting a disconnect/reconnect, but we may not be able to recover."

    .line 104
    .line 105
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    iput-boolean v2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 109
    .line 110
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 120
    .line 121
    :goto_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    .line 122
    .line 123
    new-instance v1, Lorg/libsdl/app/HIDDeviceBLESteamController$1;

    .line 124
    .line 125
    invoke-direct {v1, p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$1;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    .line 126
    .line 127
    .line 128
    const-wide/16 v2, 0x2710

    .line 129
    .line 130
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public getConnectionState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v2, "bluetooth"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 23
    .line 24
    const/4 v2, 0x7

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getFeatureReport([B)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    const-string p1, "hidapi"

    .line 8
    .line 9
    const-string v0, "Attempted getFeatureReport before Steam Controller is registered!"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    sget-object p1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->readCharacteristic(Ljava/util/UUID;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public getGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDeviceId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SteamController."

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Valve Corporation"

    .line 2
    .line 3
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .line 1
    const/16 v0, 0x1106

    .line 2
    .line 3
    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Steam Controller"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "12345"

    .line 2
    .line 3
    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    .line 1
    const/16 v0, 0x28de

    .line 2
    .line 3
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, v0, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceInputReport(I[B)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p3, p2}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceFeatureReport(I[B)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 14

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "Registering Steam Controller with ID: "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "hidapi"

    .line 38
    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 43
    .line 44
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getId()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getIdentifier()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getVendorId()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getProductId()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getSerialNumber()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getVersion()I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getManufacturerName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getProductName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v11, 0x0

    .line 80
    invoke-virtual/range {v1 .. v13}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceConnected(ILjava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->setRegistered()V

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    if-ne p3, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 9
    .line 10
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    new-instance p2, Lorg/libsdl/app/HIDDeviceBLESteamController$3;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController$3;-><init>(Lorg/libsdl/app/HIDDeviceBLESteamController;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    if-nez p3, :cond_1

    .line 28
    .line 29
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->inputCharacteristic:Ljava/util/UUID;

    .line 10
    .line 11
    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const-string p3, "hidapi"

    .line 30
    .line 31
    const-string v0, "Writing report characteristic to enter valve mode"

    .line 32
    .line 33
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    sget-object p3, Lorg/libsdl/app/HIDDeviceBLESteamController;->enterValveMode:[B

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->finishCurrentGattOperation()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    const-string p2, "hidapi"

    .line 14
    .line 15
    const-string v0, "onServicesDiscovered returned zero services; something has gone horribly wrong down in Android\'s Bluetooth stack."

    .line 16
    .line 17
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsReconnecting:Z

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt(Z)Landroid/bluetooth/BluetoothGatt;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public open()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public readCharacteristic(Ljava/util/UUID;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->readCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public reconnect()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->getConnectionState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->connectGatt()Landroid/bluetooth/BluetoothGatt;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public sendFeatureReport([B)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string p1, "hidapi"

    .line 8
    .line 9
    const-string v0, "Attempted sendFeatureReport before Steam Controller is registered!"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_1
    array-length v0, p1

    .line 24
    const/4 v1, 0x1

    .line 25
    sub-int/2addr v0, v1

    .line 26
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->writeCharacteristic(Ljava/util/UUID;[B)V

    .line 33
    .line 34
    .line 35
    array-length p1, p1

    .line 36
    return p1
.end method

.method public sendOutputReport([B)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->isRegistered()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string p1, "hidapi"

    .line 8
    .line 9
    const-string v0, "Attempted sendOutputReport before Steam Controller is registered!"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-direct {p0, p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->probeService(Lorg/libsdl/app/HIDDeviceBLESteamController;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_1
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController;->reportCharacteristic:Ljava/util/UUID;

    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->writeCharacteristic(Ljava/util/UUID;[B)V

    .line 26
    .line 27
    .line 28
    array-length p1, p1

    .line 29
    return p1
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mFrozen:Z

    .line 2
    .line 3
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceBLESteamController;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 16
    .line 17
    :cond_0
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsRegistered:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mIsConnected:Z

    .line 23
    .line 24
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mOperations:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public writeCharacteristic(Ljava/util/UUID;[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;[B)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController;->queueGattOperation(Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
