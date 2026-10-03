package com.google.android.material.datepicker;

import A1.C0009b;
import P.C0149h0;
import P.W;
import P.y0;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.minhub.gamehub.R;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f3469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0009b f3470e;
    public final int f;

    public t(ContextThemeWrapper contextThemeWrapper, b bVar, C0009b c0009b) {
        p pVar = bVar.b;
        p pVar2 = bVar.f3408c;
        p pVar3 = bVar.f3410e;
        if (pVar.b.compareTo(pVar3.b) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (pVar3.b.compareTo(pVar2.b) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * q.f3462d) + (n.d(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f3469d = bVar;
        this.f3470e = c0009b;
        if (this.f1643a.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.b = true;
    }

    @Override // P.W
    public final int a() {
        return this.f3469d.f3411h;
    }

    @Override // P.W
    public final long b(int i3) {
        Calendar calendarA = w.a(this.f3469d.b.b);
        calendarA.add(2, i3);
        calendarA.set(5, 1);
        Calendar calendarA2 = w.a(calendarA);
        calendarA2.get(2);
        calendarA2.get(1);
        calendarA2.getMaximum(7);
        calendarA2.getActualMaximum(5);
        calendarA2.getTimeInMillis();
        return calendarA2.getTimeInMillis();
    }

    @Override // P.W
    public final void e(y0 y0Var, int i3) {
        s sVar = (s) y0Var;
        b bVar = this.f3469d;
        Calendar calendarA = w.a(bVar.b.b);
        calendarA.add(2, i3);
        p pVar = new p(calendarA);
        sVar.f3467u.setText(pVar.c());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) sVar.f3468v.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !pVar.equals(materialCalendarGridView.a().f3464a)) {
            new q(pVar, bVar);
            throw null;
        }
        materialCalendarGridView.invalidate();
        materialCalendarGridView.a().getClass();
        throw null;
    }

    @Override // P.W
    public final y0 f(ViewGroup viewGroup) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!n.d(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new s(linearLayout, false);
        }
        linearLayout.setLayoutParams(new C0149h0(-1, this.f));
        return new s(linearLayout, true);
    }
}
