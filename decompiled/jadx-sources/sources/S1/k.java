package S1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2069a;
    public final String b;

    public k(String code, String label) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(label, "label");
        this.f2069a = code;
        this.b = label;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return Intrinsics.areEqual(this.f2069a, kVar.f2069a) && Intrinsics.areEqual(this.b, kVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f2069a.hashCode() * 31);
    }

    public final String toString() {
        return E.b.n("TranslationLanguage(code=", this.f2069a, ", label=", this.b, ")");
    }
}
