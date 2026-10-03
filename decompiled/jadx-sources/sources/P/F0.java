package P;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class F0 implements Parcelable {
    public static final Parcelable.Creator<F0> CREATOR = new D0.b(4);
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f1555e;
    public int f;
    public int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList f1556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1559k;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.f1553c);
        parcel.writeInt(this.f1554d);
        if (this.f1554d > 0) {
            parcel.writeIntArray(this.f1555e);
        }
        parcel.writeInt(this.f);
        if (this.f > 0) {
            parcel.writeIntArray(this.g);
        }
        parcel.writeInt(this.f1557i ? 1 : 0);
        parcel.writeInt(this.f1558j ? 1 : 0);
        parcel.writeInt(this.f1559k ? 1 : 0);
        parcel.writeList(this.f1556h);
    }
}
