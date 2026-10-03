package p011e;

import F.b;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NavUtils;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import k.A;
import k.C;
import k.C0290g;
import k.C0297j0;
import k.C0300l;
import k.C0315t;
import k.C0321w;
import k.C0325y;
import k.G;
import k.I;
import k.InterfaceC0301l0;
import k.InterfaceC0303m0;
import k.T;
import k.d1;
import k.i1;
import k.n1;
import k.q1;
import p021i.a;
import p021i.c;
import p021i.h;
import p024j.l;
import p024j.n;
import p024j.p;
import p024j.s;
import p041q.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B extends p implements n, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final j f4004i0 = new j(0);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final int[] f4005j0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final boolean f4006k0 = !"robolectric".equals(Build.FINGERPRINT);

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public boolean f4007A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public ViewGroup f4008B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public TextView f4009C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public View f4010D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f4011E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f4012F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f4013G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f4014H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f4015I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f4016J;
    public boolean K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f4017L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public A[] f4018M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public A f4019N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f4020O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f4021P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f4022Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f4023R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Configuration f4024S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f4025T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f4026U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f4027V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f4028W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public x f4029X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public x f4030Y;
    public boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f4031a0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f4033c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public Rect f4034d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public Rect f4035e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public F f4036f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public OnBackInvokedDispatcher f4037g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public OnBackInvokedCallback f4038h0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f4039k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Context f4040l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Window f4041m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public w f4042n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Object f4043o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public M f4044p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public h f4045q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f4046r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public InterfaceC0301l0 f4047s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public r f4048t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public r f4049u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public a f4050v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public ActionBarContextView f4051w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public PopupWindow f4052x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public q f4053y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public ViewPropertyAnimatorCompat f4054z = null;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final q f4032b0 = new q(this, 0);

    public B(Context context, Window window, InterfaceC0249k interfaceC0249k, Object obj) {
        AbstractActivityC0248j abstractActivityC0248j = null;
        this.f4025T = -100;
        this.f4040l = context;
        this.f4043o = interfaceC0249k;
        this.f4039k = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AbstractActivityC0248j)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    abstractActivityC0248j = (AbstractActivityC0248j) context;
                    break;
                }
            }
            if (abstractActivityC0248j != null) {
                this.f4025T = ((B) abstractActivityC0248j.k()).f4025T;
            }
        }
        if (this.f4025T == -100) {
            String name = this.f4039k.getClass().getName();
            j jVar = f4004i0;
            Integer num = (Integer) jVar.get(name);
            if (num != null) {
                this.f4025T = num.intValue();
                jVar.remove(this.f4039k.getClass().getName());
            }
        }
        if (window != null) {
            o(window);
        }
        C0321w.d();
    }

    public static LocaleListCompat p(Context context) {
        LocaleListCompat localeListCompat;
        LocaleListCompat localeListCompatCreate;
        if (Build.VERSION.SDK_INT >= 33 || (localeListCompat = p.f4153d) == null) {
            return null;
        }
        LocaleListCompat localeListCompatB = u.b(context.getApplicationContext().getResources().getConfiguration());
        if (localeListCompat.isEmpty()) {
            localeListCompatCreate = LocaleListCompat.getEmptyLocaleList();
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i3 = 0;
            while (i3 < localeListCompatB.size() + localeListCompat.size()) {
                Locale locale = i3 < localeListCompat.size() ? localeListCompat.get(i3) : localeListCompatB.get(i3 - localeListCompat.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i3++;
            }
            localeListCompatCreate = LocaleListCompat.create((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return localeListCompatCreate.isEmpty() ? localeListCompatB : localeListCompatCreate;
    }

    public static Configuration t(Context context, int i3, LocaleListCompat localeListCompat, Configuration configuration, boolean z2) {
        int i4;
        if (i3 == 1) {
            i4 = 16;
        } else if (i3 != 2) {
            i4 = z2 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i4 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i4 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            u.d(configuration2, localeListCompat);
        }
        return configuration2;
    }

    public final void A() {
        w();
        if (this.f4013G && this.f4044p == null) {
            Object obj = this.f4039k;
            if (obj instanceof Activity) {
                this.f4044p = new M((Activity) obj, this.f4014H);
            } else if (obj instanceof Dialog) {
                this.f4044p = new M((Dialog) obj);
            }
            M m2 = this.f4044p;
            if (m2 != null) {
                m2.h0(this.f4033c0);
            }
        }
    }

    public final int B(Context context, int i3) {
        if (i3 != -100) {
            if (i3 != -1) {
                if (i3 != 0) {
                    if (i3 != 1 && i3 != 2) {
                        if (i3 != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.f4030Y == null) {
                            this.f4030Y = new x(this, context);
                        }
                        return this.f4030Y.c();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return y(context).c();
                }
            }
            return i3;
        }
        return -1;
    }

    public final boolean C() {
        InterfaceC0303m0 interfaceC0303m0;
        d1 d1Var;
        boolean z2 = this.f4020O;
        this.f4020O = false;
        A aZ = z(0);
        if (!aZ.f4000m) {
            a aVar = this.f4050v;
            if (aVar != null) {
                aVar.a();
                return true;
            }
            A();
            M m2 = this.f4044p;
            if (m2 == null || (interfaceC0303m0 = m2.f) == null || (d1Var = ((i1) interfaceC0303m0).f4839a.f2724M) == null || d1Var.f4819c == null) {
                return false;
            }
            d1 d1Var2 = ((i1) interfaceC0303m0).f4839a.f2724M;
            s sVar = d1Var2 == null ? null : d1Var2.f4819c;
            if (sVar != null) {
                sVar.collapseActionView();
            }
        } else if (!z2) {
            s(aZ, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0176, code lost:
    
        if (r2.g.getCount() > 0) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void D(p011e.A r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instruction units count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p011e.B.D(e.A, android.view.KeyEvent):void");
    }

    public final boolean E(A a3, int i3, KeyEvent keyEvent) {
        p pVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((a3.f3998k || F(a3, keyEvent)) && (pVar = a3.f3995h) != null) {
            return pVar.performShortcut(i3, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:64:0x00da  */
    /* JADX WARN: Code duplicated, block: B:68:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00fd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:79:0x0114  */
    public final boolean F(A a3, KeyEvent keyEvent) {
        p pVar;
        InterfaceC0301l0 interfaceC0301l0;
        InterfaceC0301l0 interfaceC0301l1;
        Resources.Theme themeNewTheme;
        InterfaceC0301l0 interfaceC0301l2;
        InterfaceC0301l0 interfaceC0301l3;
        if (!this.f4023R) {
            boolean z2 = a3.f3998k;
            int i3 = a3.f3991a;
            if (z2) {
                return true;
            }
            A a4 = this.f4019N;
            if (a4 != null && a4 != a3) {
                s(a4, false);
            }
            Window.Callback callback = this.f4041m.getCallback();
            if (callback != null) {
                a3.g = callback.onCreatePanelView(i3);
            }
            boolean z3 = i3 == 0 || i3 == 108;
            if (z3 && (interfaceC0301l3 = this.f4047s) != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0301l3;
                actionBarOverlayLayout.e();
                ((i1) actionBarOverlayLayout.f).f4847l = true;
            }
            if (a3.g == null) {
                p pVar2 = a3.f3995h;
                if (pVar2 == null || a3.f4002o) {
                    if (pVar2 == null) {
                        Context context = this.f4040l;
                        if ((i3 == 0 || i3 == 108) && this.f4047s != null) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(com.minhub.gamehub.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                                themeNewTheme.resolveAttribute(com.minhub.gamehub.R.attr.actionBarWidgetTheme, typedValue, true);
                            } else {
                                theme.resolveAttribute(com.minhub.gamehub.R.attr.actionBarWidgetTheme, typedValue, true);
                                themeNewTheme = null;
                            }
                            if (typedValue.resourceId != 0) {
                                if (themeNewTheme == null) {
                                    themeNewTheme = context.getResources().newTheme();
                                    themeNewTheme.setTo(theme);
                                }
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                            }
                            if (themeNewTheme != null) {
                                c cVar = new c(context, 0);
                                cVar.getTheme().setTo(themeNewTheme);
                                context = cVar;
                            }
                        }
                        p pVar3 = new p(context);
                        pVar3.f4556e = this;
                        p pVar4 = a3.f3995h;
                        if (pVar3 != pVar4) {
                            if (pVar4 != null) {
                                pVar4.r(a3.f3996i);
                            }
                            a3.f3995h = pVar3;
                            l lVar = a3.f3996i;
                            if (lVar != null) {
                                pVar3.b(lVar, pVar3.f4553a);
                            }
                        }
                        if (a3.f3995h != null) {
                            if (z3 && (interfaceC0301l1 = this.f4047s) != null) {
                                if (this.f4048t == null) {
                                    this.f4048t = new r(this, 2);
                                }
                                ((ActionBarOverlayLayout) interfaceC0301l1).f(a3.f3995h, this.f4048t);
                            }
                            a3.f3995h.w();
                            if (callback.onCreatePanelMenu(i3, a3.f3995h)) {
                                a3.f4002o = false;
                            } else {
                                pVar = a3.f3995h;
                                if (pVar != null) {
                                    if (pVar != null) {
                                        pVar.r(a3.f3996i);
                                    }
                                    a3.f3995h = null;
                                }
                                if (z3 && (interfaceC0301l0 = this.f4047s) != null) {
                                    ((ActionBarOverlayLayout) interfaceC0301l0).f(null, this.f4048t);
                                }
                            }
                        }
                    } else {
                        if (z3) {
                            if (this.f4048t == null) {
                                this.f4048t = new r(this, 2);
                            }
                            ((ActionBarOverlayLayout) interfaceC0301l1).f(a3.f3995h, this.f4048t);
                        }
                        a3.f3995h.w();
                        if (callback.onCreatePanelMenu(i3, a3.f3995h)) {
                            pVar = a3.f3995h;
                            if (pVar != null) {
                                if (pVar != null) {
                                    pVar.r(a3.f3996i);
                                }
                                a3.f3995h = null;
                            }
                            if (z3) {
                                ((ActionBarOverlayLayout) interfaceC0301l0).f(null, this.f4048t);
                            }
                        } else {
                            a3.f4002o = false;
                        }
                    }
                }
                a3.f3995h.w();
                Bundle bundle = a3.f4003p;
                if (bundle != null) {
                    a3.f3995h.s(bundle);
                    a3.f4003p = null;
                }
                if (!callback.onPreparePanel(0, a3.g, a3.f3995h)) {
                    if (z3 && (interfaceC0301l2 = this.f4047s) != null) {
                        ((ActionBarOverlayLayout) interfaceC0301l2).f(null, this.f4048t);
                    }
                    a3.f3995h.v();
                    return false;
                }
                a3.f3995h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
                a3.f3995h.v();
            }
            a3.f3998k = true;
            a3.f3999l = false;
            this.f4019N = a3;
            return true;
        }
        return false;
    }

    public final void G() {
        if (this.f4007A) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void H() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z2 = false;
            if (this.f4037g0 != null && (z(0).f4000m || this.f4050v != null)) {
                z2 = true;
            }
            if (z2 && this.f4038h0 == null) {
                this.f4038h0 = v.b(this.f4037g0, this);
            } else {
                if (z2 || (onBackInvokedCallback = this.f4038h0) == null) {
                    return;
                }
                v.c(this.f4037g0, onBackInvokedCallback);
                this.f4038h0 = null;
            }
        }
    }

    @Override // p011e.p
    public final void a() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f4040l);
        if (layoutInflaterFrom.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof B) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // p011e.p
    public final void b() {
        if (this.f4044p != null) {
            A();
            this.f4044p.getClass();
            this.f4031a0 |= 1;
            if (this.Z) {
                return;
            }
            ViewCompat.postOnAnimation(this.f4041m.getDecorView(), this.f4032b0);
            this.Z = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.f() != false) goto L20;
     */
    @Override // p024j.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(p024j.p r6) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p011e.B.c(j.p):void");
    }

    @Override // p011e.p
    public final void e() {
        String parentActivityName;
        this.f4021P = true;
        n(false, true);
        x();
        Object obj = this.f4039k;
        if (obj instanceof Activity) {
            try {
                parentActivityName = NavUtils.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
                parentActivityName = null;
            }
            if (parentActivityName != null) {
                M m2 = this.f4044p;
                if (m2 == null) {
                    this.f4033c0 = true;
                } else {
                    m2.h0(true);
                }
            }
            synchronized (p.f4156i) {
                p.g(this);
                p.f4155h.add(new WeakReference(this));
            }
        }
        this.f4024S = new Configuration(this.f4040l.getResources().getConfiguration());
        this.f4022Q = true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // p011e.p
    public final void f() {
        if (this.f4039k instanceof Activity) {
            synchronized (p.f4156i) {
                p.g(this);
            }
        }
        if (this.Z) {
            this.f4041m.getDecorView().removeCallbacks(this.f4032b0);
        }
        this.f4023R = true;
        if (this.f4025T != -100) {
            Object obj = this.f4039k;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f4004i0.put(this.f4039k.getClass().getName(), Integer.valueOf(this.f4025T));
            } else {
                f4004i0.remove(this.f4039k.getClass().getName());
            }
        } else {
            f4004i0.remove(this.f4039k.getClass().getName());
        }
        x xVar = this.f4029X;
        if (xVar != null) {
            xVar.a();
        }
        x xVar2 = this.f4030Y;
        if (xVar2 != null) {
            xVar2.a();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    @Override // p024j.n
    public final boolean h(p pVar, MenuItem menuItem) {
        A a3;
        Window.Callback callback = this.f4041m.getCallback();
        if (callback != null && !this.f4023R) {
            p pVarK = pVar.k();
            A[] aArr = this.f4018M;
            int length = aArr != null ? aArr.length : 0;
            for (int i3 = 0; i3 < length; i3++) {
                a3 = aArr[i3];
                if (a3 != null && a3.f3995h == pVarK) {
                    if (a3 != null) {
                        return callback.onMenuItemSelected(a3.f3991a, menuItem);
                    }
                }
            }
            a3 = null;
            if (a3 != null) {
                return callback.onMenuItemSelected(a3.f3991a, menuItem);
            }
        }
        return false;
    }

    @Override // p011e.p
    public final boolean i(int i3) {
        if (i3 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i3 = 108;
        } else if (i3 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i3 = 109;
        }
        if (this.K && i3 == 108) {
            return false;
        }
        if (this.f4013G && i3 == 1) {
            this.f4013G = false;
        }
        if (i3 == 1) {
            G();
            this.K = true;
            return true;
        }
        if (i3 == 2) {
            G();
            this.f4011E = true;
            return true;
        }
        if (i3 == 5) {
            G();
            this.f4012F = true;
            return true;
        }
        if (i3 == 10) {
            G();
            this.f4015I = true;
            return true;
        }
        if (i3 == 108) {
            G();
            this.f4013G = true;
            return true;
        }
        if (i3 != 109) {
            return this.f4041m.requestFeature(i3);
        }
        G();
        this.f4014H = true;
        return true;
    }

    @Override // p011e.p
    public final void j(int i3) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.f4008B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f4040l).inflate(i3, viewGroup);
        this.f4042n.a(this.f4041m.getCallback());
    }

    @Override // p011e.p
    public final void k(View view) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.f4008B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f4042n.a(this.f4041m.getCallback());
    }

    @Override // p011e.p
    public final void l(View view, ViewGroup.LayoutParams layoutParams) {
        w();
        ViewGroup viewGroup = (ViewGroup) this.f4008B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f4042n.a(this.f4041m.getCallback());
    }

    @Override // p011e.p
    public final void m(CharSequence charSequence) {
        this.f4046r = charSequence;
        InterfaceC0301l0 interfaceC0301l0 = this.f4047s;
        if (interfaceC0301l0 != null) {
            interfaceC0301l0.setWindowTitle(charSequence);
            return;
        }
        M m2 = this.f4044p;
        if (m2 == null) {
            TextView textView = this.f4009C;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        i1 i1Var = (i1) m2.f;
        if (i1Var.g) {
            return;
        }
        Toolbar toolbar = i1Var.f4839a;
        i1Var.f4843h = charSequence;
        if ((i1Var.b & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (i1Var.g) {
                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00e1  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean n(boolean z2, boolean z3) {
        int i3;
        boolean z4;
        Object obj;
        Object obj2;
        if (this.f4023R) {
            return false;
        }
        int i4 = this.f4025T;
        if (i4 == -100) {
            i4 = p.f4152c;
        }
        Context context = this.f4040l;
        int iB = B(context, i4);
        int i5 = Build.VERSION.SDK_INT;
        LongSparseArray longSparseArray = null;
        LocaleListCompat localeListCompatP = i5 < 33 ? p(context) : null;
        if (!z3 && localeListCompatP != null) {
            localeListCompatP = u.b(context.getResources().getConfiguration());
        }
        Configuration configurationT = t(context, iB, localeListCompatP, null, false);
        boolean z5 = this.f4028W;
        boolean z6 = true;
        Object obj3 = this.f4039k;
        if (z5 || !(obj3 instanceof Activity)) {
            this.f4028W = true;
            i3 = this.f4027V;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i3 = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj3.getClass()), i5 >= 29 ? 269221888 : 786432);
                    if (activityInfo != null) {
                        this.f4027V = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e2);
                    this.f4027V = 0;
                }
                this.f4028W = true;
                i3 = this.f4027V;
            }
        }
        Configuration configuration = this.f4024S;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i6 = configuration.uiMode & 48;
        int i7 = configurationT.uiMode & 48;
        LocaleListCompat localeListCompatB = u.b(configuration);
        LocaleListCompat localeListCompatB2 = localeListCompatP == null ? null : u.b(configurationT);
        int i8 = i6 != i7 ? 512 : 0;
        if (localeListCompatB2 != null && !localeListCompatB.equals(localeListCompatB2)) {
            i8 |= 8196;
        }
        if (((~i3) & i8) != 0 && z2 && this.f4021P && ((f4006k0 || this.f4022Q) && (obj3 instanceof Activity))) {
            Activity activity = (Activity) obj3;
            if (activity.isChild()) {
                z4 = false;
            } else {
                if (Build.VERSION.SDK_INT >= 31 && (i8 & 8192) != 0) {
                    activity.getWindow().getDecorView().setLayoutDirection(configurationT.getLayoutDirection());
                }
                ActivityCompat.recreate(activity);
                z4 = true;
            }
        } else {
            z4 = false;
        }
        if (z4 || i8 == 0) {
            z6 = z4;
        } else {
            boolean z7 = (i8 & i3) == i8;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i7;
            if (localeListCompatB2 != null) {
                u.d(configuration2, localeListCompatB2);
            }
            resources.updateConfiguration(configuration2, null);
            int i9 = Build.VERSION.SDK_INT;
            if (i9 < 26 && i9 < 28) {
                if (!p000a.a.f2496k) {
                    try {
                        Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                        p000a.a.f2495j = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException e3) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e3);
                    }
                    p000a.a.f2496k = true;
                }
                Field field = p000a.a.f2495j;
                if (field != null) {
                    try {
                        obj = field.get(resources);
                    } catch (IllegalAccessException e4) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e4);
                        obj = null;
                    }
                    if (obj != null) {
                        if (!p000a.a.f2492e) {
                            try {
                                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                                p000a.a.f2491d = declaredField2;
                                declaredField2.setAccessible(true);
                            } catch (NoSuchFieldException e5) {
                                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e5);
                            }
                            p000a.a.f2492e = true;
                        }
                        Field field2 = p000a.a.f2491d;
                        if (field2 != null) {
                            try {
                                obj2 = field2.get(obj);
                            } catch (IllegalAccessException e6) {
                                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e6);
                                obj2 = null;
                            }
                        } else {
                            obj2 = null;
                        }
                        if (obj2 != null) {
                            if (!p000a.a.g) {
                                try {
                                    p000a.a.f = Class.forName("android.content.res.ThemedResourceCache");
                                } catch (ClassNotFoundException e7) {
                                    Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e7);
                                }
                                p000a.a.g = true;
                            }
                            Class cls = p000a.a.f;
                            if (cls != null) {
                                if (!p000a.a.f2494i) {
                                    try {
                                        Field declaredField3 = cls.getDeclaredField("mUnthemedEntries");
                                        p000a.a.f2493h = declaredField3;
                                        declaredField3.setAccessible(true);
                                    } catch (NoSuchFieldException e8) {
                                        Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e8);
                                    }
                                    p000a.a.f2494i = true;
                                }
                                Field field3 = p000a.a.f2493h;
                                if (field3 != null) {
                                    try {
                                        longSparseArray = (LongSparseArray) field3.get(obj2);
                                    } catch (IllegalAccessException e9) {
                                        Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e9);
                                    }
                                    if (longSparseArray != null) {
                                        longSparseArray.clear();
                                    }
                                }
                            }
                        }
                    }
                }
            }
            int i10 = this.f4026U;
            if (i10 != 0) {
                context.setTheme(i10);
                context.getTheme().applyStyle(this.f4026U, true);
            }
            if (z7 && (obj3 instanceof Activity)) {
                Activity activity2 = (Activity) obj3;
                if (activity2 instanceof LifecycleOwner) {
                    if (((LifecycleOwner) activity2).getLifecycle().getState().isAtLeast(Lifecycle.State.CREATED)) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.f4022Q && !this.f4023R) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
        }
        if (localeListCompatB2 != null) {
            u.c(u.b(context.getResources().getConfiguration()));
        }
        if (i4 == 0) {
            y(context).e();
        } else {
            x xVar = this.f4029X;
            if (xVar != null) {
                xVar.a();
            }
        }
        if (i4 == 3) {
            if (this.f4030Y == null) {
                this.f4030Y = new x(this, context);
            }
            this.f4030Y.e();
        } else {
            x xVar2 = this.f4030Y;
            if (xVar2 != null) {
                xVar2.a();
            }
        }
        return z6;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0074  */
    public final void o(Window window) {
        Drawable drawableD;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f4041m != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof w) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        w wVar = new w(this, callback);
        this.f4042n = wVar;
        window.setCallback(wVar);
        Context context = this.f4040l;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f4005j0);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableD = null;
        } else {
            C0321w c0321wA = C0321w.a();
            synchronized (c0321wA) {
                drawableD = c0321wA.f4935a.d(context, resourceId, true);
            }
        }
        if (drawableD != null) {
            window.setBackgroundDrawable(drawableD);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f4041m = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f4037g0) != null) {
            return;
        }
        Object obj = this.f4039k;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f4038h0) != null) {
            v.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f4038h0 = null;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f4037g0 = v.a(activity);
            } else {
                this.f4037g0 = null;
            }
        } else {
            this.f4037g0 = null;
        }
        H();
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View g;
        View view2 = null;
        if (this.f4036f0 == null) {
            int[] iArr = p008d.a.f3847j;
            Context context2 = this.f4040l;
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            String string = typedArrayObtainStyledAttributes.getString(116);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.f4036f0 = new F();
            } else {
                try {
                    this.f4036f0 = (F) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f4036f0 = new F();
                }
            }
        }
        F f = this.f4036f0;
        int i3 = n1.f4892a;
        f.getClass();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, p008d.a.f3862y, 0, 0);
        byte b = 4;
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(4, 0);
        if (resourceId != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes2.recycle();
        Context cVar = (resourceId == 0 || ((context instanceof c) && ((c) context).f4375a == resourceId)) ? context : new c(context, resourceId);
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                b = !str.equals("RatingBar") ? (byte) -1 : (byte) 0;
                break;
            case -1455429095:
                b = !str.equals("CheckedTextView") ? (byte) -1 : (byte) 1;
                break;
            case -1346021293:
                b = !str.equals("MultiAutoCompleteTextView") ? (byte) -1 : (byte) 2;
                break;
            case -938935918:
                b = !str.equals("TextView") ? (byte) -1 : (byte) 3;
                break;
            case -937446323:
                if (!str.equals("ImageButton")) {
                    b = -1;
                }
                break;
            case -658531749:
                b = !str.equals("SeekBar") ? (byte) -1 : (byte) 5;
                break;
            case -339785223:
                b = !str.equals("Spinner") ? (byte) -1 : (byte) 6;
                break;
            case 776382189:
                b = !str.equals("RadioButton") ? (byte) -1 : (byte) 7;
                break;
            case 799298502:
                b = !str.equals("ToggleButton") ? (byte) -1 : (byte) 8;
                break;
            case 1125864064:
                b = !str.equals("ImageView") ? (byte) -1 : (byte) 9;
                break;
            case 1413872058:
                b = !str.equals("AutoCompleteTextView") ? (byte) -1 : (byte) 10;
                break;
            case 1601505219:
                b = !str.equals("CheckBox") ? (byte) -1 : (byte) 11;
                break;
            case 1666676343:
                b = !str.equals("EditText") ? (byte) -1 : (byte) 12;
                break;
            case 2001146706:
                b = !str.equals("Button") ? (byte) -1 : (byte) 13;
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                g = new G(cVar, attributeSet);
                break;
            case 1:
                g = new C0315t(cVar, attributeSet);
                break;
            case 2:
                g = new C(cVar, attributeSet);
                break;
            case 3:
                g = f.e(cVar, attributeSet);
                break;
            case 4:
                g = new A(cVar, attributeSet, com.minhub.gamehub.R.attr.imageButtonStyle);
                break;
            case 5:
                g = new I(cVar, attributeSet);
                break;
            case 6:
                g = new T(cVar, attributeSet);
                break;
            case 7:
                g = f.d(cVar, attributeSet);
                break;
            case 8:
                g = new C0297j0(cVar, attributeSet);
                break;
            case 9:
                g = new k.B(cVar, attributeSet, 0);
                break;
            case 10:
                g = f.a(cVar, attributeSet);
                break;
            case MotionEventCompat.AXIS_Z /* 11 */:
                g = f.c(cVar, attributeSet);
                break;
            case 12:
                g = new C0325y(cVar, attributeSet);
                break;
            case 13:
                g = f.b(cVar, attributeSet);
                break;
            default:
                g = null;
                break;
        }
        if (g == null && context != cVar) {
            Object[] objArr = f.f4063a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = cVar;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i4 = 0;
                    while (true) {
                        String[] strArr = F.g;
                        if (i4 < 3) {
                            View viewF = f.f(cVar, str, strArr[i4]);
                            if (viewF != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = viewF;
                            } else {
                                i4++;
                            }
                        } else {
                            objArr[0] = null;
                            objArr[1] = null;
                        }
                    }
                } else {
                    View viewF2 = f.f(cVar, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused) {
                objArr[0] = null;
                objArr[1] = null;
            } catch (Throwable th2) {
                objArr[0] = null;
                objArr[1] = null;
                throw th2;
            }
            g = view2;
        }
        if (g != null) {
            Context context3 = g.getContext();
            if ((context3 instanceof ContextWrapper) && g.hasOnClickListeners()) {
                TypedArray typedArrayObtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, F.f4059c);
                String string2 = typedArrayObtainStyledAttributes3.getString(0);
                if (string2 != null) {
                    g.setOnClickListener(new E(g, string2));
                }
                typedArrayObtainStyledAttributes3.recycle();
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray typedArrayObtainStyledAttributes4 = cVar.obtainStyledAttributes(attributeSet, F.f4060d);
                if (typedArrayObtainStyledAttributes4.hasValue(0)) {
                    ViewCompat.setAccessibilityHeading(g, typedArrayObtainStyledAttributes4.getBoolean(0, false));
                }
                typedArrayObtainStyledAttributes4.recycle();
                TypedArray typedArrayObtainStyledAttributes5 = cVar.obtainStyledAttributes(attributeSet, F.f4061e);
                if (typedArrayObtainStyledAttributes5.hasValue(0)) {
                    ViewCompat.setAccessibilityPaneTitle(g, typedArrayObtainStyledAttributes5.getString(0));
                }
                typedArrayObtainStyledAttributes5.recycle();
                TypedArray typedArrayObtainStyledAttributes6 = cVar.obtainStyledAttributes(attributeSet, F.f);
                if (typedArrayObtainStyledAttributes6.hasValue(0)) {
                    ViewCompat.setScreenReaderFocusable(g, typedArrayObtainStyledAttributes6.getBoolean(0, false));
                }
                typedArrayObtainStyledAttributes6.recycle();
            }
        }
        return g;
    }

    public final void q(int i3, A a3, p pVar) {
        if (pVar == null) {
            if (a3 == null && i3 >= 0) {
                A[] aArr = this.f4018M;
                if (i3 < aArr.length) {
                    a3 = aArr[i3];
                }
            }
            if (a3 != null) {
                pVar = a3.f3995h;
            }
        }
        if ((a3 == null || a3.f4000m) && !this.f4023R) {
            w wVar = this.f4042n;
            Window.Callback callback = this.f4041m.getCallback();
            wVar.getClass();
            try {
                wVar.f4163e = true;
                callback.onPanelClosed(i3, pVar);
            } finally {
                wVar.f4163e = false;
            }
        }
    }

    public final void r(p pVar) {
        C0300l c0300l;
        if (this.f4017L) {
            return;
        }
        this.f4017L = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f4047s;
        actionBarOverlayLayout.e();
        ActionMenuView actionMenuView = ((i1) actionBarOverlayLayout.f).f4839a.b;
        if (actionMenuView != null && (c0300l = actionMenuView.f2699u) != null) {
            c0300l.c();
            C0290g c0290g = c0300l.f4866v;
            if (c0290g != null && c0290g.b()) {
                c0290g.f4467i.dismiss();
            }
        }
        Window.Callback callback = this.f4041m.getCallback();
        if (callback != null && !this.f4023R) {
            callback.onPanelClosed(108, pVar);
        }
        this.f4017L = false;
    }

    public final void s(A a3, boolean z2) {
        z zVar;
        InterfaceC0301l0 interfaceC0301l0;
        C0300l c0300l;
        if (z2 && a3.f3991a == 0 && (interfaceC0301l0 = this.f4047s) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0301l0;
            actionBarOverlayLayout.e();
            ActionMenuView actionMenuView = ((i1) actionBarOverlayLayout.f).f4839a.b;
            if (actionMenuView != null && (c0300l = actionMenuView.f2699u) != null && c0300l.f()) {
                r(a3.f3995h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f4040l.getSystemService("window");
        if (windowManager != null && a3.f4000m && (zVar = a3.f3994e) != null) {
            windowManager.removeView(zVar);
            if (z2) {
                q(a3.f3991a, a3, null);
            }
        }
        a3.f3998k = false;
        a3.f3999l = false;
        a3.f4000m = false;
        a3.f = null;
        a3.f4001n = true;
        if (this.f4019N == a3) {
            this.f4019N = null;
        }
        if (a3.f3991a == 0) {
            H();
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0147  */
    /* JADX WARN: Code duplicated, block: B:104:0x014e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x003f  */
    /* JADX WARN: Code duplicated, block: B:23:0x004a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x004c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0071 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x007b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0085  */
    /* JADX WARN: Code duplicated, block: B:78:0x0105  */
    /* JADX WARN: Code duplicated, block: B:80:0x0109  */
    /* JADX WARN: Code duplicated, block: B:91:0x0123  */
    /* JADX WARN: Code duplicated, block: B:95:0x012d  */
    /* JADX WARN: Code duplicated, block: B:97:0x013b  */
    /* JADX WARN: Code duplicated, block: B:99:0x013f  */
    public final boolean u(KeyEvent keyEvent) {
        View decorView;
        int keyCode;
        A aZ;
        InterfaceC0301l0 interfaceC0301l0;
        Context context;
        boolean z2;
        boolean z3;
        boolean zF;
        AudioManager audioManager;
        Toolbar toolbar;
        ActionMenuView actionMenuView;
        C0300l c0300l;
        C0300l c0300l2;
        C0300l c0300l3;
        A aZ2;
        Object obj = this.f4039k;
        if ((!(obj instanceof KeyEventDispatcher.Component) && !(obj instanceof D)) || (decorView = this.f4041m.getDecorView()) == null || !KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            if (keyEvent.getKeyCode() == 82) {
                w wVar = this.f4042n;
                Window.Callback callback = this.f4041m.getCallback();
                wVar.getClass();
                try {
                    wVar.f4162d = true;
                    boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                    wVar.f4162d = false;
                    if (!zDispatchKeyEvent) {
                        keyCode = keyEvent.getKeyCode();
                        if (keyEvent.getAction() == 0) {
                            if (keyCode != 4) {
                                this.f4020O = (keyEvent.getFlags() & 128) != 0;
                                return false;
                            }
                            if (keyCode == 82) {
                                if (keyEvent.getRepeatCount() == 0) {
                                    aZ2 = z(0);
                                    if (!aZ2.f4000m) {
                                        F(aZ2, keyEvent);
                                        return true;
                                    }
                                }
                            }
                            return false;
                        }
                        if (keyCode != 4) {
                            if (keyCode == 82) {
                                if (this.f4050v == null) {
                                    aZ = z(0);
                                    interfaceC0301l0 = this.f4047s;
                                    context = this.f4040l;
                                    if (interfaceC0301l0 != null) {
                                        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0301l0;
                                        actionBarOverlayLayout.e();
                                        toolbar = ((i1) actionBarOverlayLayout.f).f4839a;
                                        if (toolbar.getVisibility() == 0 || (actionMenuView = toolbar.b) == null || !actionMenuView.f2698t || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                                            z2 = aZ.f4000m;
                                            if (!z2 || aZ.f3999l) {
                                                s(aZ, true);
                                                z3 = z2;
                                            } else {
                                                if (aZ.f3998k) {
                                                    if (aZ.f4002o) {
                                                        aZ.f3998k = false;
                                                        zF = F(aZ, keyEvent);
                                                    } else {
                                                        zF = true;
                                                    }
                                                    if (zF) {
                                                        D(aZ, keyEvent);
                                                        z3 = true;
                                                    }
                                                }
                                                z3 = false;
                                            }
                                        } else {
                                            ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f4047s;
                                            actionBarOverlayLayout2.e();
                                            ActionMenuView actionMenuView2 = ((i1) actionBarOverlayLayout2.f).f4839a.b;
                                            if (actionMenuView2 == null || (c0300l2 = actionMenuView2.f2699u) == null || !c0300l2.f()) {
                                                if (!this.f4023R && F(aZ, keyEvent)) {
                                                    ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f4047s;
                                                    actionBarOverlayLayout3.e();
                                                    ActionMenuView actionMenuView3 = ((i1) actionBarOverlayLayout3.f).f4839a.b;
                                                    if (actionMenuView3 != null && (c0300l = actionMenuView3.f2699u) != null && c0300l.n()) {
                                                        z3 = true;
                                                    }
                                                }
                                                z3 = false;
                                            } else {
                                                ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f4047s;
                                                actionBarOverlayLayout4.e();
                                                ActionMenuView actionMenuView4 = ((i1) actionBarOverlayLayout4.f).f4839a.b;
                                                if (actionMenuView4 == null || (c0300l3 = actionMenuView4.f2699u) == null || !c0300l3.c()) {
                                                    z3 = false;
                                                } else {
                                                    z3 = true;
                                                }
                                            }
                                        }
                                    } else {
                                        z2 = aZ.f4000m;
                                        if (z2) {
                                        }
                                        s(aZ, true);
                                        z3 = z2;
                                    }
                                    if (z3) {
                                        audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                                        if (audioManager != null) {
                                            audioManager.playSoundEffect(0);
                                            return true;
                                        }
                                        Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                        return true;
                                    }
                                }
                            }
                            return false;
                        }
                        if (C()) {
                            return false;
                        }
                    }
                } catch (Throwable th) {
                    wVar.f4162d = false;
                    throw th;
                }
            } else {
                keyCode = keyEvent.getKeyCode();
                if (keyEvent.getAction() == 0) {
                    if (keyCode != 4) {
                        this.f4020O = (keyEvent.getFlags() & 128) != 0;
                        return false;
                    }
                    if (keyCode == 82) {
                        if (keyEvent.getRepeatCount() == 0) {
                            aZ2 = z(0);
                            if (!aZ2.f4000m) {
                                F(aZ2, keyEvent);
                                return true;
                            }
                        }
                    }
                    return false;
                }
                if (keyCode != 4) {
                    if (keyCode == 82) {
                        if (this.f4050v == null) {
                            aZ = z(0);
                            interfaceC0301l0 = this.f4047s;
                            context = this.f4040l;
                            if (interfaceC0301l0 != null) {
                                ActionBarOverlayLayout actionBarOverlayLayout5 = (ActionBarOverlayLayout) interfaceC0301l0;
                                actionBarOverlayLayout5.e();
                                toolbar = ((i1) actionBarOverlayLayout5.f).f4839a;
                                if (toolbar.getVisibility() == 0) {
                                    z2 = aZ.f4000m;
                                    if (z2) {
                                    }
                                    s(aZ, true);
                                    z3 = z2;
                                } else {
                                    z2 = aZ.f4000m;
                                    if (z2) {
                                    }
                                    s(aZ, true);
                                    z3 = z2;
                                }
                            } else {
                                z2 = aZ.f4000m;
                                if (z2) {
                                }
                                s(aZ, true);
                                z3 = z2;
                            }
                            if (z3) {
                                audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                                if (audioManager != null) {
                                    audioManager.playSoundEffect(0);
                                    return true;
                                }
                                Log.w("AppCompatDelegate", "Couldn't get audio manager");
                                return true;
                            }
                        }
                    }
                    return false;
                }
                if (C()) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void v(int i3) {
        A aZ = z(i3);
        if (aZ.f3995h != null) {
            Bundle bundle = new Bundle();
            aZ.f3995h.t(bundle);
            if (bundle.size() > 0) {
                aZ.f4003p = bundle;
            }
            aZ.f3995h.w();
            aZ.f3995h.clear();
        }
        aZ.f4002o = true;
        aZ.f4001n = true;
        if ((i3 == 108 || i3 == 0) && this.f4047s != null) {
            A aZ2 = z(0);
            aZ2.f3998k = false;
            F(aZ2, null);
        }
    }

    public final void w() {
        ViewGroup viewGroup;
        if (this.f4007A) {
            return;
        }
        Context context = this.f4040l;
        int[] iArr = p008d.a.f3847j;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        int i3 = 0;
        int i4 = 1;
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            i(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            i(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            i(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            i(10);
        }
        this.f4016J = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        x();
        this.f4041m.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.K) {
            viewGroup = this.f4015I ? (ViewGroup) layoutInflaterFrom.inflate(com.minhub.gamehub.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.minhub.gamehub.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f4016J) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.minhub.gamehub.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f4014H = false;
            this.f4013G = false;
        } else if (this.f4013G) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.minhub.gamehub.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new c(context, typedValue.resourceId) : context).inflate(com.minhub.gamehub.R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC0301l0 interfaceC0301l0 = (InterfaceC0301l0) viewGroup.findViewById(com.minhub.gamehub.R.id.decor_content_parent);
            this.f4047s = interfaceC0301l0;
            interfaceC0301l0.setWindowCallback(this.f4041m.getCallback());
            if (this.f4014H) {
                ((ActionBarOverlayLayout) this.f4047s).d(109);
            }
            if (this.f4011E) {
                ((ActionBarOverlayLayout) this.f4047s).d(2);
            }
            if (this.f4012F) {
                ((ActionBarOverlayLayout) this.f4047s).d(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f4013G + ", windowActionBarOverlay: " + this.f4014H + ", android:windowIsFloating: " + this.f4016J + ", windowActionModeOverlay: " + this.f4015I + ", windowNoTitle: " + this.K + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new r(this, i3));
        if (this.f4047s == null) {
            this.f4009C = (TextView) viewGroup.findViewById(com.minhub.gamehub.R.id.title);
        }
        boolean z2 = q1.f4902a;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException e2) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e3) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e3);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.minhub.gamehub.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f4041m.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f4041m.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new r(this, i4));
        this.f4008B = viewGroup;
        Object obj = this.f4039k;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f4046r;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC0301l0 interfaceC0301l1 = this.f4047s;
            if (interfaceC0301l1 != null) {
                interfaceC0301l1.setWindowTitle(title);
            } else {
                M m2 = this.f4044p;
                if (m2 != null) {
                    i1 i1Var = (i1) m2.f;
                    if (!i1Var.g) {
                        Toolbar toolbar = i1Var.f4839a;
                        i1Var.f4843h = title;
                        if ((i1Var.b & 8) != 0) {
                            toolbar.setTitle(title);
                            if (i1Var.g) {
                                ViewCompat.setAccessibilityPaneTitle(toolbar.getRootView(), title);
                            }
                        }
                    }
                } else {
                    TextView textView = this.f4009C;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f4008B.findViewById(R.id.content);
        View decorView = this.f4041m.getDecorView();
        contentFrameLayout2.f2710h.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f4007A = true;
        A aZ = z(0);
        if (this.f4023R || aZ.f3995h != null) {
            return;
        }
        this.f4031a0 |= 4096;
        if (this.Z) {
            return;
        }
        ViewCompat.postOnAnimation(this.f4041m.getDecorView(), this.f4032b0);
        this.Z = true;
    }

    public final void x() {
        if (this.f4041m == null) {
            Object obj = this.f4039k;
            if (obj instanceof Activity) {
                o(((Activity) obj).getWindow());
            }
        }
        if (this.f4041m == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final y y(Context context) {
        if (this.f4029X == null) {
            if (b.f == null) {
                Context applicationContext = context.getApplicationContext();
                b.f = new b(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f4029X = new x(this, b.f);
        }
        return this.f4029X;
    }

    public final A z(int i3) {
        A[] aArr = this.f4018M;
        if (aArr == null || aArr.length <= i3) {
            A[] aArr2 = new A[i3 + 1];
            if (aArr != null) {
                System.arraycopy(aArr, 0, aArr2, 0, aArr.length);
            }
            this.f4018M = aArr2;
            aArr = aArr2;
        }
        A a3 = aArr[i3];
        if (a3 != null) {
            return a3;
        }
        A a4 = new A();
        a4.f3991a = i3;
        a4.f4001n = false;
        aArr[i3] = a4;
        return a4;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
