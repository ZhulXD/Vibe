package p064y1;

import android.view.View;
import com.minhub.gamehub.game.VxAceGameActivity;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i2 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VxAceGameActivity f6248c;

    public /* synthetic */ i2(VxAceGameActivity vxAceGameActivity, int i3) {
        this.b = i3;
        this.f6248c = vxAceGameActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.b) {
            case 0:
                k2.b(this.f6248c);
                break;
            case 1:
                k2.d(this.f6248c, e2.f6218c);
                break;
            case 2:
                k2.d(this.f6248c, e2.f6219d);
                break;
            case 3:
                k2.d(this.f6248c, e2.f6220e);
                break;
            case 4:
                k2.d(this.f6248c, e2.f);
                break;
            case 5:
                k2.c(this.f6248c);
                break;
            case 6:
                k2.c(this.f6248c);
                break;
            case 7:
                k2.d(this.f6248c, e2.g);
                break;
            case 8:
                k2.d(this.f6248c, e2.f6221h);
                break;
            default:
                k2.d(this.f6248c, e2.b);
                break;
        }
    }
}
