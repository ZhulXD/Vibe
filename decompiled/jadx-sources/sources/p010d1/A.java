package p010d1;

import C.b;
import C.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A extends c {
    public static final Parcelable.Creator<A> CREATOR = new b(9);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f3874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3875e;

    public A(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f3874d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f3875e = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f3874d) + "}";
    }

    @Override // C.c, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        super.writeToParcel(parcel, i3);
        TextUtils.writeToParcel(this.f3874d, parcel, i3);
        parcel.writeInt(this.f3875e ? 1 : 0);
    }
}
