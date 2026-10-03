package com.minhub.gamehub.hub.catalog;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001f B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "items", "", "etag", "", "save", "(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V", "load", "(Landroid/content/Context;)Ljava/util/List;", "Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CachedCatalog;", "loadWithMeta", "(Landroid/content/Context;)Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CachedCatalog;", "touch", "(Landroid/content/Context;)V", "invalidate", "TAG", "Ljava/lang/String;", "FILE_NAME", "", "TTL_MS", "J", "Li1/l;", "gson", "Li1/l;", "CachedCatalog", "CacheWrapper", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCatalogDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogDiskCache.kt\ncom/minhub/gamehub/hub/catalog/CatalogDiskCache\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,102:1\n1563#2:103\n1634#2,3:104\n1#3:107\n*S KotlinDebug\n*F\n+ 1 CatalogDiskCache.kt\ncom/minhub/gamehub/hub/catalog/CatalogDiskCache\n*L\n37#1:103\n37#1:104,3\n*E\n"})
public final class CatalogDiskCache {
    private static final String FILE_NAME = "catalog_full_v1.json";
    private static final String TAG = "CatalogDiskCache";
    private static final long TTL_MS = 3600000;
    public static final CatalogDiskCache INSTANCE = new CatalogDiskCache();
    private static final l gson = new l();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0013\u001a\u00020\bHÆ\u0003J/\u0010\u0014\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CachedCatalog;", "", "items", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "etag", "", "fresh", "", "<init>", "(Ljava/util/List;Ljava/lang/String;Z)V", "getItems", "()Ljava/util/List;", "getEtag", "()Ljava/lang/String;", "getFresh", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class CachedCatalog {
        private final String etag;
        private final boolean fresh;
        private final List<OnlineCatalogItem> items;

        public CachedCatalog(List<OnlineCatalogItem> items, String str, boolean z2) {
            Intrinsics.checkNotNullParameter(items, "items");
            this.items = items;
            this.etag = str;
            this.fresh = z2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CachedCatalog copy$default(CachedCatalog cachedCatalog, List list, String str, boolean z2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                list = cachedCatalog.items;
            }
            if ((i3 & 2) != 0) {
                str = cachedCatalog.etag;
            }
            if ((i3 & 4) != 0) {
                z2 = cachedCatalog.fresh;
            }
            return cachedCatalog.copy(list, str, z2);
        }

        public final List<OnlineCatalogItem> component1() {
            return this.items;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getEtag() {
            return this.etag;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getFresh() {
            return this.fresh;
        }

        public final CachedCatalog copy(List<OnlineCatalogItem> items, String etag, boolean fresh) {
            Intrinsics.checkNotNullParameter(items, "items");
            return new CachedCatalog(items, etag, fresh);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CachedCatalog)) {
                return false;
            }
            CachedCatalog cachedCatalog = (CachedCatalog) other;
            return Intrinsics.areEqual(this.items, cachedCatalog.items) && Intrinsics.areEqual(this.etag, cachedCatalog.etag) && this.fresh == cachedCatalog.fresh;
        }

        public final String getEtag() {
            return this.etag;
        }

        public final boolean getFresh() {
            return this.fresh;
        }

        public final List<OnlineCatalogItem> getItems() {
            return this.items;
        }

        public int hashCode() {
            int iHashCode = this.items.hashCode() * 31;
            String str = this.etag;
            return Boolean.hashCode(this.fresh) + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
        }

