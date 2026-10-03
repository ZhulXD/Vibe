package G;

import Y0.e;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f984a;
    public ByteBuffer b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f986d;

    public c() {
        if (e.f2381c == null) {
            e.f2381c = new e(5);
        }
    }

    public final int a(int i3) {
        if (i3 < this.f986d) {
            return this.b.getShort(this.f985c + i3);
        }
        return 0;
    }
}
