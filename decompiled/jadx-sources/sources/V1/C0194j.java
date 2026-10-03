package V1;

import java.util.concurrent.CancellationException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: V1.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0194j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f2291a;
    public final J b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f2292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f2294e;

    public C0194j(Object obj, J j2, Function1 function1, Object obj2, Throwable th) {
        this.f2291a = obj;
        this.b = j2;
        this.f2292c = function1;
        this.f2293d = obj2;
        this.f2294e = th;
    }

    public static C0194j a(C0194j c0194j, J j2, CancellationException cancellationException, int i3) {
        Object obj = c0194j.f2291a;
        if ((i3 & 2) != 0) {
            j2 = c0194j.b;
        }
        J j3 = j2;
        Function1 function1 = c0194j.f2292c;
        Object obj2 = c0194j.f2293d;
        Throwable th = cancellationException;
        if ((i3 & 16) != 0) {
            th = c0194j.f2294e;
        }
        return new C0194j(obj, j3, function1, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0194j)) {
            return false;
        }
        C0194j c0194j = (C0194j) obj;
        return Intrinsics.areEqual(this.f2291a, c0194j.f2291a) && Intrinsics.areEqual(this.b, c0194j.b) && Intrinsics.areEqual(this.f2292c, c0194j.f2292c) && Intrinsics.areEqual(this.f2293d, c0194j.f2293d) && Intrinsics.areEqual(this.f2294e, c0194j.f2294e);
    }

    public final int hashCode() {
        Object obj = this.f2291a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        J j2 = this.b;
        int iHashCode2 = (iHashCode + (j2 == null ? 0 : j2.hashCode())) * 31;
        Function1 function1 = this.f2292c;
        int iHashCode3 = (iHashCode2 + (function1 == null ? 0 : function1.hashCode())) * 31;
        Object obj2 = this.f2293d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f2294e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f2291a + ", cancelHandler=" + this.b + ", onCancellation=" + this.f2292c + ", idempotentResume=" + this.f2293d + ", cancelCause=" + this.f2294e + ')';
    }

    public /* synthetic */ C0194j(Object obj, J j2, Function1 function1, CancellationException cancellationException, int i3) {
        this(obj, (i3 & 2) != 0 ? null : j2, (i3 & 4) != 0 ? null : function1, (Object) null, (i3 & 16) != 0 ? null : cancellationException);
    }
}
