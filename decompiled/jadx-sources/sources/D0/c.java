package D0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new b(0);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public Integer f768A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public Integer f769B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public Integer f770C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public Integer f771D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public Boolean f772E;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f773c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Integer f774d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f775e;
    public Integer f;
    public Integer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Integer f776h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f777i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f779k;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Locale f783o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public CharSequence f784p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f785q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f786r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f787s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Integer f788t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Integer f790v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public Integer f791w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Integer f792x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Integer f793y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Integer f794z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f778j = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f780l = -2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f781m = -2;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f782n = -2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Boolean f789u = Boolean.TRUE;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.b);
        parcel.writeSerializable(this.f773c);
        parcel.writeSerializable(this.f774d);
        parcel.writeSerializable(this.f775e);
        parcel.writeSerializable(this.f);
        parcel.writeSerializable(this.g);
        parcel.writeSerializable(this.f776h);
        parcel.writeSerializable(this.f777i);
        parcel.writeInt(this.f778j);
        parcel.writeString(this.f779k);
        parcel.writeInt(this.f780l);
        parcel.writeInt(this.f781m);
        parcel.writeInt(this.f782n);
        CharSequence charSequence = this.f784p;
        parcel.writeString(charSequence != null ? charSequence.toString() : null);
        CharSequence charSequence2 = this.f785q;
        parcel.writeString(charSequence2 != null ? charSequence2.toString() : null);
        parcel.writeInt(this.f786r);
        parcel.writeSerializable(this.f788t);
        parcel.writeSerializable(this.f790v);
        parcel.writeSerializable(this.f791w);
        parcel.writeSerializable(this.f792x);
        parcel.writeSerializable(this.f793y);
        parcel.writeSerializable(this.f794z);
        parcel.writeSerializable(this.f768A);
        parcel.writeSerializable(this.f771D);
        parcel.writeSerializable(this.f769B);
        parcel.writeSerializable(this.f770C);
        parcel.writeSerializable(this.f789u);
        parcel.writeSerializable(this.f783o);
        parcel.writeSerializable(this.f772E);
    }
}
