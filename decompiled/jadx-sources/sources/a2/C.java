package a2;

import V1.N;
import V1.O;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(C.class, "_size");

    @Volatile
    private volatile int _size;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public N[] f2569a;

    public final void a(N n2) {
        n2.d((O) this);
        N[] nArr = this.f2569a;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        if (nArr == null) {
            nArr = new N[4];
            this.f2569a = nArr;
        } else if (atomicIntegerFieldUpdater.get(this) >= nArr.length) {
            Object[] objArrCopyOf = Arrays.copyOf(nArr, atomicIntegerFieldUpdater.get(this) * 2);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(this, newSize)");
            nArr = (N[]) objArrCopyOf;
            this.f2569a = nArr;
        }
        int i3 = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i3 + 1);
        nArr[i3] = n2;
        n2.f2271c = i3;
        c(i3);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0045  */
    /* JADX WARN: Code duplicated, block: B:14:0x0052  */
    /* JADX WARN: Code duplicated, block: B:17:0x0063  */
    /* JADX WARN: Code duplicated, block: B:21:0x0075 A[LOOP:0: B:9:0x003a->B:21:0x0075, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x007a A[EDGE_INSN: B:24:0x007a->B:22:0x007a BREAK  A[LOOP:0: B:9:0x003a->B:21:0x0075], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x007a A[EDGE_INSN: B:25:0x007a->B:22:0x007a BREAK  A[LOOP:0: B:9:0x003a->B:21:0x0075], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:? A[SYNTHETIC] */
    public final N b(int i3) {
        int i4;
        int i5;
        Object[] objArr;
        int i6;
        Comparable comparable;
        Comparable comparable2;
        Comparable comparable3;
        Object obj;
        Object[] objArr2 = this.f2569a;
        Intrinsics.checkNotNull(objArr2);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        atomicIntegerFieldUpdater.set(this, atomicIntegerFieldUpdater.get(this) - 1);
        if (i3 < atomicIntegerFieldUpdater.get(this)) {
            d(i3, atomicIntegerFieldUpdater.get(this));
            int i7 = (i3 - 1) / 2;
            if (i3 > 0) {
                N n2 = objArr2[i3];
                Intrinsics.checkNotNull(n2);
                Object obj2 = objArr2[i7];
                Intrinsics.checkNotNull(obj2);
                if (n2.compareTo(obj2) < 0) {
                    d(i3, i7);
                    c(i7);
                } else {
                    while (true) {
                        i4 = i3 * 2;
                        i5 = i4 + 1;
                        if (i5 >= atomicIntegerFieldUpdater.get(this)) {
                            break;
                        }
                        objArr = this.f2569a;
                        Intrinsics.checkNotNull(objArr);
                        i6 = i4 + 2;
                        if (i6 < atomicIntegerFieldUpdater.get(this)) {
                            comparable3 = objArr[i6];
                            Intrinsics.checkNotNull(comparable3);
                            obj = objArr[i5];
                            Intrinsics.checkNotNull(obj);
                            if (comparable3.compareTo(obj) >= 0) {
                                i6 = i5;
                            }
                        } else {
                            i6 = i5;
                        }
                        comparable = objArr[i3];
                        Intrinsics.checkNotNull(comparable);
                        comparable2 = objArr[i6];
                        Intrinsics.checkNotNull(comparable2);
                        if (comparable.compareTo(comparable2) <= 0) {
                            break;
                        }
                        d(i3, i6);
                        i3 = i6;
                    }
                }
            } else {
                while (true) {
                    i4 = i3 * 2;
                    i5 = i4 + 1;
                    if (i5 >= atomicIntegerFieldUpdater.get(this)) {
                        break;
                        break;
                    }
                    objArr = this.f2569a;
                    Intrinsics.checkNotNull(objArr);
                    i6 = i4 + 2;
                    if (i6 < atomicIntegerFieldUpdater.get(this)) {
                        comparable3 = objArr[i6];
                        Intrinsics.checkNotNull(comparable3);
                        obj = objArr[i5];
                        Intrinsics.checkNotNull(obj);
                        if (comparable3.compareTo(obj) >= 0) {
                            i6 = i5;
                        }
                    } else {
                        i6 = i5;
                    }
                    comparable = objArr[i3];
                    Intrinsics.checkNotNull(comparable);
                    comparable2 = objArr[i6];
                    Intrinsics.checkNotNull(comparable2);
                    if (comparable.compareTo(comparable2) <= 0) {
                        break;
                        break;
                    }
                    d(i3, i6);
                    i3 = i6;
                }
            }
        }
        N n3 = objArr2[atomicIntegerFieldUpdater.get(this)];
        Intrinsics.checkNotNull(n3);
        n3.d(null);
        n3.f2271c = -1;
        objArr2[atomicIntegerFieldUpdater.get(this)] = null;
        return n3;
    }

    public final void c(int i3) {
        while (i3 > 0) {
            N[] nArr = this.f2569a;
            Intrinsics.checkNotNull(nArr);
            int i4 = (i3 - 1) / 2;
            N n2 = nArr[i4];
            Intrinsics.checkNotNull(n2);
            N n3 = nArr[i3];
            Intrinsics.checkNotNull(n3);
            if (n2.compareTo(n3) <= 0) {
                return;
            }
            d(i3, i4);
            i3 = i4;
        }
    }

    public final void d(int i3, int i4) {
        N[] nArr = this.f2569a;
        Intrinsics.checkNotNull(nArr);
        N n2 = nArr[i4];
        Intrinsics.checkNotNull(n2);
        N n3 = nArr[i3];
        Intrinsics.checkNotNull(n3);
        nArr[i3] = n2;
        nArr[i4] = n3;
        n2.f2271c = i3;
        n3.f2271c = i4;
    }
}
