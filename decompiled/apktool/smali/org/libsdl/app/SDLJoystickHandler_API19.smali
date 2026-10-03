.class Lorg/libsdl/app/SDLJoystickHandler_API19;
.super Lorg/libsdl/app/SDLJoystickHandler_API16;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/libsdl/app/SDLJoystickHandler_API16;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getButtonMask(Landroid/view/InputDevice;)I
    .locals 5

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    new-array v2, v0, [I

    .line 9
    .line 10
    fill-array-data v2, :array_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/InputDevice;->hasKeys([I)[Z

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    move v3, v1

    .line 19
    :goto_0
    if-ge v1, v0, :cond_1

    .line 20
    .line 21
    aget-boolean v4, p1, v1

    .line 22
    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    aget v4, v2, v1

    .line 26
    .line 27
    or-int/2addr v3, v4

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v3

    .line 32
    nop

    :array_0
    .array-data 4
        0x60
        0x61
        0x63
        0x64
        0x4
        0x52
        0x6e
        0x6c
        0x6a
        0x6b
        0x66
        0x67
        0x13
        0x14
        0x15
        0x16
        0x6d
        0x17
        0x68
        0x69
        0x62
        0x65
        0xbc
        0xbd
        0xbe
        0xbf
        0xc0
        0xc1
        0xc2
        0xc3
        0xc4
        0xc5
        0xc6
        0xc7
        0xc8
        0xc9
        0xca
        0xcb
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x40
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x10
        0x1
        0x8000
        0x10000
        0x20000
        0x40000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getProductId(Landroid/view/InputDevice;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/InputDevice;->getProductId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getVendorId(Landroid/view/InputDevice;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/InputDevice;->getVendorId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
