package D0;

import P.E0;
import P.F0;
import P.L;
import R0.i;
import T0.g;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.view.MotionEventCompat;
import androidx.versionedparcelable.ParcelImpl;
import com.google.android.material.datepicker.e;
import com.google.android.material.datepicker.p;
import java.util.ArrayList;
import java.util.Locale;
import k.C0298k;
import k.Q;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f767a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f767a) {
            case 0:
                c cVar = new c();
                cVar.f778j = 255;
                cVar.f780l = -2;
                cVar.f781m = -2;
                cVar.f782n = -2;
                cVar.f789u = Boolean.TRUE;
                cVar.b = parcel.readInt();
                cVar.f773c = (Integer) parcel.readSerializable();
                cVar.f774d = (Integer) parcel.readSerializable();
                cVar.f775e = (Integer) parcel.readSerializable();
                cVar.f = (Integer) parcel.readSerializable();
                cVar.g = (Integer) parcel.readSerializable();
                cVar.f776h = (Integer) parcel.readSerializable();
                cVar.f777i = (Integer) parcel.readSerializable();
                cVar.f778j = parcel.readInt();
                cVar.f779k = parcel.readString();
                cVar.f780l = parcel.readInt();
                cVar.f781m = parcel.readInt();
                cVar.f782n = parcel.readInt();
                cVar.f784p = parcel.readString();
                cVar.f785q = parcel.readString();
                cVar.f786r = parcel.readInt();
                cVar.f788t = (Integer) parcel.readSerializable();
                cVar.f790v = (Integer) parcel.readSerializable();
                cVar.f791w = (Integer) parcel.readSerializable();
                cVar.f792x = (Integer) parcel.readSerializable();
                cVar.f793y = (Integer) parcel.readSerializable();
                cVar.f794z = (Integer) parcel.readSerializable();
                cVar.f768A = (Integer) parcel.readSerializable();
                cVar.f771D = (Integer) parcel.readSerializable();
                cVar.f769B = (Integer) parcel.readSerializable();
                cVar.f770C = (Integer) parcel.readSerializable();
                cVar.f789u = (Boolean) parcel.readSerializable();
                cVar.f783o = (Locale) parcel.readSerializable();
                cVar.f772E = (Boolean) parcel.readSerializable();
                return cVar;
            case 1:
                L0.b bVar = new L0.b(parcel);
                bVar.b = ((Integer) parcel.readValue(L0.b.class.getClassLoader())).intValue();
                return bVar;
            case 2:
                L l2 = new L();
                l2.b = parcel.readInt();
                l2.f1618c = parcel.readInt();
                l2.f1619d = parcel.readInt() == 1;
                return l2;
            case 3:
                E0 e2 = new E0();
                e2.b = parcel.readInt();
                e2.f1549c = parcel.readInt();
                e2.f1551e = parcel.readInt() == 1;
                int i3 = parcel.readInt();
                if (i3 > 0) {
                    int[] iArr = new int[i3];
                    e2.f1550d = iArr;
                    parcel.readIntArray(iArr);
                }
                return e2;
            case 4:
                F0 f3 = new F0();
                f3.b = parcel.readInt();
                f3.f1553c = parcel.readInt();
                int i4 = parcel.readInt();
                f3.f1554d = i4;
                if (i4 > 0) {
                    int[] iArr2 = new int[i4];
                    f3.f1555e = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int i5 = parcel.readInt();
                f3.f = i5;
                if (i5 > 0) {
                    int[] iArr3 = new int[i5];
                    f3.g = iArr3;
                    parcel.readIntArray(iArr3);
                }
                f3.f1557i = parcel.readInt() == 1;
                f3.f1558j = parcel.readInt() == 1;
                f3.f1559k = parcel.readInt() == 1;
                f3.f1556h = parcel.readArrayList(E0.class.getClassLoader());
                return f3;
            case 5:
                g gVar = new g();
                gVar.b = parcel.readInt();
                gVar.f2199c = (i) parcel.readParcelable(g.class.getClassLoader());
                return gVar;
            case 6:
                return new ParcelImpl(parcel);
            case 7:
                p002a1.c cVar2 = new p002a1.c(parcel);
                cVar2.b = parcel.readFloat();
                cVar2.f2501c = parcel.readFloat();
                ArrayList arrayList = new ArrayList();
                cVar2.f2502d = arrayList;
                parcel.readList(arrayList, Float.class.getClassLoader());
                cVar2.f2503e = parcel.readFloat();
                cVar2.f = parcel.createBooleanArray()[0];
                return cVar2;
            case 8:
                return new com.google.android.material.datepicker.b((p) parcel.readParcelable(p.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), (e) parcel.readParcelable(e.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), parcel.readInt());
            case 9:
                return new e(parcel.readLong());
            case 10:
                return p.a(parcel.readInt(), parcel.readInt());
            case MotionEventCompat.AXIS_Z /* 11 */:
                C0298k c0298k = new C0298k();
                c0298k.b = parcel.readInt();
                return c0298k;
            default:
                Q q2 = new Q(parcel);
                q2.b = parcel.readByte() != 0;
                return q2;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i3) {
        switch (this.f767a) {
            case 0:
                return new c[i3];
            case 1:
                return new L0.b[i3];
            case 2:
                return new L[i3];
            case 3:
                return new E0[i3];
            case 4:
                return new F0[i3];
            case 5:
                return new g[i3];
            case 6:
                return new ParcelImpl[i3];
            case 7:
                return new p002a1.c[i3];
            case 8:
                return new com.google.android.material.datepicker.b[i3];
            case 9:
                return new e[i3];
            case 10:
                return new p[i3];
            case MotionEventCompat.AXIS_Z /* 11 */:
                return new C0298k[i3];
            default:
                return new Q[i3];
        }
    }
}
