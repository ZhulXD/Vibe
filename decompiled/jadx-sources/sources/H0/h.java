package H0;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends C.c {
    public static final Parcelable.Creator<h> CREATOR = new C.b(1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1063e;
    public final boolean f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1064h;

    public h(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1062d = parcel.readInt();
        this.f1063e = parcel.readInt();
        this.f = parcel.readInt() == 1;
        this.g = parcel.readInt() == 1;
        this.f1064h = parcel.readInt() == 1;
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        parcel.writeInt(this.f1062d);
        parcel.writeInt(this.f1063e);
        parcel.writeInt(this.f ? 1 : 0);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.f1064h ? 1 : 0);
    }

    public h(BottomSheetBehavior bottomSheetBehavior) {
        super(AbsSavedState.EMPTY_STATE);
        this.f1062d = bottomSheetBehavior.f3309L;
        this.f1063e = bottomSheetBehavior.f3330e;
        this.f = bottomSheetBehavior.b;
        this.g = bottomSheetBehavior.f3307I;
        this.f1064h = bottomSheetBehavior.f3308J;
    }
}
