package F1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f980a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f981c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f982d;

    public /* synthetic */ f(String str, String str2, float f, int i3) {
        this(str, str2, (i3 & 4) != 0 ? 1.0f : f, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Intrinsics.areEqual(this.f980a, fVar.f980a) && Intrinsics.areEqual(this.b, fVar.b) && Float.compare(this.f981c, fVar.f981c) == 0 && this.f982d == fVar.f982d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f982d) + ((Float.hashCode(this.f981c) + E.b.d(this.b, this.f980a.hashCode() * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("VirtualKey(label=", this.f980a, ", keyCode=", this.b, ", widthWeight=");
        sbJ.append(this.f981c);
        sbJ.append(", isSpecial=");
        sbJ.append(this.f982d);
        sbJ.append(")");
        return sbJ.toString();
    }

    public f(String label, String keyCode, float f, boolean z2) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(keyCode, "keyCode");
        this.f980a = label;
        this.b = keyCode;
        this.f981c = f;
        this.f982d = z2;
    }
}
