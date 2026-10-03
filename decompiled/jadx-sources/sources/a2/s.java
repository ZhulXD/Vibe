package a2;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s {
    private volatile AtomicReferenceArray<Object> array;

    public s(int i3) {
        this.array = new AtomicReferenceArray<>(i3);
    }

    public final int a() {
        return this.array.length();
    }

    public final Object b(int i3) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i3 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i3);
        }
        return null;
    }

    public final void c(int i3, c2.a aVar) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i3 < length) {
            atomicReferenceArray.set(i3, aVar);
            return;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(RangesKt.coerceAtLeast(i3 + 1, length * 2));
        for (int i4 = 0; i4 < length; i4++) {
            atomicReferenceArray2.set(i4, atomicReferenceArray.get(i4));
        }
        atomicReferenceArray2.set(i3, aVar);
        this.array = atomicReferenceArray2;
    }
}
