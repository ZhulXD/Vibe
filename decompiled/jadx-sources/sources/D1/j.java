package D1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f825a;
    public final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g f828e;
    public int f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f831j;

    public j(String sourcePath) {
        Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
        this.f825a = sourcePath;
        this.b = new b();
        this.f826c = new Object();
        ArrayList arrayList = new ArrayList(3);
        for (int i3 = 0; i3 < 3; i3++) {
            arrayList.add(i.b);
        }
        this.f827d = arrayList;
        this.f828e = g.b;
        this.g = "";
        this.f830i = new AtomicBoolean(false);
        this.f831j = Collections.synchronizedList(new ArrayList());
    }

    public final void a(int i3) {
        boolean z2;
        synchronized (this.f826c) {
            if (this.f828e != g.b) {
                z2 = false;
            } else {
                this.f827d.set(i3, i.f823d);
                z2 = true;
            }
        }
        if (z2) {
            d();
        }
    }

    public final void b(int i3) {
        boolean z2;
        synchronized (this.f826c) {
            if (this.f828e != g.b) {
                z2 = false;
            } else {
                ArrayList arrayList = this.f827d;
                if (arrayList.get(i3) == i.b) {
                    arrayList.set(i3, i.f822c);
                }
                z2 = true;
            }
        }
        if (z2) {
            d();
        }
    }

    public final void c(int i3, String status) {
        boolean z2;
        Intrinsics.checkNotNullParameter(status, "status");
        synchronized (this.f826c) {
            z2 = false;
            if (this.f828e == g.b) {
                this.f = RangesKt.coerceIn(i3, 0, 99);
                this.g = status;
                z2 = true;
            }
        }
        if (z2) {
            d();
        }
    }

    public final void d() {
        List list;
        h hVarE = e();
        List observers = this.f831j;
        Intrinsics.checkNotNullExpressionValue(observers, "observers");
        synchronized (observers) {
            List observers2 = this.f831j;
            Intrinsics.checkNotNullExpressionValue(observers2, "observers");
            list = CollectionsKt.toList(observers2);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(hVarE);
        }
    }

    public final h e() {
        h hVar;
        synchronized (this.f826c) {
            hVar = new h(this.f828e, CollectionsKt.toList(this.f827d), this.f, this.g, this.f829h, this.f830i.get());
        }
        return hVar;
    }

    public final void f(int i3, String status) {
        boolean z2;
        Intrinsics.checkNotNullParameter(status, "status");
        synchronized (this.f826c) {
            if (this.f828e != g.b) {
                z2 = false;
            } else {
                this.f828e = g.f815c;
                this.f829h = Integer.valueOf(i3);
                this.g = status;
                this.f = 100;
                z2 = true;
            }
        }
        if (z2) {
            d();
        }
    }
}
