package k;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g1 extends C.c {
    public static final Parcelable.Creator<g1> CREATOR = new C.b(10);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4825e;

    public g1(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f4824d = parcel.readInt();
        this.f4825e = parcel.readInt() != 0;
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f4824d);
        parcel.writeInt(this.f4825e ? 1 : 0);
    }
}
