package O1;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1520a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f1521c;

    public d(String source, int i3, c engine, String descriptorId) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(descriptorId, "descriptorId");
        this.f1520a = source;
        this.b = i3;
        this.f1521c = descriptorId;
        if (StringsKt.isBlank(source)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (StringsKt.isBlank(descriptorId)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
