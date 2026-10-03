package C;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c implements Parcelable {
    public final Parcelable b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f382c = new a();
    public static final Parcelable.Creator<c> CREATOR = new b(0);

    public c() {
        this.b = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i3) {
        parcel.writeParcelable(this.b, i3);
    }

    public c(Parcelable parcelable) {
        if (parcelable != null) {
            this.b = parcelable == f382c ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public c(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.b = parcelable == null ? f382c : parcelable;
    }
}
