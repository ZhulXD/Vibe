.class public final Lorg/godotengine/godot/io/file/MediaStoreData;
.super Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/file/MediaStoreData$Companion;,
        Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;,
        Lorg/godotengine/godot/io/file/MediaStoreData$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 \u00172\u00020\u0001:\u0002\u0016\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/godotengine/godot/io/file/MediaStoreData;",
        "Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;",
        "context",
        "Landroid/content/Context;",
        "filePath",
        "",
        "accessFlag",
        "Lorg/godotengine/godot/io/file/FileAccessFlags;",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V",
        "id",
        "",
        "uri",
        "Landroid/net/Uri;",
        "fileChannel",
        "Ljava/nio/channels/FileChannel;",
        "getFileChannel$lib_templateRelease",
        "()Ljava/nio/channels/FileChannel;",
        "parcelFileDescriptor",
        "Landroid/os/ParcelFileDescriptor;",
        "close",
        "",
        "DataItem",
        "Companion",
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
.field private static final COLLECTION:Landroid/net/Uri;

.field public static final Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_BY_ID:Ljava/lang/String; = "_id = ? "

.field private static final SELECTION_BY_PATH:Ljava/lang/String; = "_display_name = ?  AND relative_path = ?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fileChannel:Ljava/nio/channels/FileChannel;

.field private final filePath:Ljava/lang/String;

.field private final id:J

.field private final parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    .line 8
    .line 9
    const-string v0, "MediaStoreData"

    .line 10
    .line 11
    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "external_primary"

    .line 14
    .line 15
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->COLLECTION:Landroid/net/Uri;

    .line 20
    .line 21
    const-string v5, "date_modified"

    .line 22
    .line 23
    const-string v6, "media_type"

    .line 24
    .line 25
    const-string v1, "_id"

    .line 26
    .line 27
    const-string v2, "_display_name"

    .line 28
    .line 29
    const-string v3, "relative_path"

    .line 30
    .line 31
    const-string v4, "_size"

    .line 32
    .line 33
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->PROJECTION:[Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V
    .locals 7

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "filePath"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "accessFlag"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2}, Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->filePath:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lorg/godotengine/godot/io/file/MediaStoreData;->Companion:Lorg/godotengine/godot/io/file/MediaStoreData$Companion;

    .line 26
    .line 27
    invoke-static {v1, p1, p2}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->access$queryByPath(Lorg/godotengine/godot/io/file/MediaStoreData$Companion;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lorg/godotengine/godot/io/file/MediaStoreData$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 32
    .line 33
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    aget v3, v3, v4

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    const-string v5, "Unable to access file "

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eq v3, v4, :cond_4

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    if-eq v3, v4, :cond_1

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v4, :cond_1

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    if-ne v3, v4, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 56
    .line 57
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-static {v1, p1, p2}, Lorg/godotengine/godot/io/file/MediaStoreData$Companion;->access$addFile(Lorg/godotengine/godot/io/file/MediaStoreData$Companion;Landroid/content/Context;Ljava/lang/String;)Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 77
    .line 78
    :goto_1
    if-eqz p1, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 82
    .line 83
    invoke-static {v5, p2}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_8

    .line 96
    .line 97
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;

    .line 102
    .line 103
    :goto_2
    invoke-virtual {p1}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->getId()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    iput-wide v1, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->id:J

    .line 108
    .line 109
    invoke-virtual {p1}, Lorg/godotengine/godot/io/file/MediaStoreData$DataItem;->getUri()Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->uri:Landroid/net/Uri;

    .line 114
    .line 115
    invoke-virtual {p3}, Lorg/godotengine/godot/io/file/FileAccessFlags;->getMode()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    iput-object p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 126
    .line 127
    sget-object p2, Lorg/godotengine/godot/io/file/FileAccessFlags;->READ:Lorg/godotengine/godot/io/file/FileAccessFlags;

    .line 128
    .line 129
    if-ne p3, p2, :cond_5

    .line 130
    .line 131
    new-instance p2, Ljava/io/FileInputStream;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    new-instance p2, Ljava/io/FileOutputStream;

    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    :goto_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    iput-object p1, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 162
    .line 163
    invoke-virtual {p3}, Lorg/godotengine/godot/io/file/FileAccessFlags;->shouldTruncate()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/MediaStoreData;->getFileChannel$lib_templateRelease()Ljava/nio/channels/FileChannel;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-wide/16 p2, 0x0

    .line 174
    .line 175
    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 176
    .line 177
    .line 178
    :cond_6
    return-void

    .line 179
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string p2, "Unable to access file descriptor"

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1

    .line 187
    :cond_8
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 188
    .line 189
    invoke-static {v5, p2}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public static final synthetic access$getCOLLECTION$cp()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->COLLECTION:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPROJECTION$cp()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/godotengine/godot/io/file/MediaStoreData;->PROJECTION:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 1
    const-string v0, "Exception when closing ParcelFileDescriptor for "

    .line 2
    .line 3
    const-string v1, "."

    .line 4
    .line 5
    const-string v2, "Exception when closing file "

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lorg/godotengine/godot/io/file/MediaStoreData;->getFileChannel$lib_templateRelease()Ljava/nio/channels/FileChannel;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception v2

    .line 21
    sget-object v3, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v4, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->filePath:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    goto :goto_2

    .line 46
    :catch_1
    move-exception v3

    .line 47
    :try_start_2
    sget-object v4, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v5, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->filePath:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v4, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    :try_start_3
    iget-object v2, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 70
    .line 71
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_2
    move-exception v2

    .line 76
    sget-object v3, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v4, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->filePath:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_1
    return-void

    .line 87
    :goto_2
    :try_start_4
    iget-object v3, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :catch_3
    move-exception v3

    .line 94
    sget-object v4, Lorg/godotengine/godot/io/file/MediaStoreData;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    iget-object v5, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->filePath:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .line 115
    .line 116
    :goto_3
    throw v2
.end method

.method public getFileChannel$lib_templateRelease()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/io/file/MediaStoreData;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 2
    .line 3
    return-object v0
.end method
