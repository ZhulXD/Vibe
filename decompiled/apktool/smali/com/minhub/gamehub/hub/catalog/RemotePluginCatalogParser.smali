.class public final Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0010\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\r0\t*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u0004*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u0005*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001b\u0010\u001c\u001a\u00020\r*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u001e*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0015\u0010#\u001a\u0004\u0018\u00010\r*\u00020\"H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020&2\u0006\u0010%\u001a\u00020\r\u00a2\u0006\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;",
        "",
        "<init>",
        "()V",
        "Li1/r;",
        "Li1/n;",
        "catalogItemsArrayOrNull",
        "(Li1/r;)Li1/n;",
        "items",
        "",
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;",
        "buildItems",
        "(Li1/n;)Ljava/util/List;",
        "",
        "name",
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;",
        "getAsManifest",
        "(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;",
        "",
        "Lcom/minhub/gamehub/data/GameEngine;",
        "getAsSupportedEngines",
        "(Li1/r;Ljava/lang/String;)Ljava/util/Set;",
        "getAsStringList",
        "(Li1/r;Ljava/lang/String;)Ljava/util/List;",
        "getAsJsonObjectOrNull",
        "(Li1/r;Ljava/lang/String;)Li1/r;",
        "getAsJsonArrayOrNull",
        "(Li1/r;Ljava/lang/String;)Li1/n;",
        "getAsStringOrBlank",
        "(Li1/r;Ljava/lang/String;)Ljava/lang/String;",
        "",
        "defaultValue",
        "getAsBooleanOrDefault",
        "(Li1/r;Ljava/lang/String;Z)Z",
        "Li1/o;",
        "asTrimmedStringOrNull",
        "(Li1/o;)Ljava/lang/String;",
        "json",
        "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;",
        "parse",
        "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;",
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
        "SMAP\nRemotePluginCatalogParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemotePluginCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1#2:118\n1#2:129\n1#2:144\n1#2:157\n1617#3,9:119\n1869#3:128\n1870#3:130\n1626#3:131\n1617#3,9:132\n1869#3:141\n295#3,2:142\n1870#3:145\n1626#3:146\n1617#3,9:147\n1869#3:156\n1870#3:158\n1626#3:159\n*S KotlinDebug\n*F\n+ 1 RemotePluginCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser\n*L\n63#1:129\n82#1:144\n91#1:157\n63#1:119,9\n63#1:128\n63#1:130\n63#1:131\n82#1:132,9\n82#1:141\n84#1:142,2\n82#1:145\n82#1:146\n91#1:147,9\n91#1:156\n91#1:158\n91#1:159\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;

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

