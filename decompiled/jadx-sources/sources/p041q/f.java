package p041q;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;
import p043r.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Collection, Set, KMutableCollection, KMutableSet {
    public int[] b = a.f5292a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f5247c = a.f5293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5248d;

    public f(int i3) {
        if (i3 > 0) {
            h.a(this, i3);
        }
    }

    public final Object a(int i3) {
        int i4 = this.f5248d;
        Object[] objArr = this.f5247c;
        Object obj = objArr[i3];
        if (i4 <= 1) {
            clear();
            return obj;
        }
        int i5 = i4 - 1;
        int[] iArr = this.b;
        if (iArr.length <= 8 || i4 >= iArr.length / 3) {
            if (i3 < i5) {
                int i6 = i3 + 1;
                ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, i3, i6, i4);
                Object[] objArr2 = this.f5247c;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i3, i6, i4);
            }
            this.f5247c[i5] = null;
        } else {
            h.a(this, i4 > 8 ? i4 + (i4 >> 1) : 8);
            if (i3 > 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(iArr, this.b, 0, 0, i3, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(objArr, this.f5247c, 0, 0, i3, 6, (Object) null);
            }
            if (i3 < i5) {
                int i7 = i3 + 1;
                ArraysKt___ArraysJvmKt.copyInto(iArr, this.b, i3, i7, i4);
                ArraysKt___ArraysJvmKt.copyInto(objArr, this.f5247c, i3, i7, i4);
            }
        }
        if (i4 != this.f5248d) {
            throw new ConcurrentModificationException();
        }
        this.f5248d = i5;
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i3;
        int iB;
        int i4 = this.f5248d;
        if (obj == null) {
            Intrinsics.checkNotNullParameter(this, "<this>");
            iB = h.b(this, null, 0);
            i3 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i3 = iHashCode;
            iB = h.b(this, obj, iHashCode);
        }
        if (iB >= 0) {
            return false;
        }
        int i5 = ~iB;
        int[] iArr = this.b;
        if (i4 >= iArr.length) {
            int i6 = 8;
            if (i4 >= 8) {
                i6 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i6 = 4;
            }
            Object[] objArr = this.f5247c;
            h.a(this, i6);
            if (i4 != this.f5248d) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.b;
            if (iArr2.length != 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(iArr, iArr2, 0, 0, iArr.length, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(objArr, this.f5247c, 0, 0, objArr.length, 6, (Object) null);
            }
        }
        if (i5 < i4) {
            int[] iArr3 = this.b;
            int i7 = i5 + 1;
            ArraysKt___ArraysJvmKt.copyInto(iArr3, iArr3, i7, i5, i4);
            Object[] objArr2 = this.f5247c;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i7, i5, i4);
        }
        int i8 = this.f5248d;
        if (i4 == i8) {
            int[] iArr4 = this.b;
            if (i5 < iArr4.length) {
                iArr4[i5] = i3;
                this.f5247c[i5] = obj;
                this.f5248d = i8 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int size = elements.size() + this.f5248d;
        int i3 = this.f5248d;
        int[] iArr = this.b;
        if (iArr.length < size) {
            Object[] objArr = this.f5247c;
            h.a(this, size);
            int i4 = this.f5248d;
            if (i4 > 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(iArr, this.b, 0, 0, i4, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(objArr, this.f5247c, 0, 0, this.f5248d, 6, (Object) null);
            }
        }
        if (this.f5248d != i3) {
            throw new ConcurrentModificationException();
        }
        Iterator it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f5248d != 0) {
            int[] iArr = a.f5292a;
            Intrinsics.checkNotNullParameter(iArr, "<set-?>");
            this.b = iArr;
            Object[] objArr = a.f5293c;
            Intrinsics.checkNotNullParameter(objArr, "<set-?>");
            this.f5247c = objArr;
            this.f5248d = 0;
        }
        if (this.f5248d != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int iB;
        if (obj == null) {
            Intrinsics.checkNotNullParameter(this, "<this>");
            iB = h.b(this, null, 0);
        } else {
            iB = h.b(this, obj, obj.hashCode());
        }
        return iB >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.f5248d != ((Set) obj).size()) {
            return false;
        }
        try {
            int i3 = this.f5248d;
            for (int i4 = 0; i4 < i3; i4++) {
                if (!((Set) obj).contains(this.f5247c[i4])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.b;
        int i3 = this.f5248d;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            i4 += iArr[i5];
        }
        return i4;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f5248d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new a(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int iB;
        if (obj == null) {
            Intrinsics.checkNotNullParameter(this, "<this>");
            iB = h.b(this, null, 0);
        } else {
            iB = h.b(this, obj, obj.hashCode());
        }
        if (iB < 0) {
            return false;
        }
        a(iB);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z2 = false;
        for (int i3 = this.f5248d - 1; -1 < i3; i3--) {
            if (!CollectionsKt.contains(elements, this.f5247c[i3])) {
                a(i3);
                z2 = true;
            }
        }
        return z2;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f5248d;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.copyOfRange(this.f5247c, 0, this.f5248d);
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f5248d * 14);
        sb.append('{');
        int i3 = this.f5248d;
        for (int i4 = 0; i4 < i3; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            Object obj = this.f5247c[i4];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] result) {
        Intrinsics.checkNotNullParameter(result, "array");
        int i3 = this.f5248d;
        if (result.length < i3) {
            result = (Object[]) Array.newInstance(result.getClass().getComponentType(), i3);
        } else if (result.length > i3) {
            result[i3] = null;
        }
        ArraysKt___ArraysJvmKt.copyInto(this.f5247c, result, 0, 0, this.f5248d);
        Intrinsics.checkNotNullExpressionValue(result, "result");
        return result;
    }
}
