package R0;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends C.c {
    public static final Parcelable.Creator<b> CREATOR = new C.b(4);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1862d;

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1862d = parcel.readInt() == 1;
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f1862d ? 1 : 0);
    }
}
