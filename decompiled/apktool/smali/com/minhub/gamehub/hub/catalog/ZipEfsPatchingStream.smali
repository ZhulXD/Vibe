.class final Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;",
        "Ljava/io/FilterInputStream;",
        "source",
        "Ljava/io/InputStream;",
        "<init>",
        "(Ljava/io/InputStream;)V",
        "state",
        "",
        "read",
        "buf",
        "",
        "off",
        "len",
        "patch",
        "b",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final patch(I)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;->state:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x50

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_2

    .line 11
    :pswitch_0
    and-int/lit16 p1, p1, 0xf7

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :pswitch_1
    const/4 v3, 0x7

    .line 15
    goto :goto_2

    .line 16
    :pswitch_2
    const/4 v3, 0x6

    .line 17
    goto :goto_2

    .line 18
    :pswitch_3
    const/4 v3, 0x5

    .line 19
    goto :goto_2

    .line 20
    :pswitch_4
    const/4 v0, 0x4

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    if-eq p1, v2, :cond_2

    .line 24
    .line 25
    :cond_0
    :goto_0
    move v1, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v1, v0

    .line 28
    :cond_2
    :goto_1
    move v3, v1

    .line 29
    goto :goto_2

    .line 30
    :pswitch_5
    const/4 v0, 0x3

    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    if-eq p1, v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_6
    const/16 v0, 0x4b

    .line 37
    .line 38
    if-eq p1, v0, :cond_3

    .line 39
    .line 40
    if-eq p1, v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v1, 0x2

    .line 44
    goto :goto_1

    .line 45
    :pswitch_7
    if-ne p1, v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_2
    iput v3, p0, Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;->state:I

    .line 49
    .line 50
    return p1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;->patch(I)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    const-string v0, "buf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-gtz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    .line 4
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lcom/minhub/gamehub/hub/catalog/ZipEfsPatchingStream;->patch(I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p3
.end method
