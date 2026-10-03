package C1;

import java.text.Normalizer;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class U {
    public static int a(int i3) {
        int iCoerceAtLeast = RangesKt.coerceAtLeast(i3, 0);
        long jCoerceAtLeast = RangesKt.coerceAtLeast(10, 1);
        return (int) RangesKt.coerceAtMost(RangesKt.coerceAtLeast(((((long) iCoerceAtLeast) + jCoerceAtLeast) - 1) / jCoerceAtLeast, 1L), 2147483647L);
    }

    public static List b(List items, int i3) {
        Intrinsics.checkNotNullParameter(items, "items");
        int iCoerceAtLeast = RangesKt.coerceAtLeast(i3, 1);
        long jCoerceAtLeast = RangesKt.coerceAtLeast(10, 1);
        int iCoerceAtMost = (int) RangesKt.coerceAtMost(((long) (iCoerceAtLeast - 1)) * jCoerceAtLeast, items.size());
        return items.subList(iCoerceAtMost, (int) RangesKt.coerceAtMost(((long) iCoerceAtMost) + jCoerceAtLeast, items.size()));
    }

    public static final boolean c(Z z2) {
        Intrinsics.checkNotNullParameter(z2, "<this>");
        return (StringsKt.isBlank(z2.f539a) && z2.b == EnumC0064f0.b && z2.f540c == Y.ALL && z2.f541d == EnumC0055c0.ALL) ? false : true;
    }

    public static final String d(String str) {
        String string = StringsKt.trim((CharSequence) str).toString();
        Locale ROOT = Locale.ROOT;
        Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
        String lowerCase = string.toLowerCase(ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String strNormalize = Normalizer.normalize(lowerCase, Normalizer.Form.NFD);
        Intrinsics.checkNotNullExpressionValue(strNormalize, "normalize(...)");
        return new Regex("\\s+").replace(new Regex("\\p{Mn}+").replace(strNormalize, ""), " ");
    }
}
