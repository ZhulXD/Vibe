.class public final Lorg/godotengine/godot/io/StorageScope$Identifier;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/io/StorageScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/godotengine/godot/io/StorageScope$Identifier;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "internalAppDir",
        "",
        "internalCacheDir",
        "externalAppDir",
        "obbDir",
        "sharedDir",
        "downloadsSharedDir",
        "documentsSharedDir",
        "canAccess",
        "",
        "path",
        "identifyStorageScope",
        "Lorg/godotengine/godot/io/StorageScope;",
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
.field public static final ACCESS_RESOURCES_PREFIX:Ljava/lang/String; = "res://"

.field public static final ASSETS_PREFIX:Ljava/lang/String; = "assets://"

.field public static final CONTENT_PREFIX:Ljava/lang/String; = "content://"

.field public static final Companion:Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;


# instance fields
.field private final documentsSharedDir:Ljava/lang/String;

.field private final downloadsSharedDir:Ljava/lang/String;

.field private final externalAppDir:Ljava/lang/String;

.field private final internalAppDir:Ljava/lang/String;

.field private final internalCacheDir:Ljava/lang/String;

.field private final obbDir:Ljava/lang/String;

.field private final sharedDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/io/StorageScope$Identifier;->Companion:Lorg/godotengine/godot/io/StorageScope$Identifier$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalAppDir:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalCacheDir:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v0

    .line 42
    :goto_0
    iput-object v1, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->externalAppDir:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    iput-object v0, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->obbDir:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->sharedDir:Ljava/lang/String;

    .line 65
    .line 66
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->downloadsSharedDir:Ljava/lang/String;

    .line 77
    .line 78
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->documentsSharedDir:Ljava/lang/String;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final canAccess(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/godotengine/godot/io/StorageScope$Identifier;->identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lorg/godotengine/godot/io/StorageScope;->SHARED:Lorg/godotengine/godot/io/StorageScope;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public final identifyStorageScope(Ljava/lang/String;)Lorg/godotengine/godot/io/StorageScope;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    const-string v0, "assets://"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    sget-object v0, Lorg/godotengine/godot/Godot;->Companion:Lorg/godotengine/godot/Godot$Companion;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/godotengine/godot/Godot$Companion;->isTemplateBuild$lib_templateRelease()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v0, "res://"

    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->ASSETS:Lorg/godotengine/godot/io/StorageScope;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    const-string v0, "content://"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->SAF:Lorg/godotengine/godot/io/StorageScope;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    new-instance v0, Ljava/io/File;

    .line 59
    .line 60
    invoke-static {}, Lorg/godotengine/godot/GodotLib;->getProjectResourceDir()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v1, 0x1e

    .line 79
    .line 80
    if-lt p1, v1, :cond_5

    .line 81
    .line 82
    invoke-static {}, Landroidx/core/view/o;->o()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_5

    .line 87
    .line 88
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalAppDir:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v2, :cond_6

    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalAppDir:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_6
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalCacheDir:Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->internalCacheDir:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_7
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->externalAppDir:Ljava/lang/String;

    .line 132
    .line 133
    if-eqz v2, :cond_8

    .line 134
    .line 135
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->externalAppDir:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_8

    .line 145
    .line 146
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 147
    .line 148
    return-object p1

    .line 149
    :cond_8
    const-string v2, "ANDROID_ROOT"

    .line 150
    .line 151
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 167
    .line 168
    return-object p1

    .line 169
    :cond_9
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->obbDir:Ljava/lang/String;

    .line 170
    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->obbDir:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_a

    .line 183
    .line 184
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 185
    .line 186
    return-object p1

    .line 187
    :cond_a
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->sharedDir:Ljava/lang/String;

    .line 188
    .line 189
    if-eqz v2, :cond_f

    .line 190
    .line 191
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->sharedDir:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_f

    .line 201
    .line 202
    if-ge p1, v1, :cond_b

    .line 203
    .line 204
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 205
    .line 206
    return-object p1

    .line 207
    :cond_b
    iget-object p1, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->downloadsSharedDir:Ljava/lang/String;

    .line 208
    .line 209
    if-eqz p1, :cond_c

    .line 210
    .line 211
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-nez p1, :cond_d

    .line 216
    .line 217
    :cond_c
    iget-object p1, p0, Lorg/godotengine/godot/io/StorageScope$Identifier;->documentsSharedDir:Ljava/lang/String;

    .line 218
    .line 219
    if-eqz p1, :cond_e

    .line 220
    .line 221
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_e

    .line 226
    .line 227
    :cond_d
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->APP:Lorg/godotengine/godot/io/StorageScope;

    .line 228
    .line 229
    return-object p1

    .line 230
    :cond_e
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->SHARED:Lorg/godotengine/godot/io/StorageScope;

    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_f
    sget-object p1, Lorg/godotengine/godot/io/StorageScope;->UNKNOWN:Lorg/godotengine/godot/io/StorageScope;

    .line 234
    .line 235
    return-object p1
.end method
