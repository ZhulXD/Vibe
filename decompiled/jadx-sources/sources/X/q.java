package X;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends View.BaseSavedState {
    public static final Parcelable.Creator<q> CREATOR = new C.b(7);
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f2331d;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.b);
        parcel.writeInt(this.f2330c);
        parcel.writeParcelable(this.f2331d, i3);
    }
}
