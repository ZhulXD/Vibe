package C1;

import android.content.DialogInterface;
import android.widget.FrameLayout;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class L implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f462a;
    public final /* synthetic */ H0.o b;

    public /* synthetic */ L(H0.o oVar, int i3) {
        this.f462a = i3;
        this.b = oVar;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        switch (this.f462a) {
            case 0:
                FrameLayout frameLayout = (FrameLayout) this.b.findViewById(R.id.design_bottom_sheet);
                if (frameLayout != null) {
                    frameLayout.setBackgroundColor(0);
                }
                break;
            case 1:
                FrameLayout frameLayout2 = (FrameLayout) this.b.findViewById(R.id.design_bottom_sheet);
                if (frameLayout2 != null) {
                    frameLayout2.setBackgroundColor(0);
                }
                break;
            case 2:
                FrameLayout frameLayout3 = (FrameLayout) this.b.findViewById(R.id.design_bottom_sheet);
                if (frameLayout3 != null) {
                    frameLayout3.setBackgroundColor(0);
                }
                break;
            case 3:
                FrameLayout frameLayout4 = (FrameLayout) this.b.findViewById(R.id.design_bottom_sheet);
                if (frameLayout4 != null) {
                    frameLayout4.setBackgroundColor(0);
                }
                break;
            default:
                FrameLayout frameLayout5 = (FrameLayout) this.b.findViewById(R.id.design_bottom_sheet);
                if (frameLayout5 != null) {
                    frameLayout5.setBackgroundColor(0);
                }
                break;
        }
    }
}
