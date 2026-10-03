package p066z1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {
    public static final j b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final j f6445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final j f6446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final j f6447e;
    public static final j f;
    public static final j g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j f6448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final j f6449i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ j[] f6450j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6451k;

    static {
        j jVar = new j("ACTIVITY_CREATE", 0);
        b = jVar;
        j jVar2 = new j("NATIVE_LIBS_LOADED", 1);
        f6445c = jVar2;
        j jVar3 = new j("GL_VIEW_CREATED", 2);
        f6446d = jVar3;
        j jVar4 = new j("SURFACE_CREATED", 3);
        f6447e = jVar4;
        j jVar5 = new j("NATIVE_INIT_ENTER", 4);
        f = jVar5;
        j jVar6 = new j("NATIVE_INIT_RETURN", 5);
        g = jVar6;
        j jVar7 = new j("SURFACE_CHANGED", 6);
        f6448h = jVar7;
        j jVar8 = new j("FIRST_FRAME", 7);
        f6449i = jVar8;
        j[] jVarArr = {jVar, jVar2, jVar3, jVar4, jVar5, jVar6, jVar7, jVar8};
        f6450j = jVarArr;
        f6451k = EnumEntriesKt.enumEntries(jVarArr);
    }

    public static j valueOf(String str) {
        return (j) Enum.valueOf(j.class, str);
    }

    public static j[] values() {
        return (j[]) f6450j.clone();
    }
}
