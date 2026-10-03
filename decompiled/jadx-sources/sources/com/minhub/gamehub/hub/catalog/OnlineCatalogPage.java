package com.minhub.gamehub.hub.catalog;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003JA\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "", "page", "", "pageSize", "totalPages", "totalItems", "games", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "<init>", "(IIIILjava/util/List;)V", "getPage", "()I", "getPageSize", "getTotalPages", "getTotalItems", "getGames", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class OnlineCatalogPage {
    private final List<OnlineCatalogItem> games;
    private final int page;
    private final int pageSize;
    private final int totalItems;
    private final int totalPages;

    public OnlineCatalogPage(int i3, int i4, int i5, int i6, List<OnlineCatalogItem> games) {
        Intrinsics.checkNotNullParameter(games, "games");
        this.page = i3;
        this.pageSize = i4;
        this.totalPages = i5;
        this.totalItems = i6;
        this.games = games;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnlineCatalogPage copy$default(OnlineCatalogPage onlineCatalogPage, int i3, int i4, int i5, int i6, List list, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i3 = onlineCatalogPage.page;
        }
        if ((i7 & 2) != 0) {
            i4 = onlineCatalogPage.pageSize;
        }
        if ((i7 & 4) != 0) {
            i5 = onlineCatalogPage.totalPages;
        }
        if ((i7 & 8) != 0) {
            i6 = onlineCatalogPage.totalItems;
        }
        if ((i7 & 16) != 0) {
            list = onlineCatalogPage.games;
        }
        List list2 = list;
        int i8 = i5;
        return onlineCatalogPage.copy(i3, i4, i8, i6, list2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPageSize() {
        return this.pageSize;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getTotalPages() {
        return this.totalPages;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getTotalItems() {
        return this.totalItems;
    }

    public final List<OnlineCatalogItem> component5() {
        return this.games;
    }

    public final OnlineCatalogPage copy(int page, int pageSize, int totalPages, int totalItems, List<OnlineCatalogItem> games) {
        Intrinsics.checkNotNullParameter(games, "games");
        return new OnlineCatalogPage(page, pageSize, totalPages, totalItems, games);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnlineCatalogPage)) {
            return false;
        }
        OnlineCatalogPage onlineCatalogPage = (OnlineCatalogPage) other;
        return this.page == onlineCatalogPage.page && this.pageSize == onlineCatalogPage.pageSize && this.totalPages == onlineCatalogPage.totalPages && this.totalItems == onlineCatalogPage.totalItems && Intrinsics.areEqual(this.games, onlineCatalogPage.games);
    }

    public final List<OnlineCatalogItem> getGames() {
        return this.games;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPageSize() {
        return this.pageSize;
    }

    public final int getTotalItems() {
        return this.totalItems;
    }

    public final int getTotalPages() {
        return this.totalPages;
    }

    public int hashCode() {
        return this.games.hashCode() + E.b.a(this.totalItems, E.b.a(this.totalPages, E.b.a(this.pageSize, Integer.hashCode(this.page) * 31, 31), 31), 31);
    }

    public String toString() {
        int i3 = this.page;
        int i4 = this.pageSize;
        int i5 = this.totalPages;
        int i6 = this.totalItems;
        List<OnlineCatalogItem> list = this.games;
        StringBuilder sbP = E.b.p("OnlineCatalogPage(page=", i3, i4, ", pageSize=", ", totalPages=");
        sbP.append(i5);
        sbP.append(", totalItems=");
        sbP.append(i6);
        sbP.append(", games=");
        sbP.append(list);
        sbP.append(")");
        return sbP.toString();
    }
}
