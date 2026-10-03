package com.minhub.gamehub.hub.catalog;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0007J\u0006\u0010\u001a\u001a\u00020\u0010J\u0006\u0010\u001b\u001a\u00020\u0018R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogMemoryCache;", "", "<init>", "()V", "pages", "", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "fullCatalogItems", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "getFullCatalogItems", "()Ljava/util/List;", "setFullCatalogItems", "(Ljava/util/List;)V", "hasHydratedFullCatalog", "", "getHasHydratedFullCatalog", "()Z", "setHasHydratedFullCatalog", "(Z)V", "getPage", "page", "putPage", "", "data", "hasAnyPage", "invalidate", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CatalogMemoryCache {
    private static boolean hasHydratedFullCatalog;
    public static final CatalogMemoryCache INSTANCE = new CatalogMemoryCache();
    private static final Map<Integer, OnlineCatalogPage> pages = new LinkedHashMap();
    private static List<OnlineCatalogItem> fullCatalogItems = CollectionsKt.emptyList();

    private CatalogMemoryCache() {
    }

    public final List<OnlineCatalogItem> getFullCatalogItems() {
        return fullCatalogItems;
    }

    public final boolean getHasHydratedFullCatalog() {
        return hasHydratedFullCatalog;
    }

    public final OnlineCatalogPage getPage(int page) {
        return pages.get(Integer.valueOf(page));
    }

    public final boolean hasAnyPage() {
        return !pages.isEmpty();
    }

    public final void invalidate() {
        pages.clear();
        fullCatalogItems = CollectionsKt.emptyList();
        hasHydratedFullCatalog = false;
    }

    public final void putPage(int page, OnlineCatalogPage data) {
        Intrinsics.checkNotNullParameter(data, "data");
        pages.put(Integer.valueOf(page), data);
    }

    public final void setFullCatalogItems(List<OnlineCatalogItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        fullCatalogItems = list;
    }

    public final void setHasHydratedFullCatalog(boolean z2) {
        hasHydratedFullCatalog = z2;
    }
}
