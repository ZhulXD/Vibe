package U;

import android.os.Parcel;
import android.util.SparseIntArray;
import p041q.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SparseIntArray f2228d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Parcel f2229e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f2230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f2231i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2232j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2233k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new e(0), new e(0), new e(0));
    }

    @Override // U.a
    public final b a() {
        Parcel parcel = this.f2229e;
        int iDataPosition = parcel.dataPosition();
        int i3 = this.f2232j;
        if (i3 == this.f) {
            i3 = this.g;
        }
        return new b(parcel, iDataPosition, i3, kotlin.collections.unsigned.a.i(new StringBuilder(), this.f2230h, "  "), this.f2226a, this.b, this.f2227c);
    }

    @Override // U.a
    public final boolean e(int i3) {
        while (this.f2232j < this.g) {
            int i4 = this.f2233k;
            if (i4 == i3) {
                return true;
            }
            if (String.valueOf(i4).compareTo(String.valueOf(i3)) > 0) {
                return false;
            }
            int i5 = this.f2232j;
            Parcel parcel = this.f2229e;
            parcel.setDataPosition(i5);
            int i6 = parcel.readInt();
            this.f2233k = parcel.readInt();
            this.f2232j += i6;
        }
        return this.f2233k == i3;
    }

    @Override // U.a
    public final void h(int i3) {
        int i4 = this.f2231i;
        SparseIntArray sparseIntArray = this.f2228d;
        Parcel parcel = this.f2229e;
        if (i4 >= 0) {
            int i5 = sparseIntArray.get(i4);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i5);
            parcel.writeInt(iDataPosition - i5);
            parcel.setDataPosition(iDataPosition);
        }
        this.f2231i = i3;
        sparseIntArray.put(i3, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i3);
    }

    public b(Parcel parcel, int i3, int i4, String str, e eVar, e eVar2, e eVar3) {
        super(eVar, eVar2, eVar3);
        this.f2228d = new SparseIntArray();
        this.f2231i = -1;
        this.f2233k = -1;
        this.f2229e = parcel;
        this.f = i3;
        this.g = i4;
        this.f2232j = i3;
        this.f2230h = str;
    }
}
