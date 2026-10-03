.class Lorg/libsdl/app/HIDDeviceUSB;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lorg/libsdl/app/HIDDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceUSB$InputThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hidapi"


# instance fields
.field protected mConnection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected mDevice:Landroid/hardware/usb/UsbDevice;

.field protected mDeviceId:I

.field protected mFrozen:Z

.field protected mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

.field protected mInterface:I

.field protected mInterfaceIndex:I

.field protected mManager:Lorg/libsdl/app/HIDDeviceManager;

.field protected mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected mRunning:Z


# direct methods
.method public constructor <init>(Lorg/libsdl/app/HIDDeviceManager;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 7
    .line 8
    iput p3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterface:I

    .line 19
    .line 20
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getIdentifier()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lorg/libsdl/app/HIDDeviceManager;->getDeviceIDForIdentifier(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    .line 3
    .line 4
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 35
    .line 36
    iget v2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public getDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getManufacturerName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "(0x"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getVendorId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "%x"

    .line 43
    .line 44
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, "/0x"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductId()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ")"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public getFeatureReport([B)Z
    .locals 13

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    aget-byte v2, p1, v1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    move v11, v0

    .line 11
    move v0, v3

    .line 12
    :goto_0
    move v10, v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    move v11, v0

    .line 15
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 18
    .line 19
    or-int/lit16 v7, v2, 0x300

    .line 20
    .line 21
    iget v8, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterface:I

    .line 22
    .line 23
    const/16 v12, 0x3e8

    .line 24
    .line 25
    const/16 v5, 0xa1

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    move-object v9, p1

    .line 29
    invoke-virtual/range {v4 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-gez p1, :cond_1

    .line 34
    .line 35
    const-string v0, "getFeatureReport() returned "

    .line 36
    .line 37
    const-string v2, " on device "

    .line 38
    .line 39
    invoke-static {p1, v0, v2}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "hidapi"

    .line 55
    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_1
    if-eqz v0, :cond_2

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    add-int/lit8 v11, v11, 0x1

    .line 65
    .line 66
    :cond_2
    if-ne p1, v11, :cond_3

    .line 67
    .line 68
    move-object p1, v9

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-static {v9, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_2
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 75
    .line 76
    iget v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    .line 77
    .line 78
    invoke-virtual {v0, v1, p1}, Lorg/libsdl/app/HIDDeviceManager;->HIDDeviceFeatureReport(I[B)V

    .line 79
    .line 80
    .line 81
    return v3
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDeviceId:I

    .line 2
    .line 3
    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    .line 28
    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "%s/%x/%x/%d"

    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getVendorId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "%x"

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getProductId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "%x"

    .line 22
    .line 23
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public getVendorId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public open()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/libsdl/app/HIDDeviceManager;->getUSBManager()Landroid/hardware/usb/UsbManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 14
    .line 15
    const-string v1, "hidapi"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Unable to open USB device "

    .line 23
    .line 24
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 43
    .line 44
    iget v3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterfaceIndex:I

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v3, v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "Failed to claim interfaces on USB device "

    .line 62
    .line 63
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->close()V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :cond_1
    move v3, v2

    .line 85
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-ge v3, v5, :cond_5

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    const/16 v7, 0x80

    .line 102
    .line 103
    if-eq v6, v7, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 107
    .line 108
    if-nez v6, :cond_4

    .line 109
    .line 110
    iput-object v5, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 114
    .line 115
    if-nez v6, :cond_4

    .line 116
    .line 117
    iput-object v5, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 118
    .line 119
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 123
    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 127
    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    iput-boolean v4, p0, Lorg/libsdl/app/HIDDeviceUSB;->mRunning:Z

    .line 132
    .line 133
    new-instance v0, Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lorg/libsdl/app/HIDDeviceUSB$InputThread;-><init>(Lorg/libsdl/app/HIDDeviceUSB;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInputThread:Lorg/libsdl/app/HIDDeviceUSB$InputThread;

    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    .line 142
    .line 143
    return v4

    .line 144
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v3, "Missing required endpoint on USB device "

    .line 147
    .line 148
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->close()V

    .line 166
    .line 167
    .line 168
    return v2
.end method

.method public sendFeatureReport([B)I
    .locals 13

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    aget-byte v2, p1, v1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    move v1, v3

    .line 11
    :cond_0
    move v11, v0

    .line 12
    move v10, v1

    .line 13
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 14
    .line 15
    or-int/lit16 v7, v2, 0x300

    .line 16
    .line 17
    iget v8, p0, Lorg/libsdl/app/HIDDeviceUSB;->mInterface:I

    .line 18
    .line 19
    const/16 v12, 0x3e8

    .line 20
    .line 21
    const/16 v5, 0x21

    .line 22
    .line 23
    const/16 v6, 0x9

    .line 24
    .line 25
    move-object v9, p1

    .line 26
    invoke-virtual/range {v4 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BIII)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-gez p1, :cond_1

    .line 31
    .line 32
    const-string v0, "sendFeatureReport() returned "

    .line 33
    .line 34
    const-string v1, " on device "

    .line 35
    .line 36
    invoke-static {p1, v0, v1}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "hidapi"

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    return p1

    .line 58
    :cond_1
    if-eqz v1, :cond_2

    .line 59
    .line 60
    add-int/2addr v11, v3

    .line 61
    :cond_2
    return v11
.end method

.method public sendOutputReport([B)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mOutputEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 4
    .line 5
    array-length v2, p1

    .line 6
    const/16 v3, 0x3e8

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    array-length p1, p1

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    const-string p1, "sendOutputReport() returned "

    .line 16
    .line 17
    const-string v1, " on device "

    .line 18
    .line 19
    invoke-static {v0, p1, v1}, LE/b;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->getDeviceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "hidapi"

    .line 35
    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    return v0
.end method

.method public setFrozen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/libsdl/app/HIDDeviceUSB;->mFrozen:Z

    .line 2
    .line 3
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/libsdl/app/HIDDeviceUSB;->close()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/libsdl/app/HIDDeviceUSB;->mManager:Lorg/libsdl/app/HIDDeviceManager;

    .line 6
    .line 7
    return-void
.end method
