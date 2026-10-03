package P;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1529a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1532e;
    public int[] f;
    public final /* synthetic */ StaggeredGridLayoutManager g;

    public C0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f1529a = -1;
        this.b = Integer.MIN_VALUE;
        this.f1530c = false;
        this.f1531d = false;
        this.f1532e = false;
        int[] iArr = this.f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
