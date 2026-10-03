package com.google.android.material.datepicker;

import P.l0;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.TimeZone;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k extends l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f3422a;
    public final /* synthetic */ MaterialButton b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f3423c;

    public k(l lVar, t tVar, MaterialButton materialButton) {
        this.f3423c = lVar;
        this.f3422a = tVar;
        this.b = materialButton;
    }

    @Override // P.l0
    public final void a(RecyclerView recyclerView, int i3) {
        if (i3 == 0) {
            recyclerView.announceForAccessibility(this.b.getText());
        }
    }

    @Override // P.l0
    public final void b(RecyclerView recyclerView, int i3, int i4) {
        b bVar = this.f3422a.f3469d;
        l lVar = this.f3423c;
        int iQ0 = i3 < 0 ? ((LinearLayoutManager) lVar.f3428i.getLayoutManager()).Q0() : ((LinearLayoutManager) lVar.f3428i.getLayoutManager()).R0();
        Calendar calendarA = w.a(bVar.b.b);
        calendarA.add(2, iQ0);
        lVar.f3426e = new p(calendarA);
        Calendar calendarA2 = w.a(bVar.b.b);
        calendarA2.add(2, iQ0);
        calendarA2.set(5, 1);
        Calendar calendarA3 = w.a(calendarA2);
        calendarA3.get(2);
        calendarA3.get(1);
        calendarA3.getMaximum(7);
        calendarA3.getActualMaximum(5);
        calendarA3.getTimeInMillis();
        long timeInMillis = calendarA3.getTimeInMillis();
        Locale locale = Locale.getDefault();
        AtomicReference atomicReference = w.f3471a;
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("yMMMM", locale);
        instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
        instanceForSkeleton.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        this.b.setText(instanceForSkeleton.format(new Date(timeInMillis)));
    }
}
