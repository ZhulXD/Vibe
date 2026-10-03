package P;

import android.graphics.Rect;
import android.view.View;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1635a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1636c;

    public Q(AbstractC0147g0 abstractC0147g0) {
        this.f1635a = Integer.MIN_VALUE;
        this.f1636c = new Rect();
        this.b = abstractC0147g0;
    }

    public static Q a(AbstractC0147g0 abstractC0147g0, int i3) {
        if (i3 == 0) {
            return new P(abstractC0147g0, 0);
        }
        if (i3 == 1) {
            return new P(abstractC0147g0, 1);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m(View view);

    public abstract int n(View view);

    public abstract void o(int i3);

    public Q(androidx.emoji2.text.i iVar) {
        this.f1635a = 0;
        this.f1636c = new androidx.emoji2.text.d();
        Preconditions.checkNotNull(iVar, "metadataLoader cannot be null.");
        this.b = iVar;
    }
}
