package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q extends BaseAdapter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f3462d = w.c(null).getMaximum(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f3463e = (w.c(null).getMaximum(7) + w.c(null).getMaximum(5)) - 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f3464a;
    public d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f3465c;

    public q(p pVar, b bVar) {
        this.f3464a = pVar;
        this.f3465c = bVar;
        throw null;
    }

    public final int a() {
        int firstDayOfWeek = this.f3465c.f;
        p pVar = this.f3464a;
        Calendar calendar = pVar.b;
        int i3 = calendar.get(7);
        if (firstDayOfWeek <= 0) {
            firstDayOfWeek = calendar.getFirstDayOfWeek();
        }
        int i4 = i3 - firstDayOfWeek;
        return i4 < 0 ? i4 + pVar.f3460e : i4;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i3) {
        if (i3 < a() || i3 > c()) {
            return null;
        }
        int iA = (i3 - a()) + 1;
        Calendar calendarA = w.a(this.f3464a.b);
        calendarA.set(5, iA);
        return Long.valueOf(calendarA.getTimeInMillis());
    }

    public final int c() {
        return (a() + this.f3464a.f) - 1;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f3463e;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return i3 / this.f3464a.f3460e;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005d  */
    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.b == null) {
            this.b = new d(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iA = i3 - a();
        if (iA >= 0) {
            p pVar = this.f3464a;
            if (iA >= pVar.f) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                textView.setTag(pVar);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(iA + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        } else {
            textView.setVisibility(8);
            textView.setEnabled(false);
        }
        if (getItem(i3) == null || textView == null) {
            return textView;
        }
        textView.getContext();
        w.b().getTimeInMillis();
        throw null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
