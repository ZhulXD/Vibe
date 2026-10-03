package W1;

import V1.C0189e;
import V1.H;
import V1.a0;
import V1.b0;
import a2.p;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d extends e {
    private volatile d _immediate;
    public final Handler b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f2305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f2306d;

    public d(Handler handler, boolean z2) {
        this.b = handler;
        this.f2305c = z2;
        this._immediate = z2 ? this : null;
        d dVar = this._immediate;
        if (dVar == null) {
            dVar = new d(handler, true);
            this._immediate = dVar;
        }
        this.f2306d = dVar;
    }

    @Override // V1.D
    public final void c(long j2, C0189e c0189e) {
        E0.d dVar = new E0.d(c0189e, this);
        if (this.b.postDelayed(dVar, RangesKt.coerceAtMost(j2, DurationKt.MAX_MILLIS))) {
            c0189e.t(new c(0, this, dVar));
        } else {
            d(c0189e.f, dVar);
        }
    }

    public final void d(CoroutineContext coroutineContext, Runnable runnable) {
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        b0 b0Var = (b0) coroutineContext.get(a0.b);
        if (b0Var != null) {
            b0Var.b(cancellationException);
        }
        H.b.dispatch(coroutineContext, runnable);
    }

    @Override // V1.AbstractC0203t
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        if (this.b.post(runnable)) {
            return;
        }
        d(coroutineContext, runnable);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof d) && ((d) obj).b == this.b;
    }

    public final int hashCode() {
        return System.identityHashCode(this.b);
    }

    @Override // V1.AbstractC0203t
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return (this.f2305c && Intrinsics.areEqual(Looper.myLooper(), this.b.getLooper())) ? false : true;
    }

    @Override // V1.AbstractC0203t
    public final String toString() {
        d dVar;
        String str;
        c2.d dVar2 = H.f2265a;
        d dVar3 = p.f2593a;
        if (this == dVar3) {
            str = "Dispatchers.Main";
        } else {
            try {
                dVar = dVar3.f2306d;
            } catch (UnsupportedOperationException unused) {
                dVar = null;
            }
            str = this == dVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.b.toString();
        return this.f2305c ? kotlin.collections.unsigned.a.g(string, ".immediate") : string;
    }
}
