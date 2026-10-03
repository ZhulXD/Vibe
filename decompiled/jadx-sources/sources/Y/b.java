package Y;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2376a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f2377c;

    public b(String str, a aVar) {
        if (str.isEmpty() || str.charAt(0) != '/') {
            throw new IllegalArgumentException("Path should start with a slash '/'.");
        }
        if (!str.endsWith("/")) {
            throw new IllegalArgumentException("Path should end with a slash '/'");
        }
        this.f2376a = "appassets.androidplatform.net";
        this.b = str;
        this.f2377c = aVar;
    }
}
