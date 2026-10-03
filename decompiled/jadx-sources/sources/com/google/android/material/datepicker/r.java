package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements AdapterView.OnItemClickListener {
    public final /* synthetic */ MaterialCalendarGridView b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f3466c;

    public r(t tVar, MaterialCalendarGridView materialCalendarGridView) {
        this.f3466c = tVar;
        this.b = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
        MaterialCalendarGridView materialCalendarGridView = this.b;
        q qVarA = materialCalendarGridView.a();
        if (i3 < qVarA.a() || i3 > qVarA.c()) {
            return;
        }
        if (materialCalendarGridView.a().getItem(i3).longValue() >= ((l) this.f3466c.f3470e.b).f3425d.f3409d.b) {
            throw null;
        }
    }
}
