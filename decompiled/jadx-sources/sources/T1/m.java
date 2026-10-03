package T1;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends IOException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
