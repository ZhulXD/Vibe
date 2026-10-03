package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult;", "", "<init>", "()V", "Fresh", "NotModified", "Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;", "Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$NotModified;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class CatalogFetchResult {

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0016"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$Fresh;", "Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult;", "page", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "etag", "", "<init>", "(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;Ljava/lang/String;)V", "getPage", "()Lcom/minhub/gamehub/hub/catalog/OnlineCatalogPage;", "getEtag", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Fresh extends CatalogFetchResult {
        private final String etag;
        private final OnlineCatalogPage page;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Fresh(OnlineCatalogPage page, String str) {
            super(null);
            Intrinsics.checkNotNullParameter(page, "page");
            this.page = page;
            this.etag = str;
        }

        public static /* synthetic */ Fresh copy$default(Fresh fresh, OnlineCatalogPage onlineCatalogPage, String str, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                onlineCatalogPage = fresh.page;
            }
            if ((i3 & 2) != 0) {
                str = fresh.etag;
            }
            return fresh.copy(onlineCatalogPage, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final OnlineCatalogPage getPage() {
            return this.page;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getEtag() {
            return this.etag;
        }

        public final Fresh copy(OnlineCatalogPage page, String etag) {
            Intrinsics.checkNotNullParameter(page, "page");
            return new Fresh(page, etag);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Fresh)) {
                return false;
            }
            Fresh fresh = (Fresh) other;
            return Intrinsics.areEqual(this.page, fresh.page) && Intrinsics.areEqual(this.etag, fresh.etag);
        }

        public final String getEtag() {
            return this.etag;
        }

        public final OnlineCatalogPage getPage() {
            return this.page;
        }

        public int hashCode() {
            int iHashCode = this.page.hashCode() * 31;
            String str = this.etag;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Fresh(page=" + this.page + ", etag=" + this.etag + ")";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult$NotModified;", "Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class NotModified extends CatalogFetchResult {
        public static final NotModified INSTANCE = new NotModified();

        private NotModified() {
            super(null);
        }
    }

    public /* synthetic */ CatalogFetchResult(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private CatalogFetchResult() {
    }
}