        public String toString() {
            return "CachedCatalog(items=" + this.items + ", etag=" + this.etag + ", fresh=" + this.fresh + ")";
        }
    }

    private CatalogDiskCache() {
    }

    public static /* synthetic */ void save$default(CatalogDiskCache catalogDiskCache, Context context, List list, String str, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            str = null;
        }
        catalogDiskCache.save(context, list, str);
    }

    public final void invalidate(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            new File(context.getFilesDir(), FILE_NAME).delete();
            Log.d(TAG, "Disk cache invalidated");
        } catch (Exception unused) {
        }
    }

    public final List<OnlineCatalogItem> load(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        CachedCatalog cachedCatalogLoadWithMeta = loadWithMeta(context);
        if (cachedCatalogLoadWithMeta != null) {
            if (!cachedCatalogLoadWithMeta.getFresh()) {
                cachedCatalogLoadWithMeta = null;
            }
            if (cachedCatalogLoadWithMeta != null) {
                return cachedCatalogLoadWithMeta.getItems();
            }
        }
        return null;
    }

    public final CachedCatalog loadWithMeta(Context context) {
        CacheWrapper cacheWrapper;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            File file = new File(context.getFilesDir(), FILE_NAME);
            if (file.exists() && (cacheWrapper = (CacheWrapper) gson.c(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null), CacheWrapper.class)) != null) {
                long jCurrentTimeMillis = System.currentTimeMillis() - cacheWrapper.getSavedAt();
                boolean z2 = jCurrentTimeMillis <= TTL_MS;
                Log.d(TAG, "Loaded " + cacheWrapper.getItems().size() + " items from disk cache (" + (jCurrentTimeMillis / ((long) 1000)) + "s old, fresh=" + z2 + ")");
                return new CachedCatalog(cacheWrapper.getItems(), cacheWrapper.getEtag(), z2);
            }
            return null;
        } catch (Exception e2) {
            E.b.x("Failed to load disk cache: ", e2.getMessage(), TAG);
            return null;
        }
    }

    public final void save(Context context, List<OnlineCatalogItem> items, String etag) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(items, "items");
        try {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10));
            Iterator<T> it = items.iterator();
            while (it.hasNext()) {
                arrayList.add(OnlineCatalogItem.copy$default((OnlineCatalogItem) it.next(), 0L, null, null, null, null, null, "", null, null, null, null, null, null, null, null, null, null, 131007, null));
            }
            CacheWrapper cacheWrapper = new CacheWrapper(arrayList, System.currentTimeMillis(), etag);
            File file = new File(context.getFilesDir(), FILE_NAME);
            String strG = gson.g(cacheWrapper);
            Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
            FilesKt__FileReadWriteKt.writeText$default(file, strG, null, 2, null);
            Log.d(TAG, "Saved " + items.size() + " items to disk cache (contentHtml stripped, etag=" + etag + ")");
        } catch (Exception e2) {
            E.b.x("Failed to save disk cache: ", e2.getMessage(), TAG);
        }
    }

    public final void touch(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            File file = new File(context.getFilesDir(), FILE_NAME);
            if (file.exists()) {
                l lVar = gson;
                CacheWrapper cacheWrapper = (CacheWrapper) lVar.c(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null), CacheWrapper.class);
                if (cacheWrapper == null) {
                    return;
                }
                String strG = lVar.g(CacheWrapper.copy$default(cacheWrapper, null, System.currentTimeMillis(), null, 5, null));
                Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
                FilesKt__FileReadWriteKt.writeText$default(file, strG, null, 2, null);
                Log.d(TAG, "Disk cache revalidated via 304 — TTL extended");
            }
        } catch (Exception e2) {
            E.b.x("Failed to touch disk cache: ", e2.getMessage(), TAG);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B)\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0003J/\u0010\u0014\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\bHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDiskCache$CacheWrapper;", "", "items", "", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "savedAt", "", "etag", "", "<init>", "(Ljava/util/List;JLjava/lang/String;)V", "getItems", "()Ljava/util/List;", "getSavedAt", "()J", "getEtag", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class CacheWrapper {
        private final String etag;
        private final List<OnlineCatalogItem> items;
        private final long savedAt;

        public CacheWrapper(List<OnlineCatalogItem> items, long j2, String str) {
            Intrinsics.checkNotNullParameter(items, "items");
            this.items = items;
            this.savedAt = j2;
            this.etag = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CacheWrapper copy$default(CacheWrapper cacheWrapper, List list, long j2, String str, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                list = cacheWrapper.items;
            }
            if ((i3 & 2) != 0) {
                j2 = cacheWrapper.savedAt;
            }
            if ((i3 & 4) != 0) {
                str = cacheWrapper.etag;
            }
            return cacheWrapper.copy(list, j2, str);
        }

        public final List<OnlineCatalogItem> component1() {
            return this.items;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getSavedAt() {
            return this.savedAt;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getEtag() {
            return this.etag;
        }

        public final CacheWrapper copy(List<OnlineCatalogItem> items, long savedAt, String etag) {
            Intrinsics.checkNotNullParameter(items, "items");
            return new CacheWrapper(items, savedAt, etag);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CacheWrapper)) {
                return false;
            }
            CacheWrapper cacheWrapper = (CacheWrapper) other;
            return Intrinsics.areEqual(this.items, cacheWrapper.items) && this.savedAt == cacheWrapper.savedAt && Intrinsics.areEqual(this.etag, cacheWrapper.etag);
        }

        public final String getEtag() {
            return this.etag;
        }

        public final List<OnlineCatalogItem> getItems() {
            return this.items;
        }

        public final long getSavedAt() {
            return this.savedAt;
        }

        public int hashCode() {
            int iC = E.b.c(this.savedAt, this.items.hashCode() * 31, 31);
            String str = this.etag;
            return iC + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "CacheWrapper(items=" + this.items + ", savedAt=" + this.savedAt + ", etag=" + this.etag + ")";
        }

        public /* synthetic */ CacheWrapper(List list, long j2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(list, j2, (i3 & 4) != 0 ? null : str);
        }
    }
}
