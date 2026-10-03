package k;

import android.content.Context;
import android.view.View;
import androidx.core.view.GravityCompat;
import com.minhub.gamehub.R;
import p024j.C0269h;

/* JADX INFO: renamed from: k.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0290g extends p024j.A {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ int f4822l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ C0300l f4823m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0290g(C0300l c0300l, Context context, p024j.p pVar, View view) {
        super(context, pVar, view, true, R.attr.actionOverflowMenuStyle, 0);
        this.f4823m = c0300l;
        this.f = GravityCompat.END;
        C0269h c0269h = c0300l.f4869y;
        this.f4466h = c0269h;
        p024j.y yVar = this.f4467i;
        if (yVar != null) {
            yVar.l(c0269h);
        }
    }

    @Override // p024j.A
    public final void c() {
        switch (this.f4822l) {
            case 0:
                C0300l c0300l = this.f4823m;
                c0300l.f4866v = null;
                c0300l.f4870z = 0;
                super.c();
                break;
            default:
                C0300l c0300l2 = this.f4823m;
                p024j.p pVar = c0300l2.f4507d;
                if (pVar != null) {
                    pVar.c(true);
                }
                c0300l2.f4865u = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0290g(C0300l c0300l, Context context, p024j.I i3, View view) {
        super(context, i3, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.f4823m = c0300l;
        if ((i3.f4488A.f4600x & 32) != 32) {
            View view2 = c0300l.f4855k;
            this.f4465e = view2 == null ? (View) c0300l.f4510i : view2;
        }
        C0269h c0269h = c0300l.f4869y;
        this.f4466h = c0269h;
        p024j.y yVar = this.f4467i;
        if (yVar != null) {
            yVar.l(c0269h);
        }
    }
}
