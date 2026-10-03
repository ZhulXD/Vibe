package B1;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f378a;

    static {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(new C("Enter", "Enter"));
        listCreateListBuilder.add(new C("Escape", "Escape"));
        listCreateListBuilder.add(new C("Space", "Space"));
        listCreateListBuilder.add(new C("Tab", "Tab"));
        listCreateListBuilder.add(new C("Backspace", "Backspace"));
        listCreateListBuilder.add(new C("Shift", "Shift"));
        listCreateListBuilder.add(new C("Ctrl", "Ctrl"));
        listCreateListBuilder.add(new C("Alt", "Alt"));
        listCreateListBuilder.add(new C("CapsLock", "Caps Lock"));
        listCreateListBuilder.add(new C("Meta", "Meta"));
        listCreateListBuilder.add(new C("Menu", "Menu"));
        listCreateListBuilder.add(new C("Insert", "Insert"));
        listCreateListBuilder.add(new C("Delete", "Delete"));
        listCreateListBuilder.add(new C("Home", "Home"));
        listCreateListBuilder.add(new C("End", "End"));
        listCreateListBuilder.add(new C("PageUp", "Page Up"));
        listCreateListBuilder.add(new C("PageDown", "Page Down"));
        listCreateListBuilder.add(new C("ArrowUp", "ArrowUp"));
        listCreateListBuilder.add(new C("ArrowDown", "ArrowDown"));
        listCreateListBuilder.add(new C("ArrowLeft", "ArrowLeft"));
        listCreateListBuilder.add(new C("ArrowRight", "ArrowRight"));
        Iterator<Character> it = new CharRange('A', 'Z').iterator();
        while (it.hasNext()) {
            a(listCreateListBuilder, String.valueOf(((CharIterator) it).nextChar()));
        }
        Iterator<Character> it2 = new CharRange('0', '9').iterator();
        while (it2.hasNext()) {
            a(listCreateListBuilder, String.valueOf(((CharIterator) it2).nextChar()));
        }
        Iterator<Integer> it3 = new IntRange(1, 12).iterator();
        while (it3.hasNext()) {
            a(listCreateListBuilder, "F" + ((IntIterator) it3).nextInt());
        }
        listCreateListBuilder.add(new C("`", "`"));
        listCreateListBuilder.add(new C("-", "-"));
        listCreateListBuilder.add(new C("=", "="));
        listCreateListBuilder.add(new C("[", "["));
        listCreateListBuilder.add(new C("]", "]"));
        listCreateListBuilder.add(new C(";", ";"));
        listCreateListBuilder.add(new C("'", "'"));
        listCreateListBuilder.add(new C(",", ","));
        listCreateListBuilder.add(new C(".", "."));
        listCreateListBuilder.add(new C("/", "/"));
        listCreateListBuilder.add(new C("\\", "\\"));
        f378a = CollectionsKt.build(listCreateListBuilder);
    }

    public static void a(List list, String str) {
        list.add(new C(str, str));
    }

    public static String b(String value) {
        Object next;
        String str;
        Intrinsics.checkNotNullParameter(value, "value");
        Iterator it = f378a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual(((C) next).f302a, value));
        C c3 = (C) next;
        return (c3 == null || (str = c3.b) == null) ? value : str;
    }
}
