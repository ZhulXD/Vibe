package A1;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f247a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f248c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f249d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f250e;
    public final int f;
    public final C0029l g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0029l f251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0031m f252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0031m f253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C0015e f254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final r0 f255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final s0 f256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C0009b f257n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0013d f258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Handler f259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public L0 f260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public u0 f262s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f263t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final t0 f264u;

    public v0(Activity activity, String sessionId, String sessionToken, String engine, String processName, int i3, C0029l postToMain, C0029l emit, C0031m gracefulTeardown, C0031m forceTeardown) {
        C0015e onRegistrationFailure = new C0015e(12);
        r0 register = new r0(3, D.f54a, D.class, "registerReceiver", "registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V", 0);
        s0 unregister = new s0(2, D.f54a, D.class, "unregisterReceiver", "unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V", 0);
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(sessionToken, "sessionToken");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(processName, "processName");
        Intrinsics.checkNotNullParameter(postToMain, "postToMain");
        Intrinsics.checkNotNullParameter(emit, "emit");
        Intrinsics.checkNotNullParameter(gracefulTeardown, "gracefulTeardown");
        Intrinsics.checkNotNullParameter(forceTeardown, "forceTeardown");
        Intrinsics.checkNotNullParameter(onRegistrationFailure, "onRegistrationFailure");
        Intrinsics.checkNotNullParameter(register, "register");
        Intrinsics.checkNotNullParameter(unregister, "unregister");
        this.f247a = activity;
        this.b = sessionId;
        this.f248c = sessionToken;
        this.f249d = engine;
        this.f250e = processName;
        this.f = i3;
        this.g = postToMain;
        this.f251h = emit;
        this.f252i = gracefulTeardown;
        this.f253j = forceTeardown;
        this.f254k = onRegistrationFailure;
        this.f255l = register;
        this.f256m = unregister;
        this.f257n = new C0009b(1);
        this.f258o = new C0013d(1);
        this.f259p = new Handler(Looper.getMainLooper());
        this.f260q = L0.b;
        this.f264u = new t0(0, this);
    }

    public final void a(String str, EnumC0025j enumC0025j) {
        Intent intent = new Intent(str);
        intent.putExtra("sessionId", this.b);
        intent.putExtra("sessionToken", this.f248c);
        intent.putExtra("issuedAt", System.currentTimeMillis());
        intent.putExtra("messageTimestamp", System.currentTimeMillis());
        intent.putExtra("state", this.f260q.name());
        intent.putExtra("closeResult", enumC0025j != null ? enumC0025j.name() : null);
        intent.putExtra("engine", this.f249d);
        intent.putExtra("processName", this.f250e);
        intent.putExtra("pid", this.f);
        this.f251h.invoke(intent);
    }

    public final void b() {
        if (this.f261r) {
            u0 u0Var = this.f262s;
            if (u0Var != null) {
                this.f259p.removeCallbacks(u0Var);
            }
            this.f262s = null;
            this.f263t++;
            if (this.f260q == L0.f86c) {
                this.f260q = L0.f87d;
                a("com.minhub.gamehub.action.GAME_SESSION_STATUS", EnumC0025j.b);
            }
            L0 l2 = this.f260q;
            if (l2 == L0.f87d || l2 == L0.f88e) {
                this.f260q = L0.f;
                a("com.minhub.gamehub.action.GAME_SESSION_STATUS", EnumC0025j.b);
            }
            try {
                Activity activity = this.f247a;
                if (activity != null) {
                    this.f256m.invoke(activity, this.f264u);
                }
            } catch (Throwable unused) {
            }
            this.f261r = false;
        }
    }
}
