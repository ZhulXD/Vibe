package com.google.android.material.datepicker;

import P.u0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends LinearLayoutManager {

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final /* synthetic */ int f3420E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final /* synthetic */ l f3421F;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(l lVar, int i3, int i4) {
        super(i3);
        this.f3421F = lVar;
        this.f3420E = i4;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, P.AbstractC0147g0
    public final void D0(RecyclerView recyclerView, int i3) {
        K0.b bVar = new K0.b(recyclerView.getContext());
        bVar.f1620a = i3;
        E0(bVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void G0(u0 u0Var, int[] iArr) {
        int i3 = this.f3420E;
        l lVar = this.f3421F;
        if (i3 == 0) {
            iArr[0] = lVar.f3428i.getWidth();
            iArr[1] = lVar.f3428i.getWidth();
        } else {
            iArr[0] = lVar.f3428i.getHeight();
            iArr[1] = lVar.f3428i.getHeight();
        }
    }
}
