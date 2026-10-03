package C;

import H0.h;
import P.r0;
import R0.i;
import T0.k;
import X.q;
import Z0.d;
import android.os.Parcel;
import android.os.Parcelable;
import k.g1;
import p010d1.A;
import z.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f381a;

    public /* synthetic */ b(int i3) {
        this.f381a = i3;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f381a) {
            case 0:
                if (parcel.readParcelable(classLoader) == null) {
                    return c.f382c;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new h(parcel, classLoader);
            case 2:
                return new I0.b(parcel, classLoader);
            case 3:
                return new r0(parcel, classLoader);
            case 4:
                return new R0.b(parcel, classLoader);
            case 5:
                return new i(parcel, classLoader);
            case 6:
                return new k(parcel, classLoader);
            case 7:
                q qVar = new q(parcel, classLoader);
                qVar.b = parcel.readInt();
                qVar.f2330c = parcel.readInt();
                qVar.f2331d = parcel.readParcelable(classLoader);
                return qVar;
            case 8:
                return new d(parcel, classLoader);
            case 9:
                return new A(parcel, classLoader);
            case 10:
                return new g1(parcel, classLoader);
            default:
                return new e(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i3) {
        switch (this.f381a) {
            case 0:
                return new c[i3];
            case 1:
                return new h[i3];
            case 2:
                return new I0.b[i3];
            case 3:
                return new r0[i3];
            case 4:
                return new R0.b[i3];
            case 5:
                return new i[i3];
            case 6:
                return new k[i3];
            case 7:
                return new q[i3];
            case 8:
                return new d[i3];
            case 9:
                return new A[i3];
            case 10:
                return new g1[i3];
            default:
                return new e[i3];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f381a) {
            case 0:
                if (parcel.readParcelable(null) == null) {
                    return c.f382c;
                }
                throw new IllegalStateException("superState must be null");
            case 1:
                return new h(parcel, null);
            case 2:
                return new I0.b(parcel, null);
            case 3:
                return new r0(parcel, null);
            case 4:
                return new R0.b(parcel, null);
            case 5:
                return new i(parcel, null);
            case 6:
                return new k(parcel, null);
            case 7:
                q qVar = new q(parcel, null);
                qVar.b = parcel.readInt();
                qVar.f2330c = parcel.readInt();
                qVar.f2331d = parcel.readParcelable(null);
                return qVar;
            case 8:
                return new d(parcel, null);
            case 9:
                return new A(parcel, null);
            case 10:
                return new g1(parcel, null);
            default:
                return new e(parcel, null);
        }
    }
}
