package C1;

import com.minhub.gamehub.hub.catalog.UnsupportedImportReason;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f467a;

    static {
        int[] iArr = new int[UnsupportedImportReason.values().length];
        try {
            iArr[UnsupportedImportReason.GODOT_NEEDS_DEDICATED_IMPORT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[UnsupportedImportReason.KIRI_NOT_EXTRACTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f467a = iArr;
    }
}
