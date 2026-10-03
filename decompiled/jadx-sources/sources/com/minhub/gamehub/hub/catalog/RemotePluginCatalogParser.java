package com.minhub.gamehub.hub.catalog;

import com.minhub.gamehub.data.GameEngine;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import p023i1.n;
import p023i1.o;
import p023i1.r;
import p023i1.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u0010\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\t*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u0018\u001a\u0004\u0018\u00010\u0004*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u0005*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001c\u001a\u00020\r*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u001e*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u0004\u0018\u00010\r*\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0015\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020\r¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser;", "", "<init>", "()V", "Li1/r;", "Li1/n;", "catalogItemsArrayOrNull", "(Li1/r;)Li1/n;", "items", "", "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;", "buildItems", "(Li1/n;)Ljava/util/List;", "", "name", "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;", "getAsManifest", "(Li1/r;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;", "", "Lcom/minhub/gamehub/data/GameEngine;", "getAsSupportedEngines", "(Li1/r;Ljava/lang/String;)Ljava/util/Set;", "getAsStringList", "(Li1/r;Ljava/lang/String;)Ljava/util/List;", "getAsJsonObjectOrNull", "(Li1/r;Ljava/lang/String;)Li1/r;", "getAsJsonArrayOrNull", "(Li1/r;Ljava/lang/String;)Li1/n;", "getAsStringOrBlank", "(Li1/r;Ljava/lang/String;)Ljava/lang/String;", "", "defaultValue", "getAsBooleanOrDefault", "(Li1/r;Ljava/lang/String;Z)Z", "Li1/o;", "asTrimmedStringOrNull", "(Li1/o;)Ljava/lang/String;", "json", "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;", "parse", "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRemotePluginCatalogParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemotePluginCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n1#2:118\n1#2:129\n1#2:144\n1#2:157\n1617#3,9:119\n1869#3:128\n1870#3:130\n1626#3:131\n1617#3,9:132\n1869#3:141\n295#3,2:142\n1870#3:145\n1626#3:146\n1617#3,9:147\n1869#3:156\n1870#3:158\n1626#3:159\n*S KotlinDebug\n*F\n+ 1 RemotePluginCatalogParser.kt\ncom/minhub/gamehub/hub/catalog/RemotePluginCatalogParser\n*L\n63#1:129\n82#1:144\n91#1:157\n63#1:119,9\n63#1:128\n63#1:130\n63#1:131\n82#1:132,9\n82#1:141\n84#1:142,2\n82#1:145\n82#1:146\n91#1:147,9\n91#1:156\n91#1:158\n91#1:159\n*E\n"})
public final class RemotePluginCatalogParser {
    public static final RemotePluginCatalogParser INSTANCE = new RemotePluginCatalogParser();

    private RemotePluginCatalogParser() {
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

    private final List<RemotePluginCatalogItem> buildItems(n items) {
        if (items == null) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        Iterator it = items.b.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            o oVar = (o) it.next();
            oVar.getClass();
            if (!(oVar instanceof r)) {
                oVar = null;
            }
            if (oVar != null) {
                r rVarD = oVar.d();
                RemotePluginCatalogParser remotePluginCatalogParser = INSTANCE;
                String asStringOrBlank = remotePluginCatalogParser.getAsStringOrBlank(rVarD, "slug");
                String asStringOrBlank2 = remotePluginCatalogParser.getAsStringOrBlank(rVarD, "packageUrl");
                if (!StringsKt.isBlank(asStringOrBlank) && !StringsKt.isBlank(asStringOrBlank2)) {
                    listCreateListBuilder.add(new RemotePluginCatalogItem(asStringOrBlank, remotePluginCatalogParser.getAsStringOrBlank(rVarD, "title"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "description"), remotePluginCatalogParser.getAsSupportedEngines(rVarD, "supportedEngines"), remotePluginCatalogParser.getAsStringList(rVarD, "problemTags"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "targetScope"), remotePluginCatalogParser.getAsStringList(rVarD, "supportedGames"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "changelog"), remotePluginCatalogParser.getAsBooleanOrDefault(rVarD, "isFixPlugin", false), remotePluginCatalogParser.getAsBooleanOrDefault(rVarD, "isRecommendedByDefault", false), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "version"), asStringOrBlank2, remotePluginCatalogParser.getAsStringOrBlank(rVarD, "packageChecksum"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "installMode"), remotePluginCatalogParser.getAsManifest(rVarD, "manifest")));
                }
            }
        }
        return CollectionsKt.build(listCreateListBuilder);
    }

    private final n catalogItemsArrayOrNull(r rVar) {
        if (getAsJsonArrayOrNull(rVar, "items") != null) {
            return (n) rVar.b.get("items");
        }
        r asJsonObjectOrNull = getAsJsonObjectOrNull(rVar, "data");
        if ((asJsonObjectOrNull != null ? getAsJsonArrayOrNull(asJsonObjectOrNull, "items") : null) != null) {
            return (n) ((r) rVar.b.get("data")).b.get("items");
        }
        return null;
    }

    private final boolean getAsBooleanOrDefault(r rVar, String str, boolean z2) {
        o oVarK = rVar.k(str);
        if (oVarK != null && (oVarK instanceof s)) {
            s sVarE = oVarK.e();
            Serializable serializable = sVarE.b;
            if (serializable instanceof Boolean) {
                return sVarE.b();
            }
            if (serializable instanceof String) {
                String strF = sVarE.f();
                Intrinsics.checkNotNullExpressionValue(strF, "getAsString(...)");
                return StringsKt.equals(StringsKt.trim((CharSequence) strF).toString(), "true", true);
            }
        }
        return z2;
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

    private final RemotePluginInstallManifest getAsManifest(r rVar, String str) {
        RemotePluginInstallAction remotePluginInstallAction;
        r asJsonObjectOrNull = getAsJsonObjectOrNull(rVar, str);
        List listEmptyList = null;
        if (asJsonObjectOrNull == null) {
            return new RemotePluginInstallManifest(null, 1, null);
        }
        n<o> asJsonArrayOrNull = getAsJsonArrayOrNull(asJsonObjectOrNull, "actions");
        if (asJsonArrayOrNull != null) {
            ArrayList arrayList = new ArrayList();
            for (o oVar : asJsonArrayOrNull) {
                oVar.getClass();
                if (!(oVar instanceof r)) {
                    oVar = null;
                }
                if (oVar != null) {
                    r rVarD = oVar.d();
                    RemotePluginCatalogParser remotePluginCatalogParser = INSTANCE;
                    remotePluginInstallAction = new RemotePluginInstallAction(remotePluginCatalogParser.getAsStringOrBlank(rVarD, "type"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "from"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "to"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "path"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "pluginName"), remotePluginCatalogParser.getAsBooleanOrDefault(rVarD, "pluginStatus", false), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "marker"), remotePluginCatalogParser.getAsStringOrBlank(rVarD, "content"));
                } else {
                    remotePluginInstallAction = null;
                }
                if (remotePluginInstallAction != null) {
                    arrayList.add(remotePluginInstallAction);
                }
            }
            listEmptyList = arrayList;
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt.emptyList();
        }
        return new RemotePluginInstallManifest(listEmptyList);
    }

    private final List<String> getAsStringList(r rVar, String str) {
        ArrayList arrayList;
        n<o> asJsonArrayOrNull = getAsJsonArrayOrNull(rVar, str);
        if (asJsonArrayOrNull != null) {
            arrayList = new ArrayList();
            for (o oVar : asJsonArrayOrNull) {
                RemotePluginCatalogParser remotePluginCatalogParser = INSTANCE;
                Intrinsics.checkNotNull(oVar);
                String strAsTrimmedStringOrNull = remotePluginCatalogParser.asTrimmedStringOrNull(oVar);
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

    private final Set<GameEngine> getAsSupportedEngines(r rVar, String str) {
        GameEngine next;
        GameEngine gameEngine;
        n asJsonArrayOrNull = getAsJsonArrayOrNull(rVar, str);
        Set<GameEngine> set = null;
        if (asJsonArrayOrNull != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = asJsonArrayOrNull.b;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                o oVar = (o) obj;
                RemotePluginCatalogParser remotePluginCatalogParser = INSTANCE;
                Intrinsics.checkNotNull(oVar);
                String strAsTrimmedStringOrNull = remotePluginCatalogParser.asTrimmedStringOrNull(oVar);
                if (strAsTrimmedStringOrNull == null) {
                    gameEngine = null;
                } else {
                    Iterator<GameEngine> it = GameEngine.getEntries().iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!StringsKt.equals(next.name(), strAsTrimmedStringOrNull, true));
                    gameEngine = next;
                }
                if (gameEngine != null) {
                    arrayList.add(gameEngine);
                }
            }
            set = CollectionsKt.toSet(arrayList);
        }
        return set == null ? SetsKt.emptySet() : set;
    }

    public final RemotePluginCatalogResponse parse(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        r rVarD = p000a.a.E(json).d();
        Intrinsics.checkNotNull(rVarD);
        return new RemotePluginCatalogResponse(buildItems(catalogItemsArrayOrNull(rVarD)));
    }
}
