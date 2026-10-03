package p064y1;

import B1.x;
import E1.C0125a;
import I1.j;
import android.app.Dialog;
import android.view.View;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.KiriKiriGameActivity;
import com.minhub.gamehub.game.VxAceGameActivity;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class M0 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6103d;

    public /* synthetic */ M0(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f6102c = obj;
        this.f6103d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        Object obj = this.f6103d;
        Object obj2 = this.f6102c;
        switch (i3) {
            case 0:
                j jVar = (j) obj2;
                ((F0) jVar.f1189d).invoke(((x) obj).f372a);
                jVar.c();
                break;
            case 1:
                C0385j1 c0385j1 = (C0385j1) obj2;
                String str = (String) obj;
                EditModeOverlay editModeOverlay = c0385j1.f6261i;
                if (editModeOverlay != null) {
                    editModeOverlay.g(new C0125a(str, 3));
                }
                c0385j1.g();
                break;
            case 2:
                int i4 = KiriKiriGameActivity.f3720e;
                ((Dialog) obj2).dismiss();
                ((KiriKiriGameActivity) obj).finish();
                break;
            default:
                ((DialogInterfaceC0245g) obj2).dismiss();
                ((VxAceGameActivity) obj).finish();
                break;
        }
    }
}
