package androidx.biometric;

import A1.C0013d;
import android.os.Looper;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class w extends ViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Executor f2775a;
    public com.bumptech.glide.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public F.b f2776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public N1.w f2777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0220f f2778e;
    public C0013d f;
    public v g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f2779h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2781j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2782k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2783l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2784m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2785n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public MutableLiveData f2786o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MutableLiveData f2787p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public MutableLiveData f2788q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public MutableLiveData f2789r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public MutableLiveData f2790s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public MutableLiveData f2792u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public MutableLiveData f2794w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public MutableLiveData f2795x;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2780i = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2791t = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2793v = 0;

    public static void f(MutableLiveData mutableLiveData, Object obj) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            mutableLiveData.setValue(obj);
        } else {
            mutableLiveData.postValue(obj);
        }
    }

    public final int a() {
        if (this.f2776c != null) {
            return this.f2777d != null ? 15 : 255;
        }
        return 0;
    }

    public final void b(C0221g c0221g) {
        if (this.f2787p == null) {
            this.f2787p = new MutableLiveData();
        }
        f(this.f2787p, c0221g);
    }

    public final void c(CharSequence charSequence) {
        if (this.f2795x == null) {
            this.f2795x = new MutableLiveData();
        }
        f(this.f2795x, charSequence);
    }

    public final void d(int i3) {
        if (this.f2794w == null) {
            this.f2794w = new MutableLiveData();
        }
        f(this.f2794w, Integer.valueOf(i3));
    }

    public final void e(boolean z2) {
        if (this.f2790s == null) {
            this.f2790s = new MutableLiveData();
        }
        f(this.f2790s, Boolean.valueOf(z2));
    }
}
