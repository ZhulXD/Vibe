package A1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E0 extends IllegalStateException {
    public E0(Throwable th) {
        super("session token key unavailable", th);
    }

    public E0() {
        super("registry revision overflow");
    }
}
