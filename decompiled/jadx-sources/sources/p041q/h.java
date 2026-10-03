package p041q;

import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.Intrinsics;
import p043r.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f5252a = new Object();
    public static final Object b = new Object();

    public static final void a(f fVar, int i3) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        int[] iArr = new int[i3];
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        fVar.b = iArr;
        Object[] objArr = new Object[i3];
        Intrinsics.checkNotNullParameter(objArr, "<set-?>");
        fVar.f5247c = objArr;
    }

    public static final int b(f fVar, Object obj, int i3) {
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        int i4 = fVar.f5248d;
        if (i4 == 0) {
            return -1;
        }
        Intrinsics.checkNotNullParameter(fVar, "<this>");
        try {
            int iA = a.a(fVar.f5248d, i3, fVar.b);
            if (iA < 0 || Intrinsics.areEqual(obj, fVar.f5247c[iA])) {
                return iA;
            }
            int i5 = iA + 1;
            while (i5 < i4 && fVar.b[i5] == i3) {
                if (Intrinsics.areEqual(obj, fVar.f5247c[i5])) {
                    return i5;
                }
                i5++;
            }
            for (int i6 = iA - 1; i6 >= 0 && fVar.b[i6] == i3; i6--) {
                if (Intrinsics.areEqual(obj, fVar.f5247c[i6])) {
                    return i6;
                }
            }
            return ~i5;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }
}
