package p002a1;

import D0.b;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c extends View.BaseSavedState {
    public static final Parcelable.Creator<c> CREATOR = new b(7);
    public float b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f2501c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f2502d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2503e;
    public boolean f;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeFloat(this.b);
        parcel.writeFloat(this.f2501c);
        parcel.writeList(this.f2502d);
        parcel.writeFloat(this.f2503e);
        parcel.writeBooleanArray(new boolean[]{this.f});
    }
}
