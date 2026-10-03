.class public abstract Lorg/godotengine/godot/io/file/DataAccess;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/DataAccess$Companion;,
        Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008 \u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0013\u001a\u00020\u000fH&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H&J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/DataAccess;",
        "",
        "<init>",
        "()V",
        "endOfFile",
        "",
        "getEndOfFile$lib_templateRelease",
        "()Z",
        "setEndOfFile$lib_templateRelease",
        "(Z)V",
        "close",
        "",
        "flush",
        "seek",
        "position",
        "",
        "resize",
        "Lorg/godotengine/godot/error/Error;",
        "length",
        "size",
        "read",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "write",
        "seekFromEnd",
        "positionFromEnd",
        "Companion",
        "FileChannelDataAccess",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private endOfFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/DataAccess$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/file/DataAccess;->Companion:Lorg/godotengine/godot/io/file/DataAccess$Companion;

    .line 8
    .line 9
    const-string v0, "DataAccess"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/io/file/DataAccess;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    return-void
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

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/DataAccess;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract flush()V
.end method

.method public final getEndOfFile$lib_templateRelease()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/godotengine/godot/io/file/DataAccess;->endOfFile:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract position()J
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)I
.end method

.method public abstract resize(J)Lorg/godotengine/godot/error/Error;
.end method

.method public abstract seek(J)V
.end method

.method public final seekFromEnd(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/DataAccess;->size()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    cmp-long p1, v0, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lorg/godotengine/godot/io/file/DataAccess;->seek(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final setEndOfFile$lib_templateRelease(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/godotengine/godot/io/file/DataAccess;->endOfFile:Z

    .line 2
    .line 3
    return-void
.end method

.method public abstract size()J
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)Z
.end method
