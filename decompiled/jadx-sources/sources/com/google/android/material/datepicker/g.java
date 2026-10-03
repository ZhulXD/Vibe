package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f3417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f3418d;

    public /* synthetic */ g(l lVar, t tVar, int i3) {
        this.b = i3;
        this.f3418d = lVar;
        this.f3417c = tVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                l lVar = this.f3418d;
                int iR0 = ((LinearLayoutManager) lVar.f3428i.getLayoutManager()).R0() - 1;
                if (iR0 >= 0) {
                    Calendar calendarA = w.a(this.f3417c.f3469d.b.b);
                    calendarA.add(2, iR0);
                    lVar.b(new p(calendarA));
                }
                break;
            default:
                l lVar2 = this.f3418d;
                int iQ0 = ((LinearLayoutManager) lVar2.f3428i.getLayoutManager()).Q0() + 1;
                if (iQ0 < lVar2.f3428i.getAdapter().a()) {
                    Calendar calendarA2 = w.a(this.f3417c.f3469d.b.b);
                    calendarA2.add(2, iQ0);
                    lVar2.b(new p(calendarA2));
                }
                break;
        }
    }
}
