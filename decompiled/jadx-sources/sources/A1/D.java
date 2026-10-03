package A1;

import java.util.LinkedHashMap;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final D f54a = new D();

    public static boolean a(long j2, long j3) {
        return ((j3 > (-9223372036854765808L) ? 1 : (j3 == (-9223372036854765808L) ? 0 : -1)) < 0 ? Long.MIN_VALUE : j3 - 10000) <= j2 && j2 <= ((j3 > 9223372036854765807L ? 1 : (j3 == 9223372036854765807L ? 0 : -1)) > 0 ? Long.MAX_VALUE : j3 + 10000);
    }

    public static final String b(String str, LinkedHashMap linkedHashMap) {
        Object obj = linkedHashMap.get(str);
        String str2 = obj instanceof String ? (String) obj : null;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return null;
        }
        return str2;
    }
}
