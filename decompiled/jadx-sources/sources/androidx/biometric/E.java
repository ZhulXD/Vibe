package androidx.biometric;

import A1.u0;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.minhub.gamehub.R;
import p011e.C0240b;
import p011e.C0244f;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class E extends DialogFragment {
    public final Handler b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u0 f2756c = new u0(6, this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public w f2757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2758e;
    public int f;
    public ImageView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextView f2759h;

    public final int b(int i3) {
        Context context = getContext();
        FragmentActivity activity = getActivity();
        if (context == null || activity == null) {
            Log.w("FingerprintFragment", "Unable to get themed color. Context or activity is null.");
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i3, typedValue, true);
        TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(typedValue.data, new int[]{i3});
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return color;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        w wVar = this.f2757d;
        if (wVar.f2792u == null) {
            wVar.f2792u = new MutableLiveData();
        }
        w.f(wVar.f2792u, Boolean.TRUE);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            w wVar = (w) new ViewModelProvider(activity).get(w.class);
            this.f2757d = wVar;
            if (wVar.f2794w == null) {
                wVar.f2794w = new MutableLiveData();
            }
            wVar.f2794w.observe(this, new B(this, 0));
            w wVar2 = this.f2757d;
            if (wVar2.f2795x == null) {
                wVar2.f2795x = new MutableLiveData();
            }
            wVar2.f2795x.observe(this, new B(this, 1));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.f2758e = b(D.a());
        } else {
            Context context = getContext();
            this.f2758e = context != null ? ContextCompat.getColor(context, R.color.biometric_error_color) : 0;
        }
        this.f = b(android.R.attr.textColorSecondary);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        C0244f c0244f = new C0244f(requireContext());
        C0240b c0240b = (C0240b) c0244f.f4145c;
        F.b bVar = this.f2757d.f2776c;
        CharSequence string = null;
        c0240b.f4098d = bVar != null ? (CharSequence) bVar.f943c : null;
        View viewInflate = LayoutInflater.from(c0240b.f4096a).inflate(R.layout.fingerprint_dialog_layout, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.fingerprint_subtitle);
        if (textView != null) {
            F.b bVar2 = this.f2757d.f2776c;
            CharSequence charSequence = bVar2 != null ? (CharSequence) bVar2.f944d : null;
            if (TextUtils.isEmpty(charSequence)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(charSequence);
            }
        }
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.fingerprint_description);
        if (textView2 != null) {
            this.f2757d.getClass();
            if (TextUtils.isEmpty(null)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                textView2.setText((CharSequence) null);
            }
        }
        this.g = (ImageView) viewInflate.findViewById(R.id.fingerprint_icon);
        this.f2759h = (TextView) viewInflate.findViewById(R.id.fingerprint_error);
        if (p000a.a.s(this.f2757d.a())) {
            string = getString(R.string.confirm_device_credential_password);
        } else {
            w wVar = this.f2757d;
            String str = wVar.f2779h;
            if (str != null) {
                string = str;
            } else {
                F.b bVar3 = wVar.f2776c;
                if (bVar3 != null && (string = (CharSequence) bVar3.f945e) == null) {
                    string = "";
                }
            }
        }
        v vVar = new v(this);
        c0240b.f4101i = string;
        c0240b.f4102j = vVar;
        c0240b.f4112t = viewInflate;
        DialogInterfaceC0245g dialogInterfaceC0245gC = c0244f.c();
        dialogInterfaceC0245gC.setCanceledOnTouchOutside(false);
        return dialogInterfaceC0245gC;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.b.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        w wVar = this.f2757d;
        wVar.f2793v = 0;
        wVar.d(1);
        this.f2757d.c(getString(R.string.fingerprint_dialog_touch_sensor));
    }
}
