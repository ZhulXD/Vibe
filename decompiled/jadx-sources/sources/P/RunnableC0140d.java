package P;

import A1.C0009b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: P.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0140d implements Runnable {
    public final /* synthetic */ List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f1658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0144f f1660e;

    public RunnableC0140d(C0144f c0144f, List list, List list2, int i3) {
        this.f1660e = c0144f;
        this.b = list;
        this.f1658c = list2;
        this.f1659d = i3;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:33:0x00df  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:44:0x0104  */
    /* JADX WARN: Code duplicated, block: B:46:0x010c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0129  */
    @Override // java.lang.Runnable
    public final void run() {
        int i3;
        C0162u c0162u;
        int i4;
        C0161t c0161t;
        C0159q c0159q;
        int i5;
        int i6;
        C0162u c0162u2;
        C0162u c0162u3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        C0009b c0009b = new C0009b(this);
        int size = this.b.size();
        int size2 = this.f1658c.size();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        C0161t c0161t2 = new C0161t();
        int i21 = 0;
        c0161t2.f1752a = 0;
        c0161t2.b = size;
        c0161t2.f1753c = 0;
        c0161t2.f1754d = size2;
        arrayList2.add(c0161t2);
        int i22 = size + size2;
        int i23 = 1;
        int i24 = (((i22 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i24];
        int i25 = i24 / 2;
        int[] iArr2 = new int[i24];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            C0161t c0161t3 = (C0161t) arrayList2.remove(arrayList2.size() - i23);
            if (c0161t3.b() >= i23 && c0161t3.a() >= i23) {
                int iA = ((c0161t3.a() + c0161t3.b()) + i23) / 2;
                int i26 = i23 + i25;
                iArr[i26] = c0161t3.f1752a;
                iArr2[i26] = c0161t3.b;
                int i27 = i21;
                while (true) {
                    if (i27 >= iA) {
                        i3 = i25;
                        c0162u = null;
                        break;
                    }
                    int i28 = Math.abs(c0161t3.b() - c0161t3.a()) % 2 == i23 ? i23 : i21;
                    int iB = c0161t3.b() - c0161t3.a();
                    int i29 = -i27;
                    int i30 = i29;
                    while (true) {
                        if (i30 > i27) {
                            i5 = i21;
                            i3 = i25;
                            i6 = iA;
                            c0162u2 = null;
                            break;
                        }
                        if (i30 != i29) {
                            if (i30 != i27) {
                                i11 = i30;
                                if (iArr[i30 + 1 + i25] > iArr[(i30 - 1) + i25]) {
                                }
                                i3 = i25;
                                i14 = ((i13 - c0161t3.f1752a) + c0161t3.f1753c) - i11;
                                if (i27 == 0 && i13 == i12) {
                                    i15 = i14 - 1;
                                } else {
                                    i15 = i14;
                                }
                                int i31 = iA;
                                i16 = i14;
                                i17 = i13;
                                i6 = i31;
                                i18 = i28;
                                while (i17 < c0161t3.b && i16 < c0161t3.f1754d && c0009b.k(i17, i16)) {
                                    i17++;
                                    i16++;
                                }
                                iArr[i11 + i3] = i17;
                                if (i18 != 0) {
                                    i20 = iB - i11;
                                    i19 = iB;
                                    if (i20 >= i29 + 1 && i20 <= i27 - 1 && iArr2[i20 + i3] <= i17) {
                                        c0162u2 = new C0162u();
                                        c0162u2.f1755a = i12;
                                        c0162u2.b = i15;
                                        c0162u2.f1756c = i17;
                                        c0162u2.f1757d = i16;
                                        i5 = 0;
                                        c0162u2.f1758e = false;
                                        break;
                                    }
                                } else {
                                    i19 = iB;
                                }
                                i21 = 0;
                                i30 = i11 + 2;
                                i25 = i3;
                                iA = i6;
                                i28 = i18;
                                iB = i19;
                            } else {
                                i11 = i30;
                            }
                            i12 = iArr[(i11 - 1) + i25];
                            i13 = i12 + 1;
                            i3 = i25;
                            i14 = ((i13 - c0161t3.f1752a) + c0161t3.f1753c) - i11;
                            if (i27 == 0) {
                                i15 = i14;
                            } else {
                                i15 = i14;
                            }
                            int i32 = iA;
                            i16 = i14;
                            i17 = i13;
                            i6 = i32;
                            i18 = i28;
                            while (i17 < c0161t3.b) {
                                i17++;
                                i16++;
                            }
                            iArr[i11 + i3] = i17;
                            if (i18 != 0) {
                                i20 = iB - i11;
                                i19 = iB;
                                if (i20 >= i29 + 1) {
                                    c0162u2 = new C0162u();
                                    c0162u2.f1755a = i12;
                                    c0162u2.b = i15;
                                    c0162u2.f1756c = i17;
                                    c0162u2.f1757d = i16;
                                    i5 = 0;
                                    c0162u2.f1758e = false;
                                    break;
                                }
                            } else {
                                i19 = iB;
                            }
                            i21 = 0;
                            i30 = i11 + 2;
                            i25 = i3;
                            iA = i6;
                            i28 = i18;
                            iB = i19;
                        } else {
                            i11 = i30;
                        }
                        i12 = iArr[i11 + 1 + i25];
                        i13 = i12;
                        i3 = i25;
                        i14 = ((i13 - c0161t3.f1752a) + c0161t3.f1753c) - i11;
                        if (i27 == 0) {
                            i15 = i14;
                        } else {
                            i15 = i14;
                        }
                        int i33 = iA;
                        i16 = i14;
                        i17 = i13;
                        i6 = i33;
                        i18 = i28;
                        while (i17 < c0161t3.b) {
                            i17++;
                            i16++;
                        }
                        iArr[i11 + i3] = i17;
                        if (i18 != 0) {
                            i20 = iB - i11;
                            i19 = iB;
                            if (i20 >= i29 + 1) {
                                c0162u2 = new C0162u();
                                c0162u2.f1755a = i12;
                                c0162u2.b = i15;
                                c0162u2.f1756c = i17;
                                c0162u2.f1757d = i16;
                                i5 = 0;
                                c0162u2.f1758e = false;
                                break;
                            }
                        } else {
                            i19 = iB;
                        }
                        i21 = 0;
                        i30 = i11 + 2;
                        i25 = i3;
                        iA = i6;
                        i28 = i18;
                        iB = i19;
                    }
                    if (c0162u2 != null) {
                        c0162u = c0162u2;
                        break;
                    }
                    int i34 = (c0161t3.b() - c0161t3.a()) % 2 == 0 ? 1 : i5;
                    int iB2 = c0161t3.b() - c0161t3.a();
                    int i35 = i29;
                    while (true) {
                        if (i35 > i27) {
                            c0162u3 = null;
                            break;
                        }
                        if (i35 == i29 || (i35 != i27 && iArr2[i35 + 1 + i3] < iArr2[(i35 - 1) + i3])) {
                            i7 = iArr2[i35 + 1 + i3];
                            i8 = i7;
                        } else {
                            i7 = iArr2[(i35 - 1) + i3];
                            i8 = i7 - 1;
                        }
                        int i36 = c0161t3.f1754d - ((c0161t3.b - i8) - i35);
                        if (i27 != 0 && i8 == i7) {
                            i36++;
                        }
                        int i37 = i34;
                        int i38 = i8;
                        int i39 = i36;
                        int i40 = iB2;
                        while (true) {
                            if (i38 > c0161t3.f1752a && i39 > c0161t3.f1753c) {
                                i9 = i35;
                                if (!c0009b.k(i38 - 1, i39 - 1)) {
                                    break;
                                }
                                i38--;
                                i39--;
                                i35 = i9;
                            } else {
                                i9 = i35;
                                break;
                            }
                        }
                        iArr2[i9 + i3] = i38;
                        if (i37 != 0 && (i10 = i40 - i9) >= i29 && i10 <= i27 && iArr[i10 + i3] >= i38) {
                            c0162u3 = new C0162u();
                            c0162u3.f1755a = i38;
                            c0162u3.b = i39;
                            c0162u3.f1756c = i7;
                            c0162u3.f1757d = i36;
                            c0162u3.f1758e = true;
                            break;
                        }
                        i35 = i9 + 2;
                        i34 = i37;
                        iB2 = i40;
                    }
                    if (c0162u3 != null) {
                        c0162u = c0162u3;
                        break;
                    }
                    i27++;
                    i25 = i3;
                    iA = i6;
                    i23 = 1;
                    i21 = 0;
                }
            } else {
                i3 = i25;
                c0162u = null;
                break;
            }
            if (c0162u != null) {
                if (c0162u.a() > 0) {
                    int i41 = c0162u.f1757d;
                    int i42 = c0162u.b;
                    int i43 = i41 - i42;
                    int i44 = c0162u.f1756c;
                    int i45 = c0162u.f1755a;
                    int i46 = i44 - i45;
                    if (i43 == i46) {
                        c0159q = new C0159q(i45, i42, i46);
                    } else if (c0162u.f1758e) {
                        c0159q = new C0159q(i45, i42, c0162u.a());
                    } else {
                        c0159q = i43 > i46 ? new C0159q(i45, i42 + 1, c0162u.a()) : new C0159q(i45 + 1, i42, c0162u.a());
                    }
                    arrayList.add(c0159q);
                }
                if (arrayList3.isEmpty()) {
                    c0161t = new C0161t();
                    i4 = 1;
                } else {
                    i4 = 1;
                    c0161t = (C0161t) arrayList3.remove(arrayList3.size() - 1);
                }
                c0161t.f1752a = c0161t3.f1752a;
                c0161t.f1753c = c0161t3.f1753c;
                c0161t.b = c0162u.f1755a;
                c0161t.f1754d = c0162u.b;
                arrayList2.add(c0161t);
                c0161t3.b = c0161t3.b;
                c0161t3.f1754d = c0161t3.f1754d;
                c0161t3.f1752a = c0162u.f1756c;
                c0161t3.f1753c = c0162u.f1757d;
                arrayList2.add(c0161t3);
            } else {
                i4 = 1;
                arrayList3.add(c0161t3);
            }
            i23 = i4;
            i25 = i3;
            i21 = 0;
        }
        Collections.sort(arrayList, AbstractC0138c.f1653c);
        this.f1660e.f1665c.execute(new E0.d(1, this, new r(c0009b, arrayList, iArr, iArr2)));
    }
}
