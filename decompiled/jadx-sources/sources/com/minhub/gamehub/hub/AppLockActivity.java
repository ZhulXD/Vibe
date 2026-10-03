package com.minhub.gamehub.hub;

import A1.C0021h;
import A1.C0035p;
import C1.S1;
import C1.V;
import C1.V1;
import C1.W;
import C1.X;
import S1.c;
import S1.d;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.biometric.o;
import androidx.biometric.p;
import androidx.biometric.w;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import com.minhub.gamehub.R;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import p000a.a;
import p058w1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/AppLockActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AppLockActivity extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f3759i = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f3760e;
    public V1 f;
    public final StringBuilder g = new StringBuilder();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3761h;

    public final void m() {
        X x2 = new X(this);
        String string = getString(R.string.app_lock_biometric_title);
        String string2 = getString(R.string.app_lock_biometric_subtitle);
        String string3 = getString(R.string.app_lock_use_pin);
        if (TextUtils.isEmpty(string)) {
            throw new IllegalArgumentException("Title must be set and non-empty.");
        }
        if (!a.t(0)) {
            throw new IllegalArgumentException("Authenticator combination is unsupported on API " + Build.VERSION.SDK_INT + ": " + String.valueOf(0));
        }
        if (TextUtils.isEmpty(string3)) {
            throw new IllegalArgumentException("Negative text must be set and non-empty.");
        }
        TextUtils.isEmpty(string3);
        F.b bVar = new F.b(string, string2, string3, 3);
        Intrinsics.checkNotNullExpressionValue(bVar, "build(...)");
        Executor mainExecutor = ContextCompat.getMainExecutor(this);
        if (mainExecutor == null) {
            throw new IllegalArgumentException("Executor must not be null.");
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        w wVar = (w) new ViewModelProvider(this).get(w.class);
        if (wVar != null) {
            wVar.f2775a = mainExecutor;
            wVar.b = x2;
        }
        if (supportFragmentManager == null) {
            Log.e("BiometricPromptCompat", "Unable to start authentication. Client fragment manager was null.");
            return;
        }
        if (supportFragmentManager.isStateSaved()) {
            Log.e("BiometricPromptCompat", "Unable to start authentication. Called after onSaveInstanceState().");
            return;
        }
        p pVar = (p) supportFragmentManager.findFragmentByTag("androidx.biometric.BiometricFragment");
        if (pVar == null) {
            pVar = new p();
            supportFragmentManager.beginTransaction().add(pVar, "androidx.biometric.BiometricFragment").commitAllowingStateLoss();
            supportFragmentManager.executePendingTransactions();
        }
        FragmentActivity activity = pVar.getActivity();
        if (activity == null) {
            Log.e("BiometricFragment", "Not launching prompt. Client activity was null.");
            return;
        }
        w wVar2 = pVar.f2771c;
        wVar2.f2776c = bVar;
        wVar2.f2777d = null;
        if (pVar.d()) {
            pVar.f2771c.f2779h = pVar.getString(R.string.confirm_device_credential_password);
        } else {
            pVar.f2771c.f2779h = null;
        }
        if (pVar.d() && new F.b(new C0021h(activity, 1)).c() != 0) {
            pVar.f2771c.f2782k = true;
            pVar.f();
        } else if (pVar.f2771c.f2784m) {
            pVar.b.postDelayed(new o(pVar), 600L);
        } else {
            pVar.k();
        }
    }

    public final void n() {
        if (this.f3761h || isFinishing()) {
            return;
        }
        this.f3761h = true;
        setResult(-1);
        finish();
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
    }

    public final void o() {
        V1 v2 = this.f;
        if (v2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
            v2 = null;
        }
        v2.f(this.g.length());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        finishAffinity();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        b bVar = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_app_lock, (ViewGroup) null, false);
        int i3 = R.id.btn0;
        Button button = (Button) viewInflate.findViewById(R.id.btn0);
        if (button != null) {
            i3 = R.id.btn1;
            Button button2 = (Button) viewInflate.findViewById(R.id.btn1);
            if (button2 != null) {
                i3 = R.id.btn2;
                Button button3 = (Button) viewInflate.findViewById(R.id.btn2);
                if (button3 != null) {
                    i3 = R.id.btn3;
                    Button button4 = (Button) viewInflate.findViewById(R.id.btn3);
                    if (button4 != null) {
                        i3 = R.id.btn4;
                        Button button5 = (Button) viewInflate.findViewById(R.id.btn4);
                        if (button5 != null) {
                            i3 = R.id.btn5;
                            Button button6 = (Button) viewInflate.findViewById(R.id.btn5);
                            if (button6 != null) {
                                i3 = R.id.btn6;
                                Button button7 = (Button) viewInflate.findViewById(R.id.btn6);
                                if (button7 != null) {
                                    i3 = R.id.btn7;
                                    Button button8 = (Button) viewInflate.findViewById(R.id.btn7);
                                    if (button8 != null) {
                                        i3 = R.id.btn8;
                                        Button button9 = (Button) viewInflate.findViewById(R.id.btn8);
                                        if (button9 != null) {
                                            i3 = R.id.btn9;
                                            Button button10 = (Button) viewInflate.findViewById(R.id.btn9);
                                            if (button10 != null) {
                                                i3 = R.id.btn_backspace;
                                                ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_backspace);
                                                if (imageButton != null) {
                                                    i3 = R.id.btn_fingerprint;
                                                    ImageButton imageButton2 = (ImageButton) viewInflate.findViewById(R.id.btn_fingerprint);
                                                    if (imageButton2 != null) {
                                                        i3 = R.id.dot1;
                                                        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.dot1);
                                                        if (imageView != null) {
                                                            i3 = R.id.dot2;
                                                            ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.dot2);
                                                            if (imageView2 != null) {
                                                                i3 = R.id.dot3;
                                                                ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.dot3);
                                                                if (imageView3 != null) {
                                                                    i3 = R.id.dot4;
                                                                    ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.dot4);
                                                                    if (imageView4 != null) {
                                                                        i3 = R.id.dots_row;
                                                                        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.dots_row);
                                                                        if (linearLayout != null) {
                                                                            i3 = R.id.pin_pad;
                                                                            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.pin_pad);
                                                                            if (linearLayout2 != null) {
                                                                                i3 = R.id.tv_lock_title;
                                                                                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_lock_title);
                                                                                if (textView != null) {
                                                                                    i3 = R.id.tv_pin_hint;
                                                                                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_pin_hint);
                                                                                    if (textView2 != null) {
                                                                                        LinearLayout linearLayout3 = (LinearLayout) viewInflate;
                                                                                        b bVar2 = new b(linearLayout3, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, imageButton, imageButton2, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, textView, textView2);
                                                                                        Intrinsics.checkNotNullExpressionValue(bVar2, "inflate(...)");
                                                                                        this.f3760e = bVar2;
                                                                                        setContentView(linearLayout3);
                                                                                        b bVar3 = this.f3760e;
                                                                                        if (bVar3 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar3 = null;
                                                                                        }
                                                                                        TextView tvLockTitle = bVar3.f5645s;
                                                                                        Intrinsics.checkNotNullExpressionValue(tvLockTitle, "tvLockTitle");
                                                                                        b bVar4 = this.f3760e;
                                                                                        if (bVar4 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar4 = null;
                                                                                        }
                                                                                        LinearLayout dotsRow = bVar4.f5643q;
                                                                                        Intrinsics.checkNotNullExpressionValue(dotsRow, "dotsRow");
                                                                                        b bVar5 = this.f3760e;
                                                                                        if (bVar5 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar5 = null;
                                                                                        }
                                                                                        ImageView imageView5 = bVar5.f5639m;
                                                                                        b bVar6 = this.f3760e;
                                                                                        if (bVar6 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar6 = null;
                                                                                        }
                                                                                        ImageView imageView6 = bVar6.f5640n;
                                                                                        b bVar7 = this.f3760e;
                                                                                        if (bVar7 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar7 = null;
                                                                                        }
                                                                                        ImageView imageView7 = bVar7.f5641o;
                                                                                        b bVar8 = this.f3760e;
                                                                                        if (bVar8 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar8 = null;
                                                                                        }
                                                                                        List listListOf = CollectionsKt.listOf((Object[]) new ImageView[]{imageView5, imageView6, imageView7, bVar8.f5642p});
                                                                                        b bVar9 = this.f3760e;
                                                                                        if (bVar9 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar9 = null;
                                                                                        }
                                                                                        TextView tvPinHint = bVar9.f5646t;
                                                                                        Intrinsics.checkNotNullExpressionValue(tvPinHint, "tvPinHint");
                                                                                        b bVar10 = this.f3760e;
                                                                                        if (bVar10 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar10 = null;
                                                                                        }
                                                                                        LinearLayout pinPad = bVar10.f5644r;
                                                                                        Intrinsics.checkNotNullExpressionValue(pinPad, "pinPad");
                                                                                        V1 v2 = new V1(tvLockTitle, dotsRow, listListOf, tvPinHint, pinPad);
                                                                                        this.f = v2;
                                                                                        b bVar11 = this.f3760e;
                                                                                        if (bVar11 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar11 = null;
                                                                                        }
                                                                                        Button button11 = bVar11.f5630a;
                                                                                        b bVar12 = this.f3760e;
                                                                                        if (bVar12 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar12 = null;
                                                                                        }
                                                                                        Button button12 = bVar12.b;
                                                                                        b bVar13 = this.f3760e;
                                                                                        if (bVar13 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar13 = null;
                                                                                        }
                                                                                        Button button13 = bVar13.f5631c;
                                                                                        b bVar14 = this.f3760e;
                                                                                        if (bVar14 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar14 = null;
                                                                                        }
                                                                                        Button button14 = bVar14.f5632d;
                                                                                        b bVar15 = this.f3760e;
                                                                                        if (bVar15 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar15 = null;
                                                                                        }
                                                                                        Button button15 = bVar15.f5633e;
                                                                                        b bVar16 = this.f3760e;
                                                                                        if (bVar16 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar16 = null;
                                                                                        }
                                                                                        Button button16 = bVar16.f;
                                                                                        b bVar17 = this.f3760e;
                                                                                        if (bVar17 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar17 = null;
                                                                                        }
                                                                                        Button button17 = bVar17.g;
                                                                                        b bVar18 = this.f3760e;
                                                                                        if (bVar18 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar18 = null;
                                                                                        }
                                                                                        Button button18 = bVar18.f5634h;
                                                                                        b bVar19 = this.f3760e;
                                                                                        if (bVar19 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar19 = null;
                                                                                        }
                                                                                        Button button19 = bVar19.f5635i;
                                                                                        b bVar20 = this.f3760e;
                                                                                        if (bVar20 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar20 = null;
                                                                                        }
                                                                                        v2.b(CollectionsKt.listOf((Object[]) new Button[]{button11, button12, button13, button14, button15, button16, button17, button18, button19, bVar20.f5636j}), new C0035p(4, this));
                                                                                        V1 v3 = this.f;
                                                                                        if (v3 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("ui");
                                                                                            v3 = null;
                                                                                        }
                                                                                        b bVar21 = this.f3760e;
                                                                                        if (bVar21 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar21 = null;
                                                                                        }
                                                                                        ImageButton btnBackspace = bVar21.f5637k;
                                                                                        Intrinsics.checkNotNullExpressionValue(btnBackspace, "btnBackspace");
                                                                                        v3.a(btnBackspace, new W(this, 0), new W(this, 1));
                                                                                        o();
                                                                                        if (bundle == null) {
                                                                                            V1 v4 = this.f;
                                                                                            if (v4 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("ui");
                                                                                                v4 = null;
                                                                                            }
                                                                                            v4.e();
                                                                                        }
                                                                                        Set set = d.f2060a;
                                                                                        Context applicationContext = getApplicationContext();
                                                                                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                                                                                        Intrinsics.checkNotNullParameter(applicationContext, "<this>");
                                                                                        if (!d.s(applicationContext).getBoolean("app_lock_biometric", false) || new F.b(new C0021h(this, 1)).c() != 0) {
                                                                                            b bVar22 = this.f3760e;
                                                                                            if (bVar22 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            } else {
                                                                                                bVar = bVar22;
                                                                                            }
                                                                                            bVar.f5638l.setVisibility(4);
                                                                                            return;
                                                                                        }
                                                                                        b bVar23 = this.f3760e;
                                                                                        if (bVar23 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar23 = null;
                                                                                        }
                                                                                        bVar23.f5638l.setVisibility(0);
                                                                                        V1 v5 = this.f;
                                                                                        if (v5 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("ui");
                                                                                            v5 = null;
                                                                                        }
                                                                                        b bVar24 = this.f3760e;
                                                                                        if (bVar24 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            bVar24 = null;
                                                                                        }
                                                                                        ImageButton v6 = bVar24.f5638l;
                                                                                        Intrinsics.checkNotNullExpressionValue(v6, "btnFingerprint");
                                                                                        v5.getClass();
                                                                                        Intrinsics.checkNotNullParameter(v6, "v");
                                                                                        v6.setOnTouchListener(new S1());
                                                                                        b bVar25 = this.f3760e;
                                                                                        if (bVar25 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        } else {
                                                                                            bVar = bVar25;
                                                                                        }
                                                                                        bVar.f5638l.setOnClickListener(new V(0, this));
                                                                                        m();
                                                                                        return;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
