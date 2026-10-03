package p021i;

import android.view.animation.Interpolator;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Interpolator f4422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ViewPropertyAnimatorListener f4423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4424e;
    public long b = -1;
    public final i f = new i(this);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f4421a = new ArrayList();

    public final void a() {
        if (this.f4424e) {
            ArrayList arrayList = this.f4421a;
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                ((ViewPropertyAnimatorCompat) obj).cancel();
            }
            this.f4424e = false;
        }
    }

    public final void b() {
        if (this.f4424e) {
            return;
        }
        ArrayList arrayList = this.f4421a;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat) obj;
            long j2 = this.b;
            if (j2 >= 0) {
                viewPropertyAnimatorCompat.setDuration(j2);
            }
            Interpolator interpolator = this.f4422c;
            if (interpolator != null) {
                viewPropertyAnimatorCompat.setInterpolator(interpolator);
            }
            if (this.f4423d != null) {
                viewPropertyAnimatorCompat.setListener(this.f);
            }
            viewPropertyAnimatorCompat.start();
        }
        this.f4424e = true;
    }
}
