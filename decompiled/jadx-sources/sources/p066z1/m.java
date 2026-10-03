package p066z1;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6457a = new Regex("(?<![\\w.])((?:[A-Za-z_][\\w.]*\\s*\\.\\s*)?registerExEvent\\s*\\(\\s*\\)\\s*;?)");

    public static String a(String source) {
        Intrinsics.checkNotNullParameter(source, "source");
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        int last = 0;
        for (MatchResult matchResult : Regex.findAll$default(f6457a, source, 0, 2, null)) {
            if (matchResult.getRange().getFirst() >= last) {
                int first = matchResult.getRange().getFirst() - 1;
                while (first >= 0 && CharsKt.isWhitespace(source.charAt(first))) {
                    first--;
                }
                int i3 = first + 1;
                while (first >= 0 && (Character.isLetterOrDigit(source.charAt(first)) || source.charAt(first) == '_')) {
                    first--;
                }
                String strSubstring = source.substring(first + 1, i3);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                if (!Intrinsics.areEqual(strSubstring, "function")) {
                    int first2 = matchResult.getRange().getFirst() - 1;
                    while (first2 >= 0 && CharsKt.isWhitespace(source.charAt(first2))) {
                        first2--;
                    }
                    if (first2 >= 0 && source.charAt(first2) == '{') {
                        do {
                            first2--;
                            if (first2 < 0) {
                                break;
                            }
                        } while (CharsKt.isWhitespace(source.charAt(first2)));
                        if (first2 < 2 || !StringsKt__StringsJVMKt.startsWith$default(source, "try", first2 - 2, false, 4, null)) {
                        }
                    }
                    sb.append((CharSequence) source, last, matchResult.getRange().getFirst());
                    sb.append("try{" + ((Object) matchResult.getGroupValues().get(1)) + "}catch(e){}");
                    last = matchResult.getRange().getLast() + 1;
                    z2 = true;
                }
            }
        }
        if (!z2) {
            return null;
        }
        sb.append((CharSequence) source, last, source.length());
        return sb.toString();
    }
}
