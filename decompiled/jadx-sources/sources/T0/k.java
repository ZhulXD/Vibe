package T0;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends C.c {
    public static final Parcelable.Creator<k> CREATOR = new C.b(6);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Bundle f2202d;

    public k(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2202d = parcel.readBundle(classLoader == null ? k.class.getClassLoader() : classLoader);
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeBundle(this.f2202d);
    }
}
