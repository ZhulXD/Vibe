.class public final Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\r\u001a\u0004\u0018\u00010\n*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u0004*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u0004\u0018\u00010\n*\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\u000b*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u00020\u000b*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u0013\u0010\u0016\u001a\u00020\u000b*\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J#\u0010\u001a\u001a\u00020\u0018*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ#\u0010\u001d\u001a\u00020\u001c*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J!\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u0006*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\"\u0010 J!\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\u0006*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008$\u0010 J\u001b\u0010&\u001a\u00020%*\u00020\n2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008&\u0010\'J\u0017\u0010)\u001a\u0004\u0018\u00010\u000b*\u0004\u0018\u00010(H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010+\u001a\u0004\u0018\u00010\u000b*\u00020(H\u0002\u00a2\u0006\u0004\u0008+\u0010*J\u0015\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020\u000b\u00a2\u0006\u0004\u0008.\u0010/J\u001b\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010,\u001a\u00020\u000b\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u0004\u0018\u00010\u00072\u0006\u0010,\u001a\u00020\u000b\u00a2\u0006\u0004\u00082\u00103\u00a8\u00064"
    }
    d2 = {
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;",
        "",
        "<init>",
        "()V",
        "Li1/n;",
        "games",
        "",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
        "buildGames",
        "(Li1/n;)Ljava/util/List;",
        "Li1/r;",
        "",
        "name",
        "getAsJsonObjectOrNull",
        "(Li1/r;Ljava/lang/String;)Li1/r;",
        "getAsJsonArrayOrNull",
        "(Li1/r;Ljava/lang/String;)Li1/n;",
        "catalogEnvelopeOrNull",
        "(Li1/r;)Li1/r;",
        "getAsStringOrBlank",
        "(Li1/r;Ljava/lang/String;)Ljava/lang/String;",
        "getAsTextOrBlank",
        "decodeHtmlEntities",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "",
        "defaultValue",
        "getAsIntOrDefault",
        "(Li1/r;Ljava/lang/String;I)I",
        "",
        "getAsLongOrDefault",
        "(Li1/r;Ljava/lang/String;J)J",
        "getAsStringList",
        "(Li1/r;Ljava/lang/String;)Ljava/util/List;",
        "Lcom/minhub/gamehub/hub/catalog/DownloadLink;",
        "getAsDownloadLinks",
        "Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;",
        "getAsTranslationPackages",
        "Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;",
        "getAsStoreLinks",
        "(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;",
        "Li1/o;",
        "safePrimitiveString",
        "(Li1/o;)Ljava/lang/String;",
        "asTrimmedStringOrNull",
        "json",
        "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;",
        "parsePage",
        "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;",
        "parse",
        "(Ljava/lang/String;)Ljava/util/List;",
        "parseItem",
        "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
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
        "SMAP\nOnlineCatalogParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,183:1\n1#2:184\n1#2:195\n1#2:208\n1#2:221\n1617#3,9:185\n1869#3:194\n1870#3:196\n1626#3:197\n1617#3,9:198\n1869#3:207\n1870#3:209\n1626#3:210\n1617#3,9:211\n1869#3:220\n1870#3:222\n1626#3:223\n*S KotlinDebug\n*F\n+ 1 OnlineCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogParser\n*L\n137#1:195\n142#1:208\n153#1:221\n137#1:185,9\n137#1:194\n137#1:196\n137#1:197\n142#1:198,9\n142#1:207\n142#1:209\n142#1:210\n153#1:211,9\n153#1:220\n153#1:222\n153#1:223\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;

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

.method public static synthetic a(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->decodeHtmlEntities$lambda$11(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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

.method public static synthetic b(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->decodeHtmlEntities$lambda$8(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final buildGames(Li1/n;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/n;",
            ")",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
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
    if-eqz v2, :cond_3

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
    sget-object v3, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;

    .line 53
    .line 54
    const-string v4, "title"

    .line 55
    .line 56
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_1

    .line 65
    .line 66
    new-instance v5, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 67
    .line 68
    const-string v4, "postId"

    .line 69
    .line 70
    const-wide/16 v6, 0x0

    .line 71
    .line 72
    invoke-direct {v3, v2, v4, v6, v7}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsLongOrDefault(Li1/r;Ljava/lang/String;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    const-string v4, "slug"

    .line 77
    .line 78
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const-string v4, "zipUrl"

    .line 83
    .line 84
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    const-string v4, "downloadLinks"

    .line 89
    .line 90
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsDownloadLinks(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    const-string v4, "thumbnailUrl"

    .line 95
    .line 96
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    const-string v4, "contentHtml"

    .line 101
    .line 102
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    const-string v4, "excerpt"

    .line 107
    .line 108
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v14

    .line 112
    const-string v4, "categories"

    .line 113
    .line 114
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    const-string v4, "tags"

    .line 119
    .line 120
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v16

    .line 124
    const-string v4, "galleryImages"

    .line 125
    .line 126
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v17

    .line 130
    const-string v4, "translations"

    .line 131
    .line 132
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTranslationPackages(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v18

    .line 136
    const-string v4, "translator"

    .line 137
    .line 138
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v19

    .line 142
    const-string v4, "size"

    .line 143
    .line 144
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v20

    .line 148
    const-string v4, "storeUrls"

    .line 149
    .line 150
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStoreLinks(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 151
    .line 152
    .line 153
    move-result-object v21

    .line 154
    const-string v4, "engine"

    .line 155
    .line 156
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v22

    .line 160
    const-string v4, "streamUrl"

    .line 161
    .line 162
    invoke-direct {v3, v2, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v23

    .line 166
    invoke-direct/range {v5 .. v23}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0
.end method

.method private final catalogEnvelopeOrNull(Li1/r;)Li1/r;
    .locals 4

    .line 1
    const-string v0, "games"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v1, "data"

    .line 11
    .line 12
    invoke-direct {p0, p1, v1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, v2, v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, v3

    .line 25
    :goto_0
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p1, Li1/r;->b:Lk1/m;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lk1/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Li1/r;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_2
    return-object v3
.end method

.method private final decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "&amp;"

    .line 2
    .line 3
    const-string v1, "&"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "&lt;"

    .line 10
    .line 11
    const-string v1, "<"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "&gt;"

    .line 18
    .line 19
    const-string v1, ">"

    .line 20
    .line 21
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "&quot;"

    .line 26
    .line 27
    const-string v1, "\""

    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v0, "&apos;"

    .line 34
    .line 35
    const-string v1, "\'"

    .line 36
    .line 37
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "&nbsp;"

    .line 42
    .line 43
    const-string v1, "\u00a0"

    .line 44
    .line 45
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v0, Lkotlin/text/Regex;

    .line 50
    .line 51
    const-string v1, "&#(\\d+);"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, LL1/d;

    .line 57
    .line 58
    const/16 v2, 0x1d

    .line 59
    .line 60
    invoke-direct {v1, v2}, LL1/d;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    new-instance v0, Lkotlin/text/Regex;

    .line 68
    .line 69
    const-string v1, "&#x([0-9a-fA-F]+);"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/h;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v1, v2}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method private static final decodeHtmlEntities$lambda$11(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    const-string v0, "mr"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "get(...)"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->Y(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-gt v1, v2, :cond_0

    .line 33
    .line 34
    const/high16 v1, 0x110000

    .line 35
    .line 36
    if-ge v2, v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v0, "toChars(...)"

    .line 51
    .line 52
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method private static final decodeHtmlEntities$lambda$8(Lkotlin/text/MatchResult;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    const-string v0, "mr"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "get(...)"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-gt v1, v2, :cond_0

    .line 33
    .line 34
    const/high16 v1, 0x110000

    .line 35
    .line 36
    if-ge v2, v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string v0, "toChars(...)"

    .line 51
    .line 52
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method private final getAsDownloadLinks(Li1/r;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/r;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/DownloadLink;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

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
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Li1/o;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    instance-of v2, v1, Li1/r;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, p2

    .line 38
    :goto_1
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Li1/o;->d()Li1/r;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;

    .line 45
    .line 46
    const-string v3, "label"

    .line 47
    .line 48
    invoke-direct {v2, v1, v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "url"

    .line 53
    .line 54
    invoke-direct {v2, v1, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    new-instance v5, Lcom/minhub/gamehub/hub/catalog/DownloadLink;

    .line 72
    .line 73
    const-string v6, "checksum"

    .line 74
    .line 75
    invoke-direct {v2, v1, v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v5, v3, v4, v1}, Lcom/minhub/gamehub/hub/catalog/DownloadLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    :goto_2
    move-object v5, p2

    .line 84
    :goto_3
    if-eqz v5, :cond_0

    .line 85
    .line 86
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move-object p2, v0

    .line 91
    :cond_5
    if-nez p2, :cond_6

    .line 92
    .line 93
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :cond_6
    return-object p2
.end method

.method private final getAsIntOrDefault(Li1/r;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->safePrimitiveString(Li1/o;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
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

.method private final getAsLongOrDefault(Li1/r;Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Li1/r;->k(Ljava/lang/String;)Li1/o;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->safePrimitiveString(Li1/o;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1

    .line 22
    :cond_0
    return-wide p3
.end method

.method private final getAsStoreLinks(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 8
    .line 9
    const/16 v6, 0x1f

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 22
    .line 23
    const-string p2, "steam"

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string p2, "dlsite"

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string p2, "dmm"

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string p2, "itchio"

    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const-string p2, "other"

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-direct/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v1
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
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

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
    sget-object v1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->asTrimmedStringOrNull(Li1/o;)Ljava/lang/String;

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

.method private final getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->decodeHtmlEntities(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private final getAsTranslationPackages(Li1/r;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/r;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

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
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Li1/o;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    instance-of v2, v1, Li1/r;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v1, p2

    .line 38
    :goto_1
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v1}, Li1/o;->d()Li1/r;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget-object v2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->INSTANCE:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;

    .line 45
    .line 46
    const-string v3, "label"

    .line 47
    .line 48
    invoke-direct {v2, v1, v3}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "url"

    .line 53
    .line 54
    invoke-direct {v2, v1, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    new-instance v5, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;

    .line 72
    .line 73
    const-string v6, "code"

    .line 74
    .line 75
    invoke-direct {v2, v1, v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-direct {v5, v3, v4, v1}, Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    :goto_2
    move-object v5, p2

    .line 84
    :goto_3
    if-eqz v5, :cond_0

    .line 85
    .line 86
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move-object p2, v0

    .line 91
    :cond_5
    if-nez p2, :cond_6

    .line 92
    .line 93
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :cond_6
    return-object p2
.end method

.method private final safePrimitiveString(Li1/o;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    instance-of v1, p1, Li1/s;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p1, v0

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
    return-object p1

    .line 28
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->parsePage(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;->getGames()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final parseItem(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "json"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, La/a;->E(Ljava/lang/String;)Li1/o;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Li1/r;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, v3

    .line 21
    :goto_0
    if-eqz v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {v1}, Li1/o;->d()Li1/r;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "data"

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    return-object v3

    .line 36
    :cond_1
    const-string v2, "game"

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonObjectOrNull(Li1/r;Ljava/lang/String;)Li1/r;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    return-object v3

    .line 45
    :cond_2
    const-string v2, "title"

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    return-object v3

    .line 58
    :cond_3
    new-instance v4, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 59
    .line 60
    const-string v2, "postId"

    .line 61
    .line 62
    const-wide/16 v5, 0x0

    .line 63
    .line 64
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsLongOrDefault(Li1/r;Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    const-string v2, "slug"

    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    const-string v2, "zipUrl"

    .line 75
    .line 76
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    const-string v2, "downloadLinks"

    .line 81
    .line 82
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsDownloadLinks(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    const-string v2, "thumbnailUrl"

    .line 87
    .line 88
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    const-string v2, "contentHtml"

    .line 93
    .line 94
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    const-string v2, "excerpt"

    .line 99
    .line 100
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    const-string v2, "categories"

    .line 105
    .line 106
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    const-string v2, "tags"

    .line 111
    .line 112
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    const-string v2, "galleryImages"

    .line 117
    .line 118
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringList(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    const-string v2, "translations"

    .line 123
    .line 124
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTranslationPackages(Li1/r;Ljava/lang/String;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v17

    .line 128
    const-string v2, "translator"

    .line 129
    .line 130
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v18

    .line 134
    const-string v2, "size"

    .line 135
    .line 136
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsTextOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v19

    .line 140
    const-string v2, "storeUrls"

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStoreLinks(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;

    .line 143
    .line 144
    .line 145
    move-result-object v20

    .line 146
    const-string v2, "engine"

    .line 147
    .line 148
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v21

    .line 152
    const-string v2, "streamUrl"

    .line 153
    .line 154
    invoke-direct {v0, v1, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsStringOrBlank(Li1/r;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v22

    .line 158
    invoke-direct/range {v4 .. v22}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-object v4

    .line 162
    :cond_4
    return-object v3
.end method

.method public final parsePage(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;
    .locals 7

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
    invoke-direct {p0, p1}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->catalogEnvelopeOrNull(Li1/r;)Li1/r;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-string v0, "games"

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsJsonArrayOrNull(Li1/r;Ljava/lang/String;)Li1/n;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->buildGames(Li1/n;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    new-instance v1, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;

    .line 34
    .line 35
    const-string v0, "page"

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, p1, v0, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsIntOrDefault(Li1/r;Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const-string v3, "pageSize"

    .line 43
    .line 44
    const/16 v4, 0xa

    .line 45
    .line 46
    invoke-direct {p0, p1, v3, v4}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsIntOrDefault(Li1/r;Ljava/lang/String;I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    xor-int/2addr v2, v4

    .line 55
    const-string v4, "totalPages"

    .line 56
    .line 57
    invoke-direct {p0, p1, v4, v2}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsIntOrDefault(Li1/r;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const-string v2, "totalItems"

    .line 62
    .line 63
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-direct {p0, p1, v2, v5}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;->getAsIntOrDefault(Li1/r;Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    move v2, v0

    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;-><init>(IIIILjava/util/List;)V

    .line 73
    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string v0, "Catalog payload must contain games or data.games"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
