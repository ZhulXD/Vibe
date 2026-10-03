package com.minhub.gamehub.hub.catalog;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogResponse;", "", "items", "", "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;", "<init>", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RemotePluginCatalogResponse {
    private final List<RemotePluginCatalogItem> items;

    public RemotePluginCatalogResponse(List<RemotePluginCatalogItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RemotePluginCatalogResponse copy$default(RemotePluginCatalogResponse remotePluginCatalogResponse, List list, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            list = remotePluginCatalogResponse.items;
        }
        return remotePluginCatalogResponse.copy(list);
    }

    public final List<RemotePluginCatalogItem> component1() {
        return this.items;
    }

    public final RemotePluginCatalogResponse copy(List<RemotePluginCatalogItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new RemotePluginCatalogResponse(items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RemotePluginCatalogResponse) && Intrinsics.areEqual(this.items, ((RemotePluginCatalogResponse) other).items);
    }

    public final List<RemotePluginCatalogItem> getItems() {
        return this.items;
    }

    public int hashCode() {
        return this.items.hashCode();
    }

    public String toString() {
        return "RemotePluginCatalogResponse(items=" + this.items + ")";
    }
}
