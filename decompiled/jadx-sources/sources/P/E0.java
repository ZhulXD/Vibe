package P;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E0 implements Parcelable {
    public static final Parcelable.Creator<E0> CREATOR = new D0.b(3);
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f1550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1551e;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.b + ", mGapDir=" + this.f1549c + ", mHasUnwantedGapAfter=" + this.f1551e + ", mGapPerSpan=" + Arrays.toString(this.f1550d) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.f1549c);
        parcel.writeInt(this.f1551e ? 1 : 0);
        int[] iArr = this.f1550d;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f1550d);
        }
    }
}
