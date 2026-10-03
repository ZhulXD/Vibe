package p059x;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import androidx.core.view.MotionEventCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final SparseIntArray f5972m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f5973a;
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5974c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5975d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f5976e;
    public float f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f5978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f5979j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5980k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f5981l;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f5972m = sparseIntArray;
        sparseIntArray.append(6, 1);
        sparseIntArray.append(7, 2);
        sparseIntArray.append(8, 3);
        sparseIntArray.append(4, 4);
        sparseIntArray.append(5, 5);
        sparseIntArray.append(0, 6);
        sparseIntArray.append(1, 7);
        sparseIntArray.append(2, 8);
        sparseIntArray.append(3, 9);
        sparseIntArray.append(9, 10);
        sparseIntArray.append(10, 11);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.f5990h);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i3);
            switch (f5972m.get(index)) {
                case 1:
                    this.f5973a = typedArrayObtainStyledAttributes.getFloat(index, this.f5973a);
                    break;
                case 2:
                    this.b = typedArrayObtainStyledAttributes.getFloat(index, this.b);
                    break;
                case 3:
                    this.f5974c = typedArrayObtainStyledAttributes.getFloat(index, this.f5974c);
                    break;
                case 4:
                    this.f5975d = typedArrayObtainStyledAttributes.getFloat(index, this.f5975d);
                    break;
                case 5:
                    this.f5976e = typedArrayObtainStyledAttributes.getFloat(index, this.f5976e);
                    break;
                case 6:
                    this.f = typedArrayObtainStyledAttributes.getDimension(index, this.f);
                    break;
                case 7:
                    this.g = typedArrayObtainStyledAttributes.getDimension(index, this.g);
                    break;
                case 8:
                    this.f5977h = typedArrayObtainStyledAttributes.getDimension(index, this.f5977h);
                    break;
                case 9:
                    this.f5978i = typedArrayObtainStyledAttributes.getDimension(index, this.f5978i);
                    break;
                case 10:
                    this.f5979j = typedArrayObtainStyledAttributes.getDimension(index, this.f5979j);
                    break;
                case MotionEventCompat.AXIS_Z /* 11 */:
                    this.f5980k = true;
                    this.f5981l = typedArrayObtainStyledAttributes.getDimension(index, this.f5981l);
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
