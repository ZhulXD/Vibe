package B1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f352a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v f354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f355e;
    public final int f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f356h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f357i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f358j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f359k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f360l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f361m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f362n;

    public u(String id, String label, String description, v kind, int i3, float f, float f3, int i4, int i5, String colorHex, String str, float f4, int i6) {
        i3 = (i6 & 16) != 0 ? 0 : i3;
        int i7 = (i6 & 32) != 0 ? -1 : 1;
        String shape = (i6 & 2048) != 0 ? "CIRCLE" : str;
        boolean z2 = (i6 & 8192) != 0;
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(kind, "kind");
        Intrinsics.checkNotNullParameter(colorHex, "colorHex");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.f352a = id;
        this.b = label;
        this.f353c = description;
        this.f354d = kind;
        this.f355e = i3;
        this.f = i7;
        this.g = f;
        this.f356h = f3;
        this.f357i = i4;
        this.f358j = i5;
        this.f359k = colorHex;
        this.f360l = shape;
        this.f361m = f4;
        this.f362n = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return Intrinsics.areEqual(this.f352a, uVar.f352a) && Intrinsics.areEqual(this.b, uVar.b) && Intrinsics.areEqual(this.f353c, uVar.f353c) && this.f354d == uVar.f354d && this.f355e == uVar.f355e && this.f == uVar.f && Float.compare(this.g, uVar.g) == 0 && Float.compare(this.f356h, uVar.f356h) == 0 && this.f357i == uVar.f357i && this.f358j == uVar.f358j && Intrinsics.areEqual(this.f359k, uVar.f359k) && Intrinsics.areEqual(this.f360l, uVar.f360l) && Float.compare(this.f361m, uVar.f361m) == 0 && this.f362n == uVar.f362n;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f362n) + ((Float.hashCode(this.f361m) + E.b.d(this.f360l, E.b.d(this.f359k, E.b.a(this.f358j, E.b.a(this.f357i, (Float.hashCode(this.f356h) + ((Float.hashCode(this.g) + E.b.a(this.f, E.b.a(this.f355e, (this.f354d.hashCode() + E.b.d(this.f353c, E.b.d(this.b, this.f352a.hashCode() * 31, 31), 31)) * 31, 31), 31)) * 31)) * 31, 31), 31), 31), 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("GodotButtonDef(id=", this.f352a, ", label=", this.b, ", description=");
        sbJ.append(this.f353c);
        sbJ.append(", kind=");
        sbJ.append(this.f354d);
        sbJ.append(", primaryIndex=");
        sbJ.append(this.f355e);
        sbJ.append(", secondaryIndex=");
        sbJ.append(this.f);
        sbJ.append(", defaultX=");
        sbJ.append(this.g);
        sbJ.append(", defaultY=");
        sbJ.append(this.f356h);
        sbJ.append(", defaultWidthDp=");
        sbJ.append(this.f357i);
        sbJ.append(", defaultHeightDp=");
        sbJ.append(this.f358j);
        sbJ.append(", colorHex=");
        kotlin.collections.unsigned.a.n(sbJ, this.f359k, ", shape=", this.f360l, ", opacity=");
        sbJ.append(this.f361m);
        sbJ.append(", defaultVisible=");
        sbJ.append(this.f362n);
        sbJ.append(")");
        return sbJ.toString();
    }
}
