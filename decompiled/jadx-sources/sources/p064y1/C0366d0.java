package p064y1;

/* JADX INFO: renamed from: y1.d0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0366d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6209a;
    public final boolean b;

    public C0366d0(boolean z2, boolean z3) {
        this.f6209a = z2;
        this.b = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0366d0)) {
            return false;
        }
        C0366d0 c0366d0 = (C0366d0) obj;
        return this.f6209a == c0366d0.f6209a && this.b == c0366d0.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.f6209a) * 31);
    }

    public final String toString() {
        return "GameMenuCheatState(basicVisible=" + this.f6209a + ", advancedVisible=" + this.b + ")";
    }
}
