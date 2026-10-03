package p064y1;

/* JADX INFO: renamed from: y1.p1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0403p1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6323a;
    public final boolean b;

    public C0403p1(boolean z2, boolean z3) {
        this.f6323a = z2;
        this.b = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0403p1)) {
            return false;
        }
        C0403p1 c0403p1 = (C0403p1) obj;
        return this.f6323a == c0403p1.f6323a && this.b == c0403p1.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Boolean.hashCode(this.f6323a) * 31);
    }

    public final String toString() {
        return "InGameOverlayState(showRuntimeOverlay=" + this.f6323a + ", showEditorOverlay=" + this.b + ")";
    }
}
