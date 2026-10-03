package V1;

import kotlin.Unit;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class N implements Runnable, Comparable, I {
    private volatile Object _heap;
    public long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2271c;

    public final int a(long j2, O o2, P p2) {
        synchronized (this) {
            if (this._heap == A.b) {
                return 2;
            }
            synchronized (o2) {
                try {
                    N[] nArr = o2.f2569a;
                    N n2 = nArr != null ? nArr[0] : null;
                    if (P.g.get(p2) != 0) {
                        return 1;
                    }
                    if (n2 == null) {
                        o2.f2272c = j2;
                    } else {
                        long j3 = n2.b;
                        if (j3 - j2 < 0) {
                            j2 = j3;
                        }
                        if (j2 - o2.f2272c > 0) {
                            o2.f2272c = j2;
                        }
                    }
                    long j4 = this.b;
                    long j5 = o2.f2272c;
                    if (j4 - j5 < 0) {
                        this.b = j5;
                    }
                    o2.a(this);
                    return 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // V1.I
    public final void b() {
        synchronized (this) {
            try {
                Object obj = this._heap;
                a2.w wVar = A.b;
                if (obj == wVar) {
                    return;
                }
                O o2 = obj instanceof O ? (O) obj : null;
                if (o2 != null) {
                    synchronized (o2) {
                        Object obj2 = this._heap;
                        if ((obj2 instanceof a2.C ? (a2.C) obj2 : null) != null) {
                            o2.b(this.f2271c);
                        }
                    }
                }
                this._heap = wVar;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j2 = this.b - ((N) obj).b;
        if (j2 > 0) {
            return 1;
        }
        return j2 < 0 ? -1 : 0;
    }

    public final void d(O o2) {
        if (this._heap == A.b) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this._heap = o2;
    }

    public String toString() {
        return "Delayed[nanos=" + this.b + ']';
    }
}
