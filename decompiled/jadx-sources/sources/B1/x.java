package B1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f372a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f375e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f377i;

    public x(String id, String label, String group, String tab, String keyCode, int i3, int i4, String shape, String colorHex) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(group, "group");
        Intrinsics.checkNotNullParameter(tab, "tab");
        Intrinsics.checkNotNullParameter(keyCode, "keyCode");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(colorHex, "colorHex");
        this.f372a = id;
        this.b = label;
        this.f373c = group;
        this.f374d = tab;
        this.f375e = keyCode;
        this.f = i3;
        this.g = i4;
        this.f376h = shape;
        this.f377i = colorHex;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return Intrinsics.areEqual(this.f372a, xVar.f372a) && Intrinsics.areEqual(this.b, xVar.b) && Intrinsics.areEqual(this.f373c, xVar.f373c) && Intrinsics.areEqual(this.f374d, xVar.f374d) && Intrinsics.areEqual(this.f375e, xVar.f375e) && this.f == xVar.f && this.g == xVar.g && Intrinsics.areEqual(this.f376h, xVar.f376h) && Intrinsics.areEqual(this.f377i, xVar.f377i);
    }

    public final int hashCode() {
        return this.f377i.hashCode() + E.b.d(this.f376h, E.b.a(this.g, E.b.a(this.f, E.b.d(this.f375e, E.b.d(this.f374d, E.b.d(this.f373c, E.b.d(this.b, this.f372a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("LibraryButton(id=", this.f372a, ", label=", this.b, ", group=");
        kotlin.collections.unsigned.a.n(sbJ, this.f373c, ", tab=", this.f374d, ", keyCode=");
        sbJ.append(this.f375e);
        sbJ.append(", widthDp=");
        sbJ.append(this.f);
        sbJ.append(", heightDp=");
        sbJ.append(this.g);
        sbJ.append(", shape=");
        sbJ.append(this.f376h);
        sbJ.append(", colorHex=");
        return kotlin.collections.unsigned.a.i(sbJ, this.f377i, ")");
    }

    public /* synthetic */ x(String str, String str2, String str3, String str4, int i3, int i4, String str5, String str6, int i5) {
        this(str, str2, str3, "special", (i5 & 16) != 0 ? "" : str4, (i5 & 32) != 0 ? 36 : i3, (i5 & 64) != 0 ? 36 : i4, (i5 & 128) != 0 ? "ROUNDED" : str5, str6);
    }
}
