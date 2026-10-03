package K1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f1248a = new Regex("[A-Za-z0-9][A-Za-z0-9._-]{0,127}");
    public static final Regex b = new Regex("[0-9]+(?:\\.[0-9]+){0,3}(?:[-+][A-Za-z0-9.-]+)?");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Regex f1249c = new Regex("[0-9a-fA-F]{64}");

    static {
        new Regex("0|[1-9][0-9]*");
    }

    public static final void a(String str) {
        if (!f1248a.matches(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public static final void b(String str) {
        if (!f1248a.matches(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public static final List c(List list) {
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        return listUnmodifiableList;
    }
}
