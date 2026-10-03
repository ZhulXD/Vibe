package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import k.Z0;
import p024j.E;
import p024j.o;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements o, E, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f2628c = {R.attr.background, R.attr.divider};
    public p b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        Z0 z0E = Z0.e(context, attributeSet, f2628c, R.attr.listViewStyle);
        TypedArray typedArray = z0E.b;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(z0E.b(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(z0E.b(1));
        }
        z0E.f();
    }

    @Override // p024j.E
    public final void a(p pVar) {
        this.b = pVar;
    }

    @Override // p024j.o
    public final boolean c(s sVar) {
        return this.b.q(sVar, null, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i3, long j2) {
        c((s) getAdapter().getItem(i3));
    }
}
