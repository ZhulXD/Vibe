package A1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z0 implements C0 {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0)) {
            return false;
        }
        EnumC0014d0 enumC0014d0 = EnumC0014d0.b;
        return true;
    }

    public final int hashCode() {
        return EnumC0014d0.f179c.hashCode();
    }

    public final String toString() {
        return "Failed(reason=" + EnumC0014d0.f179c + ")";
    }
}
