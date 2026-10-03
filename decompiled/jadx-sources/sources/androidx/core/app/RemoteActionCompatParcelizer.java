package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(U.a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        U.c cVarG = remoteActionCompat.mIcon;
        boolean z2 = true;
        if (aVar.e(1)) {
            cVarG = aVar.g();
        }
        remoteActionCompat.mIcon = (IconCompat) cVarG;
        CharSequence charSequence = remoteActionCompat.mTitle;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((U.b) aVar).f2229e);
        }
        remoteActionCompat.mTitle = charSequence;
        CharSequence charSequence2 = remoteActionCompat.mContentDescription;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((U.b) aVar).f2229e);
        }
        remoteActionCompat.mContentDescription = charSequence2;
        remoteActionCompat.mActionIntent = (PendingIntent) aVar.f(remoteActionCompat.mActionIntent, 4);
        boolean z3 = remoteActionCompat.mEnabled;
        if (aVar.e(5)) {
            z3 = ((U.b) aVar).f2229e.readInt() != 0;
        }
        remoteActionCompat.mEnabled = z3;
        boolean z4 = remoteActionCompat.mShouldShowIcon;
        if (!aVar.e(6)) {
            z2 = z4;
        } else if (((U.b) aVar).f2229e.readInt() == 0) {
            z2 = false;
        }
        remoteActionCompat.mShouldShowIcon = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, U.a aVar) {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.mIcon;
        aVar.h(1);
        aVar.i(iconCompat);
        CharSequence charSequence = remoteActionCompat.mTitle;
        aVar.h(2);
        Parcel parcel = ((U.b) aVar).f2229e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.mContentDescription;
        aVar.h(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.mActionIntent;
        aVar.h(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z2 = remoteActionCompat.mEnabled;
        aVar.h(5);
        parcel.writeInt(z2 ? 1 : 0);
        boolean z3 = remoteActionCompat.mShouldShowIcon;
        aVar.h(6);
        parcel.writeInt(z3 ? 1 : 0);
    }
}
