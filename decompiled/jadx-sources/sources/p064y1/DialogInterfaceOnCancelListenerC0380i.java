package p064y1;

import Q1.d;
import android.content.DialogInterface;
import com.minhub.gamehub.game.GodotGameActivity;

/* JADX INFO: renamed from: y1.i, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnCancelListenerC0380i implements DialogInterface.OnCancelListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6242c;

    public /* synthetic */ DialogInterfaceOnCancelListenerC0380i(int i3, Object obj) {
        this.b = i3;
        this.f6242c = obj;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        int i3 = this.b;
        Object obj = this.f6242c;
        switch (i3) {
            case 0:
                ((d) obj).c();
                break;
            case 1:
                ((d) obj).c();
                break;
            default:
                int i4 = GodotGameActivity.f3707q;
                ((GodotGameActivity) obj).finish();
                break;
        }
    }
}
