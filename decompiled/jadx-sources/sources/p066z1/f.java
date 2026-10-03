package p066z1;

import kotlin.collections.unsigned.a;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6440a = new Regex("@set\\s*\\(\\s*kirikiriz\\s*=\\s*1\\s*\\)");
    public static final Regex b = new Regex("@set\\s*\\([^)]*\\)");

    public static String a(String source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (f6440a.containsMatchIn(source)) {
            return null;
        }
        MatchResult matchResult = (MatchResult) SequencesKt.lastOrNull(Regex.findAll$default(b, source, 0, 2, null));
        if (matchResult == null) {
            return "@set(kirikiriz = 1)\n".concat(source);
        }
        int last = matchResult.getRange().getLast() + 1;
        String strSubstring = source.substring(0, last);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        String strSubstring2 = source.substring(last);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        return a.h(strSubstring, "\n@set(kirikiriz = 1)", strSubstring2);
    }
}
