package androidx.biometric;

import A1.u0;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.Log;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2755a;
    public final /* synthetic */ E b;

    public /* synthetic */ B(E e2, int i3) {
        this.f2755a = i3;
        this.b = e2;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        switch (this.f2755a) {
            case 0:
                Integer num = (Integer) obj;
                E e2 = this.b;
                Handler handler = e2.b;
                u0 u0Var = e2.f2756c;
                handler.removeCallbacks(u0Var);
                int iIntValue = num.intValue();
                if (e2.g != null) {
                    int i3 = e2.f2757d.f2793v;
                    Context context = e2.getContext();
                    Drawable drawable = null;
                    if (context == null) {
                        Log.w("FingerprintFragment", "Unable to get asset. Context is null.");
                    } else {
                        int i4 = R.drawable.fingerprint_dialog_fp_icon;
                        if (i3 == 0 && iIntValue == 1) {
                            drawable = ContextCompat.getDrawable(context, i4);
                        } else {
                            if (i3 == 1 && iIntValue == 2) {
                                i4 = R.drawable.fingerprint_dialog_error;
                            } else if ((i3 == 2 && iIntValue == 1) || (i3 == 1 && iIntValue == 3)) {
                            }
                            drawable = ContextCompat.getDrawable(context, i4);
                        }
                    }
                    if (drawable != null) {
                        e2.g.setImageDrawable(drawable);
                        if ((i3 != 0 || iIntValue != 1) && ((i3 == 1 && iIntValue == 2) || (i3 == 2 && iIntValue == 1))) {
                            C.a(drawable);
                        }
                        e2.f2757d.f2793v = iIntValue;
                    }
                }
                int iIntValue2 = num.intValue();
                TextView textView = e2.f2759h;
                if (textView != null) {
                    textView.setTextColor(iIntValue2 == 2 ? e2.f2758e : e2.f);
                }
                handler.postDelayed(u0Var, 2000L);
                break;
            default:
                CharSequence charSequence = (CharSequence) obj;
                E e3 = this.b;
                Handler handler2 = e3.b;
                u0 u0Var2 = e3.f2756c;
                handler2.removeCallbacks(u0Var2);
                TextView textView2 = e3.f2759h;
                if (textView2 != null) {
                    textView2.setText(charSequence);
                }
                handler2.postDelayed(u0Var2, 2000L);
                break;
        }
    }
}
