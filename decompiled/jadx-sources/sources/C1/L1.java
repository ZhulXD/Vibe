package C1;

import com.minhub.gamehub.hub.catalog.CatalogDownloadState;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class L1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f466a;

    static {
        int[] iArr = new int[CatalogDownloadState.values().length];
        try {
            iArr[CatalogDownloadState.RUNNING.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[CatalogDownloadState.QUEUED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[CatalogDownloadState.COMPLETED.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[CatalogDownloadState.FAILED.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f466a = iArr;
    }
}
