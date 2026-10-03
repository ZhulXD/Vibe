package com.minhub.gamehub.hub.catalog;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p023i1.n;
import p023i1.o;
import p023i1.r;
import p023i1.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\r\u001a\u0004\u0018\u00010\n*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u0004*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u0004\u0018\u00010\n*\u00020\nH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\u000b*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u00020\u000b*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u0013\u0010\u0016\u001a\u00020\u000b*\u00020\u000bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u001a\u001a\u00020\u0018*\u00020\n2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ#\u0010\u001d\u001a\u00020\u001c*\u00020\n2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001f\u0010 J!\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u0006*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010 J!\u0010$\u001a\b\u0012\u0004\u0012\u00020#0\u0006*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b$\u0010 J\u001b\u0010&\u001a\u00020%*\u00020\n2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u0004\u0018\u00010\u000b*\u0004\u0018\u00010(H\u0002¢\u0006\u0004\b)\u0010*J\u0015\u0010+\u001a\u0004\u0018\u00010\u000b*\u00020(H\u0002¢\u0006\u0004\b+\u0010*J\u0015\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020\u000b¢\u0006\u0004\b.\u0010/J\u001b\u00100\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010,\u001a\u00020\u000b¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u0004\u0018\u00010\u00072\u0006\u0010,\u001a\u00020\u000b¢\u0006\u0004\b2\u00103¨\u00064"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineCatalogParser;", "", "<init>", "()V", "Li1/n;", "games", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "buildGames", "(Li1/n;)Ljava/util/List;", "Li1/r;", "", "name", "getAsJsonObjectOrNull", "(Li1/r;Ljava/lang/String;)Li1/r;", "getAsJsonArrayOrNull", "(Li1/r;Ljava/lang/String;)Li1/n;", "catalogEnvelopeOrNull", "(Li1/r;)Li1/r;", "getAsStringOrBlank", "(Li1/r;Ljava/lang/String;)Ljava/lang/String;", "getAsTextOrBlank", "decodeHtmlEntities", "(Ljava/lang/String;)Ljava/lang/String;", "", "defaultValue", "getAsIntOrDefault", "(Li1/r;Ljava/lang/String;I)I", "", "getAsLongOrDefault", "(Li1/r;Ljava/lang/String;J)J", "getAsStringList", "(Li1/r;Ljava/lang/String;)Ljava/util/List;", "Lcom/minhub/gamehub/hub/catalog/DownloadLink;", "getAsDownloadLinks", "Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;", "getAsTranslationPackages", "Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;", "getAsStoreLinks", "(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;", "Li1/o;", "safePrimitiveString", "(Li1/o;)Ljava/lang/String;", "asTrimmedStringOrNull", "json", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "parsePage", "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "parse", "(Ljava/lang/String;)Ljava/util/List;", "parseItem", "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnlineCatalogParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,183:1\n1#2:184\n1#2:195\n1#2:208\n1#2:221\n1617#3,9:185\n1869#3:194\n1870#3:196\n1626#3:197\n1617#3,9:198\n1869#3:207\n1870#3:209\n1626#3:210\n1617#3,9:211\n1869#3:220\n1870#3:222\n1626#3:223\n*S KotlinDebug\n*F\n+ 1 OnlineCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/OnlineCatalogParser\n*L\n137#1:195\n142#1:208\n153#1:221\n137#1:185,9\n137#1:194\n137#1:196\n137#1:197\n142#1:198,9\n142#1:207\n142#1:209\n142#1:210\n153#1:211,9\n153#1:220\n153#1:222\n153#1:223\n*E\n"})
public final class OnlineCatalogParser {
    public static final OnlineCatalogParser INSTANCE = new OnlineCatalogParser();

    private OnlineCatalogParser() {
    }

    private final String asTrimmedStringOrNull(o oVar) {
        String strF;
        String string;
        oVar.getClass();
        if (!(oVar instanceof s)) {
            oVar = null;
        }
        if (oVar == null || (strF = oVar.f()) == null || (string = StringsKt.trim((CharSequence) strF).toString()) == null || string.length() <= 0) {
            return null;
        }
        return string;
    }

