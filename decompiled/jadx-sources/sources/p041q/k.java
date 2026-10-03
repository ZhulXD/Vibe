package p041q;

import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import p043r.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Cloneable {
    public /* synthetic */ int[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object[] f5259c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public /* synthetic */ int f5260d;

    public k() {
        int i3;
        int i4 = 4;
        while (true) {
            i3 = 40;
            if (i4 >= 32) {
                break;
            }
            int i5 = (1 << i4) - 12;
            if (40 <= i5) {
                i3 = i5;
                break;
            }
            i4++;
        }
        int i6 = i3 / 4;
        this.b = new int[i6];
        this.f5259c = new Object[i6];
    }

    public final void a(int i3, Object obj) {
        int i4 = this.f5260d;
        if (i4 != 0 && i3 <= this.b[i4 - 1]) {
            c(i3, obj);
            return;
        }
        if (i4 >= this.b.length) {
            int i5 = (i4 + 1) * 4;
            for (int i6 = 4; i6 < 32; i6++) {
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
            }
            int i8 = i5 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.b, i8);
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(this, newSize)");
            this.b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5259c, i8);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(this, newSize)");
            this.f5259c = objArrCopyOf;
        }
        this.b[i4] = i3;
        this.f5259c[i4] = obj;
        this.f5260d = i4 + 1;
    }

    public final Object b(int i3) {
        Object obj;
        Intrinsics.checkNotNullParameter(this, "<this>");
        int iA = a.a(this.f5260d, i3, this.b);
        if (iA < 0 || (obj = this.f5259c[iA]) == h.b) {
            return null;
        }
        return obj;
    }

    public final void c(int i3, Object obj) {
        int iA = a.a(this.f5260d, i3, this.b);
        if (iA >= 0) {
            this.f5259c[iA] = obj;
            return;
        }
        int i4 = ~iA;
        int i5 = this.f5260d;
        if (i4 < i5) {
            Object[] objArr = this.f5259c;
            if (objArr[i4] == h.b) {
                this.b[i4] = i3;
                objArr[i4] = obj;
                return;
            }
        }
        if (i5 >= this.b.length) {
            int i6 = (i5 + 1) * 4;
            for (int i7 = 4; i7 < 32; i7++) {
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
            }
            int i9 = i6 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.b, i9);
            Intrinsics.checkNotNullExpressionValue(iArrCopyOf, "copyOf(this, newSize)");
            this.b = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f5259c, i9);
            Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(this, newSize)");
            this.f5259c = objArrCopyOf;
        }
        int i10 = this.f5260d;
        if (i10 - i4 != 0) {
            int[] iArr = this.b;
            int i11 = i4 + 1;
            ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, i11, i4, i10);
            Object[] objArr2 = this.f5259c;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i11, i4, this.f5260d);
        }
        this.b[i4] = i3;
        this.f5259c[i4] = obj;
        this.f5260d++;
    }

    public final Object clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        Intrinsics.checkNotNull(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        k kVar = (k) objClone;
        kVar.b = (int[]) this.b.clone();
        kVar.f5259c = (Object[]) this.f5259c.clone();
        return kVar;
    }

    public final String toString() {
        int i3 = this.f5260d;
        if (i3 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i3 * 28);
        sb.append('{');
        int i4 = this.f5260d;
        for (int i5 = 0; i5 < i4; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            sb.append(this.b[i5]);
            sb.append('=');
            Object obj = this.f5259c[i5];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "buffer.toString()");
        return string;
    }
}
