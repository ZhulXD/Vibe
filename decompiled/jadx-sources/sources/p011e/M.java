package p011e;

import A1.C0009b;
import A1.C0013d;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import com.bumptech.glide.d;
import java.util.ArrayList;
import k.InterfaceC0284d;
import k.InterfaceC0303m0;
import k.i1;
import p008d.a;
import p021i.i;
import p021i.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M extends d implements InterfaceC0284d {
    public Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f4074c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ActionBarOverlayLayout f4075d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ActionBarContainer f4076e;
    public InterfaceC0303m0 f;
    public ActionBarContextView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f4077h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4078i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public L f4079j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public L f4080k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C0013d f4081l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4082m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList f4083n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f4086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f4087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4088s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public j f4089t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f4090u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f4091v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final K f4092w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final K f4093x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final C0009b f4094y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final AccelerateInterpolator f4073z = new AccelerateInterpolator();

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final DecelerateInterpolator f4072A = new DecelerateInterpolator();

    public M(Activity activity, boolean z2) {
        new ArrayList();
        this.f4083n = new ArrayList();
        this.f4084o = 0;
        this.f4085p = true;
        this.f4088s = true;
        this.f4092w = new K(this, 0);
        this.f4093x = new K(this, 1);
        this.f4094y = new C0009b(this);
        View decorView = activity.getWindow().getDecorView();
        g0(decorView);
        if (z2) {
            return;
        }
        this.f4077h = decorView.findViewById(R.id.content);
    }

    public final void e0(boolean z2) {
        ViewPropertyAnimatorCompat listener;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatI;
        if (z2) {
            if (!this.f4087r) {
                this.f4087r = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f4075d;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                j0(false);
            }
        } else if (this.f4087r) {
            this.f4087r = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f4075d;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            j0(false);
        }
        if (!this.f4076e.isLaidOut()) {
            if (z2) {
                ((i1) this.f).f4839a.setVisibility(4);
                this.g.setVisibility(0);
                return;
            } else {
                ((i1) this.f).f4839a.setVisibility(0);
                this.g.setVisibility(8);
                return;
            }
        }
        if (z2) {
            i1 i1Var = (i1) this.f;
            viewPropertyAnimatorCompatI = ViewCompat.animate(i1Var.f4839a).alpha(0.0f).setDuration(100L).setListener(new i(i1Var, 4));
            listener = this.g.i(0, 200L);
        } else {
            i1 i1Var2 = (i1) this.f;
            listener = ViewCompat.animate(i1Var2.f4839a).alpha(1.0f).setDuration(200L).setListener(new i(i1Var2, 0));
            viewPropertyAnimatorCompatI = this.g.i(8, 100L);
        }
        j jVar = new j();
        ArrayList arrayList = jVar.f4421a;
        arrayList.add(viewPropertyAnimatorCompatI);
        listener.setStartDelay(viewPropertyAnimatorCompatI.getDuration());
        arrayList.add(listener);
        jVar.b();
    }

    public final Context f0() {
        if (this.f4074c == null) {
            TypedValue typedValue = new TypedValue();
            this.b.getTheme().resolveAttribute(com.minhub.gamehub.R.attr.actionBarWidgetTheme, typedValue, true);
            int i3 = typedValue.resourceId;
            if (i3 != 0) {
                this.f4074c = new ContextThemeWrapper(this.b, i3);
            } else {
                this.f4074c = this.b;
            }
        }
        return this.f4074c;
    }

    public final void g0(View view) {
        InterfaceC0303m0 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.minhub.gamehub.R.id.decor_content_parent);
        this.f4075d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.minhub.gamehub.R.id.action_bar);
        if (callbackFindViewById instanceof InterfaceC0303m0) {
            wrapper = (InterfaceC0303m0) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f = wrapper;
        this.g = (ActionBarContextView) view.findViewById(com.minhub.gamehub.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.minhub.gamehub.R.id.action_bar_container);
        this.f4076e = actionBarContainer;
        InterfaceC0303m0 interfaceC0303m0 = this.f;
        if (interfaceC0303m0 == null || this.g == null || actionBarContainer == null) {
            throw new IllegalStateException(M.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((i1) interfaceC0303m0).f4839a.getContext();
        this.b = context;
        if ((((i1) this.f).b & 4) != 0) {
            this.f4078i = true;
        }
        int i3 = context.getApplicationInfo().targetSdkVersion;
        this.f.getClass();
        i0(context.getResources().getBoolean(com.minhub.gamehub.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.b.obtainStyledAttributes(null, a.f3841a, com.minhub.gamehub.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f4075d;
            if (!actionBarOverlayLayout2.f2675h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f4091v = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ViewCompat.setElevation(this.f4076e, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void h0(boolean z2) {
        if (this.f4078i) {
            return;
        }
        int i3 = z2 ? 4 : 0;
        i1 i1Var = (i1) this.f;
        int i4 = i1Var.b;
        this.f4078i = true;
        i1Var.a((i3 & 4) | (i4 & (-5)));
    }

    public final void i0(boolean z2) {
        if (z2) {
            this.f4076e.setTabContainer(null);
            ((i1) this.f).getClass();
        } else {
            ((i1) this.f).getClass();
            this.f4076e.setTabContainer(null);
        }
        this.f.getClass();
        ((i1) this.f).f4839a.setCollapsible(false);
        this.f4075d.setHasNonEmbeddedTabs(false);
    }

    public final void j0(boolean z2) {
        boolean z3 = this.f4086q;
        boolean z4 = this.f4087r;
        C0009b c0009b = this.f4094y;
        View view = this.f4077h;
        if (!z4 && z3) {
            if (this.f4088s) {
                this.f4088s = false;
                j jVar = this.f4089t;
                if (jVar != null) {
                    jVar.a();
                }
                int i3 = this.f4084o;
                K k2 = this.f4092w;
                if (i3 != 0 || (!this.f4090u && !z2)) {
                    k2.onAnimationEnd(null);
                    return;
                }
                this.f4076e.setAlpha(1.0f);
                this.f4076e.setTransitioning(true);
                j jVar2 = new j();
                float f = -this.f4076e.getHeight();
                if (z2) {
                    int[] iArr = {0, 0};
                    this.f4076e.getLocationInWindow(iArr);
                    f -= iArr[1];
                }
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY = ViewCompat.animate(this.f4076e).translationY(f);
                viewPropertyAnimatorCompatTranslationY.setUpdateListener(c0009b);
                boolean z5 = jVar2.f4424e;
                ArrayList arrayList = jVar2.f4421a;
                if (!z5) {
                    arrayList.add(viewPropertyAnimatorCompatTranslationY);
                }
                if (this.f4085p && view != null) {
                    ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY2 = ViewCompat.animate(view).translationY(f);
                    if (!jVar2.f4424e) {
                        arrayList.add(viewPropertyAnimatorCompatTranslationY2);
                    }
                }
                boolean z6 = jVar2.f4424e;
                if (!z6) {
                    jVar2.f4422c = f4073z;
                }
                if (!z6) {
                    jVar2.b = 250L;
                }
                if (!z6) {
                    jVar2.f4423d = k2;
                }
                this.f4089t = jVar2;
                jVar2.b();
                return;
            }
            return;
        }
        if (this.f4088s) {
            return;
        }
        this.f4088s = true;
        j jVar3 = this.f4089t;
        if (jVar3 != null) {
            jVar3.a();
        }
        this.f4076e.setVisibility(0);
        int i4 = this.f4084o;
        K k3 = this.f4093x;
        if (i4 == 0 && (this.f4090u || z2)) {
            this.f4076e.setTranslationY(0.0f);
            float f3 = -this.f4076e.getHeight();
            if (z2) {
                int[] iArr2 = {0, 0};
                this.f4076e.getLocationInWindow(iArr2);
                f3 -= iArr2[1];
            }
            this.f4076e.setTranslationY(f3);
            j jVar4 = new j();
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY3 = ViewCompat.animate(this.f4076e).translationY(0.0f);
            viewPropertyAnimatorCompatTranslationY3.setUpdateListener(c0009b);
            boolean z7 = jVar4.f4424e;
            ArrayList arrayList2 = jVar4.f4421a;
            if (!z7) {
                arrayList2.add(viewPropertyAnimatorCompatTranslationY3);
            }
            if (this.f4085p && view != null) {
                view.setTranslationY(f3);
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompatTranslationY4 = ViewCompat.animate(view).translationY(0.0f);
                if (!jVar4.f4424e) {
                    arrayList2.add(viewPropertyAnimatorCompatTranslationY4);
                }
            }
            boolean z8 = jVar4.f4424e;
            if (!z8) {
                jVar4.f4422c = f4072A;
            }
            if (!z8) {
                jVar4.b = 250L;
            }
            if (!z8) {
                jVar4.f4423d = k3;
            }
            this.f4089t = jVar4;
            jVar4.b();
        } else {
            this.f4076e.setAlpha(1.0f);
            this.f4076e.setTranslationY(0.0f);
            if (this.f4085p && view != null) {
                view.setTranslationY(0.0f);
            }
            k3.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f4075d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    public M(Dialog dialog) {
        new ArrayList();
        this.f4083n = new ArrayList();
        this.f4084o = 0;
        this.f4085p = true;
        this.f4088s = true;
        this.f4092w = new K(this, 0);
        this.f4093x = new K(this, 1);
        this.f4094y = new C0009b(this);
        g0(dialog.getWindow().getDecorView());
    }
}
