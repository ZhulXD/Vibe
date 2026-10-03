package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new D0.b(8);
    public final p b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p f3408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e f3409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p f3410e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3411h;

    public b(p pVar, p pVar2, e eVar, p pVar3, int i3) {
        Objects.requireNonNull(pVar, "start cannot be null");
        Objects.requireNonNull(pVar2, "end cannot be null");
        Objects.requireNonNull(eVar, "validator cannot be null");
        this.b = pVar;
        this.f3408c = pVar2;
        this.f3410e = pVar3;
        this.f = i3;
        this.f3409d = eVar;
        if (pVar3 != null && pVar.b.compareTo(pVar3.b) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (pVar3 != null && pVar3.b.compareTo(pVar2.b) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i3 < 0 || i3 > w.c(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f3411h = pVar.d(pVar2) + 1;
        this.g = (pVar2.f3459d - pVar.f3459d) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.b.equals(bVar.b) && this.f3408c.equals(bVar.f3408c) && ObjectsCompat.equals(this.f3410e, bVar.f3410e) && this.f == bVar.f && this.f3409d.equals(bVar.f3409d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.f3408c, this.f3410e, Integer.valueOf(this.f), this.f3409d});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.f3408c, 0);
        parcel.writeParcelable(this.f3410e, 0);
        parcel.writeParcelable(this.f3409d, 0);
        parcel.writeInt(this.f);
    }
}
