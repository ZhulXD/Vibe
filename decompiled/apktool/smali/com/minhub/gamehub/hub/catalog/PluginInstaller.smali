.class public final Lcom/minhub/gamehub/hub/catalog/PluginInstaller;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J\"\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/PluginInstaller;",
        "",
        "<init>",
        "()V",
        "install",
        "Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;",
        "gameRoot",
        "Ljava/io/File;",
        "item",
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;",
        "workDir",
        "applyManifest",
        "",
        "extractDir",
        "manifest",
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;",
        "applyCopy",
        "action",
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;",
        "applyAppendPluginEntry",
        "applySetPluginStatus",
        "applyReplaceMarker",
        "applyWrite",
        "InstallResult",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPluginInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginInstaller.kt\ncom/minhub/gamehub/hub/catalog/PluginInstaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1761#2,3:109\n1563#2:112\n1634#2,3:113\n*S KotlinDebug\n*F\n+ 1 PluginInstaller.kt\ncom/minhub/gamehub/hub/catalog/PluginInstaller\n*L\n66#1:109,3\n82#1:112\n82#1:113,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/PluginInstaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/PluginInstaller;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final applyAppendPluginEntry(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->resolvePluginFile(Ljava/io/File;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->parse(Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    move-object p1, v0

    .line 38
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    move-object p1, v0

    .line 59
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    :goto_1
    return-void

    .line 101
    :cond_5
    :goto_2
    new-instance v3, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginName()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginStatus()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    .line 115
    .line 116
    const/16 v9, 0x10

    .line 117
    .line 118
    const/4 v10, 0x0

    .line 119
    const-string v6, ""

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    invoke-direct/range {v3 .. v10}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 123
    .line 124
    .line 125
    sget-object v1, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;

    .line 126
    .line 127
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->u(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const/4 v5, 0x4

    .line 132
    const/4 v6, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-static/range {v1 .. v6}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->save$default(Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;Ljava/io/File;Ljava/util/List;Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method private final applyCopy(Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getFrom()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [C

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getTo()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    new-array v1, v1, [C

    .line 20
    .line 21
    fill-array-data v1, :array_1

    .line 22
    .line 23
    .line 24
    invoke-static {p3, v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p2, v0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p3}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "getPath(...)"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_2

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    const/4 p1, 0x1

    .line 127
    const/4 v0, 0x4

    .line 128
    invoke-static {p2, p3, p1, v0}, Lkotlin/io/FilesKt;->d(Ljava/io/File;Ljava/io/File;ZI)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_0
    return-void

    .line 132
    nop

    .line 133
    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method private final applyManifest(Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;->getActions()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_6

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getType()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sparse-switch v2, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :sswitch_0
    const-string v2, "replace_marker"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applyReplaceMarker(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_1
    const-string v2, "append_plugin_entry"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applyAppendPluginEntry(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_2
    const-string v2, "write"

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applyWrite(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :sswitch_3
    const-string v2, "copy"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    if-eqz p2, :cond_0

    .line 82
    .line 83
    invoke-direct {p0, p1, p2, v0}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applyCopy(Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :sswitch_4
    const-string v2, "set_plugin_status"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applySetPluginStatus(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    return-void

    .line 101
    :sswitch_data_0
    .sparse-switch
        -0x6f03569f -> :sswitch_4
        0x2eaf75 -> :sswitch_3
        0x6c257df -> :sswitch_2
        0x93edd6b -> :sswitch_1
        0x1fc72c25 -> :sswitch_0
    .end sparse-switch
.end method

.method private final applyReplaceMarker(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getMarker()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1, v0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "getPath(...)"

    .line 55
    .line 56
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v1, p1}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getMarker()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getContent()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p1, v1, p2}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    invoke-static {v0, p2}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    :goto_0
    return-void

    .line 112
    nop

    .line 113
    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method private final applySetPluginStatus(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->resolvePluginFile(Ljava/io/File;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/io/FilesKt;->f(Ljava/io/File;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->parse(Ljava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    move-object p1, v0

    .line 39
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    move-object p1, v0

    .line 60
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 61
    .line 62
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    move-object v4, v1

    .line 86
    check-cast v4, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPluginStatus()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    const/16 v10, 0x1d

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    const/4 v7, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v9, 0x0

    .line 113
    invoke-static/range {v4 .. v11}, Lcom/minhub/gamehub/data/RpgMakerPluginConfig;->copy$default(Lcom/minhub/gamehub/data/RpgMakerPluginConfig;Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ILjava/lang/Object;)Lcom/minhub/gamehub/data/RpgMakerPluginConfig;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    :goto_2
    return-void

    .line 128
    :cond_5
    sget-object v1, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->INSTANCE:Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;

    .line 129
    .line 130
    const/4 v5, 0x4

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-static/range {v1 .. v6}, Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;->save$default(Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;Ljava/io/File;Ljava/util/List;Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private final applyWrite(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p1, v0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "getPath(...)"

    .line 39
    .line 40
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_1

    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;->getContent()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v0, p1}, Lkotlin/io/FilesKt;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :array_0
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method


# virtual methods
.method public final install(Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;Ljava/io/File;)Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;
    .locals 9

    .line 1
    const-string v0, "gameRoot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "workDir"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getPackageUrl()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getSlug()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ".zip"

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p3, v0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v0, "extracted"

    .line 53
    .line 54
    invoke-static {p3, v0}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 62
    .line 63
    move-object v4, v3

    .line 64
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getPackageUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const/16 v7, 0xc

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v5, 0x0

    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-static/range {v2 .. v8}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->downloadZip$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const/4 v6, 0x4

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    move-object v3, v4

    .line 80
    move-object v4, v0

    .line 81
    invoke-static/range {v2 .. v7}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt;->extractZip$default(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    move-object p3, v4

    .line 85
    move-object v4, v3

    .line 86
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getManifest()Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p0, p1, p3, p2}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applyManifest(Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    move-object p1, v0

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;->getManifest()Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-direct {p0, p1, v1, p2}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller;->applyManifest(Ljava/io/File;Ljava/io/File;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;

    .line 111
    .line 112
    const/4 p2, 0x1

    .line 113
    const/4 p3, 0x2

    .line 114
    invoke-direct {p1, p2, v1, p3, v1}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;-><init>(ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :goto_1
    new-instance p2, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;

    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-nez p1, :cond_1

    .line 125
    .line 126
    const-string p1, ""

    .line 127
    .line 128
    :cond_1
    const/4 p3, 0x0

    .line 129
    invoke-direct {p2, p3, p1}, Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;-><init>(ZLjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-object p2
.end method
