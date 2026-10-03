package p024j;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
import k.AbstractViewOnTouchListenerC0326y0;
import k.C0290g;
import k.C0292h;
import k.C0296j;
import k.C0300l;

/* JADX INFO: renamed from: j.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0263b extends AbstractViewOnTouchListenerC0326y0 {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f4504k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ View f4505l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0263b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f4505l = actionMenuItemView;
    }

    @Override // k.AbstractViewOnTouchListenerC0326y0
    public final G b() {
        C0290g c0290g;
        switch (this.f4504k) {
            case 0:
                AbstractC0264c abstractC0264c = ((ActionMenuItemView) this.f4505l).f2622n;
                if (abstractC0264c == null || (c0290g = ((C0292h) abstractC0264c).f4826a.f4866v) == null) {
                    return null;
                }
                return c0290g.a();
            default:
                C0290g c0290g2 = ((C0296j) this.f4505l).f4851e.f4865u;
                if (c0290g2 == null) {
                    return null;
                }
                return c0290g2.a();
        }
    }

    @Override // k.AbstractViewOnTouchListenerC0326y0
    public final boolean c() {
        G gB;
        switch (this.f4504k) {
            case 0:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f4505l;
                o oVar = actionMenuItemView.f2620l;
                return oVar != null && oVar.c(actionMenuItemView.f2617i) && (gB = b()) != null && gB.b();
            default:
                ((C0296j) this.f4505l).f4851e.n();
                return true;
        }
    }

    @Override // k.AbstractViewOnTouchListenerC0326y0
    public boolean d() {
        switch (this.f4504k) {
            case 1:
                C0300l c0300l = ((C0296j) this.f4505l).f4851e;
                if (c0300l.f4867w != null) {
                    return false;
                }
                c0300l.c();
                return true;
            default:
                return super.d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0263b(C0296j c0296j, C0296j c0296j2) {
        super(c0296j2);
        this.f4505l = c0296j;
    }
}
