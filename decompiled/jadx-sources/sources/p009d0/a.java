package p009d0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f3864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f3865d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ a[] f3866e;

    static {
        a aVar = new a("PREFER_ARGB_8888", 0);
        b = aVar;
        a aVar2 = new a("PREFER_RGB_565", 1);
        f3864c = aVar2;
        f3866e = new a[]{aVar, aVar2};
        f3865d = aVar;
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f3866e.clone();
    }
}
