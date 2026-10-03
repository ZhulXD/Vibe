package com.bumptech.glide;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f3215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final g f3216d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final g f3217e;
    public static final /* synthetic */ g[] f;

    static {
        g gVar = new g("IMMEDIATE", 0);
        b = gVar;
        g gVar2 = new g("HIGH", 1);
        f3215c = gVar2;
        g gVar3 = new g("NORMAL", 2);
        f3216d = gVar3;
        g gVar4 = new g("LOW", 3);
        f3217e = gVar4;
        f = new g[]{gVar, gVar2, gVar3, gVar4};
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) f.clone();
    }
}
