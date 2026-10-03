package androidx.core.graphics.drawable;

import U.a;
import U.b;
import android.content.res.ColorStateList;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        int i3 = iconCompat.mType;
        if (aVar.e(1)) {
            i3 = ((b) aVar).f2229e.readInt();
        }
        iconCompat.mType = i3;
        byte[] bArr = iconCompat.mData;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f2229e;
            int i4 = parcel.readInt();
            if (i4 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i4];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.mData = bArr;
        iconCompat.mParcelable = aVar.f(iconCompat.mParcelable, 3);
        int i5 = iconCompat.mInt1;
        if (aVar.e(4)) {
            i5 = ((b) aVar).f2229e.readInt();
        }
        iconCompat.mInt1 = i5;
        int i6 = iconCompat.mInt2;
        if (aVar.e(5)) {
            i6 = ((b) aVar).f2229e.readInt();
        }
        iconCompat.mInt2 = i6;
        iconCompat.mTintList = (ColorStateList) aVar.f(iconCompat.mTintList, 6);
        String string = iconCompat.mTintModeStr;
        if (aVar.e(7)) {
            string = ((b) aVar).f2229e.readString();
        }
        iconCompat.mTintModeStr = string;
        String string2 = iconCompat.mString1;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f2229e.readString();
        }
        iconCompat.mString1 = string2;
        iconCompat.onPostParceling();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.onPreParceling(false);
        int i3 = iconCompat.mType;
        if (-1 != i3) {
            aVar.h(1);
            ((b) aVar).f2229e.writeInt(i3);
        }
        byte[] bArr = iconCompat.mData;
        if (bArr != null) {
            aVar.h(2);
            Parcel parcel = ((b) aVar).f2229e;
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.mParcelable;
        if (parcelable != null) {
            aVar.h(3);
            ((b) aVar).f2229e.writeParcelable(parcelable, 0);
        }
        int i4 = iconCompat.mInt1;
        if (i4 != 0) {
            aVar.h(4);
            ((b) aVar).f2229e.writeInt(i4);
        }
        int i5 = iconCompat.mInt2;
        if (i5 != 0) {
            aVar.h(5);
            ((b) aVar).f2229e.writeInt(i5);
        }
        ColorStateList colorStateList = iconCompat.mTintList;
        if (colorStateList != null) {
            aVar.h(6);
            ((b) aVar).f2229e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.mTintModeStr;
        if (str != null) {
            aVar.h(7);
            ((b) aVar).f2229e.writeString(str);
        }
        String str2 = iconCompat.mString1;
        if (str2 != null) {
            aVar.h(8);
            ((b) aVar).f2229e.writeString(str2);
        }
    }
}
