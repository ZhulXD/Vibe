package p041q;

import E.b;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import p043r.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements Cloneable {
    public /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ long[] f5249c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ Object[] f5250d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f5251e;

    public g(int i3) {
        if (i3 == 0) {
            this.f5249c = a.b;
            this.f5250d = a.f5293c;
            return;
        }
        int i4 = i3 * 8;
        for (int i5 = 4; i5 < 32; i5++) {
            int i6 = (1 << i5) - 12;
            if (i4 <= i6) {
                i4 = i6;
                break;
            }
        }
        int i7 = i4 / 8;
        this.f5249c = new long[i7];
        this.f5250d = new Object[i7];
    }

    public final void a() {
        int i3 = this.f5251e;
        Object[] objArr = this.f5250d;
        for (int i4 = 0; i4 < i3; i4++) {
            objArr[i4] = null;
        }
        this.f5251e = 0;
        this.b = false;
    }

    public final Object b(long j2) {
        Object obj;
        int iB = a.b(this.f5249c, this.f5251e, j2);
        if (iB < 0 || (obj = this.f5250d[iB]) == h.f5252a) {
            return null;
        }
        return obj;
    }

    public final int c(long j2) {
        if (this.b) {
            int i3 = this.f5251e;
            long[] jArr = this.f5249c;
            Object[] objArr = this.f5250d;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                Object obj = objArr[i5];
                if (obj != h.f5252a) {
                    if (i5 != i4) {
                        jArr[i4] = jArr[i5];
                        objArr[i4] = obj;
                        objArr[i5] = null;
                    }
                    i4++;
                }
            }
            this.b = false;
            this.f5251e = i4;
        }
        return a.b(this.f5249c, this.f5251e, j2);
    }

    public final Object clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        g gVar = (g) objClone;
        gVar.f5249c = (long[]) this.f5249c.clone();
        gVar.f5250d = (Object[]) this.f5250d.clone();
        return gVar;
    }

    public final long d(int i3) {
        int i4;
        if (i3 < 0 || i3 >= (i4 = this.f5251e)) {
            throw new IllegalArgumentException(b.i(i3, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.b) {
            long[] jArr = this.f5249c;
            Object[] objArr = this.f5250d;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                Object obj = objArr[i6];
                if (obj != h.f5252a) {
                    if (i6 != i5) {
                        jArr[i5] = jArr[i6];
                        objArr[i5] = obj;
                        objArr[i6] = null;
                    }
                    i5++;
                }
            }
            this.b = false;
            this.f5251e = i5;
        }
        return this.f5249c[i3];
    }

    public final void e(long j2, Object obj) {
        Object obj2 = h.f5252a;
        int iB = a.b(this.f5249c, this.f5251e, j2);
        if (iB >= 0) {
            this.f5250d[iB] = obj;
            return;
        }
        int i3 = ~iB;
        int i4 = this.f5251e;
        if (i3 < i4) {
            Object[] objArr = this.f5250d;
            if (objArr[i3] == obj2) {
                this.f5249c[i3] = j2;
                objArr[i3] = obj;
                return;
            }
        }
        if (this.b) {
            long[] jArr = this.f5249c;
            if (i4 >= jArr.length) {
                Object[] objArr2 = this.f5250d;
                int i5 = 0;
                for (int i6 = 0; i6 < i4; i6++) {
                    Object obj3 = objArr2[i6];
                    if (obj3 != obj2) {
                        if (i6 != i5) {
                            jArr[i5] = jArr[i6];
                            objArr2[i5] = obj3;
                            objArr2[i6] = null;
                        }
                        i5++;
                    }
                }
                this.b = false;
                this.f5251e = i5;
                i3 = ~a.b(this.f5249c, i5, j2);
            }
        }
        int i7 = this.f5251e;
        if (i7 >= this.f5249c.length) {
            int i8 = (i7 + 1) * 8;
            for (int i9 = 4; i9 < 32; i9++) {
                int i10 = (1 << i9) - 12;
                if (i8 <= i10) {
                    i8 = i10;
                    break;
                }
            }
            int i11 = i8 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f5249c, i11);
            Intrinsics.checkNotNullExpressionValue(jArrCopyOf, "copyOf(this, newSize)");
            this.f5249c = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5250d, i11);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(this, newSize)");
            this.f5250d = objArrCopyOf;
        }
        int i12 = this.f5251e;
        if (i12 - i3 != 0) {
            long[] jArr2 = this.f5249c;
            int i13 = i3 + 1;
            ArraysKt___ArraysJvmKt.copyInto(jArr2, jArr2, i13, i3, i12);
            Object[] objArr3 = this.f5250d;
            ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, i13, i3, this.f5251e);
        }
        this.f5249c[i3] = j2;
        this.f5250d[i3] = obj;
        this.f5251e++;
    }

    public final void f(long j2) {
        int iB = a.b(this.f5249c, this.f5251e, j2);
        if (iB >= 0) {
            Object[] objArr = this.f5250d;
            Object obj = objArr[iB];
            Object obj2 = h.f5252a;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.b = true;
            }
        }
    }

    public final int g() {
        if (this.b) {
            int i3 = this.f5251e;
            long[] jArr = this.f5249c;
            Object[] objArr = this.f5250d;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                Object obj = objArr[i5];
                if (obj != h.f5252a) {
                    if (i5 != i4) {
                        jArr[i4] = jArr[i5];
                        objArr[i4] = obj;
                        objArr[i5] = null;
                    }
                    i4++;
                }
            }
            this.b = false;
            this.f5251e = i4;
        }
        return this.f5251e;
    }

    public final Object h(int i3) {
        int i4;
        if (i3 < 0 || i3 >= (i4 = this.f5251e)) {
            throw new IllegalArgumentException(b.i(i3, "Expected index to be within 0..size()-1, but was ").toString());
        }
        if (this.b) {
            long[] jArr = this.f5249c;
            Object[] objArr = this.f5250d;
            int i5 = 0;
            for (int i6 = 0; i6 < i4; i6++) {
                Object obj = objArr[i6];
                if (obj != h.f5252a) {
                    if (i6 != i5) {
                        jArr[i5] = jArr[i6];
                        objArr[i5] = obj;
                        objArr[i6] = null;
                    }
                    i5++;
                }
            }
            this.b = false;
            this.f5251e = i5;
        }
        return this.f5250d[i3];
    }

    public final String toString() {
        if (g() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5251e * 28);
        sb.append('{');
        int i3 = this.f5251e;
        for (int i4 = 0; i4 < i3; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(d(i4));
            sb.append('=');
            Object objH = h(i4);
            if (objH != sb) {
                sb.append(objH);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public g() {
        this(10);
    }
}
