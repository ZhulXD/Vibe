package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: A1.d0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0014d0 {
    public static final EnumC0014d0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final EnumC0014d0 f179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final EnumC0014d0 f180d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final EnumC0014d0 f181e;
    public static final EnumC0014d0 f;
    public static final EnumC0014d0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumC0014d0[] f182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f183i;

    static {
        EnumC0014d0 enumC0014d0 = new EnumC0014d0("INVALID_TARGET", 0);
        b = enumC0014d0;
        EnumC0014d0 enumC0014d1 = new EnumC0014d0("UNSUPPORTED_ENGINE", 1);
        EnumC0014d0 enumC0014d2 = new EnumC0014d0("MISSING_GAME_PATH", 2);
        f179c = enumC0014d2;
        EnumC0014d0 enumC0014d3 = new EnumC0014d0("RUNTIME_UNAVAILABLE", 3);
        EnumC0014d0 enumC0014d4 = new EnumC0014d0("RUNTIME_NOT_TRUSTED", 4);
        EnumC0014d0 enumC0014d5 = new EnumC0014d0("DOWNLOAD_FAILED", 5);
        EnumC0014d0 enumC0014d6 = new EnumC0014d0("INSTALL_FAILED", 6);
        EnumC0014d0 enumC0014d7 = new EnumC0014d0("CLOSE_TIMEOUT_PROCESS_ALIVE", 7);
        EnumC0014d0 enumC0014d8 = new EnumC0014d0("CLOSE_TIMEOUT_PROCESS_UNVERIFIED", 8);
        f180d = enumC0014d8;
        EnumC0014d0 enumC0014d9 = new EnumC0014d0("REGISTRY_IO", 9);
        f181e = enumC0014d9;
        EnumC0014d0 enumC0014d10 = new EnumC0014d0("REGISTRY_CORRUPT", 10);
        f = enumC0014d10;
        EnumC0014d0 enumC0014d11 = new EnumC0014d0("UNKNOWN_SESSION", 11);
        EnumC0014d0 enumC0014d12 = new EnumC0014d0("PROCESS_IDENTITY_MISMATCH", 12);
        EnumC0014d0 enumC0014d13 = new EnumC0014d0("ACTIVITY_START_FAILED", 13);
        g = enumC0014d13;
        EnumC0014d0[] enumC0014d0Arr = {enumC0014d0, enumC0014d1, enumC0014d2, enumC0014d3, enumC0014d4, enumC0014d5, enumC0014d6, enumC0014d7, enumC0014d8, enumC0014d9, enumC0014d10, enumC0014d11, enumC0014d12, enumC0014d13};
        f182h = enumC0014d0Arr;
        f183i = EnumEntriesKt.enumEntries(enumC0014d0Arr);
    }

    public static EnumC0014d0 valueOf(String str) {
        return (EnumC0014d0) Enum.valueOf(EnumC0014d0.class, str);
    }

    public static EnumC0014d0[] values() {
        return (EnumC0014d0[]) f182h.clone();
    }
}
