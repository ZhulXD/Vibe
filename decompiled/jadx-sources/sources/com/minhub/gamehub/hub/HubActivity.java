package com.minhub.gamehub.hub;

import A1.C0018f0;
import A1.C0020g0;
import A1.C0022h0;
import A1.C0024i0;
import A1.C0026j0;
import A1.C0028k0;
import A1.C0030l0;
import A1.InterfaceC0032m0;
import C1.C0059d1;
import C1.C0065f1;
import C1.C0074i1;
import C1.C0080k1;
import C1.C0083l1;
import C1.C0086m1;
import C1.C0089n1;
import C1.O0;
import C1.RunnableC0062e1;
import C1.RunnableC0068g1;
import C1.ViewOnClickListenerC0075j;
import C1.ViewOnClickListenerC0122z;
import C1.Z0;
import F.b;
import S1.c;
import S1.d;
import V1.A;
import V1.H;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.minhub.gamehub.R;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.unsigned.a;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.A1;
import p064y1.B1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/HubActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHubActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HubActivity.kt\ncom/minhub/gamehub/hub/HubActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,301:1\n75#2,13:302\n1#3:315\n161#4,8:316\n161#4,8:324\n*S KotlinDebug\n*F\n+ 1 HubActivity.kt\ncom/minhub/gamehub/hub/HubActivity\n*L\n40#1:302,13\n107#1:316,8\n108#1:324,8\n*E\n"})
public final class HubActivity extends c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f3779j = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f3780e;
    public long f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f3781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ActivityResultLauncher f3782i;

    public HubActivity() {
        new ViewModelLazy(Reflection.getOrCreateKotlinClass(Z0.class), new C0089n1(this, 0), new C0086m1(this), new C0089n1(this, 1));
        this.f3782i = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0065f1(this));
    }

    public static final void m(HubActivity hubActivity, InterfaceC0032m0 result) {
        String strName;
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z2 = result instanceof C0024i0;
        if (z2) {
            return;
        }
        if (result instanceof C0022h0) {
            strName = ((C0022h0) result).b.name();
        } else if (result instanceof C0018f0) {
            strName = "UNKNOWN_SESSION";
        } else if (result instanceof C0030l0) {
            strName = "WAITING_FOR_CLOSE";
        } else if (result instanceof C0026j0) {
            strName = "RUNTIME_INSTALL_REQUIRED";
        } else if (result instanceof C0028k0) {
            strName = "SUPERSEDED";
        } else {
            if (!Intrinsics.areEqual(result, C0020g0.f191a)) {
                if (!z2) {
                    throw new NoWhenBranchMatchedException();
                }
                return;
            }
            strName = "CANCELLED";
        }
        Toast.makeText(hubActivity, hubActivity.getString(R.string.game_launch_failed, strName), 1).show();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new C0074i1(this, continuation, 1), 3);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_hub, (ViewGroup) null, false);
        int i3 = R.id.bottom_nav;
        BottomNavigationView bottomNavigationView = (BottomNavigationView) viewInflate.findViewById(R.id.bottom_nav);
        if (bottomNavigationView != null) {
            i3 = R.id.fragment_container;
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.fragment_container);
            if (frameLayout != null) {
                LinearLayout linearLayout = (LinearLayout) viewInflate;
                b bVar = new b(linearLayout, bottomNavigationView, frameLayout, 16);
                Intrinsics.checkNotNullExpressionValue(bVar, "inflate(...)");
                this.f3780e = bVar;
                setContentView(linearLayout);
                Thread thread = new Thread(new RunnableC0062e1(0));
                thread.setDaemon(true);
                thread.setName("content-protect-probe");
                thread.start();
                b bVar2 = this.f3780e;
                if (bVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    bVar2 = null;
                }
                ViewCompat.setOnApplyWindowInsetsListener((LinearLayout) bVar2.f943c, new C0065f1(this));
                LifecycleCoroutineScope lifecycleScope = LifecycleOwnerKt.getLifecycleScope(this);
                c2.c cVar = H.b;
                A.c(lifecycleScope, cVar, new O0(this, continuation, 2), 2);
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new C0059d1(), "home").commit();
                b bVar3 = this.f3780e;
                if (bVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    bVar3 = null;
                }
                ((BottomNavigationView) bVar3.f944d).setOnItemSelectedListener(new C0065f1(this));
                if (bundle == null) {
                    long longExtra = getIntent().getLongExtra("extra_game_id", 0L);
                    if (longExtra > 0) {
                        A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new C0080k1(this, longExtra, null), 3);
                    }
                    new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0068g1(0, this), 2000L);
                    this.f3781h = System.currentTimeMillis();
                    A.c(LifecycleOwnerKt.getLifecycleScope(this), cVar, new C0083l1(0, getApplicationContext(), continuation), 2);
                    return;
                }
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        setIntent(intent);
        long longExtra = intent.getLongExtra("extra_game_id", 0L);
        if (longExtra > 0) {
            A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new C0080k1(this, longExtra, null), 3);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        String strH;
        super.onResume();
        Context applicationContext = getApplicationContext();
        Set set = d.f2060a;
        Intrinsics.checkNotNull(applicationContext);
        if (!d.n(applicationContext) || !d.o(applicationContext)) {
            d.a(applicationContext);
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.setFlags(268468224);
            startActivity(intent);
            return;
        }
        int i3 = 0;
        if ((this.f > 0 ? System.currentTimeMillis() - this.f : 0L) > 30000) {
            Intrinsics.checkNotNullParameter(applicationContext, "<this>");
            if (d.s(applicationContext).getBoolean("app_lock_enabled", false) && d.b(applicationContext).length() > 0) {
                this.f = 0L;
                this.g = true;
                Intrinsics.checkNotNullParameter(this, "ctx");
                this.f3782i.launch(new Intent(this, (Class<?>) AppLockActivity.class));
            }
        }
        Continuation continuation = null;
        if (System.currentTimeMillis() - this.f3781h >= 900000) {
            this.f3781h = System.currentTimeMillis();
            A.c(LifecycleOwnerKt.getLifecycleScope(this), H.b, new C0083l1(i3, getApplicationContext(), continuation), 2);
        }
        A1 a1E = B1.e(this);
        if (a1E != null) {
            View viewInflate = getLayoutInflater().inflate(R.layout.dialog_renpy_boot_error, (ViewGroup) null);
            String string = a1E.b;
            if (string == null) {
                string = getString(R.string.renpy_boot_failed_unknown);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
            String str = a1E.f6032c;
            if (str != null && (strH = a.h(getString(R.string.renpy_boot_failed_version, str), "\n\n", string)) != null) {
                string = strH;
            }
            ((TextView) viewInflate.findViewById(R.id.tv_renpy_boot_error)).setText(string);
            if (a1E.f6033d) {
                ((TextView) viewInflate.findViewById(R.id.tv_renpy_boot_body)).setText(getString(R.string.renpy_boot_failed_body_minhub));
            }
            O0.b bVar = new O0.b(this, 0);
            ((C0240b) bVar.f4145c).f4112t = viewInflate;
            DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
            Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
            Window window = dialogInterfaceC0245gC.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(android.R.color.transparent);
            }
            int i4 = 4;
            viewInflate.findViewById(R.id.btn_renpy_boot_copy).setOnClickListener(new ViewOnClickListenerC0075j(i4, this, string));
            viewInflate.findViewById(R.id.btn_renpy_boot_close).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, i4));
            dialogInterfaceC0245gC.show();
        }
    }

    @Override // p011e.AbstractActivityC0248j, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        if (this.g) {
            return;
        }
        this.f = System.currentTimeMillis();
    }
}
