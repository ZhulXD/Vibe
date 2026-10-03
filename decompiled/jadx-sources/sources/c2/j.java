package c2;

import V1.A;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j extends h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f3188d;

    public j(Runnable runnable, long j2, i iVar) {
        super(j2, iVar);
        this.f3188d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f3188d.run();
        } finally {
            this.f3186c.getClass();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f3188d;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(A.a(runnable));
        sb.append(", ");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.f3186c);
        sb.append(']');
        return sb.toString();
    }
}
