.class public final Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a3\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a#\u0010\u000c\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0000H\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a%\u0010\u0010\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00022\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0014\u001a\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0016\u001a\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0014\u001a\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0016\u001a?\u0010%\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00002\u0014\u0008\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 H\u0000\u00a2\u0006\u0004\u0008%\u0010&\u001a\u0017\u0010(\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008(\u0010)\u001a\u001f\u0010,\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008,\u0010-\u001a\u001f\u0010.\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010*\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008.\u0010/\u001a\u001f\u00101\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u00081\u00102\u001a!\u00106\u001a\u0004\u0018\u00010\u00072\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00086\u00107\u001a\'\u00109\u001a\u0004\u0018\u00010\u00072\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2\u0006\u00105\u001a\u00020\u0007H\u0000\u00a2\u0006\u0004\u00089\u0010:\u001a\u0017\u0010<\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008<\u0010=\u001a\u001f\u0010>\u001a\u00020$2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0000\u00a2\u0006\u0004\u0008>\u0010?\u001a\u001f\u0010B\u001a\u00020\"2\u0006\u0010@\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008B\u0010C\"\u0014\u0010E\u001a\u00020D8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008E\u0010F\u00a8\u0006G"
    }
    d2 = {
        "",
        "displayName",
        "Ljava/io/File;",
        "importDir",
        "sizeLabel",
        "",
        "strictDetection",
        "Lcom/minhub/gamehub/data/Game;",
        "buildImportedGameFromDirectory",
        "(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Lcom/minhub/gamehub/data/Game;",
        "root",
        "configuredLabel",
        "detectEngineFromDir",
        "(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "names",
        "isRenpyWebDir",
        "(Ljava/io/File;Ljava/util/List;)Z",
        "dir",
        "isVxAceDir",
        "(Ljava/io/File;)Z",
        "findVxAceRoot",
        "(Ljava/io/File;)Ljava/io/File;",
        "isKiriDir",
        "findKiriRoot",
        "hasExtractedKiriMarkers",
        "findGodotRoot",
        "Landroid/content/Context;",
        "appContext",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
        "item",
        "selectedUrl",
        "Lkotlin/Function1;",
        "",
        "",
        "onProgress",
        "",
        "importOnlineCatalogItem",
        "(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J",
        "bytes",
        "formatFileSize",
        "(J)Ljava/lang/String;",
        "oldGame",
        "newGame",
        "preserveSaves",
        "(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/Game;)V",
        "deleteOldInstall",
        "(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)V",
        "importedGame",
        "commitImportedGame",
        "(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J",
        "Lcom/minhub/gamehub/data/GameRepository;",
        "repo",
        "g",
        "findExistingInstalledGame",
        "(Lcom/minhub/gamehub/data/GameRepository;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;",
        "all",
        "matchInstalledGame",
        "(Ljava/util/List;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;",
        "t",
        "normalizeGameTitle",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "importStreamGame",
        "(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)J",
        "file",
        "checksum",
        "verifyChecksum",
        "(Ljava/io/File;Ljava/lang/String;)V",
        "Li1/l;",
        "catalogImportGson",
        "Li1/l;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOnlineCatalogImportSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineCatalogImportSupport.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,407:1\n1#2:408\n1761#3,3:409\n1761#3,3:412\n1761#3,3:421\n1761#3,3:428\n1056#3:438\n1869#3,2:439\n1056#3:446\n1869#3,2:447\n1056#3:458\n1869#3,2:459\n295#3,2:461\n295#3,2:463\n295#3,2:465\n1310#4,2:415\n11228#4:417\n11563#4,3:418\n11228#4:424\n11563#4,3:425\n1310#4,2:431\n12637#4,2:433\n3829#4:435\n4344#4,2:436\n12637#4,2:441\n3829#4:443\n4344#4,2:444\n12637#4,2:449\n12637#4,2:451\n12637#4,2:453\n3829#4:455\n4344#4,2:456\n*S KotlinDebug\n*F\n+ 1 OnlineCatalogImportSupport.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt\n*L\n108#1:409,3\n109#1:412,3\n113#1:421,3\n121#1:428,3\n131#1:438\n132#1:439,2\n144#1:446\n145#1:447,2\n170#1:458\n171#1:459,2\n194#1:461,2\n352#1:463,2\n355#1:465,2\n110#1:415,2\n112#1:417\n112#1:418,3\n120#1:424\n120#1:425,3\n122#1:431,2\n124#1:433,2\n130#1:435\n130#1:436,2\n138#1:441,2\n143#1:443\n143#1:444,2\n159#1:449,2\n166#1:451,2\n168#1:453,2\n169#1:455\n169#1:456,2\n*E\n"
    }
.end annotation


