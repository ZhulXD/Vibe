package com.google.android.material.datepicker;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends BaseAdapter {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f3414d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Calendar f3415a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3416c;

    static {
        f3414d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public f() {
        Calendar calendarC = w.c(null);
        this.f3415a = calendarC;
        this.b = calendarC.getMaximum(7);
        this.f3416c = calendarC.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.b;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i3) {
        int i4 = this.b;
        if (i3 >= i4) {
            return null;
        }
        int i5 = i3 + this.f3416c;
        if (i5 > i4) {
            i5 -= i4;
        }
        return Integer.valueOf(i5);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i3) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i3, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i4 = i3 + this.f3416c;
        int i5 = this.b;
        if (i4 > i5) {
            i4 -= i5;
        }
        Calendar calendar = this.f3415a;
        calendar.set(7, i4);
        textView.setText(calendar.getDisplayName(7, f3414d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public f(int i3) {
        Calendar calendarC = w.c(null);
        this.f3415a = calendarC;
        this.b = calendarC.getMaximum(7);
        this.f3416c = i3;
    }
}
