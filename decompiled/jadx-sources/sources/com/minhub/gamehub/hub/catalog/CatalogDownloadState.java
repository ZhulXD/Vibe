package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;", "", "<init>", "(Ljava/lang/String;I)V", "QUEUED", "RUNNING", "COMPLETED", "FAILED", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public enum CatalogDownloadState {
    QUEUED,
    RUNNING,
    COMPLETED,
    FAILED;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    public static EnumEntries<CatalogDownloadState> getEntries() {
        return $ENTRIES;
    }
}
