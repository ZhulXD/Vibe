.class public Lorg/tvp/kirikiri2/MediaStoreHack;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field private static final ALBUM_ART_URI:Ljava/lang/String; = "content://media/external/audio/albumart"

.field private static final ALBUM_PROJECTION:[Ljava/lang/String;

.field private static final temptrack_mp3:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "album_id"

    .line 2
    .line 3
    const-string v1, "media_type"

    .line 4
    .line 5
    const-string v2, "_id"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/tvp/kirikiri2/MediaStoreHack;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0xe16

    .line 14
    .line 15
    new-array v0, v0, [B

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    sput-object v0, Lorg/tvp/kirikiri2/MediaStoreHack;->temptrack_mp3:[B

    .line 21
    .line 22
    return-void

    .line 23
    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x41t
        0x54t
        0x50t
        0x45t
        0x31t
        0x0t
        0x0t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x7bt
        0x4dt
        0x65t
        0x64t
        0x69t
        0x61t
        0x57t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x57t
        0x6ft
        0x72t
        0x6bt
        0x61t
        0x72t
        0x6ft
        0x75t
        0x6et
        0x64t
        0x7dt
        0x54t
        0x41t
        0x4ct
        0x42t
        0x0t
        0x0t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x7bt
        0x4dt
        0x65t
        0x64t
        0x69t
        0x61t
        0x57t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x57t
        0x6ft
        0x72t
        0x6bt
        0x61t
        0x72t
        0x6ft
        0x75t
        0x6et
        0x64t
        0x7dt
        0x54t
        0x49t
        0x54t
        0x32t
        0x0t
        0x0t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x7bt
        0x4dt
        0x65t
        0x64t
        0x69t
        0x61t
        0x57t
        0x72t
        0x69t
        0x74t
        0x65t
        0x20t
        0x57t
        0x6ft
        0x72t
        0x6bt
        0x61t
        0x72t
        0x6ft
        0x75t
        0x6et
        0x64t
        0x7dt
        0x41t
        0x50t
        0x49t
        0x43t
        0x0t
        0x0t
        0x2t
        0x21t
        0x0t
        0x0t
        0x0t
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x70t
        0x6et
        0x67t
        0x0t
        0x3t
        0x0t
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
        0x0t
        0x0t
        0x0t
        0xdt
        0x49t
        0x48t
        0x44t
        0x52t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x20t
        0x8t
        0x2t
        0x0t
        0x0t
        0x0t
        -0x4t
        0x18t
        -0x13t
        -0x5dt
        0x0t
        0x0t
        0x0t
        0x1t
        0x73t
        0x52t
        0x47t
        0x42t
        0x0t
        -0x52t
        -0x32t
        0x1ct
        -0x17t
        0x0t
        0x0t
        0x0t
        -0x32t
        0x49t
        0x44t
        0x41t
        0x54t
        0x48t
        -0x39t
        -0x13t
        0x55t
        -0x37t
        0xat
        -0x80t
        0x40t
        0x8t
        0x4dt
        -0x1t
        -0x1t
        -0x61t
        -0x13t
        0x30t
        0x24t
        -0x1et
        0x3et
        0x53t
        -0x4ct
        0x40t
        0x1et
        0x42t
        -0x3bt
        -0x34t
        0x7ct
        0x4ft
        -0x23t
        -0x4at
        0x5ft
        -0x22t
        0x26t
        0x44t
        0x44t
        0x44t
        0x52t
        0x51t
        -0x2t
        -0x5ft
        -0x45t
        0x4et
        0x19t
        0x1ft
        0x66t
        0x57t
        -0x46t
        0x7ct
        0x46t
        -0x2t
        0x28t
        0x72t
        0x8t
        0x4at
        0x3t
        0x0t
        -0x16t
        0x2at
        0x4ct
        0x4dt
        0x0t
        -0x70t
        0x4t
        -0x60t
        -0x4et
        0x3bt
        -0x21t
        -0x70t
        0x1t
        0x65t
        0x3ct
        0x5at
        0x0t
        -0x48t
        0x22t
        -0x2at
        0x47t
        0x16t
        0x4et
        0x14t
        -0x6bt
        0x5ct
        -0x2t
        -0x33t
        0x2dt
        0x14t
        -0x4et
        0x60t
        0x2at
        -0xet
        -0x30t
        0x21t
        0x4at
        -0x11t
        0x62t
        0x60t
        0x45t
        0x75t
        -0x67t
        -0x65t
        -0x3at
        -0x1at
        0x1ct
        -0x38t
        -0x6at
        0x6at
        0x79t
        0x67t
        0x4bt
        0x46t
        -0x60t
        0xbt
        0x54t
        -0x61t
        0x27t
        0x25t
        -0x56t
        -0x18t
        -0x42t
        -0x30t
        0x27t
        0x43t
        0x6bt
        -0x80t
        -0x61t
        0x64t
        0x51t
        -0x4et
        0x79t
        0x3at
        0x0t
        -0x2ct
        0x2ct
        0x52t
        -0x70t
        0x2ct
        -0x14t
        0x12t
        -0x64t
        0x22t
        -0x7at
        0x3bt
        -0x19t
        0x39t
        0xct
        0x35t
        -0x75t
        -0x5et
        -0x67t
        0x60t
        0x3dt
        0x1ft
        -0x7bt
        -0x7et
        0x45t
        0x23t
        -0x35t
        -0x2dt
        0x1bt
        0x66t
        -0x73t
        0x48t
        -0xat
        -0x5et
        0x25t
        -0x79t
        -0x38t
        0x3dt
        -0x7et
        -0x2t
        -0x46t
        0x76t
        -0x45t
        -0x64t
        0x0t
        -0x5dt
        -0x64t
        0x36t
        0xct
        -0x31t
        0x5ct
        -0x55t
        -0x17t
        -0x7dt
        0x33t
        0x7bt
        -0x53t
        0x3at
        -0x15t
        0x8t
        0x3bt
        -0x2ft
        -0x6et
        0x4bt
        0x39t
        -0x51t
        -0x42t
        0x46t
        -0x47t
        0x5ft
        0x2et
        -0x6ft
        0x1dt
        -0x49t
        0x43t
        0x1ft
        -0x65t
        0x7at
        -0x5dt
        -0x51t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
        0x54t
        0x44t
        0x54t
        0x47t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x34t
        0x2dt
        0x30t
        0x34t
        0x2dt
        0x30t
        0x31t
        0x54t
        0x32t
        0x31t
        0x3at
        0x33t
        0x39t
        0x3at
        0x33t
        0x35t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x6t
        -0x70t
        -0x40t
        0x5ft
        -0x55t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        -0x5ct
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x34t
        -0x7dt
        -0x80t
        0x0t
        0x0t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x33t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x33t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        -0x1t
        -0x6t
        -0x6et
        -0x40t
        -0x1at
        -0x61t
        -0x3bt
        0x3t
        -0x40t
        0x0t
        0x1t
        -0x5ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x34t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x33t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        -0x1t
        -0x6t
        -0x6et
        -0x40t
        -0x6t
        -0x22t
        -0x1t
        -0x7dt
        -0x40t
        0x0t
        0x1t
        -0x5ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x34t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x33t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        -0x1t
        -0x6t
        -0x6et
        -0x40t
        -0x6t
        -0x22t
        -0x1t
        -0x7dt
        -0x40t
        0x0t
        0x1t
        -0x5ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x34t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x33t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        -0x1t
        -0x6t
        -0x6et
        -0x40t
        -0x6t
        -0x22t
        -0x1t
        -0x7dt
        -0x40t
        0x0t
        0x1t
        -0x5ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x34t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x4ct
        0x41t
        0x4dt
        0x45t
        0x33t
        0x2et
        0x39t
        0x33t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        -0x1t
        -0x6t
        -0x6et
        -0x40t
        -0x6t
        -0x22t
        -0x1t
        -0x7dt
        -0x40t
        0x0t
        0x1t
        -0x5ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x34t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
        0x55t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "external"

    .line 14
    .line 15
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "_data=?"

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance v3, Landroid/content/ContentValues;

    .line 31
    .line 32
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "_data"

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    xor-int/lit8 p0, p0, 0x1

    .line 57
    .line 58
    return p0
.end method

.method private static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static getInputStream(Landroid/content/Context;Ljava/io/File;J)Ljava/io/InputStream;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "external"

    .line 14
    .line 15
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "_data=?"

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    new-instance v0, Landroid/content/ContentValues;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "_data"

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "_size"

    .line 39
    .line 40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    return-object p0

    .line 56
    :catchall_0
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static getOutputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->getUriFromFile(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method private static getTemporaryAlbumId(Landroid/content/Context;)I
    .locals 11

    .line 1
    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->installTemporaryTrack(Landroid/content/Context;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const-string v2, "external"

    .line 7
    .line 8
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    filled-new-array {v2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v5, Lorg/tvp/kirikiri2/MediaStoreHack;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 25
    .line 26
    const-string v6, "_data=?"

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    .line 43
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance p0, Landroid/content/ContentValues;

    .line 47
    .line 48
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "_data"

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {p0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "title"

    .line 61
    .line 62
    const-string v6, "{MediaWrite Workaround}"

    .line 63
    .line 64
    invoke-virtual {p0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v2, "_size"

    .line 76
    .line 77
    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "mime_type"

    .line 81
    .line 82
    const-string v2, "audio/mpeg"

    .line 83
    .line 84
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v0, "is_music"

    .line 88
    .line 89
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {p0, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v4, p0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 95
    .line 96
    .line 97
    :cond_2
    const-string v6, "_data=?"

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-nez p0, :cond_3

    .line 105
    .line 106
    return v1

    .line 107
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const/4 v2, 0x1

    .line 122
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    const/4 v8, 0x2

    .line 127
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 132
    .line 133
    .line 134
    new-instance p0, Landroid/content/ContentValues;

    .line 135
    .line 136
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .line 138
    .line 139
    if-nez v6, :cond_5

    .line 140
    .line 141
    const v6, 0xcc07c9

    .line 142
    .line 143
    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const-string v10, "album_id"

    .line 149
    .line 150
    invoke-virtual {p0, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    .line 152
    .line 153
    move v6, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_5
    move v6, v1

    .line 156
    :goto_0
    if-eq v9, v8, :cond_6

    .line 157
    .line 158
    const-string v6, "media_type"

    .line 159
    .line 160
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {p0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    .line 166
    .line 167
    move v6, v2

    .line 168
    :cond_6
    if-eqz v6, :cond_7

    .line 169
    .line 170
    const-string v6, "_id="

    .line 171
    .line 172
    invoke-static {v0, v6}, LE/b;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    const/4 v6, 0x0

    .line 177
    invoke-virtual {v3, v4, p0, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    :cond_7
    const-string v6, "_data=?"

    .line 181
    .line 182
    const/4 v8, 0x0

    .line 183
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    if-nez p0, :cond_8

    .line 188
    .line 189
    return v1

    .line 190
    :cond_8
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 191
    .line 192
    .line 193
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-nez v0, :cond_9

    .line 195
    .line 196
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 197
    .line 198
    .line 199
    return v1

    .line 200
    :cond_9
    :try_start_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 201
    .line 202
    .line 203
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 205
    .line 206
    .line 207
    return v0

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    move-object p0, v0

    .line 215
    const-string v0, "MediaFile"

    .line 216
    .line 217
    const-string v2, "Error installing tempory track."

    .line 218
    .line 219
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .line 221
    .line 222
    return v1
.end method

.method public static getUriFromFile(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string p1, "external"

    .line 6
    .line 7
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v6, "_id"

    .line 12
    .line 13
    filled-new-array {v6}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {p0}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "date_added desc"

    .line 22
    .line 23
    const-string v3, "_data = ?"

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 39
    .line 40
    .line 41
    new-instance v1, Landroid/content/ContentValues;

    .line 42
    .line 43
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "_data"

    .line 47
    .line 48
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_0
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 89
    .line 90
    .line 91
    return-object p0
.end method

.method private static installTemporaryTrack(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "temptrack.mp3"

    .line 12
    .line 13
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    sget-object v0, Lorg/tvp/kirikiri2/MediaStoreHack;->temptrack_mp3:[B

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    move-object v3, v0

    .line 34
    move-object v0, p0

    .line 35
    move-object p0, v3

    .line 36
    :goto_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public static mkdir(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    const-string v1, ".MediaWriteTemp"

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->getTemporaryAlbumId(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "content://media/external/audio/albumart/"

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Landroid/content/ContentValues;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "_data"

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-virtual {v4, v2, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    const-string v5, "album_id"

    .line 71
    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "content://media/external/audio/albumart"

    .line 80
    .line 81
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v4, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    :cond_1
    :try_start_0
    const-string v1, "r"

    .line 89
    .line 90
    invoke-virtual {v4, v2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0}, Lorg/tvp/kirikiri2/MediaStoreHack;->delete(Landroid/content/Context;Ljava/io/File;)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    invoke-static {p0, v0}, Lorg/tvp/kirikiri2/MediaStoreHack;->delete(Landroid/content/Context;Ljava/io/File;)Z

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 111
    .line 112
    const-string p1, "Failed to create temporary album id."

    .line 113
    .line 114
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p0
.end method

.method public static mkfile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lorg/tvp/kirikiri2/MediaStoreHack;->getOutputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :catch_0
    return p1
.end method
