package p064y1;

import E.b;

/* JADX INFO: renamed from: y1.o1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0400o1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6310a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f6311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f6312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6313e;

    public /* synthetic */ C0400o1() {
        this(false, false, false, false, false);
    }

    public static C0400o1 a(C0400o1 c0400o1, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i3) {
        if ((i3 & 1) != 0) {
            z2 = c0400o1.f6310a;
        }
        boolean z7 = z2;
        if ((i3 & 2) != 0) {
            z3 = c0400o1.b;
        }
        boolean z8 = z3;
        if ((i3 & 4) != 0) {
            z4 = c0400o1.f6311c;
        }
        boolean z9 = z4;
        if ((i3 & 8) != 0) {
            z5 = c0400o1.f6312d;
        }
        boolean z10 = z5;
        if ((i3 & 16) != 0) {
            z6 = c0400o1.f6313e;
        }
        c0400o1.getClass();
        return new C0400o1(z7, z8, z9, z10, z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0400o1)) {
            return false;
        }
        C0400o1 c0400o1 = (C0400o1) obj;
        return this.f6310a == c0400o1.f6310a && this.b == c0400o1.b && this.f6311c == c0400o1.f6311c && this.f6312d == c0400o1.f6312d && this.f6313e == c0400o1.f6313e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f6313e) + b.b(b.b(b.b(Boolean.hashCode(this.f6310a) * 31, 31, this.b), 31, this.f6311c), 31, this.f6312d);
    }

    public final String toString() {
        return "InGameMenuSectionState(buttonsExpanded=" + this.f6310a + ", cheatsExpanded=" + this.b + ", saveLoadExpanded=" + this.f6311c + ", otherExpanded=" + this.f6312d + ", resolutionExpanded=" + this.f6313e + ")";
    }

    public C0400o1(boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f6310a = z2;
        this.b = z3;
        this.f6311c = z4;
        this.f6312d = z5;
        this.f6313e = z6;
    }
}
