package C1;

import android.view.View;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.HubActivity;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: renamed from: C1.z, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0122z implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceC0245g f719c;

    public /* synthetic */ ViewOnClickListenerC0122z(DialogInterfaceC0245g dialogInterfaceC0245g, int i3) {
        this.b = i3;
        this.f719c = dialogInterfaceC0245g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        DialogInterfaceC0245g dialogInterfaceC0245g = this.f719c;
        switch (i3) {
            case 0:
                dialogInterfaceC0245g.dismiss();
                break;
            case 1:
                int i4 = GameDetailActivity.f3762w;
                dialogInterfaceC0245g.dismiss();
                break;
            case 2:
                int i5 = GameDetailActivity.f3762w;
                dialogInterfaceC0245g.dismiss();
                break;
            case 3:
                dialogInterfaceC0245g.dismiss();
                break;
            case 4:
                int i6 = HubActivity.f3779j;
                dialogInterfaceC0245g.dismiss();
                break;
            case 5:
                dialogInterfaceC0245g.dismiss();
                break;
            case 6:
                dialogInterfaceC0245g.dismiss();
                break;
            case 7:
                dialogInterfaceC0245g.dismiss();
                break;
            case 8:
                dialogInterfaceC0245g.dismiss();
                break;
            default:
                dialogInterfaceC0245g.dismiss();
                break;
        }
    }
}
