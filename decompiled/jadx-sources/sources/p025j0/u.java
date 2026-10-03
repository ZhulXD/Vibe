package p025j0;

import androidx.core.util.Pools;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import java.util.ArrayList;
import java.util.List;
import p014f0.B;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u implements e, d {
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Pools.Pool f4641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g f4643e;
    public d f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4644h;

    public u(ArrayList arrayList, Pools.Pool pool) {
        this.f4641c = pool;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.b = arrayList;
        this.f4642d = 0;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return ((e) this.b.get(0)).a();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        List list = this.g;
        if (list != null) {
            this.f4641c.release(list);
        }
        this.g = null;
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((e) obj).b();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void c(Exception exc) {
        List list = this.g;
        f.c(list, "Argument must not be null");
        list.add(exc);
        g();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f4644h = true;
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((e) obj).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int d() {
        return ((e) this.b.get(0)).d();
    }

    @Override // com.bumptech.glide.load.data.d
    public final void e(Object obj) {
        if (obj != null) {
            this.f.e(obj);
        } else {
            g();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(g gVar, d dVar) {
        this.f4643e = gVar;
        this.f = dVar;
        this.g = (List) this.f4641c.acquire();
        ((e) this.b.get(this.f4642d)).f(gVar, this);
        if (this.f4644h) {
            cancel();
        }
    }

    public final void g() {
        if (this.f4644h) {
            return;
        }
        if (this.f4642d < this.b.size() - 1) {
            this.f4642d++;
            f(this.f4643e, this.f);
        } else {
            f.b(this.g);
            this.f.c(new B(new ArrayList(this.g), "Fetch failed"));
        }
    }
}
