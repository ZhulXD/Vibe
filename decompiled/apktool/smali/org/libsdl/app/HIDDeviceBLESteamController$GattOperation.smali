.class Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libsdl/app/HIDDeviceBLESteamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GattOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;
    }
.end annotation


# instance fields
.field mGatt:Landroid/bluetooth/BluetoothGatt;

.field mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

.field mResult:Z

.field mUuid:Ljava/util/UUID;

.field mValue:[B


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 3
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 4
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 5
    iput-object p3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;[B)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 8
    iput-object p1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 9
    iput-object p2, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 10
    iput-object p3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 11
    iput-object p4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mValue:[B

    return-void
.end method

.method public static enableNotification(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    .locals 2

    .line 1
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 2
    .line 3
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->ENABLE_NOTIFICATION:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method private getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController;->steamControllerService:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public static readCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    .locals 2

    .line 1
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 2
    .line 3
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_READ:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;[B)Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;
    .locals 2

    .line 1
    new-instance v0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;

    .line 2
    .line 3
    sget-object v1, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;->CHR_WRITE:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1, p2}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;-><init>(Landroid/bluetooth/BluetoothGatt;Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;Ljava/util/UUID;[B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public finish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 8

    .line 1
    sget-object v0, Lorg/libsdl/app/HIDDeviceBLESteamController$4;->$SwitchMap$org$libsdl$app$HIDDeviceBLESteamController$GattOperation$Operation:[I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mOp:Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation$Operation;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "hidapi"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v0, v3, :cond_7

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-eq v0, v4, :cond_5

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    if-eq v0, v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 25
    .line 26
    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    const-string v4, "00002902-0000-1000-8000-00805f9b34fb"

    .line 33
    .line 34
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    and-int/lit8 v6, v5, 0x10

    .line 49
    .line 50
    const/16 v7, 0x10

    .line 51
    .line 52
    if-ne v6, v7, :cond_1

    .line 53
    .line 54
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/16 v6, 0x20

    .line 58
    .line 59
    and-int/2addr v5, v6

    .line 60
    if-ne v5, v6, :cond_3

    .line 61
    .line 62
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    .line 63
    .line 64
    :goto_0
    iget-object v6, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 65
    .line 66
    invoke-virtual {v6, v0, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v3, "Unable to write descriptor "

    .line 83
    .line 84
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    iput-boolean v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 107
    .line 108
    return-void

    .line 109
    :cond_3
    const-string v0, "Unable to start notifications on input characteristic"

    .line 110
    .line 111
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 115
    .line 116
    :cond_4
    :goto_1
    return-void

    .line 117
    :cond_5
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 118
    .line 119
    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mValue:[B

    .line 124
    .line 125
    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 129
    .line 130
    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v3, "Unable to write characteristic "

    .line 139
    .line 140
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 160
    .line 161
    return-void

    .line 162
    :cond_6
    iput-boolean v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 163
    .line 164
    return-void

    .line 165
    :cond_7
    iget-object v0, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 166
    .line 167
    invoke-direct {p0, v0}, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v4, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 172
    .line 173
    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_8

    .line 178
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string v3, "Unable to read characteristic "

    .line 182
    .line 183
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mUuid:Ljava/util/UUID;

    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    iput-boolean v1, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 203
    .line 204
    return-void

    .line 205
    :cond_8
    iput-boolean v3, p0, Lorg/libsdl/app/HIDDeviceBLESteamController$GattOperation;->mResult:Z

    .line 206
    .line 207
    return-void
.end method