    private final List<OnlineCatalogItem> buildGames(n games) {
        if (games == null) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator it = games.b.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            o oVar = (o) it.next();
            oVar.getClass();
            if (!(oVar instanceof r)) {
                oVar = null;
            }
            if (oVar != null) {
                r rVarD = oVar.d();
                OnlineCatalogParser onlineCatalogParser = INSTANCE;
                String asTextOrBlank = onlineCatalogParser.getAsTextOrBlank(rVarD, "title");
                if (!StringsKt.isBlank(asTextOrBlank)) {
                    listCreateListBuilder.add(new OnlineCatalogItem(onlineCatalogParser.getAsLongOrDefault(rVarD, "postId", 0L), asTextOrBlank, onlineCatalogParser.getAsStringOrBlank(rVarD, "slug"), onlineCatalogParser.getAsStringOrBlank(rVarD, "zipUrl"), onlineCatalogParser.getAsDownloadLinks(rVarD, "downloadLinks"), onlineCatalogParser.getAsStringOrBlank(rVarD, "thumbnailUrl"), onlineCatalogParser.getAsStringOrBlank(rVarD, "contentHtml"), onlineCatalogParser.getAsTextOrBlank(rVarD, "excerpt"), onlineCatalogParser.getAsStringList(rVarD, "categories"), onlineCatalogParser.getAsStringList(rVarD, "tags"), onlineCatalogParser.getAsStringList(rVarD, "galleryImages"), onlineCatalogParser.getAsTranslationPackages(rVarD, "translations"), onlineCatalogParser.getAsTextOrBlank(rVarD, "translator"), onlineCatalogParser.getAsTextOrBlank(rVarD, "size"), onlineCatalogParser.getAsStoreLinks(rVarD, "storeUrls"), onlineCatalogParser.getAsStringOrBlank(rVarD, "engine"), onlineCatalogParser.getAsStringOrBlank(rVarD, "streamUrl")));
                }
            }
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    private final r catalogEnvelopeOrNull(r rVar) {
        if (getAsJsonArrayOrNull(rVar, "games") != null) {
            return rVar;
        }
        r asJsonObjectOrNull = getAsJsonObjectOrNull(rVar, "data");
        if ((asJsonObjectOrNull != null ? getAsJsonArrayOrNull(asJsonObjectOrNull, "games") : null) != null) {
            return (r) rVar.b.get("data");
        }
        return null;
    }

    private final String decodeHtmlEntities(String str) {
        return new Regex("&#x([0-9a-fA-F]+);").replace(new Regex("&#(\\d+);").replace(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "&amp;", "&", false, 4, (Object) null), "&lt;", "<", false, 4, (Object) null), "&gt;", ">", false, 4, (Object) null), "&quot;", "\"", false, 4, (Object) null), "&apos;", "'", false, 4, (Object) null), "&nbsp;", " ", false, 4, (Object) null), new L1.d(29)), new h(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence decodeHtmlEntities$lambda$11(MatchResult mr) {
        Intrinsics.checkNotNullParameter(mr, "mr");
        String str = mr.getGroupValues().get(1);
        Intrinsics.checkNotNullExpressionValue(str, "get(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str, 16);
        if (intOrNull != null) {
            int iIntValue = intOrNull.intValue();
            if (1 > iIntValue || iIntValue >= 1114112) {
                intOrNull = null;
            }
            if (intOrNull != null) {
                char[] chars = Character.toChars(intOrNull.intValue());
                Intrinsics.checkNotNullExpressionValue(chars, "toChars(...)");
                return new String(chars);
            }
        }
        return mr.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence decodeHtmlEntities$lambda$8(MatchResult mr) {
        Intrinsics.checkNotNullParameter(mr, "mr");
        String str = mr.getGroupValues().get(1);
        Intrinsics.checkNotNullExpressionValue(str, "get(...)");
        Integer intOrNull = StringsKt.toIntOrNull(str);
        if (intOrNull != null) {
            int iIntValue = intOrNull.intValue();
            if (1 > iIntValue || iIntValue >= 1114112) {
                intOrNull = null;
            }
            if (intOrNull != null) {
                char[] chars = Character.toChars(intOrNull.intValue());
                Intrinsics.checkNotNullExpressionValue(chars, "toChars(...)");
                return new String(chars);
            }
        }
        return mr.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0052  */
    private final List<DownloadLink> getAsDownloadLinks(r rVar, String str) {
        DownloadLink downloadLink;
        n<o> asJsonArrayOrNull = getAsJsonArrayOrNull(rVar, str);
        ArrayList arrayList = null;
        if (asJsonArrayOrNull != null) {
            ArrayList arrayList2 = new ArrayList();
            for (o oVar : asJsonArrayOrNull) {
                oVar.getClass();
                if (!(oVar instanceof r)) {
                    oVar = null;
                }
                if (oVar != null) {
                    r rVarD = oVar.d();
                    OnlineCatalogParser onlineCatalogParser = INSTANCE;
                    String asStringOrBlank = onlineCatalogParser.getAsStringOrBlank(rVarD, "label");
                    String asStringOrBlank2 = onlineCatalogParser.getAsStringOrBlank(rVarD, "url");
                    if (StringsKt.isBlank(asStringOrBlank) || StringsKt.isBlank(asStringOrBlank2)) {
                        downloadLink = null;
                    } else {
                        downloadLink = new DownloadLink(asStringOrBlank, asStringOrBlank2, onlineCatalogParser.getAsStringOrBlank(rVarD, "checksum"));
                    }
                } else {
                    downloadLink = null;
                }
                if (downloadLink != null) {
                    arrayList2.add(downloadLink);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private final int getAsIntOrDefault(r rVar, String str, int i3) {
        Integer intOrNull;
        String strSafePrimitiveString = safePrimitiveString(rVar.k(str));
        return (strSafePrimitiveString == null || (intOrNull = StringsKt.toIntOrNull(strSafePrimitiveString)) == null) ? i3 : intOrNull.intValue();
    }

    private final n getAsJsonArrayOrNull(r rVar, String str) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (!(oVarK instanceof n)) {
                oVarK = null;
            }
            if (oVarK != null) {
                return oVarK.c();
            }
        }
        return null;
    }

    private final r getAsJsonObjectOrNull(r rVar, String str) {
        o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (!(oVarK instanceof r)) {
                oVarK = null;
            }
            if (oVarK != null) {
                return oVarK.d();
            }
        }
        return null;
    }

    private final long getAsLongOrDefault(r rVar, String str, long j2) {
        Long longOrNull;
        String strSafePrimitiveString = safePrimitiveString(rVar.k(str));
        return (strSafePrimitiveString == null || (longOrNull = StringsKt.toLongOrNull(strSafePrimitiveString)) == null) ? j2 : longOrNull.longValue();
    }

    private final OnlineStoreLinks getAsStoreLinks(r rVar, String str) {
        r asJsonObjectOrNull = getAsJsonObjectOrNull(rVar, str);
        if (asJsonObjectOrNull != null) {
            return new OnlineStoreLinks(getAsStringOrBlank(asJsonObjectOrNull, "steam"), getAsStringOrBlank(asJsonObjectOrNull, "dlsite"), getAsStringOrBlank(asJsonObjectOrNull, "dmm"), getAsStringOrBlank(asJsonObjectOrNull, "itchio"), getAsStringOrBlank(asJsonObjectOrNull, "other"));
        }
        return new OnlineStoreLinks(null, null, null, null, null, 31, null);
    }

    private final List<String> getAsStringList(r rVar, String str) {
        ArrayList arrayList;
        n<o> asJsonArrayOrNull = getAsJsonArrayOrNull(rVar, str);
        if (asJsonArrayOrNull != null) {
            arrayList = new ArrayList();
            for (o oVar : asJsonArrayOrNull) {
                OnlineCatalogParser onlineCatalogParser = INSTANCE;
                Intrinsics.checkNotNull(oVar);
                String strAsTrimmedStringOrNull = onlineCatalogParser.asTrimmedStringOrNull(oVar);
                if (strAsTrimmedStringOrNull != null) {
                    arrayList.add(strAsTrimmedStringOrNull);
                }
            }
        } else {
            arrayList = null;
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private final String getAsStringOrBlank(r rVar, String str) {
        String strF;
        o oVarK = rVar.k(str);
        String string = null;
        if (oVarK != null) {
            if (!(oVarK instanceof s)) {
                oVarK = null;
            }
            if (oVarK != null && (strF = oVarK.f()) != null) {
                string = StringsKt.trim((CharSequence) strF).toString();
            }
        }
        return string == null ? "" : string;
    }

    private final String getAsTextOrBlank(r rVar, String str) {
        return decodeHtmlEntities(getAsStringOrBlank(rVar, str));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0052  */
    private final List<OnlineTranslationPackage> getAsTranslationPackages(r rVar, String str) {
        OnlineTranslationPackage onlineTranslationPackage;
        n<o> asJsonArrayOrNull = getAsJsonArrayOrNull(rVar, str);
        ArrayList arrayList = null;
        if (asJsonArrayOrNull != null) {
            ArrayList arrayList2 = new ArrayList();
            for (o oVar : asJsonArrayOrNull) {
                oVar.getClass();
                if (!(oVar instanceof r)) {
                    oVar = null;
                }
                if (oVar != null) {
                    r rVarD = oVar.d();
                    OnlineCatalogParser onlineCatalogParser = INSTANCE;
                    String asStringOrBlank = onlineCatalogParser.getAsStringOrBlank(rVarD, "label");
                    String asStringOrBlank2 = onlineCatalogParser.getAsStringOrBlank(rVarD, "url");
                    if (StringsKt.isBlank(asStringOrBlank) || StringsKt.isBlank(asStringOrBlank2)) {
                        onlineTranslationPackage = null;
                    } else {
                        onlineTranslationPackage = new OnlineTranslationPackage(asStringOrBlank, asStringOrBlank2, onlineCatalogParser.getAsStringOrBlank(rVarD, "code"));
                    }
                } else {
                    onlineTranslationPackage = null;
                }
                if (onlineTranslationPackage != null) {
                    arrayList2.add(onlineTranslationPackage);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList == null ? CollectionsKt.emptyList() : arrayList;
    }

    private final String safePrimitiveString(o oVar) {
        String strF;
        if (oVar == null || !(oVar instanceof s)) {
            oVar = null;
        }
        if (oVar == null || (strF = oVar.f()) == null) {
            return null;
        }
        return StringsKt.trim((CharSequence) strF).toString();
    }

    public final List<OnlineCatalogItem> parse(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        return parsePage(json).getGames();
    }

    public final OnlineCatalogItem parseItem(String json) {
        r asJsonObjectOrNull;
        r asJsonObjectOrNull2;
        Intrinsics.checkNotNullParameter(json, "json");
        o oVarE = p000a.a.E(json);
        if (!(oVarE instanceof r)) {
            oVarE = null;
        }
        if (oVarE == null || (asJsonObjectOrNull = getAsJsonObjectOrNull(oVarE.d(), "data")) == null || (asJsonObjectOrNull2 = getAsJsonObjectOrNull(asJsonObjectOrNull, "game")) == null) {
            return null;
        }
        String asTextOrBlank = getAsTextOrBlank(asJsonObjectOrNull2, "title");
        if (StringsKt.isBlank(asTextOrBlank)) {
            return null;
        }
        return new OnlineCatalogItem(getAsLongOrDefault(asJsonObjectOrNull2, "postId", 0L), asTextOrBlank, getAsStringOrBlank(asJsonObjectOrNull2, "slug"), getAsStringOrBlank(asJsonObjectOrNull2, "zipUrl"), getAsDownloadLinks(asJsonObjectOrNull2, "downloadLinks"), getAsStringOrBlank(asJsonObjectOrNull2, "thumbnailUrl"), getAsStringOrBlank(asJsonObjectOrNull2, "contentHtml"), getAsTextOrBlank(asJsonObjectOrNull2, "excerpt"), getAsStringList(asJsonObjectOrNull2, "categories"), getAsStringList(asJsonObjectOrNull2, "tags"), getAsStringList(asJsonObjectOrNull2, "galleryImages"), getAsTranslationPackages(asJsonObjectOrNull2, "translations"), getAsTextOrBlank(asJsonObjectOrNull2, "translator"), getAsTextOrBlank(asJsonObjectOrNull2, "size"), getAsStoreLinks(asJsonObjectOrNull2, "storeUrls"), getAsStringOrBlank(asJsonObjectOrNull2, "engine"), getAsStringOrBlank(asJsonObjectOrNull2, "streamUrl"));
    }

    public final OnlineCatalogPage parsePage(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        r rVarD = p000a.a.E(json).d();
        Intrinsics.checkNotNull(rVarD);
        r rVarCatalogEnvelopeOrNull = catalogEnvelopeOrNull(rVarD);
        if (rVarCatalogEnvelopeOrNull == null) {
            throw new IllegalArgumentException("Catalog payload must contain games or data.games");
        }
        List<OnlineCatalogItem> listBuildGames = buildGames(getAsJsonArrayOrNull(rVarCatalogEnvelopeOrNull, "games"));
        return new OnlineCatalogPage(getAsIntOrDefault(rVarCatalogEnvelopeOrNull, "page", 1), getAsIntOrDefault(rVarCatalogEnvelopeOrNull, "pageSize", 10), getAsIntOrDefault(rVarCatalogEnvelopeOrNull, "totalPages", 1 ^ (listBuildGames.isEmpty() ? 1 : 0)), getAsIntOrDefault(rVarCatalogEnvelopeOrNull, "totalItems", listBuildGames.size()), listBuildGames);
    }
}
