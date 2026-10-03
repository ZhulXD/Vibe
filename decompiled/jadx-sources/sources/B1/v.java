package B1;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static final v b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v f363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final v f364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final v f365e;
    public static final v f;
    public static final /* synthetic */ v[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f366h;

    static {
        v vVar = new v("JOY_BUTTON", 0);
        b = vVar;
        v vVar2 = new v("JOY_AXIS_XY", 1);
        f363c = vVar2;
        v vVar3 = new v("JOY_TRIGGER", 2);
        f364d = vVar3;
        v vVar4 = new v("GODOT_MOUSE_LEFT", 3);
        f365e = vVar4;
        v vVar5 = new v("ANDROID_KEY", 4);
        f = vVar5;
        v[] vVarArr = {vVar, vVar2, vVar3, vVar4, vVar5};
        g = vVarArr;
        f366h = EnumEntriesKt.enumEntries(vVarArr);
    }

    public static v valueOf(String str) {
        return (v) Enum.valueOf(v.class, str);
    }

    public static v[] values() {
        return (v[]) g.clone();
    }
}
