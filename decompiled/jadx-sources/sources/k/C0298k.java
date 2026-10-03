package k;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: k.k, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0298k implements Parcelable {
    public static final Parcelable.Creator<C0298k> CREATOR = new D0.b(11);
    public int b;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.b);
    }
}