# static fields
.field private static final catalogImportGson:Li1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li1/l;

    .line 2
    .line 3
    invoke-direct {v0}, Li1/l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->catalogImportGson:Li1/l;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->importOnlineCatalogItem$lambda$27(I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->importOnlineCatalogItem$lambda$31(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final buildImportedGameFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Lcom/minhub/gamehub/data/Game;
    .locals 34

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "displayName"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "importDir"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "sizeLabel"

    .line 16
    .line 17
    move-object/from16 v7, p2

    .line 18
    .line 19
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v3, v1, LS1/b;->a:Ljava/io/File;

    .line 29
    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findVxAceRoot(Ljava/io/File;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findKiriRoot(Ljava/io/File;)Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findGodotRoot(Ljava/io/File;)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    move-object v3, v0

    .line 51
    :cond_1
    const/4 v4, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, v1, LS1/b;->c:Ljava/io/File;

    .line 55
    .line 56
    if-nez v1, :cond_5

    .line 57
    .line 58
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 59
    .line 60
    const-string v5, "gameconfig.txt"

    .line 61
    .line 62
    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move-object v1, v4

    .line 79
    :goto_0
    if-nez v1, :cond_5

    .line 80
    .line 81
    new-instance v1, Ljava/io/File;

    .line 82
    .line 83
    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    move-object v1, v4

    .line 100
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-static {v1}, LC1/l0;->b(Ljava/io/File;)LC1/k0;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    new-instance v5, LC1/k0;

    .line 108
    .line 109
    invoke-direct {v5}, LC1/k0;-><init>()V

    .line 110
    .line 111
    .line 112
    :goto_2
    iget-object v6, v5, LC1/k0;->d:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v3, v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->detectEngineFromDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-eqz p3, :cond_9

    .line 119
    .line 120
    if-nez v1, :cond_9

    .line 121
    .line 122
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findGodotRoot(Ljava/io/File;)Ljava/io/File;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    if-nez v8, :cond_8

    .line 127
    .line 128
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findKiriRoot(Ljava/io/File;)Ljava/io/File;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->hasExtractedKiriMarkers(Ljava/io/File;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_7

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_7
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;

    .line 142
    .line 143
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;->KIRI_NOT_EXTRACTED:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 144
    .line 145
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;-><init>(Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_8
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;

    .line 150
    .line 151
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;->GODOT_NEEDS_DEDICATED_IMPORT:Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;-><init>(Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-nez v0, :cond_b

    .line 164
    .line 165
    :cond_a
    move-object v0, v3

    .line 166
    :cond_b
    iget-object v1, v5, LC1/k0;->b:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->I(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iget-object v8, v5, LC1/k0;->c:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v0, v8}, Lcom/bumptech/glide/c;->I(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    new-instance v2, Lcom/minhub/gamehub/data/Game;

    .line 179
    .line 180
    iget-object v8, v5, LC1/k0;->a:Ljava/lang/String;

    .line 181
    .line 182
    if-nez v8, :cond_c

    .line 183
    .line 184
    move-object/from16 v8, p0

    .line 185
    .line 186
    :cond_c
    iget-object v9, v5, LC1/k0;->e:Ljava/lang/String;

    .line 187
    .line 188
    if-nez v9, :cond_d

    .line 189
    .line 190
    const-string v9, "1.0.0"

    .line 191
    .line 192
    :cond_d
    move-object v10, v4

    .line 193
    move-object v4, v8

    .line 194
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    const-string v11, "getAbsolutePath(...)"

    .line 199
    .line 200
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    if-eqz v1, :cond_e

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    goto :goto_4

    .line 210
    :cond_e
    move-object v1, v10

    .line 211
    :goto_4
    if-eqz v0, :cond_f

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    move-object v10, v0

    .line 218
    :cond_f
    sget-object v0, Lcom/minhub/gamehub/data/GamePluginScanner;->INSTANCE:Lcom/minhub/gamehub/data/GamePluginScanner;

    .line 219
    .line 220
    invoke-virtual {v0, v3}, Lcom/minhub/gamehub/data/GamePluginScanner;->scanEnabledPluginNames(Ljava/io/File;)Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v0, v3}, Lcom/minhub/gamehub/data/GamePluginScanner;->toPluginsJson(Ljava/util/List;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v21

    .line 228
    iget-object v0, v5, LC1/k0;->h:Ljava/lang/Long;

    .line 229
    .line 230
    if-eqz v0, :cond_10

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 233
    .line 234
    .line 235
    move-result-wide v11

    .line 236
    :goto_5
    move-wide/from16 v27, v11

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_10
    const-wide/16 v11, 0x0

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :goto_6
    const v32, 0x77dff01

    .line 243
    .line 244
    .line 245
    const/16 v33, 0x0

    .line 246
    .line 247
    const/4 v3, 0x0

    .line 248
    const/4 v11, 0x0

    .line 249
    const/4 v12, 0x0

    .line 250
    const/4 v13, 0x0

    .line 251
    const/4 v14, 0x0

    .line 252
    const/4 v15, 0x0

    .line 253
    const-wide/16 v16, 0x0

    .line 254
    .line 255
    const/16 v18, 0x0

    .line 256
    .line 257
    const/16 v19, 0x0

    .line 258
    .line 259
    const/16 v20, 0x0

    .line 260
    .line 261
    const/16 v22, 0x0

    .line 262
    .line 263
    const/16 v23, 0x0

    .line 264
    .line 265
    const/16 v24, 0x0

    .line 266
    .line 267
    const/16 v25, 0x0

    .line 268
    .line 269
    const/16 v26, 0x0

    .line 270
    .line 271
    const/16 v29, 0x0

    .line 272
    .line 273
    const/16 v30, 0x0

    .line 274
    .line 275
    const/16 v31, 0x0

    .line 276
    .line 277
    move-object v5, v6

    .line 278
    move-object v6, v9

    .line 279
    move-object v9, v1

    .line 280
    invoke-direct/range {v2 .. v33}, Lcom/minhub/gamehub/data/Game;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 281
    .line 282
    .line 283
    return-object v2
.end method

.method public static synthetic buildImportedGameFromDirectory$default(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-string p2, "-- MB"

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->buildImportedGameFromDirectory(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)Lcom/minhub/gamehub/data/Game;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->importOnlineCatalogItem$lambda$32(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final commitImportedGame(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "appContext"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "importedGame"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/minhub/gamehub/data/GameRepository;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Lcom/minhub/gamehub/data/GameRepository;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findExistingInstalledGame(Lcom/minhub/gamehub/data/GameRepository;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_8

    .line 25
    .line 26
    invoke-static {v3, v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->preserveSaves(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/Game;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :cond_0
    move-object v5, v4

    .line 44
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getVersion()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getSizeLabel()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getIconPath()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getIconPath()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_1
    move-object v10, v4

    .line 71
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getBgPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getBgPath()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    :cond_2
    move-object v11, v4

    .line 82
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getPluginsJson()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v22

    .line 86
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getTranslationPackagesJson()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    if-nez v12, :cond_3

    .line 95
    .line 96
    const-string v12, "[]"

    .line 97
    .line 98
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-nez v12, :cond_3

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const/4 v4, 0x0

    .line 106
    :goto_0
    if-nez v4, :cond_4

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getTranslationPackagesJson()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    :cond_4
    move-object/from16 v24, v4

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 115
    .line 116
    .line 117
    move-result-wide v12

    .line 118
    const-wide/16 v14, 0x0

    .line 119
    .line 120
    cmp-long v4, v12, v14

    .line 121
    .line 122
    if-lez v4, :cond_5

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 125
    .line 126
    .line 127
    move-result-wide v12

    .line 128
    :goto_1
    move-wide/from16 v28, v12

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 132
    .line 133
    .line 134
    move-result-wide v12

    .line 135
    goto :goto_1

    .line 136
    :goto_2
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-eqz v12, :cond_6

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getStreamUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    :cond_6
    move-object/from16 v30, v4

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/minhub/gamehub/data/Game;->getThumbnailUrl()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_7

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getThumbnailUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    :cond_7
    move-object/from16 v31, v1

    .line 167
    .line 168
    const v33, 0x4747f01

    .line 169
    .line 170
    .line 171
    const/16 v34, 0x0

    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    const/4 v12, 0x0

    .line 175
    const/4 v13, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    const-wide/16 v17, 0x0

    .line 181
    .line 182
    const/16 v19, 0x0

    .line 183
    .line 184
    const-string v20, "INSTALLED"

    .line 185
    .line 186
    const/16 v21, 0x0

    .line 187
    .line 188
    const/16 v23, 0x0

    .line 189
    .line 190
    const/16 v25, 0x0

    .line 191
    .line 192
    const/16 v26, 0x0

    .line 193
    .line 194
    const/16 v27, 0x0

    .line 195
    .line 196
    const/16 v32, 0x0

    .line 197
    .line 198
    invoke-static/range {v3 .. v34}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v2, v1}, Lcom/minhub/gamehub/data/GameRepository;->replaceInstall(Lcom/minhub/gamehub/data/Game;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->deleteOldInstall(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    :goto_3
    int-to-long v0, v0

    .line 213
    return-wide v0

    .line 214
    :cond_8
    invoke-virtual {v2, v1}, Lcom/minhub/gamehub/data/GameRepository;->insert(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    goto :goto_3
.end method

.method public static synthetic d(B)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->verifyChecksum$lambda$41(B)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final deleteOldInstall(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

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
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_1
    const-string p0, "games"

    .line 26
    .line 27
    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Ljava/io/File;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_3
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    new-instance p0, Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-string p1, "Kh\u00f4ng x\u00f3a \u0111\u01b0\u1ee3c folder c\u0169: "

    .line 125
    .line 126
    const-string v0, "MinHub-Import"

    .line 127
    .line 128
    invoke-static {p1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static final detectEngineFromDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "root"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/minhub/gamehub/data/EngineDetector;->INSTANCE:Lcom/minhub/gamehub/data/EngineDetector;

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Lcom/minhub/gamehub/data/EngineDetector;->detect(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEngine()Lcom/minhub/gamehub/data/GameEngine;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic detectEngineFromDir$default(Ljava/io/File;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->detectEngineFromDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final findExistingInstalledGame(Lcom/minhub/gamehub/data/GameRepository;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/GameRepository;->getGames()Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/util/List;

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-static {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->matchInstalledGame(Ljava/util/List;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static final findGodotRoot(Ljava/io/File;)Ljava/io/File;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_1
    array-length v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_3

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    const-string v5, "pck"

    .line 37
    .line 38
    const/4 v6, 0x1

    .line 39
    invoke-static {v4, v4, v5, v6}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_5

    .line 44
    .line 45
    invoke-static {v4}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v5, "apk"

    .line 50
    .line 51
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 62
    .line 63
    const-string v3, "assets/project.binary"

    .line 64
    .line 65
    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    array-length v1, v0

    .line 76
    move v3, v2

    .line 77
    :goto_1
    if-ge v3, v1, :cond_7

    .line 78
    .line 79
    aget-object v4, v0, v3

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    const-string v5, "project.binary"

    .line 92
    .line 93
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_6

    .line 98
    .line 99
    :cond_5
    :goto_2
    return-object p0

    .line 100
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    array-length v1, v0

    .line 109
    :goto_3
    if-ge v2, v1, :cond_9

    .line 110
    .line 111
    aget-object v3, v0, v2

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-eqz v4, :cond_8

    .line 118
    .line 119
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_9
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt$findGodotRoot$$inlined$sortedBy$1;

    .line 126
    .line 127
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt$findGodotRoot$$inlined$sortedBy$1;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_b

    .line 143
    .line 144
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/io/File;

    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findGodotRoot(Ljava/io/File;)Ljava/io/File;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_a

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_b
    :goto_4
    const/4 p0, 0x0

    .line 161
    return-object p0
.end method

.method private static final findKiriRoot(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->isKiriDir(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_4

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    aget-object v3, p0, v2

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt$findKiriRoot$$inlined$sortedBy$1;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt$findKiriRoot$$inlined$sortedBy$1;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/io/File;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findKiriRoot(Ljava/io/File;)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method private static final findVxAceRoot(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->isVxAceDir(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_4

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    aget-object v3, p0, v2

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance p0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt$findVxAceRoot$$inlined$sortedBy$1;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt$findVxAceRoot$$inlined$sortedBy$1;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_4

    .line 47
    .line 48
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/io/File;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->findVxAceRoot(Ljava/io/File;)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method

.method private static final formatFileSize(J)Ljava/lang/String;
    .locals 2

    .line 1
    const-wide/32 v0, 0x100000

    .line 2
    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x400

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    div-long/2addr p0, v0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, " KB"

    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const/high16 v0, 0x100000

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    div-long/2addr p0, v0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " MB"

    .line 43
    .line 44
    goto :goto_0
.end method

.method private static final hasExtractedKiriMarkers(Ljava/io/File;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "startup.tjs"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v2, "system/Boot.tjs"

    .line 19
    .line 20
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    const-string v2, "first.ks"

    .line 33
    .line 34
    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const/4 v0, 0x0

    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    array-length v2, p0

    .line 52
    move v3, v0

    .line 53
    :goto_0
    if-ge v3, v2, :cond_4

    .line 54
    .line 55
    aget-object v4, p0, v3

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    const-string v5, "tjs"

    .line 64
    .line 65
    invoke-static {v4, v4, v5, v1}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    :goto_1
    return v1

    .line 72
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    return v0
.end method

.method public static final importOnlineCatalogItem(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const/16 v2, 0x60

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "MinHub-Import"

    .line 12
    .line 13
    const/16 v4, 0x38

    .line 14
    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v5, "appContext"

    .line 20
    .line 21
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v5, "item"

    .line 25
    .line 26
    move-object/from16 v6, p1

    .line 27
    .line 28
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v5, "selectedUrl"

    .line 32
    .line 33
    move-object/from16 v7, p2

    .line 34
    .line 35
    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v5, "onProgress"

    .line 39
    .line 40
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v8, 0x0

    .line 48
    if-nez v5, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v7, v8

    .line 52
    :goto_0
    if-nez v7, :cond_1

    .line 53
    .line 54
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getZipUrl()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    :cond_1
    new-instance v5, Ljava/io/File;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    new-instance v11, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v12, "catalog-downloads/"

    .line 71
    .line 72
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 86
    .line 87
    .line 88
    new-instance v9, Ljava/io/File;

    .line 89
    .line 90
    sget-object v10, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 91
    .line 92
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    invoke-virtual {v10, v11, v7}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->resolveArchiveFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    invoke-direct {v9, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v13, Ljava/io/File;

    .line 104
    .line 105
    invoke-virtual {v0, v8}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    if-nez v11, :cond_2

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    :cond_2
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v14

    .line 123
    invoke-virtual {v10, v12, v14, v15}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->buildImportDirectoryName(Ljava/lang/String;J)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    const-string v12, "games/"

    .line 128
    .line 129
    invoke-static {v12, v10}, Lkotlin/collections/unsigned/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-direct {v13, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->effectiveDownloadLinks()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-eqz v11, :cond_4

    .line 149
    .line 150
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    move-object v12, v11

    .line 155
    check-cast v12, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 156
    .line 157
    invoke-virtual {v12}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getUrl()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eqz v12, :cond_3

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    move-object v11, v8

    .line 169
    :goto_1
    check-cast v11, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 170
    .line 171
    :try_start_0
    sget-object v10, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;

    .line 172
    .line 173
    new-instance v12, LA1/G;

    .line 174
    .line 175
    const/4 v14, 0x1

    .line 176
    invoke-direct {v12, v1, v14}, LA1/G;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v7, v9, v0, v12}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;->downloadZip(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 180
    .line 181
    .line 182
    if-eqz v11, :cond_5

    .line 183
    .line 184
    invoke-virtual {v11}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;->getChecksum()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    goto :goto_2

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    goto/16 :goto_8

    .line 191
    .line 192
    :catch_0
    move-exception v0

    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_5
    move-object v7, v8

    .line 196
    :goto_2
    if-nez v7, :cond_6

    .line 197
    .line 198
    const-string v7, ""

    .line 199
    .line 200
    :cond_6
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-nez v11, :cond_7

    .line 205
    .line 206
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v12, "Verifying checksum: "

    .line 215
    .line 216
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    invoke-static {v9, v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->verifyChecksum(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v7, "Checksum OK"

    .line 233
    .line 234
    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_7
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    new-instance v3, LA1/G;

    .line 241
    .line 242
    const/4 v4, 0x2

    .line 243
    invoke-direct {v3, v1, v4}, LA1/G;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 244
    .line 245
    .line 246
    invoke-static {v10, v9, v13, v3}, Lcom/minhub/gamehub/hub/catalog/RemoteZipImporterExtractKt;->extractZip(Lcom/minhub/gamehub/hub/catalog/RemoteZipImporter;Ljava/io/File;Ljava/io/File;Lkotlin/jvm/functions/Function1;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 254
    .line 255
    .line 256
    move-result-wide v3

    .line 257
    invoke-static {v3, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->formatFileSize(J)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    const/16 v16, 0x8

    .line 262
    .line 263
    const/16 v17, 0x0

    .line 264
    .line 265
    const/4 v15, 0x0

    .line 266
    invoke-static/range {v12 .. v17}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->buildImportedGameFromDirectory$default(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;ZILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 267
    .line 268
    .line 269
    move-result-object v18

    .line 270
    invoke-static {v13}, Lcom/bumptech/glide/c;->K(Ljava/io/File;)LS1/b;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    if-eqz v3, :cond_8

    .line 275
    .line 276
    iget-object v3, v3, LS1/b;->a:Ljava/io/File;

    .line 277
    .line 278
    if-nez v3, :cond_9

    .line 279
    .line 280
    :cond_8
    move-object v3, v13

    .line 281
    :cond_9
    sget-object v4, Lcom/minhub/gamehub/data/EngineDetector;->INSTANCE:Lcom/minhub/gamehub/data/EngineDetector;

    .line 282
    .line 283
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getEngine()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    invoke-virtual {v4, v3, v7}, Lcom/minhub/gamehub/data/EngineDetector;->detect(Ljava/io/File;Ljava/lang/String;)Lcom/minhub/gamehub/data/EngineDetector$Result;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/EngineDetector$Result;->getEngine()Lcom/minhub/gamehub/data/GameEngine;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-virtual/range {v18 .. v18}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    const-string v7, "HTML"

    .line 304
    .line 305
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_a

    .line 310
    .line 311
    :goto_3
    move-object/from16 v21, v3

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    goto :goto_3

    .line 319
    :goto_4
    sget-object v3, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->catalogImportGson:Li1/l;

    .line 320
    .line 321
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTranslations()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v3, v4}, Li1/l;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    const-string v4, "toJson(...)"

    .line 330
    .line 331
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getPostId()J

    .line 335
    .line 336
    .line 337
    move-result-wide v6

    .line 338
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    const-wide/16 v10, 0x0

    .line 343
    .line 344
    cmp-long v6, v6, v10

    .line 345
    .line 346
    if-lez v6, :cond_b

    .line 347
    .line 348
    move-object v8, v4

    .line 349
    :cond_b
    if-eqz v8, :cond_c

    .line 350
    .line 351
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    :goto_5
    move-wide/from16 v43, v6

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 359
    .line 360
    .line 361
    move-result-wide v6

    .line 362
    goto :goto_5

    .line 363
    :goto_6
    const v48, 0x777fffb

    .line 364
    .line 365
    .line 366
    const/16 v49, 0x0

    .line 367
    .line 368
    const/16 v19, 0x0

    .line 369
    .line 370
    const/16 v20, 0x0

    .line 371
    .line 372
    const/16 v22, 0x0

    .line 373
    .line 374
    const/16 v23, 0x0

    .line 375
    .line 376
    const/16 v24, 0x0

    .line 377
    .line 378
    const/16 v25, 0x0

    .line 379
    .line 380
    const/16 v26, 0x0

    .line 381
    .line 382
    const/16 v27, 0x0

    .line 383
    .line 384
    const/16 v28, 0x0

    .line 385
    .line 386
    const/16 v29, 0x0

    .line 387
    .line 388
    const/16 v30, 0x0

    .line 389
    .line 390
    const/16 v31, 0x0

    .line 391
    .line 392
    const-wide/16 v32, 0x0

    .line 393
    .line 394
    const/16 v34, 0x0

    .line 395
    .line 396
    const/16 v35, 0x0

    .line 397
    .line 398
    const/16 v36, 0x0

    .line 399
    .line 400
    const/16 v37, 0x0

    .line 401
    .line 402
    const/16 v38, 0x0

    .line 403
    .line 404
    const/16 v40, 0x0

    .line 405
    .line 406
    const/16 v41, 0x0

    .line 407
    .line 408
    const/16 v42, 0x0

    .line 409
    .line 410
    const/16 v45, 0x0

    .line 411
    .line 412
    const/16 v46, 0x0

    .line 413
    .line 414
    const/16 v47, 0x0

    .line 415
    .line 416
    move-object/from16 v39, v3

    .line 417
    .line 418
    invoke-static/range {v18 .. v49}, Lcom/minhub/gamehub/data/Game;->copy$default(Lcom/minhub/gamehub/data/Game;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/minhub/gamehub/data/Game;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    invoke-static {v0, v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->commitImportedGame(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J

    .line 426
    .line 427
    .line 428
    move-result-wide v6

    .line 429
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    const-string v4, "RENPY8"

    .line 434
    .line 435
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-nez v0, :cond_d

    .line 440
    .line 441
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getEngine()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const-string v4, "RENPY7"

    .line 446
    .line 447
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_e

    .line 452
    .line 453
    :cond_d
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .line 455
    .line 456
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 457
    .line 458
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-static {v0}, Ly1/L1;->A(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    .line 467
    .line 468
    :catch_1
    :cond_e
    const/16 v0, 0x64

    .line 469
    .line 470
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    .line 476
    .line 477
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 481
    .line 482
    .line 483
    return-wide v6

    .line 484
    :goto_7
    :try_start_3
    invoke-static {v13}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 485
    .line 486
    .line 487
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    :goto_8
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 489
    .line 490
    .line 491
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 492
    .line 493
    .line 494
    throw v0
.end method

.method public static synthetic importOnlineCatalogItem$default(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getZipUrl()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x8

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    new-instance p3, LL1/d;

    .line 14
    .line 15
    const/16 p4, 0x1c

    .line 16
    .line 17
    invoke-direct {p3, p4}, LL1/d;-><init>(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->importOnlineCatalogItem(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    return-wide p0
.end method

.method private static final importOnlineCatalogItem$lambda$27(I)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final importOnlineCatalogItem$lambda$31(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 2

    .line 1
    const/16 v0, 0x37

    .line 2
    .line 3
    mul-int/2addr p1, v0

    .line 4
    div-int/lit8 p1, p1, 0x64

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final importOnlineCatalogItem$lambda$32(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 2

    .line 1
    mul-int/lit8 p1, p1, 0x28

    .line 2
    .line 3
    div-int/lit8 p1, p1, 0x64

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x37

    .line 6
    .line 7
    const/16 v0, 0x38

    .line 8
    .line 9
    const/16 v1, 0x5f

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static final importStreamGame(Landroid/content/Context;Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;)J
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "appContext"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "item"

    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getStreamUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v29

    .line 23
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getThumbnailUrl()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v30

    .line 27
    invoke-virtual {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getPostId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v27

    .line 31
    new-instance v2, Lcom/minhub/gamehub/data/Game;

    .line 32
    .line 33
    const v32, 0x47fffc9

    .line 34
    .line 35
    .line 36
    const/16 v33, 0x0

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const-string v5, "BROWSE"

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    const-string v7, "Online"

    .line 43
    .line 44
    const-string v8, ""

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v11, 0x0

    .line 49
    const/4 v12, 0x0

    .line 50
    const/4 v13, 0x0

    .line 51
    const/4 v14, 0x0

    .line 52
    const/4 v15, 0x0

    .line 53
    const-wide/16 v16, 0x0

    .line 54
    .line 55
    const/16 v18, 0x0

    .line 56
    .line 57
    const/16 v19, 0x0

    .line 58
    .line 59
    const/16 v20, 0x0

    .line 60
    .line 61
    const/16 v21, 0x0

    .line 62
    .line 63
    const/16 v22, 0x0

    .line 64
    .line 65
    const/16 v23, 0x0

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    const/16 v25, 0x0

    .line 70
    .line 71
    const/16 v26, 0x0

    .line 72
    .line 73
    const/16 v31, 0x0

    .line 74
    .line 75
    invoke-direct/range {v2 .. v33}, Lcom/minhub/gamehub/data/Game;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->commitImportedGame(Landroid/content/Context;Lcom/minhub/gamehub/data/Game;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    return-wide v0
.end method

.method private static final isKiriDir(Ljava/io/File;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    array-length v1, p0

    .line 9
    move v2, v0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    aget-object v3, p0, v2

    .line 13
    .line 14
    const-string v4, "xp3"

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    invoke-static {v3, v3, v4, v5}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    return v5

    .line 24
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v0
.end method

.method private static final isRenpyWebDir(Ljava/io/File;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "renpy.js"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "game.js"

    .line 11
    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string v0, "index.html"

    .line 19
    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .line 51
    const-string v3, ".rpa"

    .line 52
    .line 53
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_7

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, ".rpy"

    .line 85
    .line 86
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-nez v2, :cond_e

    .line 91
    .line 92
    const-string v2, ".rpyc"

    .line 93
    .line 94
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_7
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const/4 p1, 0x0

    .line 107
    const/4 v0, 0x0

    .line 108
    if-eqz p0, :cond_9

    .line 109
    .line 110
    array-length v2, p0

    .line 111
    move v3, v0

    .line 112
    :goto_2
    if-ge v3, v2, :cond_9

    .line 113
    .line 114
    aget-object v4, p0, v3

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_8

    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    const-string v6, "lib"

    .line 127
    .line 128
    invoke-static {v5, v6, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_8

    .line 133
    .line 134
    move-object p1, v4

    .line 135
    goto :goto_3

    .line 136
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_9
    :goto_3
    if-eqz p1, :cond_f

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    if-eqz p0, :cond_a

    .line 146
    .line 147
    new-instance p1, Ljava/util/ArrayList;

    .line 148
    .line 149
    array-length v2, p0

    .line 150
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .line 152
    .line 153
    array-length v2, p0

    .line 154
    move v3, v0

    .line 155
    :goto_4
    if-ge v3, v2, :cond_b

    .line 156
    .line 157
    aget-object v4, p0, v3

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    const-string v5, "getName(...)"

    .line 164
    .line 165
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    const-string v5, "toLowerCase(...)"

    .line 175
    .line 176
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :cond_b
    if-eqz p1, :cond_c

    .line 190
    .line 191
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    if-eqz p0, :cond_c

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_f

    .line 207
    .line 208
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Ljava/lang/String;

    .line 213
    .line 214
    const-string v2, "renpy"

    .line 215
    .line 216
    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-nez v2, :cond_e

    .line 221
    .line 222
    const-string v2, "web"

    .line 223
    .line 224
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_d

    .line 229
    .line 230
    :cond_e
    :goto_5
    return v1

    .line 231
    :cond_f
    :goto_6
    return v0
.end method

.method private static final isVxAceDir(Ljava/io/File;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

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
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    array-length v2, p0

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    array-length v2, p0

    .line 17
    move v3, v0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_1

    .line 19
    .line 20
    aget-object v4, p0, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "getName(...)"

    .line 27
    .line 28
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "toLowerCase(...)"

    .line 38
    .line 39
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v3, 0x1

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    move v4, v0

    .line 61
    :cond_3
    if-ge v4, v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    check-cast v5, Ljava/lang/String;

    .line 70
    .line 71
    const-string v6, ".rgss3a"

    .line 72
    .line 73
    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_8

    .line 78
    .line 79
    const-string v6, "game.ini"

    .line 80
    .line 81
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_4
    :goto_1
    array-length v1, p0

    .line 89
    move v2, v0

    .line 90
    :goto_2
    if-ge v2, v1, :cond_6

    .line 91
    .line 92
    aget-object v4, p0, v2

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_5

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const-string v6, "data"

    .line 105
    .line 106
    invoke-static {v5, v6, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_5

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    const/4 v4, 0x0

    .line 117
    :goto_3
    if-nez v4, :cond_7

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    if-eqz p0, :cond_a

    .line 125
    .line 126
    array-length v1, p0

    .line 127
    move v2, v0

    .line 128
    :goto_4
    if-ge v2, v1, :cond_a

    .line 129
    .line 130
    aget-object v4, p0, v2

    .line 131
    .line 132
    const-string v5, "rvdata2"

    .line 133
    .line 134
    invoke-static {v4, v4, v5, v3}, LE/b;->y(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Z)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_9

    .line 139
    .line 140
    :cond_8
    :goto_5
    return v3

    .line 141
    :cond_9
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_a
    :goto_6
    return v0
.end method

.method public static final matchInstalledGame(Ljava/util/List;Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/data/Game;",
            ">;",
            "Lcom/minhub/gamehub/data/Game;",
            ")",
            "Lcom/minhub/gamehub/data/Game;"
        }
    .end annotation

    .line 1
    const-string v0, "all"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "g"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v2, v0

    .line 37
    check-cast v2, Lcom/minhub/gamehub/data/Game;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getCatalogPostId()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    cmp-long v2, v2, v4

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    move-object v1, v0

    .line 52
    :cond_1
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_2
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->normalizeGameTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v2, v0

    .line 85
    check-cast v2, Lcom/minhub/gamehub/data/Game;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/minhub/gamehub/data/Game;->getTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogImportSupportKt;->normalizeGameTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    move-object v1, v0

    .line 102
    :cond_5
    check-cast v1, Lcom/minhub/gamehub/data/Game;

    .line 103
    .line 104
    return-object v1
.end method

.method private static final normalizeGameTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "toLowerCase(...)"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method private static final preserveSaves(Lcom/minhub/gamehub/data/Game;Lcom/minhub/gamehub/data/Game;)V
    .locals 8

    .line 1
    const-string v0, "MinHub-Import"

    .line 2
    .line 3
    const-string v1, "Gi\u1eef save Godot khi c\u1eadp nh\u1eadt: "

    .line 4
    .line 5
    const-string v2, "Gi\u1eef save khi c\u1eadp nh\u1eadt: "

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/minhub/gamehub/data/Game;->getGamePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_4

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_0
    invoke-static {p0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    sget-object v6, Lcom/minhub/gamehub/data/GameEngine;->GODOT:Lcom/minhub/gamehub/data/GameEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    const-string v7, " -> "

    .line 46
    .line 47
    if-eq v5, v6, :cond_3

    .line 48
    .line 49
    :try_start_1
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-ne v5, v6, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-static {p0}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v3, p0}, Lcom/bumptech/glide/c;->M(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    array-length v1, v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-static {p1}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v4, p1}, Lcom/bumptech/glide/c;->M(Ljava/io/File;Lcom/minhub/gamehub/data/GameEngine;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 89
    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    invoke-static {p0, p1, v1}, Lkotlin/io/FilesKt;->c(Ljava/io/File;Ljava/io/File;Z)Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catch_0
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    :goto_0
    invoke-static {v3, v4}, Ly1/d1;->a(Ljava/io/File;Ljava/io/File;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_1
    return-void

    .line 160
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "Kh\u00f4ng chuy\u1ec3n \u0111\u01b0\u1ee3c save khi c\u1eadp nh\u1eadt: "

    .line 165
    .line 166
    invoke-static {p1, p0, v0}, LE/b;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method private static final verifyChecksum(Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "md5:"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "substring(...)"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "MD5"

    .line 28
    .line 29
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "sha256:"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x7

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string v0, "SHA-256"

    .line 59
    .line 60
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_0
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "component1(...)"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v2, Ljava/io/FileInputStream;

    .line 86
    .line 87
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 88
    .line 89
    .line 90
    const/16 p0, 0x2000

    .line 91
    .line 92
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 93
    .line 94
    invoke-direct {v3, v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    new-array p0, p0, [B

    .line 98
    .line 99
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    :goto_1
    const/4 v4, -0x1

    .line 104
    if-eq v2, v4, :cond_1

    .line 105
    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-virtual {v1, p0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p0}, Ljava/io/InputStream;->read([B)I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    const/4 p0, 0x0

    .line 121
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string p0, "digest(...)"

    .line 129
    .line 130
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v9, LL1/d;

    .line 134
    .line 135
    const/16 p0, 0x1b

    .line 136
    .line 137
    invoke-direct {v9, p0}, LL1/d;-><init>(I)V

    .line 138
    .line 139
    .line 140
    const/16 v10, 0x1e

    .line 141
    .line 142
    const-string v5, ""

    .line 143
    .line 144
    const/4 v6, 0x0

    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v8, 0x0

    .line 147
    invoke-static/range {v4 .. v10}, Lkotlin/collections/ArraysKt;->u([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    const/4 v1, 0x1

    .line 152
    invoke-static {p0, p1, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_2
    new-instance v1, Ljava/io/IOException;

    .line 160
    .line 161
    const/16 v2, 0x10

    .line 162
    .line 163
    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    const-string v2, ").\nExpected: "

    .line 172
    .line 173
    const-string v3, "\u2026\nGot:      "

    .line 174
    .line 175
    const-string v4, "File b\u1ecb l\u1ed7i \u2014 checksum kh\u00f4ng kh\u1edbp ("

    .line 176
    .line 177
    invoke-static {v4, v0, v2, p1, v3}, Lkotlin/collections/unsigned/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string v0, "\u2026"

    .line 182
    .line 183
    invoke-static {p1, p0, v0}, Lkotlin/collections/unsigned/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw v1

    .line 191
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    move-object p1, v0

    .line 194
    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 195
    .line 196
    .line 197
    throw p1

    .line 198
    :cond_3
    :goto_3
    return-void
.end method

.method private static final verifyChecksum$lambda$41(B)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "%02x"

    .line 15
    .line 16
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "format(...)"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method
