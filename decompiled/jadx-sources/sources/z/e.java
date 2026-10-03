package z;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends C.c {
    public static final Parcelable.Creator<e> CREATOR = new C.b(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SparseArray f6425d;

    public e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i3 = parcel.readInt();
        int[] iArr = new int[i3];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.f6425d = new SparseArray(i3);
        for (int i4 = 0; i4 < i3; i4++) {
            this.f6425d.append(iArr[i4], parcelableArray[i4]);
        }
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        SparseArray sparseArray = this.f6425d;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = this.f6425d.keyAt(i4);
            parcelableArr[i4] = (Parcelable) this.f6425d.valueAt(i4);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i3);
    }
}
