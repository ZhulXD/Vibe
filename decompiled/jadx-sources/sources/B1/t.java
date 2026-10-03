package B1;

import androidx.core.location.LocationRequestCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f351a;
    public static final Set b;

    static {
        u uVar = new u("gdpad", "D-Pad", "Điều hướng (axis 0/1)", v.f363c, 0, 0.12f, 0.78f, 120, 120, "#888888", "CIRCLE", 0.7f, 8192);
        u uVar2 = new u("btn_mouse_left", "Tap", "Nhấn chuột trái / chạm tâm màn hình", v.f365e, 0, 0.75f, 0.9f, 128, 48, "#888888", "ROUNDED", 0.65f, 8240);
        v vVar = v.b;
        u uVar3 = new u("btn_a", "A", "ui_accept (button 0)", vVar, 0, 0.84f, 0.74f, 112, 112, "#22C55E", null, 0.85f, 2080);
        u uVar4 = new u("btn_b", "B", "ui_cancel (button 1)", vVar, 1, 0.76f, 0.64f, LocationRequestCompat.QUALITY_LOW_POWER, LocationRequestCompat.QUALITY_LOW_POWER, "#EF4444", null, 0.85f, 2080);
        u uVar5 = new u("btn_x", "X", "X button (button 2)", vVar, 2, 0.76f, 0.84f, LocationRequestCompat.QUALITY_LOW_POWER, LocationRequestCompat.QUALITY_LOW_POWER, "#3B82F6", null, 0.85f, 2080);
        u uVar6 = new u("btn_y", "Y", "Y button (button 3)", vVar, 3, 0.84f, 0.54f, LocationRequestCompat.QUALITY_LOW_POWER, LocationRequestCompat.QUALITY_LOW_POWER, "#F59E0B", null, 0.85f, 2080);
        u uVar7 = new u("btn_lb", "LB", "L1 / Left Shoulder (button 9)", vVar, 9, 0.12f, 0.52f, 128, 56, "#888888", "ROUNDED", 0.7f, 32);
        u uVar8 = new u("btn_rb", "RB", "R1 / Right Shoulder (button 10)", vVar, 10, 0.88f, 0.52f, 128, 56, "#888888", "ROUNDED", 0.7f, 32);
        v vVar2 = v.f364d;
        f351a = CollectionsKt.listOf((Object[]) new u[]{uVar, uVar2, uVar3, uVar4, uVar5, uVar6, uVar7, uVar8, new u("btn_lt", "LT", "L2 / Left Trigger (axis 4)", vVar2, 4, 0.1f, 0.42f, 112, 56, "#6B7280", "ROUNDED", 0.7f, 32), new u("btn_rt", "RT", "R2 / Right Trigger (axis 5)", vVar2, 5, 0.9f, 0.42f, 112, 56, "#6B7280", "ROUNDED", 0.7f, 32), new u("btn_sta", "Start", "Start / Menu (button 6)", vVar, 6, 0.62f, 0.9f, 128, 48, "#888888", "ROUNDED", 0.65f, 32), new u("btn_sel", "Esc", "Phím Escape (KEYCODE_ESCAPE) — mở menu, đóng hộp thoại", v.f, 111, 0.88f, 0.9f, 128, 48, "#888888", "ROUNDED", 0.65f, 32)});
        b = SetsKt.setOf((Object[]) new String[]{"gdpad", "btn_mouse_left", "btn_sel"});
    }

    public static ArrayList a() {
        List<u> list = f351a;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        for (u uVar : list) {
            arrayList.add(p061x1.a.a(new p061x1.a(uVar.f352a, uVar.b, "", uVar.g, uVar.f356h, uVar.f357i, uVar.f358j, uVar.f360l, uVar.f359k, uVar.f361m, uVar.f362n), null, 0.0f, 0.0f, 0, 0, null, null, 0.0f, b.contains(uVar.f352a), 1023));
        }
        return arrayList;
    }

    public static u b(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator it = f351a.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((u) next).f352a, id)) {
                return (u) next;
            }
        }
        next = null;
        return (u) next;
    }
}
