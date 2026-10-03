package B1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map f323a;

    static {
        Float fValueOf = Float.valueOf(0.13f);
        Float fValueOf2 = Float.valueOf(0.8f);
        Pair pair = TuplesKt.to("dpad", new Pair(fValueOf, fValueOf2));
        Float fValueOf3 = Float.valueOf(0.12f);
        Float fValueOf4 = Float.valueOf(0.78f);
        Pair pair2 = TuplesKt.to("gdpad", new Pair(fValueOf3, fValueOf4));
        Pair pair3 = TuplesKt.to("joystick", new Pair(fValueOf, fValueOf2));
        Float fValueOf5 = Float.valueOf(0.75f);
        Float fValueOf6 = Float.valueOf(0.9f);
        Pair pair4 = TuplesKt.to("btn_mouse_left", new Pair(fValueOf5, fValueOf6));
        Float fValueOf7 = Float.valueOf(0.84f);
        Pair pair5 = TuplesKt.to("btn_a", new Pair(fValueOf7, Float.valueOf(0.74f)));
        Float fValueOf8 = Float.valueOf(0.92f);
        Float fValueOf9 = Float.valueOf(0.64f);
        Pair pair6 = TuplesKt.to("btn_b", new Pair(fValueOf8, fValueOf9));
        Pair pair7 = TuplesKt.to("btn_x", new Pair(Float.valueOf(0.76f), fValueOf9));
        Pair pair8 = TuplesKt.to("btn_y", new Pair(fValueOf7, Float.valueOf(0.54f)));
        Pair pair9 = TuplesKt.to("btn_lb", new Pair(fValueOf5, fValueOf3));
        Pair pair10 = TuplesKt.to("btn_lt", new Pair(fValueOf9, fValueOf3));
        Pair pair11 = TuplesKt.to("btn_rb", new Pair(Float.valueOf(0.91f), fValueOf3));
        Pair pair12 = TuplesKt.to("btn_rt", new Pair(Float.valueOf(0.99f), fValueOf3));
        Float fValueOf10 = Float.valueOf(0.88f);
        Pair pair13 = TuplesKt.to("btn_sel", new Pair(fValueOf4, fValueOf10));
        Pair pair14 = TuplesKt.to("btn_sta", new Pair(fValueOf6, fValueOf10));
        Pair pair15 = TuplesKt.to("btn_select", new Pair(fValueOf4, fValueOf10));
        Pair pair16 = TuplesKt.to("btn_start", new Pair(fValueOf6, fValueOf10));
        Float fValueOf11 = Float.valueOf(0.38f);
        Pair pair17 = TuplesKt.to("btn_mouse_left", new Pair(fValueOf11, fValueOf10));
        Float fValueOf12 = Float.valueOf(0.5f);
        Pair pair18 = TuplesKt.to("btn_mouse_right", new Pair(fValueOf12, fValueOf10));
        Float fValueOf13 = Float.valueOf(0.77f);
        f323a = MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, pair9, pair10, pair11, pair12, pair13, pair14, pair15, pair16, pair17, pair18, TuplesKt.to("btn_scroll_up", new Pair(fValueOf11, fValueOf13)), TuplesKt.to("btn_scroll_down", new Pair(fValueOf12, fValueOf13)));
    }

    public static boolean a(float f, float f3, List list) {
        if (list != null && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            p061x1.a aVar = (p061x1.a) it.next();
            if (Math.abs(aVar.f5996d - f) < 0.07f && Math.abs(aVar.f5997e - f3) < 0.07f) {
                return true;
            }
        }
        return false;
    }

    public static Pair b(List existing, String buttonId) {
        Object obj;
        Pair pair;
        Float fValueOf = Float.valueOf(0.5f);
        Intrinsics.checkNotNullParameter(buttonId, "buttonId");
        Intrinsics.checkNotNullParameter(existing, "existing");
        Pair pair2 = (Pair) f323a.get(buttonId);
        if (pair2 == null) {
            pair2 = new Pair(fValueOf, fValueOf);
        }
        Pair pair3 = new Pair(Float.valueOf(RangesKt.coerceIn(((Number) pair2.getFirst()).floatValue(), 0.06f, 0.94f)), Float.valueOf(RangesKt.coerceIn(((Number) pair2.getSecond()).floatValue(), 0.1f, 0.9f)));
        if (a(((Number) pair3.getFirst()).floatValue(), ((Number) pair3.getSecond()).floatValue(), existing)) {
            Iterator it = CollectionsKt.listOf((Object[]) new Float[]{Float.valueOf(0.06f), Float.valueOf(0.1f), Float.valueOf(0.14f), Float.valueOf(0.18f)}).iterator();
            while (it.hasNext()) {
                float fFloatValue = ((Number) it.next()).floatValue();
                List<Pair> listListOf = CollectionsKt.listOf((Object[]) new Pair[]{new Pair(Float.valueOf(((Number) pair3.getFirst()).floatValue() + fFloatValue), pair3.getSecond()), new Pair(Float.valueOf(((Number) pair3.getFirst()).floatValue() - fFloatValue), pair3.getSecond()), new Pair(pair3.getFirst(), Float.valueOf(((Number) pair3.getSecond()).floatValue() + fFloatValue)), new Pair(pair3.getFirst(), Float.valueOf(((Number) pair3.getSecond()).floatValue() - fFloatValue)), new Pair(Float.valueOf(((Number) pair3.getFirst()).floatValue() + fFloatValue), Float.valueOf(((Number) pair3.getSecond()).floatValue() + fFloatValue)), new Pair(Float.valueOf(((Number) pair3.getFirst()).floatValue() - fFloatValue), Float.valueOf(((Number) pair3.getSecond()).floatValue() + fFloatValue)), new Pair(Float.valueOf(((Number) pair3.getFirst()).floatValue() + fFloatValue), Float.valueOf(((Number) pair3.getSecond()).floatValue() - fFloatValue)), new Pair(Float.valueOf(((Number) pair3.getFirst()).floatValue() - fFloatValue), Float.valueOf(((Number) pair3.getSecond()).floatValue() - fFloatValue))});
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
                for (Pair pair4 : listListOf) {
                    arrayList.add(new Pair(Float.valueOf(RangesKt.coerceIn(((Number) pair4.getFirst()).floatValue(), 0.06f, 0.94f)), Float.valueOf(RangesKt.coerceIn(((Number) pair4.getSecond()).floatValue(), 0.1f, 0.9f))));
                }
                int size = arrayList.size();
                int i3 = 0;
                do {
                    if (i3 >= size) {
                        obj = null;
                        break;
                    }
                    obj = arrayList.get(i3);
                    i3++;
                    pair = (Pair) obj;
                } while (a(((Number) pair.getFirst()).floatValue(), ((Number) pair.getSecond()).floatValue(), existing));
                Pair pair5 = (Pair) obj;
                if (pair5 != null) {
                    return pair5;
                }
            }
        }
        return pair3;
    }
}
