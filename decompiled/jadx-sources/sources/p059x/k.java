package p059x;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5969a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5971d;

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            if (index == 1) {
                this.f5970c = typedArrayObtainStyledAttributes.getFloat(index, this.f5970c);
            } else if (index == 0) {
                int i4 = typedArrayObtainStyledAttributes.getInt(index, this.f5969a);
                this.f5969a = i4;
                this.f5969a = m.f5982d[i4];
            } else if (index == 4) {
                this.b = typedArrayObtainStyledAttributes.getInt(index, this.b);
            } else if (index == 3) {
                this.f5971d = typedArrayObtainStyledAttributes.getFloat(index, this.f5971d);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