.method private final asTrimmedStringOrNull(Li1/o;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Li1/s;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p1, v1

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Li1/o;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

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
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    return-object v1
.end method

.method private final buildItems(Li1/n;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/n;",
            ")",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v0, v0, Li1/n;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "iterator(...)"

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Li1/o;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    instance-of v3, v2, Li1/r;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Li1/o;->d()Li1/r;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;

    .line 53
    .line 54
    const-string v4, "slug"

    .line 55
    .line 56
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const-string v4, "packageUrl"

    .line 61
    .line 62
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v17

    .line 66
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance v5, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;

    .line 80
    .line 81
    const-string v4, "title"

    .line 82
    .line 83
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-string v4, "description"

    .line 88
    .line 89
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    const-string v4, "supportedEngines"

    .line 94
    .line 95
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsSupportedEngines(Li1/r;Ljava/lang/String;)Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const-string v4, "problemTags"

    .line 100
    .line 101
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    const-string v4, "targetScope"

    .line 106
    .line 107
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const-string v4, "supportedGames"

    .line 112
    .line 113
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    const-string v4, "changelog"

    .line 118
    .line 119
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    const-string v4, "isFixPlugin"

    .line 124
    .line 125
    const/4 v14, 0x0

    .line 126
    invoke-direct {v3, v2, v4, v14}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsBooleanOrDefault(Li1/r;Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const-string v15, "isRecommendedByDefault"

    .line 131
    .line 132
    invoke-direct {v3, v2, v15, v14}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsBooleanOrDefault(Li1/r;Ljava/lang/String;Z)Z

    .line 133
    .line 134
    .line 135
    move-result v15

    .line 136
    const-string v14, "version"

    .line 137
    .line 138
    invoke-direct {v3, v2, v14}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v16

    .line 142
    const-string v14, "packageChecksum"

    .line 143
    .line 144
    invoke-direct {v3, v2, v14}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v18

    .line 148
    const-string v14, "installMode"

    .line 149
    .line 150
    invoke-direct {v3, v2, v14}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v19

    .line 154
    const-string v14, "manifest"

    .line 155
    .line 156
    invoke-direct {v3, v2, v14}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsManifest(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;

    .line 157
    .line 158
    .line 159
    move-result-object v20

    .line 160
    move v14, v4

    .line 161
    invoke-direct/range {v5 .. v20}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto/16 :goto_0

    .line 168
    .line 169
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0
.end method

.method private final catalogItemsArrayOrNull(Li1/r;)Li1/n;
    .locals 4

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Li1/r;->b:Lk1/m;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lk1/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Li1/n;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const-string v1, "data"

    .line 19
    .line 20
    invoke-direct {p0, p1, v1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v2, v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v2, v3

    .line 33
    :goto_0
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object p1, p1, Li1/r;->b:Lk1/m;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lk1/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Li1/r;

    .line 42
    .line 43
    iget-object p1, p1, Li1/r;->b:Lk1/m;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lk1/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Li1/n;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    return-object v3
.end method

.method private final getAsBooleanOrDefault(Li1/r;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of p2, p1, Li1/s;

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Li1/o;->e()Li1/s;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p2, p1, Li1/s;->b:Ljava/io/Serializable;

    .line 18
    .line 19
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Li1/s;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    instance-of p2, p2, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Li1/s;->f()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p2, "getAsString(...)"

    .line 37
    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p2, "true"

    .line 50
    .line 51
    const/4 p3, 0x1

    .line 52
    invoke-static {p1, p2, p3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :cond_3
    :goto_0
    return p3
.end method

.method private final getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    instance-of v0, p1, Li1/n;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, p2

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Li1/o;->c()Li1/n;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    return-object p2
.end method

.method private final getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    instance-of v0, p1, Li1/r;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, p2

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Li1/o;->d()Li1/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    return-object p2
.end method

.method private final getAsManifest(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p2, v0, p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string v0, "actions"

    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_5

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Li1/o;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    instance-of v2, v1, Li1/r;

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v1, p2

    .line 53
    :goto_1
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1}, Li1/o;->d()Li1/r;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v2, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;

    .line 60
    .line 61
    sget-object v3, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;

    .line 62
    .line 63
    const-string v4, "type"

    .line 64
    .line 65
    invoke-direct {v3, v1, v4}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    const-string v5, "from"

    .line 70
    .line 71
    invoke-direct {v3, v1, v5}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v6, "to"

    .line 76
    .line 77
    invoke-direct {v3, v1, v6}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    const-string v7, "path"

    .line 82
    .line 83
    invoke-direct {v3, v1, v7}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-string v8, "pluginName"

    .line 88
    .line 89
    invoke-direct {v3, v1, v8}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    const-string v9, "pluginStatus"

    .line 94
    .line 95
    const/4 v10, 0x0

    .line 96
    invoke-direct {v3, v1, v9, v10}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsBooleanOrDefault(Li1/r;Ljava/lang/String;Z)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const-string v10, "marker"

    .line 101
    .line 102
    invoke-direct {v3, v1, v10}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    const-string v11, "content"

    .line 107
    .line 108
    invoke-direct {v3, v1, v11}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    move-object v3, v4

    .line 113
    move-object v4, v5

    .line 114
    move-object v5, v6

    .line 115
    move-object v6, v7

    .line 116
    move-object v7, v8

    .line 117
    move v8, v9

    .line 118
    move-object v9, v10

    .line 119
    move-object v10, v1

    .line 120
    invoke-direct/range {v2 .. v10}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move-object v2, p2

    .line 125
    :goto_2
    if-eqz v2, :cond_1

    .line 126
    .line 127
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    move-object p2, v0

    .line 132
    :cond_5
    if-nez p2, :cond_6

    .line 133
    .line 134
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    :cond_6
    new-instance p1, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;

    .line 139
    .line 140
    invoke-direct {p1, p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;-><init>(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    return-object p1
.end method

.method private final getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/r;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Li1/o;

    .line 27
    .line 28
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->asTrimmedStringOrNull(Li1/o;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p2, 0x0

    .line 44
    :cond_2
    if-nez p2, :cond_3

    .line 45
    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_3
    return-object p2
.end method

.method private final getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    instance-of v0, p1, Li1/s;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, p2

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Li1/o;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    :cond_1
    if-nez p2, :cond_2

    .line 31
    .line 32
    const-string p1, ""

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_2
    return-object p2
.end method

.method private final getAsSupportedEngines(Li1/r;Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/r;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/minhub/gamehub/data/GameEngine;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Li1/n;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    check-cast v3, Li1/o;

    .line 29
    .line 30
    sget-object v4, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v3}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->asTrimmedStringOrNull(Li1/o;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    move-object v5, p2

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-static {}, Lcom/minhub/gamehub/data/GameEngine;->getEntries()Lkotlin/enums/EnumEntries;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Lcom/minhub/gamehub/data/GameEngine;

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v7, 0x1

    .line 69
    invoke-static {v6, v3, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move-object v5, p2

    .line 77
    :goto_1
    check-cast v5, Lcom/minhub/gamehub/data/GameEngine;

    .line 78
    .line 79
    :goto_2
    if-eqz v5, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    :cond_5
    if-nez p2, :cond_6

    .line 90
    .line 91
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    return-object p1

    .line 96
    :cond_6
    return-object p2
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;
    .locals 1

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Li1/o;->d()Li1/r;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->catalogItemsArrayOrNull(Li1/r;)Li1/n;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;->buildItems(Li1/n;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;-><init>(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
