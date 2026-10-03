package P;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class L implements Parcelable {
    public static final Parcelable.Creator<L> CREATOR = new D0.b(2);
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1618c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1619d;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.f1618c);
        parcel.writeInt(this.f1619d ? 1 : 0);
    }
}
