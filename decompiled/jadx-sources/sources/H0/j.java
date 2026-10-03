package H0;

import android.R;
import android.content.res.TypedArray;
import android.os.Message;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import k.d1;
import p011e.C0243e;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1069c;

    public /* synthetic */ j(int i3, Object obj) {
        this.b = i3;
        this.f1069c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message messageObtain;
        Message message;
        Message message2;
        Message message3;
        switch (this.b) {
            case 0:
                o oVar = (o) this.f1069c;
                if (oVar.f1077h && oVar.isShowing()) {
                    if (!oVar.f1079j) {
                        TypedArray typedArrayObtainStyledAttributes = oVar.getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
                        oVar.f1078i = typedArrayObtainStyledAttributes.getBoolean(0, true);
                        typedArrayObtainStyledAttributes.recycle();
                        oVar.f1079j = true;
                    }
                    if (oVar.f1078i) {
                        oVar.cancel();
                    }
                    break;
                }
                break;
            case 1:
                s itemData = ((T0.d) view).getItemData();
                G0.b bVar = (G0.b) this.f1069c;
                if (!bVar.f2176F.q(itemData, bVar.f2175E, 0)) {
                    itemData.setChecked(true);
                }
                break;
            case 2:
                com.google.android.material.datepicker.l lVar = (com.google.android.material.datepicker.l) this.f1069c;
                int i3 = lVar.f;
                if (i3 == 2) {
                    lVar.c(1);
                } else if (i3 == 1) {
                    lVar.c(2);
                }
                break;
            case 3:
                C0243e c0243e = (C0243e) this.f1069c;
                if (view == c0243e.f4127i && (message3 = c0243e.f4129k) != null) {
                    messageObtain = Message.obtain(message3);
                } else if (view != c0243e.f4130l || (message2 = c0243e.f4132n) == null) {
                    messageObtain = (view != c0243e.f4133o || (message = c0243e.f4135q) == null) ? null : Message.obtain(message);
                } else {
                    messageObtain = Message.obtain(message2);
                }
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                c0243e.f4120E.obtainMessage(1, c0243e.b).sendToTarget();
                break;
            case 4:
                ((p021i.a) this.f1069c).a();
                break;
            default:
                d1 d1Var = ((Toolbar) this.f1069c).f2724M;
                s sVar = d1Var == null ? null : d1Var.f4819c;
                if (sVar != null) {
                    sVar.collapseActionView();
                }
                break;
        }
    }
}
