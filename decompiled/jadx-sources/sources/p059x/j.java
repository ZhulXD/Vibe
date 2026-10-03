package p059x;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import p048t.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f5965e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5966a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5968d;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5965e = sparseIntArray;
        sparseIntArray.append(2, 1);
        sparseIntArray.append(4, 2);
        sparseIntArray.append(5, 3);
        sparseIntArray.append(1, 4);
        sparseIntArray.append(0, 5);
        sparseIntArray.append(3, 6);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f5989e);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            switch (f5965e.get(index)) {
                case 1:
                    this.f5968d = typedArrayObtainStyledAttributes.getFloat(index, this.f5968d);
                    break;
                case 2:
                    this.b = typedArrayObtainStyledAttributes.getInt(index, this.b);
                    break;
                case 3:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                    } else {
                        String str = a.f5317a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                    }
                    break;
                case 4:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    break;
                case 5:
                    this.f5966a = m.f(typedArrayObtainStyledAttributes, index, this.f5966a);
                    break;
                case 6:
                    this.f5967c = typedArrayObtainStyledAttributes.getFloat(index, this.f5967c);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
