package p014f0;

import java.util.concurrent.Executor;
import p052u0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4279a;
    public final Executor b;

    public t(f fVar, Executor executor) {
        this.f4279a = fVar;
        this.b = executor;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            return this.f4279a.equals(((t) obj).f4279a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4279a.hashCode();
    }
}
