package P;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r0 extends C.c {
    public static final Parcelable.Creator<r0> CREATOR = new C.b(3);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f1745d;

    public r0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1745d = parcel.readParcelable(classLoader == null ? AbstractC0147g0.class.getClassLoader() : classLoader);
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeParcelable(this.f1745d, 0);
    }
}
