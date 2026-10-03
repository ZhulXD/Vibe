package S1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && Intrinsics.areEqual("webgl2", "webgl2") && Intrinsics.areEqual("WebGL 2", "WebGL 2");
    }

    public final int hashCode() {
        return -183341070;
    }

    public final String toString() {
        return "RenderModeOption(id=webgl2, label=WebGL 2)";
    }
}
