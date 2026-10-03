package com.google.android.material.datepicker;

import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p implements Comparable, Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new D0.b(10);
    public final Calendar b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3458c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3459d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3460e;
    public final int f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f3461h;

    public p(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarA = w.a(calendar);
        this.b = calendarA;
        this.f3458c = calendarA.get(2);
        this.f3459d = calendarA.get(1);
        this.f3460e = calendarA.getMaximum(7);
        this.f = calendarA.getActualMaximum(5);
        this.g = calendarA.getTimeInMillis();
    }

    public static p a(int i3, int i4) {
        Calendar calendarC = w.c(null);
        calendarC.set(1, i3);
        calendarC.set(2, i4);
        return new p(calendarC);
    }

    public static p b(long j2) {
        Calendar calendarC = w.c(null);
        calendarC.setTimeInMillis(j2);
        return new p(calendarC);
    }

    public final String c() {
        if (this.f3461h == null) {
            long timeInMillis = this.b.getTimeInMillis();
            Locale locale = Locale.getDefault();
            AtomicReference atomicReference = w.f3471a;
            DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
            instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
            instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
            this.f3461h = instanceForSkeleton.format(new Date(timeInMillis));
        }
        return this.f3461h;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.b.compareTo(((p) obj).b);
    }

    public final int d(p pVar) {
        if (!(this.b instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (pVar.f3458c - this.f3458c) + ((pVar.f3459d - this.f3459d) * 12);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f3458c == pVar.f3458c && this.f3459d == pVar.f3459d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3458c), Integer.valueOf(this.f3459d)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i3) {
        parcel.writeInt(this.f3459d);
        parcel.writeInt(this.f3458c);
    }
}
