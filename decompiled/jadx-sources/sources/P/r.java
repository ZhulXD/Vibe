package P;

import A1.C0009b;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f1741a;
    public final int[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f1742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0009b f1743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1744e;
    public final int f;
    public final boolean g;

    public r(C0009b c0009b, ArrayList arrayList, int[] iArr, int[] iArr2) {
        int i3;
        int i4;
        this.f1741a = arrayList;
        this.b = iArr;
        this.f1742c = iArr2;
        Arrays.fill(iArr, 0);
        Arrays.fill(iArr2, 0);
        this.f1743d = c0009b;
        RunnableC0140d runnableC0140d = (RunnableC0140d) c0009b.b;
        int size = runnableC0140d.b.size();
        this.f1744e = size;
        int size2 = runnableC0140d.f1658c.size();
        this.f = size2;
        this.g = true;
        C0159q c0159q = arrayList.isEmpty() ? null : (C0159q) arrayList.get(0);
        if (c0159q == null || c0159q.f1738a != 0 || c0159q.b != 0) {
            arrayList.add(0, new C0159q(0, 0, 0));
        }
        arrayList.add(new C0159q(size, size2, 0));
        int size3 = arrayList.size();
        int i5 = 0;
        while (i5 < size3) {
            Object obj = arrayList.get(i5);
            i5++;
            C0159q c0159q2 = (C0159q) obj;
            for (int i6 = 0; i6 < c0159q2.f1739c; i6++) {
                int i7 = c0159q2.f1738a + i6;
                int i8 = c0159q2.b + i6;
                int i9 = c0009b.j(i7, i8) ? 1 : 2;
                iArr[i7] = (i8 << 4) | i9;
                iArr2[i8] = (i7 << 4) | i9;
            }
        }
        if (this.g) {
            int size4 = arrayList.size();
            int i10 = 0;
            int i11 = 0;
            while (i11 < size4) {
                Object obj2 = arrayList.get(i11);
                i11++;
                C0159q c0159q3 = (C0159q) obj2;
                while (true) {
                    i3 = c0159q3.f1738a;
                    if (i10 < i3) {
                        if (iArr[i10] == 0) {
                            int size5 = arrayList.size();
                            int i12 = 0;
                            for (int i13 = 0; i13 < size5; i13++) {
                                C0159q c0159q4 = (C0159q) arrayList.get(i13);
                                while (true) {
                                    i4 = c0159q4.b;
                                    if (i12 < i4) {
                                        if (iArr2[i12] == 0 && c0009b.k(i10, i12)) {
                                            int i14 = c0009b.j(i10, i12) ? 8 : 4;
                                            iArr[i10] = (i12 << 4) | i14;
                                            iArr2[i12] = i14 | (i10 << 4);
                                            break;
                                        }
                                        i12++;
                                    }
                                }
                                i12 = c0159q4.f1739c + i4;
                            }
                        }
                        i10++;
                    }
                }
                i10 = c0159q3.f1739c + i3;
            }
        }
    }

    public static C0160s a(ArrayDeque arrayDeque, int i3, boolean z2) {
        C0160s c0160s;
        Iterator it = arrayDeque.iterator();
        while (true) {
            if (!it.hasNext()) {
                c0160s = null;
                break;
            }
            c0160s = (C0160s) it.next();
            if (c0160s.f1746a == i3 && c0160s.f1747c == z2) {
                it.remove();
                break;
            }
        }
        while (it.hasNext()) {
            C0160s c0160s2 = (C0160s) it.next();
            if (z2) {
                c0160s2.b--;
            } else {
                c0160s2.b++;
            }
        }
        return c0160s;
    }
}
