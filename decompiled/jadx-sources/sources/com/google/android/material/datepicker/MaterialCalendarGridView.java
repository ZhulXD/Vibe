package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {
    public final boolean b;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        w.c(null);
        if (n.d(getContext(), R.attr.windowFullscreen)) {
            setNextFocusLeftId(com.minhub.gamehub.R.id.cancel_button);
            setNextFocusRightId(com.minhub.gamehub.R.id.confirm_button);
        }
        this.b = n.d(getContext(), com.minhub.gamehub.R.attr.nestedScrollable);
        ViewCompat.setAccessibilityDelegate(this, new h(2));
    }

    public final q a() {
        return (q) super.getAdapter();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final Adapter getAdapter() {
        return (q) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((q) super.getAdapter()).notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        q qVar = (q) super.getAdapter();
        qVar.getClass();
        int iMax = Math.max(qVar.a(), getFirstVisiblePosition());
        int iMin = Math.min(qVar.c(), getLastVisiblePosition());
        qVar.getItem(iMax);
        qVar.getItem(iMin);
        throw null;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z2, int i3, Rect rect) {
        if (!z2) {
            super.onFocusChanged(false, i3, rect);
            return;
        }
        if (i3 == 33) {
            setSelection(((q) super.getAdapter()).c());
        } else if (i3 == 130) {
            setSelection(((q) super.getAdapter()).a());
        } else {
            super.onFocusChanged(true, i3, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        if (!super.onKeyDown(i3, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= ((q) super.getAdapter()).a()) {
            return true;
        }
        if (19 != i3) {
            return false;
        }
        setSelection(((q) super.getAdapter()).a());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i3, int i4) {
        if (!this.b) {
            super.onMeasure(i3, i4);
            return;
        }
        super.onMeasure(i3, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i3) {
        if (i3 < ((q) super.getAdapter()).a()) {
            super.setSelection(((q) super.getAdapter()).a());
        } else {
            super.setSelection(i3);
        }
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (q) super.getAdapter();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof q)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), q.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
