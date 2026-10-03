package P;

import android.util.Log;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y0 {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final List f1806t = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f1807a;
    public WeakReference b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1813j;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RecyclerView f1821r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public W f1822s;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1808c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1809d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1810e = -1;
    public int f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public y0 f1811h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public y0 f1812i = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f1814k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final List f1815l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1816m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public o0 f1817n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1818o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1819p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1820q = -1;

    public y0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f1807a = view;
    }

    public final void a(int i3) {
        this.f1813j = i3 | this.f1813j;
    }

    public final int b() {
        int i3 = this.g;
        return i3 == -1 ? this.f1808c : i3;
    }

    public final List c() {
        ArrayList arrayList;
        return ((this.f1813j & 1024) != 0 || (arrayList = this.f1814k) == null || arrayList.size() == 0) ? f1806t : this.f1815l;
    }

    public final boolean d() {
        View view = this.f1807a;
        return (view.getParent() == null || view.getParent() == this.f1821r) ? false : true;
    }

    public final boolean e() {
        return (this.f1813j & 1) != 0;
    }

    public final boolean f() {
        return (this.f1813j & 4) != 0;
    }

    public final boolean g() {
        return (this.f1813j & 16) == 0 && !ViewCompat.hasTransientState(this.f1807a);
    }

    public final boolean h() {
        return (this.f1813j & 8) != 0;
    }

    public final boolean i() {
        return this.f1817n != null;
    }

    public final boolean j() {
        return (this.f1813j & 256) != 0;
    }

    public final boolean k() {
        return (this.f1813j & 2) != 0;
    }

    public final void l(int i3, boolean z2) {
        if (this.f1809d == -1) {
            this.f1809d = this.f1808c;
        }
        if (this.g == -1) {
            this.g = this.f1808c;
        }
        if (z2) {
            this.g += i3;
        }
        this.f1808c += i3;
        View view = this.f1807a;
        if (view.getLayoutParams() != null) {
            ((C0149h0) view.getLayoutParams()).f1688c = true;
        }
    }

    public final void m() {
        if (RecyclerView.f2944B0 && j()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.f1813j = 0;
        this.f1808c = -1;
        this.f1809d = -1;
        this.f1810e = -1L;
        this.g = -1;
        this.f1816m = 0;
        this.f1811h = null;
        this.f1812i = null;
        ArrayList arrayList = this.f1814k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f1813j &= -1025;
        this.f1819p = 0;
        this.f1820q = -1;
        RecyclerView.l(this);
    }

    public final void n(boolean z2) {
        int i3 = this.f1816m;
        int i4 = z2 ? i3 - 1 : i3 + 1;
        this.f1816m = i4;
        if (i4 < 0) {
            this.f1816m = 0;
            if (RecyclerView.f2944B0) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z2 && i4 == 1) {
            this.f1813j |= 16;
        } else if (z2 && i4 == 0) {
            this.f1813j &= -17;
        }
        if (RecyclerView.f2945C0) {
            Log.d("RecyclerView", "setIsRecyclable val:" + z2 + ":" + this);
        }
    }

    public final boolean o() {
        return (this.f1813j & 128) != 0;
    }

    public final boolean p() {
        return (this.f1813j & 32) != 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f1808c + " id=" + this.f1810e + ", oldPos=" + this.f1809d + ", pLpos:" + this.g);
        if (i()) {
            sb.append(" scrap ");
            sb.append(this.f1818o ? "[changeScrap]" : "[attachedScrap]");
        }
        if (f()) {
            sb.append(" invalid");
        }
        if (!e()) {
            sb.append(" unbound");
        }
        if ((this.f1813j & 2) != 0) {
            sb.append(" update");
        }
        if (h()) {
            sb.append(" removed");
        }
        if (o()) {
            sb.append(" ignored");
        }
        if (j()) {
            sb.append(" tmpDetached");
        }
        if (!g()) {
            sb.append(" not recyclable(" + this.f1816m + ")");
        }
        if ((this.f1813j & 512) != 0 || f()) {
            sb.append(" undefined adapter position");
        }
        if (this.f1807a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
