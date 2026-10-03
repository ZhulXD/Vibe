package com.google.android.material.datepicker;

import A1.C0009b;
import P.T;
import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l<S> extends u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f3425d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p f3426e;
    public int f;
    public d g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RecyclerView f3427h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RecyclerView f3428i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View f3429j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f3430k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f3431l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f3432m;

    public final void b(p pVar) {
        t tVar = (t) this.f3428i.getAdapter();
        int iD = tVar.f3469d.b.d(pVar);
        int iD2 = iD - tVar.f3469d.b.d(this.f3426e);
        boolean z2 = Math.abs(iD2) > 3;
        boolean z3 = iD2 > 0;
        this.f3426e = pVar;
        if (z2 && z3) {
            this.f3428i.f0(iD - 3);
            this.f3428i.post(new T0.a(this, iD, 4));
        } else if (!z2) {
            this.f3428i.post(new T0.a(this, iD, 4));
        } else {
            this.f3428i.f0(iD + 3);
            this.f3428i.post(new T0.a(this, iD, 4));
        }
    }

    public final void c(int i3) {
        this.f = i3;
        if (i3 == 2) {
            this.f3427h.getLayoutManager().t0(this.f3426e.f3459d - ((y) this.f3427h.getAdapter()).f3473d.f3425d.b.f3459d);
            this.f3431l.setVisibility(0);
            this.f3432m.setVisibility(8);
            this.f3429j.setVisibility(8);
            this.f3430k.setVisibility(8);
            return;
        }
        if (i3 == 1) {
            this.f3431l.setVisibility(8);
            this.f3432m.setVisibility(0);
            this.f3429j.setVisibility(0);
            this.f3430k.setVisibility(0);
            b(this.f3426e);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f3424c = bundle.getInt("THEME_RES_ID_KEY");
        if (bundle.getParcelable("GRID_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3425d = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3426e = (p) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i3;
        int i4;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f3424c);
        this.g = new d(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        p pVar = this.f3425d.b;
        if (n.d(contextThemeWrapper, R.attr.windowFullscreen)) {
            i3 = com.minhub.gamehub.R.layout.mtrl_calendar_vertical;
            i4 = 1;
        } else {
            i3 = com.minhub.gamehub.R.layout.mtrl_calendar_horizontal;
            i4 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i3, viewGroup, false);
        Resources resources = requireContext().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.minhub.gamehub.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.minhub.gamehub.R.dimen.mtrl_calendar_days_of_week_height);
        int i5 = q.f3462d;
        viewInflate.setMinimumHeight(dimensionPixelOffset + dimensionPixelSize + (resources.getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_calendar_month_vertical_padding) * (i5 - 1)) + (resources.getDimensionPixelSize(com.minhub.gamehub.R.dimen.mtrl_calendar_day_height) * i5) + resources.getDimensionPixelOffset(com.minhub.gamehub.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(com.minhub.gamehub.R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new h(0));
        int i6 = this.f3425d.f;
        gridView.setAdapter((ListAdapter) (i6 > 0 ? new f(i6) : new f()));
        gridView.setNumColumns(pVar.f3460e);
        gridView.setEnabled(false);
        this.f3428i = (RecyclerView) viewInflate.findViewById(com.minhub.gamehub.R.id.mtrl_calendar_months);
        getContext();
        this.f3428i.setLayoutManager(new i(this, i4, i4));
        this.f3428i.setTag("MONTHS_VIEW_GROUP_TAG");
        t tVar = new t(contextThemeWrapper, this.f3425d, new C0009b(this));
        this.f3428i.setAdapter(tVar);
        int integer = contextThemeWrapper.getResources().getInteger(com.minhub.gamehub.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.minhub.gamehub.R.id.mtrl_calendar_year_selector_frame);
        this.f3427h = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f3427h.setLayoutManager(new GridLayoutManager(integer));
            this.f3427h.setAdapter(new y(this));
            RecyclerView recyclerView2 = this.f3427h;
            j jVar = new j();
            w.c(null);
            w.c(null);
            recyclerView2.i(jVar);
        }
        if (viewInflate.findViewById(com.minhub.gamehub.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(com.minhub.gamehub.R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            ViewCompat.setAccessibilityDelegate(materialButton, new H0.k(3, this));
            View viewFindViewById = viewInflate.findViewById(com.minhub.gamehub.R.id.month_navigation_previous);
            this.f3429j = viewFindViewById;
            viewFindViewById.setTag("NAVIGATION_PREV_TAG");
            View viewFindViewById2 = viewInflate.findViewById(com.minhub.gamehub.R.id.month_navigation_next);
            this.f3430k = viewFindViewById2;
            viewFindViewById2.setTag("NAVIGATION_NEXT_TAG");
            this.f3431l = viewInflate.findViewById(com.minhub.gamehub.R.id.mtrl_calendar_year_selector_frame);
            this.f3432m = viewInflate.findViewById(com.minhub.gamehub.R.id.mtrl_calendar_day_selector_frame);
            c(1);
            materialButton.setText(this.f3426e.c());
            this.f3428i.j(new k(this, tVar, materialButton));
            materialButton.setOnClickListener(new H0.j(2, this));
            this.f3430k.setOnClickListener(new g(this, tVar, 1));
            this.f3429j.setOnClickListener(new g(this, tVar, 0));
        }
        if (!n.d(contextThemeWrapper, R.attr.windowFullscreen)) {
            new T().a(this.f3428i);
        }
        this.f3428i.f0(tVar.f3469d.b.d(this.f3426e));
        ViewCompat.setAccessibilityDelegate(this.f3428i, new h(1));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f3424c);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f3425d);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.f3426e);
    }
}
