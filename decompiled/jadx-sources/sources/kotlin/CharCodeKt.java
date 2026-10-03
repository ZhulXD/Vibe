package kotlin;

import E.b;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\b\"\u001f\u0010\u0002\u001a\u00020\u0003*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Char", "", "code", "", "getCode$annotations", "(C)V", "getCode", "(C)I", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class CharCodeKt {
    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char Char(int i3) {
        if (i3 < 0 || i3 > 65535) {
            throw new IllegalArgumentException(b.i(i3, "Invalid Char code: "));
        }
        return (char) i3;
    }

    private static final int getCode(char c3) {
        return c3;
    }

    @SinceKotlin(version = "1.5")
    @IntrinsicConstEvaluation
    @InlineOnly
    public static /* synthetic */ void getCode$annotations(char c3) {
    }
}
