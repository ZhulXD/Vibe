package kotlin.jvm.internal;

import kotlin.Metadata;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\u0004*\u00028\u0000H$¢\u0006\u0002\u0010\bJ\u0013\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u0000¢\u0006\u0002\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0004H\u0004J\u001d\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u0000H\u0004¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0004X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\u0006R\u001e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000eX\u0082\u0004¢\u0006\n\n\u0002\u0010\u0011\u0012\u0004\b\u000f\u0010\u0010¨\u0006\u001a"}, d2 = {"Lkotlin/jvm/internal/PrimitiveSpreadBuilder;", "T", "", "size", "", "<init>", "(I)V", "getSize", "(Ljava/lang/Object;)I", "position", "getPosition", "()I", "setPosition", "spreads", "", "getSpreads$annotations", "()V", "[Ljava/lang/Object;", "addSpread", "", "spreadArgument", "(Ljava/lang/Object;)V", "toArray", "values", "result", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class PrimitiveSpreadBuilder<T> {
    private int position;
    private final int size;
    private final T[] spreads;

    public PrimitiveSpreadBuilder(int i3) {
        this.size = i3;
        this.spreads = (T[]) new Object[i3];
    }

    public final void addSpread(T spreadArgument) {
        Intrinsics.checkNotNullParameter(spreadArgument, "spreadArgument");
        T[] tArr = this.spreads;
        int i3 = this.position;
        this.position = i3 + 1;
        tArr[i3] = spreadArgument;
    }

    public final int getPosition() {
        return this.position;
    }

    public abstract int getSize(T t2);

    public final void setPosition(int i3) {
        this.position = i3;
    }

    public final int size() {
        int i3 = this.size - 1;
        int size = 0;
        if (i3 >= 0) {
            int i4 = 0;
            while (true) {
                T t2 = this.spreads[i4];
                size += t2 != null ? getSize(t2) : 1;
                if (i4 == i3) {
                    break;
                }
                i4++;
            }
        }
        return size;
    }

    public final T toArray(T values, T result) {
        int i3;
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(result, "result");
        int i4 = this.size - 1;
        int i5 = 0;
        if (i4 >= 0) {
            int i6 = 0;
            int i7 = 0;
            i3 = 0;
            while (true) {
                T t2 = this.spreads[i6];
                if (t2 != null) {
                    if (i7 < i6) {
                        int i8 = i6 - i7;
                        System.arraycopy(values, i7, result, i3, i8);
                        i3 += i8;
                    }
                    int size = getSize(t2);
                    System.arraycopy(t2, 0, result, i3, size);
                    i3 += size;
                    i7 = i6 + 1;
                }
                if (i6 == i4) {
                    break;
                }
                i6++;
            }
            i5 = i7;
        } else {
            i3 = 0;
        }
        int i9 = this.size;
        if (i5 < i9) {
            System.arraycopy(values, i5, result, i3, i9 - i5);
        }
        return result;
    }

    private static /* synthetic */ void getSpreads$annotations() {
    }
}
