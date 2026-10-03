package androidx.biometric;

import A1.C0013d;
import P.ExecutorC0142e;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.hardware.biometrics.BiometricPrompt;
import android.hardware.biometrics.BiometricPrompt$AuthenticationCallback;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.security.identity.IdentityCredential;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelProvider;
import com.minhub.gamehub.R;
import java.security.Signature;
import java.util.concurrent.Executor;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class p extends Fragment {
    public final Handler b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public w f2771c;

    public final void b(int i3) {
        if (i3 == 3 || !this.f2771c.f2785n) {
            if (e()) {
                this.f2771c.f2780i = i3;
                if (i3 == 1) {
                    h(10, com.bumptech.glide.d.z(getContext(), 10));
                }
            }
            w wVar = this.f2771c;
            if (wVar.f == null) {
                wVar.f = new C0013d(10, false);
            }
            C0013d c0013d = wVar.f;
            CancellationSignal cancellationSignal = (CancellationSignal) c0013d.f177c;
            if (cancellationSignal != null) {
                try {
                    x.a(cancellationSignal);
                } catch (NullPointerException e2) {
                    Log.e("CancelSignalProvider", "Got NPE while canceling biometric authentication.", e2);
                }
                c0013d.f177c = null;
            }
            androidx.core.os.CancellationSignal cancellationSignal2 = (androidx.core.os.CancellationSignal) c0013d.f178d;
            if (cancellationSignal2 != null) {
                try {
                    cancellationSignal2.cancel();
                } catch (NullPointerException e3) {
                    Log.e("CancelSignalProvider", "Got NPE while canceling fingerprint authentication.", e3);
                }
                c0013d.f178d = null;
            }
        }
    }

    public final void c() {
        this.f2771c.f2781j = false;
        if (isAdded()) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            E e2 = (E) parentFragmentManager.findFragmentByTag("androidx.biometric.FingerprintDialogFragment");
            if (e2 != null) {
                if (e2.isAdded()) {
                    e2.dismissAllowingStateLoss();
                } else {
                    parentFragmentManager.beginTransaction().remove(e2).commitAllowingStateLoss();
                }
            }
        }
    }

    public final boolean d() {
        return Build.VERSION.SDK_INT <= 28 && p000a.a.s(this.f2771c.a());
    }

    public final void dismiss() {
        this.f2771c.f2781j = false;
        c();
        if (!this.f2771c.f2783l && isAdded()) {
            getParentFragmentManager().beginTransaction().remove(this).commitAllowingStateLoss();
        }
        Context context = getContext();
        if (context != null) {
            String str = Build.MODEL;
            if (Build.VERSION.SDK_INT == 29 && str != null) {
                for (String str2 : context.getResources().getStringArray(R.array.delay_showing_prompt_models)) {
                    if (str.equals(str2)) {
                        w wVar = this.f2771c;
                        wVar.f2784m = true;
                        this.b.postDelayed(new o(wVar, 1), 600L);
                        return;
                    }
                }
            }
        }
    }

    public final boolean e() {
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 28) {
            FragmentActivity activity = getActivity();
            if (activity != null && this.f2771c.f2777d != null) {
                String str = Build.MANUFACTURER;
                String str2 = Build.MODEL;
                if (i3 == 28) {
                    if (str != null) {
                        for (String str3 : activity.getResources().getStringArray(R.array.crypto_fingerprint_fallback_vendors)) {
                            if (!str.equalsIgnoreCase(str3)) {
                            }
                        }
                    }
                    String str4 = Build.MODEL;
                    if (str4 != null) {
                        for (String str5 : activity.getResources().getStringArray(R.array.crypto_fingerprint_fallback_prefixes)) {
                            if (!str4.startsWith(str5)) {
                            }
                        }
                    }
                }
            }
            if (Build.VERSION.SDK_INT != 28) {
                return false;
            }
            Context context = getContext();
            return context == null || context.getPackageManager() == null || !G.a(context.getPackageManager());
        }
        return true;
    }

    public final void f() {
        FragmentActivity activity = getActivity();
        if (activity == null) {
            Log.e("BiometricFragment", "Failed to check device credential. Client FragmentActivity not found.");
            return;
        }
        KeyguardManager keyguardManagerA = F.a(activity);
        if (keyguardManagerA == null) {
            g(12, getString(R.string.generic_error_no_keyguard));
            return;
        }
        w wVar = this.f2771c;
        F.b bVar = wVar.f2776c;
        CharSequence charSequence = bVar != null ? (CharSequence) bVar.f943c : null;
        CharSequence charSequence2 = bVar != null ? (CharSequence) bVar.f944d : null;
        wVar.getClass();
        Intent intentA = k.a(keyguardManagerA, charSequence, charSequence2 != null ? charSequence2 : null);
        if (intentA == null) {
            g(14, getString(R.string.generic_error_no_device_credential));
            return;
        }
        this.f2771c.f2783l = true;
        if (e()) {
            c();
        }
        intentA.setFlags(134742016);
        startActivityForResult(intentA, 1);
    }

    public final void g(int i3, CharSequence charSequence) {
        h(i3, charSequence);
        dismiss();
    }

    public final void h(int i3, CharSequence charSequence) {
        w wVar = this.f2771c;
        if (wVar.f2783l) {
            Log.v("BiometricFragment", "Error not sent to client. User is confirming their device credential.");
            return;
        }
        if (!wVar.f2782k) {
            Log.w("BiometricFragment", "Error not sent to client. Client is not awaiting a result.");
            return;
        }
        wVar.f2782k = false;
        Executor executorC0142e = wVar.f2775a;
        if (executorC0142e == null) {
            executorC0142e = new ExecutorC0142e(2);
        }
        executorC0142e.execute(new h(this, i3, charSequence, 0));
    }

    public final void i(s sVar) {
        w wVar = this.f2771c;
        if (wVar.f2782k) {
            wVar.f2782k = false;
            Executor executorC0142e = wVar.f2775a;
            if (executorC0142e == null) {
                executorC0142e = new ExecutorC0142e(2);
            }
            executorC0142e.execute(new E0.d(5, this, sVar));
        } else {
            Log.w("BiometricFragment", "Success not sent to client. Client is not awaiting a result.");
        }
        dismiss();
    }

    public final void j(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = getString(R.string.default_error_msg);
        }
        this.f2771c.d(2);
        this.f2771c.c(charSequence);
    }

    public final void k() {
        IdentityCredential identityCredential;
        int i3;
        if (this.f2771c.f2781j) {
            return;
        }
        if (getContext() == null) {
            Log.w("BiometricFragment", "Not showing biometric prompt. Context is null.");
            return;
        }
        w wVar = this.f2771c;
        wVar.f2781j = true;
        wVar.f2782k = true;
        CharSequence charSequence = null;
        cryptoObject = null;
        cryptoObject = null;
        cryptoObject = null;
        FingerprintManagerCompat.CryptoObject cryptoObject = null;
        if (e()) {
            Context applicationContext = requireContext().getApplicationContext();
            FingerprintManagerCompat fingerprintManagerCompatFrom = FingerprintManagerCompat.from(applicationContext);
            if (fingerprintManagerCompatFrom.isHardwareDetected()) {
                i3 = !fingerprintManagerCompatFrom.hasEnrolledFingerprints() ? 11 : 0;
            } else {
                i3 = 12;
            }
            if (i3 != 0) {
                g(i3, com.bumptech.glide.d.z(applicationContext, i3));
                return;
            }
            if (isAdded()) {
                this.f2771c.f2791t = true;
                String str = Build.MODEL;
                if (Build.VERSION.SDK_INT != 28 || str == null) {
                    this.b.postDelayed(new i(this, 1), 500L);
                    new E().show(getParentFragmentManager(), "androidx.biometric.FingerprintDialogFragment");
                    break;
                }
                String[] stringArray = applicationContext.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes);
                int length = stringArray.length;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        this.b.postDelayed(new i(this, 1), 500L);
                        new E().show(getParentFragmentManager(), "androidx.biometric.FingerprintDialogFragment");
                        break;
                    } else if (str.startsWith(stringArray[i4])) {
                        break;
                    } else {
                        i4++;
                    }
                }
                w wVar2 = this.f2771c;
                wVar2.f2780i = 0;
                N1.w wVar3 = wVar2.f2777d;
                if (wVar3 != null) {
                    Cipher cipher = (Cipher) wVar3.b;
                    if (cipher != null) {
                        cryptoObject = new FingerprintManagerCompat.CryptoObject(cipher);
                    } else {
                        Signature signature = (Signature) wVar3.f1493a;
                        if (signature != null) {
                            cryptoObject = new FingerprintManagerCompat.CryptoObject(signature);
                        } else {
                            Mac mac = (Mac) wVar3.f1494c;
                            if (mac != null) {
                                cryptoObject = new FingerprintManagerCompat.CryptoObject(mac);
                            } else if (Build.VERSION.SDK_INT >= 30 && ((IdentityCredential) wVar3.f1495d) != null) {
                                Log.e("CryptoObjectUtils", "Identity credential is not supported by FingerprintManager.");
                            }
                        }
                    }
                }
                FingerprintManagerCompat.CryptoObject cryptoObject2 = cryptoObject;
                w wVar4 = this.f2771c;
                if (wVar4.f == null) {
                    wVar4.f = new C0013d(10, false);
                }
                C0013d c0013d = wVar4.f;
                if (((androidx.core.os.CancellationSignal) c0013d.f178d) == null) {
                    c0013d.f178d = new androidx.core.os.CancellationSignal();
                }
                androidx.core.os.CancellationSignal cancellationSignal = (androidx.core.os.CancellationSignal) c0013d.f178d;
                w wVar5 = this.f2771c;
                if (wVar5.f2778e == null) {
                    wVar5.f2778e = new C0220f(new u(wVar5));
                }
                C0220f c0220f = wVar5.f2778e;
                if (c0220f.b == null) {
                    c0220f.b = new C0215a(c0220f);
                }
                try {
                    fingerprintManagerCompatFrom.authenticate(cryptoObject2, 0, cancellationSignal, c0220f.b, (Handler) null);
                    return;
                } catch (NullPointerException e2) {
                    Log.e("BiometricFragment", "Got NPE while authenticating with fingerprint.", e2);
                    g(1, com.bumptech.glide.d.z(applicationContext, 1));
                    return;
                }
            }
            return;
        }
        BiometricPrompt.Builder builderD = l.d(requireContext().getApplicationContext());
        w wVar6 = this.f2771c;
        F.b bVar = wVar6.f2776c;
        CharSequence charSequence2 = bVar != null ? (CharSequence) bVar.f943c : null;
        CharSequence charSequence3 = bVar != null ? (CharSequence) bVar.f944d : null;
        wVar6.getClass();
        if (charSequence2 != null) {
            l.g(builderD, charSequence2);
        }
        if (charSequence3 != null) {
            l.f(builderD, charSequence3);
        }
        w wVar7 = this.f2771c;
        String str2 = wVar7.f2779h;
        if (str2 != null) {
            charSequence = str2;
        } else {
            F.b bVar2 = wVar7.f2776c;
            if (bVar2 != null && (charSequence = (CharSequence) bVar2.f945e) == null) {
                charSequence = "";
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            Executor executorC0142e = this.f2771c.f2775a;
            if (executorC0142e == null) {
                executorC0142e = new ExecutorC0142e(2);
            }
            w wVar8 = this.f2771c;
            if (wVar8.g == null) {
                wVar8.g = new v(wVar8);
            }
            l.e(builderD, charSequence, executorC0142e, wVar8.g);
        }
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 29) {
            F.b bVar3 = this.f2771c.f2776c;
            m.a(builderD, true);
        }
        int iA = this.f2771c.a();
        if (i5 >= 30) {
            n.a(builderD, iA);
        } else if (i5 >= 29) {
            m.b(builderD, p000a.a.s(iA));
        }
        BiometricPrompt biometricPromptC = l.c(builderD);
        Context context = getContext();
        N1.w wVar9 = this.f2771c.f2777d;
        BiometricPrompt.CryptoObject cryptoObjectA = null;
        if (wVar9 != null) {
            Cipher cipher2 = (Cipher) wVar9.b;
            if (cipher2 != null) {
                cryptoObjectA = y.b(cipher2);
            } else {
                Signature signature2 = (Signature) wVar9.f1493a;
                if (signature2 != null) {
                    cryptoObjectA = y.a(signature2);
                } else {
                    Mac mac2 = (Mac) wVar9.f1494c;
                    if (mac2 != null) {
                        cryptoObjectA = y.c(mac2);
                    } else if (Build.VERSION.SDK_INT >= 30 && (identityCredential = (IdentityCredential) wVar9.f1495d) != null) {
                        cryptoObjectA = z.a(identityCredential);
                    }
                }
            }
        }
        w wVar10 = this.f2771c;
        if (wVar10.f == null) {
            wVar10.f = new C0013d(10, false);
        }
        C0013d c0013d2 = wVar10.f;
        if (((CancellationSignal) c0013d2.f177c) == null) {
            c0013d2.f177c = x.b();
        }
        CancellationSignal cancellationSignal2 = (CancellationSignal) c0013d2.f177c;
        ExecutorC0142e executorC0142e2 = new ExecutorC0142e(1);
        w wVar11 = this.f2771c;
        if (wVar11.f2778e == null) {
            wVar11.f2778e = new C0220f(new u(wVar11));
        }
        C0220f c0220f2 = wVar11.f2778e;
        if (c0220f2.f2762a == null) {
            c0220f2.f2762a = AbstractC0217c.a(c0220f2.f2763c);
        }
        BiometricPrompt$AuthenticationCallback biometricPrompt$AuthenticationCallback = c0220f2.f2762a;
        try {
            if (cryptoObjectA == null) {
                l.b(biometricPromptC, cancellationSignal2, executorC0142e2, biometricPrompt$AuthenticationCallback);
            } else {
                l.a(biometricPromptC, cryptoObjectA, cancellationSignal2, executorC0142e2, biometricPrompt$AuthenticationCallback);
            }
        } catch (NullPointerException e3) {
            Log.e("BiometricFragment", "Got NPE while authenticating with biometric prompt.", e3);
            g(1, context != null ? context.getString(R.string.default_error_msg) : "");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i3, int i4, Intent intent) {
        super.onActivityResult(i3, i4, intent);
        if (i3 == 1) {
            this.f2771c.f2783l = false;
            if (i4 == -1) {
                i(new s(null, 1));
            } else {
                g(10, getString(R.string.generic_error_user_canceled));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActivity() == null) {
            return;
        }
        w wVar = (w) new ViewModelProvider(getActivity()).get(w.class);
        this.f2771c = wVar;
        if (wVar.f2786o == null) {
            wVar.f2786o = new MutableLiveData();
        }
        wVar.f2786o.observe(this, new j(this, 0));
        w wVar2 = this.f2771c;
        if (wVar2.f2787p == null) {
            wVar2.f2787p = new MutableLiveData();
        }
        wVar2.f2787p.observe(this, new j(this, 1));
        w wVar3 = this.f2771c;
        if (wVar3.f2788q == null) {
            wVar3.f2788q = new MutableLiveData();
        }
        wVar3.f2788q.observe(this, new j(this, 2));
        w wVar4 = this.f2771c;
        if (wVar4.f2789r == null) {
            wVar4.f2789r = new MutableLiveData();
        }
        wVar4.f2789r.observe(this, new j(this, 3));
        w wVar5 = this.f2771c;
        if (wVar5.f2790s == null) {
            wVar5.f2790s = new MutableLiveData();
        }
        wVar5.f2790s.observe(this, new j(this, 4));
        w wVar6 = this.f2771c;
        if (wVar6.f2792u == null) {
            wVar6.f2792u = new MutableLiveData();
        }
        wVar6.f2792u.observe(this, new j(this, 5));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        if (Build.VERSION.SDK_INT == 29 && p000a.a.s(this.f2771c.a())) {
            w wVar = this.f2771c;
            wVar.f2785n = true;
            this.b.postDelayed(new o(wVar, 2), 250L);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        if (Build.VERSION.SDK_INT >= 29 || this.f2771c.f2783l) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity == null || !activity.isChangingConfigurations()) {
            b(0);
        }
    }
}
