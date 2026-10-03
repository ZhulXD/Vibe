package com.google.android.material.datepicker;

import P.y0;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends y0 {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final TextView f3467u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final MaterialCalendarGridView f3468v;

    public s(LinearLayout linearLayout, boolean z2) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f3467u = textView;
        ViewCompat.setAccessibilityHeading(textView, true);
        this.f3468v = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z2) {
            return;
        }
        textView.setVisibility(8);
    }
}
