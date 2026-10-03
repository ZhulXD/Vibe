package P;

import A1.C0009b;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: P.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0136b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final V f1649d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools.SimplePool f1647a = new Pools.SimplePool(30);
    public final ArrayList b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1648c = new ArrayList();
    public int f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0009b f1650e = new C0009b(this);

    public C0136b(V v2) {
        this.f1649d = v2;
    }

    public final boolean a(int i3) {
        ArrayList arrayList = this.f1648c;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            C0134a c0134a = (C0134a) arrayList.get(i4);
            int i5 = c0134a.f1645a;
            if (i5 != 8) {
                if (i5 == 1) {
                    int i6 = c0134a.b;
                    int i7 = c0134a.f1646c + i6;
                    while (i6 < i7) {
                        if (f(i6, i4 + 1) == i3) {
                            return true;
                        }
                        i6++;
                    }
                } else {
                    continue;
                }
            } else {
                if (f(c0134a.f1646c, i4 + 1) == i3) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f1648c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.f1649d.a((C0134a) arrayList.get(i3));
        }
        k(arrayList);
        this.f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0134a c0134a = (C0134a) arrayList.get(i3);
            int i4 = c0134a.f1645a;
            V v2 = this.f1649d;
            if (i4 == 1) {
                v2.a(c0134a);
                v2.d(c0134a.b, c0134a.f1646c);
            } else if (i4 == 2) {
                v2.a(c0134a);
                int i5 = c0134a.b;
                int i6 = c0134a.f1646c;
                RecyclerView recyclerView = v2.f1642a;
                recyclerView.Q(i5, i6, true);
                recyclerView.f2996l0 = true;
                recyclerView.f2990i0.f1760c += i6;
            } else if (i4 == 4) {
                v2.a(c0134a);
                v2.c(c0134a.b, c0134a.f1646c);
            } else if (i4 == 8) {
                v2.a(c0134a);
                v2.e(c0134a.b, c0134a.f1646c);
            }
        }
        k(arrayList);
        this.f = 0;
    }

    public final void d(C0134a c0134a) {
        int i3;
        Pools.SimplePool simplePool;
        int i4 = c0134a.f1645a;
        if (i4 == 1 || i4 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iL = l(c0134a.b, i4);
        int i5 = c0134a.b;
        int i6 = c0134a.f1645a;
        if (i6 == 2) {
            i3 = 0;
        } else {
            if (i6 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c0134a);
            }
            i3 = 1;
        }
        int i7 = 1;
        int i8 = 1;
        while (true) {
            int i9 = c0134a.f1646c;
            simplePool = this.f1647a;
            if (i7 >= i9) {
                break;
            }
            int iL2 = l((i3 * i7) + c0134a.b, c0134a.f1645a);
            int i10 = c0134a.f1645a;
            if (i10 == 2 ? iL2 != iL : !(i10 == 4 && iL2 == iL + 1)) {
                C0134a c0134aH = h(i10, iL, i8);
                e(c0134aH, i5);
                simplePool.release(c0134aH);
                if (c0134a.f1645a == 4) {
                    i5 += i8;
                }
                i8 = 1;
                iL = iL2;
            } else {
                i8++;
            }
            i7++;
        }
        simplePool.release(c0134a);
        if (i8 > 0) {
            C0134a c0134aH2 = h(c0134a.f1645a, iL, i8);
            e(c0134aH2, i5);
            simplePool.release(c0134aH2);
        }
    }

    public final void e(C0134a c0134a, int i3) {
        V v2 = this.f1649d;
        v2.a(c0134a);
        int i4 = c0134a.f1645a;
        if (i4 != 2) {
            if (i4 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            v2.c(i3, c0134a.f1646c);
        } else {
            int i5 = c0134a.f1646c;
            RecyclerView recyclerView = v2.f1642a;
            recyclerView.Q(i3, i5, true);
            recyclerView.f2996l0 = true;
            recyclerView.f2990i0.f1760c += i5;
        }
    }

    public final int f(int i3, int i4) {
        ArrayList arrayList = this.f1648c;
        int size = arrayList.size();
        while (i4 < size) {
            C0134a c0134a = (C0134a) arrayList.get(i4);
            int i5 = c0134a.f1645a;
            if (i5 == 8) {
                int i6 = c0134a.b;
                if (i6 == i3) {
                    i3 = c0134a.f1646c;
                } else {
                    if (i6 < i3) {
                        i3--;
                    }
                    if (c0134a.f1646c <= i3) {
                        i3++;
                    }
                }
            } else {
                int i7 = c0134a.b;
                if (i7 > i3) {
                    continue;
                } else if (i5 == 2) {
                    int i8 = c0134a.f1646c;
                    if (i3 < i7 + i8) {
                        return -1;
                    }
                    i3 -= i8;
                } else if (i5 == 1) {
                    i3 += c0134a.f1646c;
                }
            }
            i4++;
        }
        return i3;
    }

    public final boolean g() {
        return this.b.size() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C0134a h(int i3, int i4, int i5) {
        C0134a c0134a = (C0134a) this.f1647a.acquire();
        if (c0134a != null) {
            c0134a.f1645a = i3;
            c0134a.b = i4;
            c0134a.f1646c = i5;
            return c0134a;
        }
        C0134a c0134a2 = new C0134a();
        c0134a2.f1645a = i3;
        c0134a2.b = i4;
        c0134a2.f1646c = i5;
        return c0134a2;
    }

    public final void i(C0134a c0134a) {
        this.f1648c.add(c0134a);
        int i3 = c0134a.f1645a;
        V v2 = this.f1649d;
        if (i3 == 1) {
            v2.d(c0134a.b, c0134a.f1646c);
            return;
        }
        if (i3 == 2) {
            int i4 = c0134a.b;
            int i5 = c0134a.f1646c;
            RecyclerView recyclerView = v2.f1642a;
            recyclerView.Q(i4, i5, false);
            recyclerView.f2996l0 = true;
            return;
        }
        if (i3 == 4) {
            v2.c(c0134a.b, c0134a.f1646c);
        } else if (i3 == 8) {
            v2.e(c0134a.b, c0134a.f1646c);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c0134a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x016d  */
    /* JADX WARN: Code duplicated, block: B:103:0x017b  */
    /* JADX WARN: Code duplicated, block: B:104:0x017f  */
    /* JADX WARN: Code duplicated, block: B:183:0x009a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x0113 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x0184 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:201:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x006a  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:32:0x0074  */
    /* JADX WARN: Code duplicated, block: B:36:0x0089  */
    /* JADX WARN: Code duplicated, block: B:37:0x008d  */
    /* JADX WARN: Code duplicated, block: B:39:0x0095  */
    /* JADX WARN: Code duplicated, block: B:75:0x0115  */
    /* JADX WARN: Code duplicated, block: B:76:0x0117  */
    /* JADX WARN: Code duplicated, block: B:78:0x011d  */
    /* JADX WARN: Code duplicated, block: B:81:0x0128  */
    /* JADX WARN: Code duplicated, block: B:84:0x0133  */
    /* JADX WARN: Code duplicated, block: B:87:0x013e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0144  */
    /* JADX WARN: Code duplicated, block: B:89:0x0146  */
    /* JADX WARN: Code duplicated, block: B:91:0x014c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0157  */
    /* JADX WARN: Code duplicated, block: B:97:0x0162  */
    public final void j() {
        ArrayList arrayList;
        int i3;
        boolean z2;
        byte b;
        C0134a c0134aH;
        int i4;
        int i5;
        int i6;
        C0134a c0134aH2;
        boolean z3;
        boolean z4;
        C0134a c0134aH3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        C0009b c0009b = this.f1650e;
        c0009b.getClass();
        while (true) {
            arrayList = this.b;
            int size = arrayList.size() - 1;
            boolean z5 = false;
            while (true) {
                i3 = 8;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((C0134a) arrayList.get(size)).f1645a != 8) {
                    z5 = true;
                } else if (z5) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i15 = size + 1;
            C0136b c0136b = (C0136b) c0009b.b;
            Pools.SimplePool simplePool = c0136b.f1647a;
            C0134a c0134a = (C0134a) arrayList.get(size);
            C0134a c0134a2 = (C0134a) arrayList.get(i15);
            int i16 = c0134a2.f1645a;
            if (i16 == 1) {
                int i17 = c0134a.f1646c;
                int i18 = c0134a2.b;
                int i19 = i17 < i18 ? -1 : 0;
                int i20 = c0134a.b;
                if (i20 < i18) {
                    i19++;
                }
                if (i18 <= i20) {
                    c0134a.b = i20 + c0134a2.f1646c;
                }
                int i21 = c0134a2.b;
                if (i21 <= i17) {
                    c0134a.f1646c = i17 + c0134a2.f1646c;
                }
                c0134a2.b = i21 + i19;
                arrayList.set(size, c0134a2);
                arrayList.set(i15, c0134a);
            } else if (i16 == 2) {
                int i22 = c0134a.b;
                int i23 = c0134a.f1646c;
                if (i22 < i23) {
                    z4 = c0134a2.b == i22 && c0134a2.f1646c == i23 - i22;
                    z3 = false;
                } else if (c0134a2.b == i23 + 1 && c0134a2.f1646c == i22 - i23) {
                    z4 = true;
                    z3 = true;
                } else {
                    z3 = true;
                    z4 = false;
                }
                int i24 = c0134a2.b;
                if (i23 < i24) {
                    c0134a2.b = i24 - 1;
                } else {
                    int i25 = c0134a2.f1646c;
                    if (i23 < i24 + i25) {
                        c0134a2.f1646c = i25 - 1;
                        c0134a.f1645a = 2;
                        c0134a.f1646c = 1;
                        if (c0134a2.f1646c == 0) {
                            arrayList.remove(i15);
                            simplePool.release(c0134a2);
                        }
                    }
                }
                int i26 = c0134a.b;
                int i27 = c0134a2.b;
                if (i26 <= i27) {
                    c0134a2.b = i27 + 1;
                } else {
                    int i28 = i27 + c0134a2.f1646c;
                    if (i26 < i28) {
                        c0134aH3 = c0136b.h(2, i26 + 1, i28 - i26);
                        c0134a2.f1646c = c0134a.b - c0134a2.b;
                    }
                    if (z4) {
                        arrayList.set(size, c0134a2);
                        arrayList.remove(i15);
                        simplePool.release(c0134a);
                    } else {
                        if (z3) {
                            if (c0134aH3 != null) {
                                i13 = c0134a.b;
                                if (i13 > c0134aH3.b) {
                                    c0134a.b = i13 - c0134aH3.f1646c;
                                }
                                i14 = c0134a.f1646c;
                                if (i14 > c0134aH3.b) {
                                    c0134a.f1646c = i14 - c0134aH3.f1646c;
                                }
                            }
                            i11 = c0134a.b;
                            if (i11 > c0134a2.b) {
                                c0134a.b = i11 - c0134a2.f1646c;
                            }
                            i12 = c0134a.f1646c;
                            if (i12 > c0134a2.b) {
                                c0134a.f1646c = i12 - c0134a2.f1646c;
                            }
                        } else {
                            if (c0134aH3 != null) {
                                i9 = c0134a.b;
                                if (i9 >= c0134aH3.b) {
                                    c0134a.b = i9 - c0134aH3.f1646c;
                                }
                                i10 = c0134a.f1646c;
                                if (i10 >= c0134aH3.b) {
                                    c0134a.f1646c = i10 - c0134aH3.f1646c;
                                }
                            }
                            i7 = c0134a.b;
                            if (i7 >= c0134a2.b) {
                                c0134a.b = i7 - c0134a2.f1646c;
                            }
                            i8 = c0134a.f1646c;
                            if (i8 >= c0134a2.b) {
                                c0134a.f1646c = i8 - c0134a2.f1646c;
                            }
                        }
                        arrayList.set(size, c0134a2);
                        if (c0134a.b != c0134a.f1646c) {
                            arrayList.set(i15, c0134a);
                        } else {
                            arrayList.remove(i15);
                        }
                        if (c0134aH3 != null) {
                            arrayList.add(size, c0134aH3);
                        }
                    }
                }
                c0134aH3 = null;
                if (z4) {
                    arrayList.set(size, c0134a2);
                    arrayList.remove(i15);
                    simplePool.release(c0134a);
                } else {
                    if (z3) {
                        if (c0134aH3 != null) {
                            i13 = c0134a.b;
                            if (i13 > c0134aH3.b) {
                                c0134a.b = i13 - c0134aH3.f1646c;
                            }
                            i14 = c0134a.f1646c;
                            if (i14 > c0134aH3.b) {
                                c0134a.f1646c = i14 - c0134aH3.f1646c;
                            }
                        }
                        i11 = c0134a.b;
                        if (i11 > c0134a2.b) {
                            c0134a.b = i11 - c0134a2.f1646c;
                        }
                        i12 = c0134a.f1646c;
                        if (i12 > c0134a2.b) {
                            c0134a.f1646c = i12 - c0134a2.f1646c;
                        }
                    } else {
                        if (c0134aH3 != null) {
                            i9 = c0134a.b;
                            if (i9 >= c0134aH3.b) {
                                c0134a.b = i9 - c0134aH3.f1646c;
                            }
                            i10 = c0134a.f1646c;
                            if (i10 >= c0134aH3.b) {
                                c0134a.f1646c = i10 - c0134aH3.f1646c;
                            }
                        }
                        i7 = c0134a.b;
                        if (i7 >= c0134a2.b) {
                            c0134a.b = i7 - c0134a2.f1646c;
                        }
                        i8 = c0134a.f1646c;
                        if (i8 >= c0134a2.b) {
                            c0134a.f1646c = i8 - c0134a2.f1646c;
                        }
                    }
                    arrayList.set(size, c0134a2);
                    if (c0134a.b != c0134a.f1646c) {
                        arrayList.set(i15, c0134a);
                    } else {
                        arrayList.remove(i15);
                    }
                    if (c0134aH3 != null) {
                        arrayList.add(size, c0134aH3);
                    }
                }
            } else if (i16 == 4) {
                int i29 = c0134a.f1646c;
                int i30 = c0134a2.b;
                if (i29 < i30) {
                    c0134a2.b = i30 - 1;
                } else {
                    int i31 = c0134a2.f1646c;
                    if (i29 < i30 + i31) {
                        c0134a2.f1646c = i31 - 1;
                        c0134aH = c0136b.h(4, c0134a.b, 1);
                    }
                    i4 = c0134a.b;
                    i5 = c0134a2.b;
                    if (i4 <= i5) {
                        c0134a2.b = i5 + 1;
                    } else {
                        i6 = i5 + c0134a2.f1646c;
                        if (i4 < i6) {
                            int i32 = i6 - i4;
                            c0134aH2 = c0136b.h(4, i4 + 1, i32);
                            c0134a2.f1646c -= i32;
                        }
                        arrayList.set(i15, c0134a);
                        if (c0134a2.f1646c > 0) {
                            arrayList.set(size, c0134a2);
                        } else {
                            arrayList.remove(size);
                            simplePool.release(c0134a2);
                        }
                        if (c0134aH != null) {
                            arrayList.add(size, c0134aH);
                        }
                        if (c0134aH2 != null) {
                            arrayList.add(size, c0134aH2);
                        }
                    }
                    c0134aH2 = null;
                    arrayList.set(i15, c0134a);
                    if (c0134a2.f1646c > 0) {
                        arrayList.set(size, c0134a2);
                    } else {
                        arrayList.remove(size);
                        simplePool.release(c0134a2);
                    }
                    if (c0134aH != null) {
                        arrayList.add(size, c0134aH);
                    }
                    if (c0134aH2 != null) {
                        arrayList.add(size, c0134aH2);
                    }
                }
                c0134aH = null;
                i4 = c0134a.b;
                i5 = c0134a2.b;
                if (i4 <= i5) {
                    c0134a2.b = i5 + 1;
                } else {
                    i6 = i5 + c0134a2.f1646c;
                    if (i4 < i6) {
                        int i33 = i6 - i4;
                        c0134aH2 = c0136b.h(4, i4 + 1, i33);
                        c0134a2.f1646c -= i33;
                    }
                    arrayList.set(i15, c0134a);
                    if (c0134a2.f1646c > 0) {
                        arrayList.set(size, c0134a2);
                    } else {
                        arrayList.remove(size);
                        simplePool.release(c0134a2);
                    }
                    if (c0134aH != null) {
                        arrayList.add(size, c0134aH);
                    }
                    if (c0134aH2 != null) {
                        arrayList.add(size, c0134aH2);
                    }
                }
                c0134aH2 = null;
                arrayList.set(i15, c0134a);
                if (c0134a2.f1646c > 0) {
                    arrayList.set(size, c0134a2);
                } else {
                    arrayList.remove(size);
                    simplePool.release(c0134a2);
                }
                if (c0134aH != null) {
                    arrayList.add(size, c0134aH);
                }
                if (c0134aH2 != null) {
                    arrayList.add(size, c0134aH2);
                }
            }
        }
        int size2 = arrayList.size();
        int i34 = 0;
        while (i34 < size2) {
            C0134a c0134aH4 = (C0134a) arrayList.get(i34);
            int i35 = c0134aH4.f1645a;
            if (i35 != 1) {
                Pools.SimplePool simplePool2 = this.f1647a;
                V v2 = this.f1649d;
                if (i35 == 2) {
                    int i36 = c0134aH4.b;
                    int i37 = c0134aH4.f1646c + i36;
                    int i38 = i36;
                    byte b3 = -1;
                    int i39 = 0;
                    while (i38 < i37) {
                        if (v2.b(i38) != null || a(i38)) {
                            if (b3 == 0) {
                                d(h(2, i36, i39));
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            b = 1;
                        } else {
                            if (b3 == 1) {
                                i(h(2, i36, i39));
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            b = 0;
                        }
                        if (z2) {
                            i38 -= i39;
                            i37 -= i39;
                            i39 = 1;
                        } else {
                            i39++;
                        }
                        i38++;
                        b3 = b;
                    }
                    if (i39 != c0134aH4.f1646c) {
                        simplePool2.release(c0134aH4);
                        c0134aH4 = h(2, i36, i39);
                    }
                    if (b3 == 0) {
                        d(c0134aH4);
                    } else {
                        i(c0134aH4);
                    }
                } else if (i35 == 4) {
                    int i40 = c0134aH4.b;
                    int i41 = c0134aH4.f1646c + i40;
                    byte b4 = -1;
                    int i42 = i40;
                    int i43 = 0;
                    while (i40 < i41) {
                        if (v2.b(i40) != null || a(i40)) {
                            if (b4 == 0) {
                                d(h(4, i42, i43));
                                i42 = i40;
                                i43 = 0;
                            }
                            b4 = 1;
                        } else {
                            if (b4 == 1) {
                                i(h(4, i42, i43));
                                i42 = i40;
                                i43 = 0;
                            }
                            b4 = 0;
                        }
                        i43++;
                        i40++;
                    }
                    if (i43 != c0134aH4.f1646c) {
                        simplePool2.release(c0134aH4);
                        c0134aH4 = h(4, i42, i43);
                    }
                    if (b4 == 0) {
                        d(c0134aH4);
                    } else {
                        i(c0134aH4);
                    }
                } else if (i35 == i3) {
                    i(c0134aH4);
                }
            } else {
                i(c0134aH4);
            }
            i34++;
            i3 = 8;
        }
        arrayList.clear();
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C0134a c0134a = (C0134a) arrayList.get(i3);
            c0134a.getClass();
            this.f1647a.release(c0134a);
        }
        arrayList.clear();
    }

    public final int l(int i3, int i4) {
        int i5;
        int i6;
        ArrayList arrayList = this.f1648c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0134a c0134a = (C0134a) arrayList.get(size);
            int i7 = c0134a.f1645a;
            if (i7 == 8) {
                int i8 = c0134a.b;
                int i9 = c0134a.f1646c;
                if (i8 < i9) {
                    i6 = i8;
                    i5 = i9;
                } else {
                    i5 = i8;
                    i6 = i9;
                }
                if (i3 < i6 || i3 > i5) {
                    if (i3 < i8) {
                        if (i4 == 1) {
                            c0134a.b = i8 + 1;
                            c0134a.f1646c = i9 + 1;
                        } else if (i4 == 2) {
                            c0134a.b = i8 - 1;
                            c0134a.f1646c = i9 - 1;
                        }
                    }
                } else if (i6 == i8) {
                    if (i4 == 1) {
                        c0134a.f1646c = i9 + 1;
                    } else if (i4 == 2) {
                        c0134a.f1646c = i9 - 1;
                    }
                    i3++;
                } else {
                    if (i4 == 1) {
                        c0134a.b = i8 + 1;
                    } else if (i4 == 2) {
                        c0134a.b = i8 - 1;
                    }
                    i3--;
                }
            } else {
                int i10 = c0134a.b;
                if (i10 <= i3) {
                    if (i7 == 1) {
                        i3 -= c0134a.f1646c;
                    } else if (i7 == 2) {
                        i3 += c0134a.f1646c;
                    }
                } else if (i4 == 1) {
                    c0134a.b = i10 + 1;
                } else if (i4 == 2) {
                    c0134a.b = i10 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C0134a c0134a2 = (C0134a) arrayList.get(size2);
            int i11 = c0134a2.f1645a;
            Pools.SimplePool simplePool = this.f1647a;
            if (i11 == 8) {
                int i12 = c0134a2.f1646c;
                if (i12 == c0134a2.b || i12 < 0) {
                    arrayList.remove(size2);
                    simplePool.release(c0134a2);
                }
            } else if (c0134a2.f1646c <= 0) {
                arrayList.remove(size2);
                simplePool.release(c0134a2);
            }
        }
        return i3;
    }
}
