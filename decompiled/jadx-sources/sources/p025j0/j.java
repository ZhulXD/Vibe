package p025j0;

import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4630a;

    public j(String str) {
        this.f4630a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.f4630a.equals(((j) obj).f4630a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4630a.hashCode();
    }

    public final String toString() {
        return a.i(new StringBuilder("StringHeaderFactory{value='"), this.f4630a, "'}");
    }
}
