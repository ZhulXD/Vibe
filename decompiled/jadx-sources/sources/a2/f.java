package a2;

import java.util.Arrays;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f2578a;

    static {
        try {
            f2578a = SequencesKt.toList(SequencesKt.asSequence(Arrays.asList(new W1.b()).iterator()));
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
