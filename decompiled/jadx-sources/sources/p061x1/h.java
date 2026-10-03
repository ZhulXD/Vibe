package p061x1;

import B1.m;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6009a;
    public final m b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f6010c;

    public h(String id, m view, a config) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(config, "config");
        this.f6009a = id;
        this.b = view;
        this.f6010c = config;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return Intrinsics.areEqual(this.f6009a, hVar.f6009a) && Intrinsics.areEqual(this.b, hVar.b) && Intrinsics.areEqual(this.f6010c, hVar.f6010c);
    }

    public final int hashCode() {
        return this.f6010c.hashCode() + ((this.b.hashCode() + (this.f6009a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DraggableButton(id=" + this.f6009a + ", view=" + this.b + ", config=" + this.f6010c + ")";
    }
}
