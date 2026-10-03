package p047s1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && Intrinsics.areEqual("Scan Stores", "Scan Stores") && Intrinsics.areEqual("Inspect localStorage size for this runtime", "Inspect localStorage size for this runtime") && Intrinsics.areEqual("(function() {\n    return 'localStorage:' + localStorage.length;\n})();", "(function() {\n    return 'localStorage:' + localStorage.length;\n})();");
    }

    public final int hashCode() {
        return 2077100763;
    }

    public final String toString() {
        return "NativeCheatAction(title=Scan Stores, description=Inspect localStorage size for this runtime, jsCode=(function() {\n    return 'localStorage:' + localStorage.length;\n})();)";
    }
}
