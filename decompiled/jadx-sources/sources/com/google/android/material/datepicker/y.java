package com.google.android.material.datepicker;

import P.W;
import P.y0;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y extends W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l f3473d;

    public y(l lVar) {
        this.f3473d = lVar;
    }

    @Override // P.W
    public final int a() {
        return this.f3473d.f3425d.g;
    }

    @Override // P.W
    public final void e(y0 y0Var, int i3) {
        l lVar = this.f3473d;
        int i4 = lVar.f3425d.b.f3459d + i3;
        TextView textView = ((x) y0Var).f3472u;
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i4)));
        Context context = textView.getContext();
        textView.setContentDescription(w.b().get(1) == i4 ? String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i4)) : String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i4)));
        d dVar = lVar.g;
        if (w.b().get(1) == i4) {
            c cVar = dVar.b;
        } else {
            c cVar2 = dVar.f3413a;
        }
        throw null;
    }

    @Override // P.W
    public final y0 f(ViewGroup viewGroup) {
        return new x((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
