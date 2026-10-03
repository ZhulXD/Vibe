package p028k1;

import C1.T;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final T f4982j = new T(10);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l f4984d;
    public final l g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k f4986h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public k f4987i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4985e = 0;
    public int f = 0;
    public final Comparator b = f4982j;

    public m(boolean z2) {
        this.f4983c = z2;
        this.g = new l(z2);
    }

    public final l a(Object obj, boolean z2) {
        int iCompareTo;
        l lVar;
        l lVar2 = this.f4984d;
        T t2 = f4982j;
        Comparator comparator = this.b;
        if (lVar2 != null) {
            Comparable comparable = comparator == t2 ? (Comparable) obj : null;
            while (true) {
                Object obj2 = lVar2.g;
                iCompareTo = comparable != null ? comparable.compareTo(obj2) : comparator.compare(obj, obj2);
                if (iCompareTo == 0) {
                    return lVar2;
                }
                l lVar3 = iCompareTo < 0 ? lVar2.f4976c : lVar2.f4977d;
                if (lVar3 == null) {
                    break;
                }
                lVar2 = lVar3;
            }
        } else {
            iCompareTo = 0;
        }
        l lVar4 = lVar2;
        if (!z2) {
            return null;
        }
        l lVar5 = this.g;
        if (lVar4 != null) {
            lVar = new l(this.f4983c, lVar4, obj, lVar5, lVar5.f);
            if (iCompareTo < 0) {
                lVar4.f4976c = lVar;
            } else {
                lVar4.f4977d = lVar;
            }
            b(lVar4, true);
        } else {
            if (comparator == t2 && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            lVar = new l(this.f4983c, lVar4, obj, lVar5, lVar5.f);
            this.f4984d = lVar;
        }
        this.f4985e++;
        this.f++;
        return lVar;
    }

    public final void b(l lVar, boolean z2) {
        while (lVar != null) {
            l lVar2 = lVar.f4976c;
            l lVar3 = lVar.f4977d;
            int i3 = lVar2 != null ? lVar2.f4981j : 0;
            int i4 = lVar3 != null ? lVar3.f4981j : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                l lVar4 = lVar3.f4976c;
                l lVar5 = lVar3.f4977d;
                int i6 = (lVar4 != null ? lVar4.f4981j : 0) - (lVar5 != null ? lVar5.f4981j : 0);
                if (i6 == -1 || (i6 == 0 && !z2)) {
                    e(lVar);
                } else {
                    f(lVar3);
                    e(lVar);
                }
                if (z2) {
                    return;
                }
            } else if (i5 == 2) {
                l lVar6 = lVar2.f4976c;
                l lVar7 = lVar2.f4977d;
                int i7 = (lVar6 != null ? lVar6.f4981j : 0) - (lVar7 != null ? lVar7.f4981j : 0);
                if (i7 == 1 || (i7 == 0 && !z2)) {
                    f(lVar);
                } else {
                    e(lVar2);
                    f(lVar);
                }
                if (z2) {
                    return;
                }
            } else if (i5 == 0) {
                lVar.f4981j = i3 + 1;
                if (z2) {
                    return;
                }
            } else {
                lVar.f4981j = Math.max(i3, i4) + 1;
                if (!z2) {
                    return;
                }
            }
            lVar = lVar.b;
        }
    }

    public final void c(l lVar, boolean z2) {
        l lVar2;
        l lVar3;
        int i3;
        if (z2) {
            l lVar4 = lVar.f;
            lVar4.f4978e = lVar.f4978e;
            lVar.f4978e.f = lVar4;
        }
        l lVar5 = lVar.f4976c;
        l lVar6 = lVar.f4977d;
        l lVar7 = lVar.b;
        int i4 = 0;
        if (lVar5 == null || lVar6 == null) {
            if (lVar5 != null) {
                d(lVar, lVar5);
                lVar.f4976c = null;
            } else if (lVar6 != null) {
                d(lVar, lVar6);
                lVar.f4977d = null;
            } else {
                d(lVar, null);
            }
            b(lVar7, false);
            this.f4985e--;
            this.f++;
            return;
        }
        if (lVar5.f4981j > lVar6.f4981j) {
            l lVar8 = lVar5.f4977d;
            while (true) {
                l lVar9 = lVar8;
                lVar3 = lVar5;
                lVar5 = lVar9;
                if (lVar5 == null) {
                    break;
                } else {
                    lVar8 = lVar5.f4977d;
                }
            }
        } else {
            l lVar10 = lVar6.f4976c;
            while (true) {
                lVar2 = lVar6;
                lVar6 = lVar10;
                if (lVar6 == null) {
                    break;
                } else {
                    lVar10 = lVar6.f4976c;
                }
            }
            lVar3 = lVar2;
        }
        c(lVar3, false);
        l lVar11 = lVar.f4976c;
        if (lVar11 != null) {
            i3 = lVar11.f4981j;
            lVar3.f4976c = lVar11;
            lVar11.b = lVar3;
            lVar.f4976c = null;
        } else {
            i3 = 0;
        }
        l lVar12 = lVar.f4977d;
        if (lVar12 != null) {
            i4 = lVar12.f4981j;
            lVar3.f4977d = lVar12;
            lVar12.b = lVar3;
            lVar.f4977d = null;
        }
        lVar3.f4981j = Math.max(i3, i4) + 1;
        d(lVar, lVar3);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f4984d = null;
        this.f4985e = 0;
        this.f++;
        l lVar = this.g;
        lVar.f = lVar;
        lVar.f4978e = lVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        l lVarA = null;
        if (obj != null) {
            try {
                lVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return lVarA != null;
    }

    public final void d(l lVar, l lVar2) {
        l lVar3 = lVar.b;
        lVar.b = null;
        if (lVar2 != null) {
            lVar2.b = lVar3;
        }
        if (lVar3 == null) {
            this.f4984d = lVar2;
        } else if (lVar3.f4976c == lVar) {
            lVar3.f4976c = lVar2;
        } else {
            lVar3.f4977d = lVar2;
        }
    }

    public final void e(l lVar) {
        l lVar2 = lVar.f4976c;
        l lVar3 = lVar.f4977d;
        l lVar4 = lVar3.f4976c;
        l lVar5 = lVar3.f4977d;
        lVar.f4977d = lVar4;
        if (lVar4 != null) {
            lVar4.b = lVar;
        }
        d(lVar, lVar3);
        lVar3.f4976c = lVar;
        lVar.b = lVar3;
        int iMax = Math.max(lVar2 != null ? lVar2.f4981j : 0, lVar4 != null ? lVar4.f4981j : 0) + 1;
        lVar.f4981j = iMax;
        lVar3.f4981j = Math.max(iMax, lVar5 != null ? lVar5.f4981j : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        k kVar = this.f4986h;
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(0, this);
        this.f4986h = kVar2;
        return kVar2;
    }

    public final void f(l lVar) {
        l lVar2 = lVar.f4976c;
        l lVar3 = lVar.f4977d;
        l lVar4 = lVar2.f4976c;
        l lVar5 = lVar2.f4977d;
        lVar.f4976c = lVar5;
        if (lVar5 != null) {
            lVar5.b = lVar;
        }
        d(lVar, lVar2);
        lVar2.f4977d = lVar;
        lVar.b = lVar2;
        int iMax = Math.max(lVar3 != null ? lVar3.f4981j : 0, lVar5 != null ? lVar5.f4981j : 0) + 1;
        lVar.f4981j = iMax;
        lVar2.f4981j = Math.max(iMax, lVar4 != null ? lVar4.f4981j : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        l lVarA;
        if (obj != null) {
            try {
                lVarA = a(obj, false);
            } catch (ClassCastException unused) {
                lVarA = null;
            }
        } else {
            lVarA = null;
        }
        if (lVarA != null) {
            return lVarA.f4980i;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        k kVar = this.f4987i;
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(1, this);
        this.f4987i = kVar2;
        return kVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        if (obj2 == null && !this.f4983c) {
            throw new NullPointerException("value == null");
        }
        l lVarA = a(obj, true);
        Object obj3 = lVarA.f4980i;
        lVarA.f4980i = obj2;
        return obj3;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        l lVarA;
        if (obj != null) {
            try {
                lVarA = a(obj, false);
            } catch (ClassCastException unused) {
                lVarA = null;
            }
        } else {
            lVarA = null;
        }
        if (lVarA != null) {
            c(lVarA, true);
        }
        if (lVarA != null) {
            return lVarA.f4980i;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f4985e;
    }
}
