package A1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M0 {
    public static final M0 b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final M0 f97c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final M0 f98d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final M0 f99e;
    public static final M0 f;
    public static final M0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ M0[] f100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f101i;

    static {
        M0 m2 = new M0("APPLIED", 0);
        b = m2;
        M0 m3 = new M0("REJECTED_IDENTITY", 1);
        f97c = m3;
        M0 m4 = new M0("REJECTED_TRANSITION", 2);
        f98d = m4;
        M0 m5 = new M0("TERMINATION_CONFIRMED", 3);
        f99e = m5;
        M0 m6 = new M0("TERMINATION_UNCONFIRMED", 4);
        f = m6;
        M0 m7 = new M0("TOKEN_UNAVAILABLE", 5);
        g = m7;
        M0[] m0Arr = {m2, m3, m4, m5, m6, m7};
        f100h = m0Arr;
        f101i = EnumEntriesKt.enumEntries(m0Arr);
    }

    public static M0 valueOf(String str) {
        return (M0) Enum.valueOf(M0.class, str);
    }

    public static M0[] values() {
        return (M0[]) f100h.clone();
    }
}
