package p011e;

import A1.C0013d;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.widget.PopupWindowCompat;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.List;
import p021i.a;
import p021i.c;
import p021i.d;
import p021i.k;
import p021i.l;
import p021i.m;
import p024j.p;
import p041q.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w implements Window.Callback {
    public final Window.Callback b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4163e;
    public final /* synthetic */ B f;

    public w(B b, Window.Callback callback) {
        this.f = b;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.b = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f4161c = true;
            callback.onContentChanged();
        } finally {
            this.f4161c = false;
        }
    }

    public final boolean b(int i3, Menu menu) {
        return this.b.onMenuOpened(i3, menu);
    }

    public final void c(int i3, Menu menu) {
        this.b.onPanelClosed(i3, menu);
    }

    public final void d(List list, Menu menu, int i3) {
        l.a(this.b, list, menu, i3);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.b.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z2 = this.f4162d;
        Window.Callback callback = this.b;
        if (z2) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        return this.f.u(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:25:0x0052  */
    /* JADX WARN: Code duplicated, block: B:27:0x0056  */
    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        A a3;
        boolean z2;
        boolean zE;
        p pVar;
        boolean zPerformShortcut;
        if (!this.b.dispatchKeyShortcutEvent(keyEvent)) {
            int keyCode = keyEvent.getKeyCode();
            B b = this.f;
            b.A();
            M m2 = b.f4044p;
            if (m2 == null) {
                a3 = b.f4019N;
                if (a3 == null && b.E(a3, keyEvent.getKeyCode(), keyEvent)) {
                    A a4 = b.f4019N;
                    if (a4 != null) {
                        a4.f3999l = true;
                    }
                } else {
                    if (b.f4019N == null) {
                        A aZ = b.z(0);
                        b.F(aZ, keyEvent);
                        zE = b.E(aZ, keyEvent.getKeyCode(), keyEvent);
                        aZ.f3998k = false;
                        if (zE) {
                        }
                    }
                    z2 = false;
                }
                z2 = true;
            } else {
                L l2 = m2.f4079j;
                if (l2 == null || (pVar = l2.f4070e) == null) {
                    zPerformShortcut = false;
                } else {
                    pVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
                    zPerformShortcut = pVar.performShortcut(keyCode, keyEvent, 0);
                }
                if (zPerformShortcut) {
                    z2 = true;
                } else {
                    a3 = b.f4019N;
                    if (a3 == null) {
                        if (b.f4019N == null) {
                            A aZ2 = b.z(0);
                            b.F(aZ2, keyEvent);
                            zE = b.E(aZ2, keyEvent.getKeyCode(), keyEvent);
                            aZ2.f3998k = false;
                            if (zE) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    } else {
                        if (b.f4019N == null) {
                            A aZ3 = b.z(0);
                            b.F(aZ3, keyEvent);
                            zE = b.E(aZ3, keyEvent.getKeyCode(), keyEvent);
                            aZ3.f3998k = false;
                            if (zE) {
                                z2 = true;
                            }
                        }
                        z2 = false;
                    }
                }
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.b.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.b.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.b.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.b.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.b.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.b.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f4161c) {
            this.b.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i3, Menu menu) {
        if (i3 != 0 || (menu instanceof p)) {
            return this.b.onCreatePanelMenu(i3, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i3) {
        return this.b.onCreatePanelView(i3);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.b.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i3, MenuItem menuItem) {
        return this.b.onMenuItemSelected(i3, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i3, Menu menu) {
        b(i3, menu);
        if (i3 == 108) {
            B b = this.f;
            b.A();
            M m2 = b.f4044p;
            if (m2 != null) {
                ArrayList arrayList = m2.f4083n;
                if (true != m2.f4082m) {
                    m2.f4082m = true;
                    if (arrayList.size() > 0) {
                        arrayList.get(0).getClass();
                        throw new ClassCastException();
                    }
                }
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i3, Menu menu) {
        if (this.f4163e) {
            this.b.onPanelClosed(i3, menu);
            return;
        }
        c(i3, menu);
        B b = this.f;
        if (i3 != 108) {
            if (i3 == 0) {
                A aZ = b.z(i3);
                if (aZ.f4000m) {
                    b.s(aZ, false);
                    return;
                }
                return;
            }
            return;
        }
        b.A();
        M m2 = b.f4044p;
        if (m2 != null) {
            ArrayList arrayList = m2.f4083n;
            if (m2.f4082m) {
                m2.f4082m = false;
                if (arrayList.size() <= 0) {
                    return;
                }
                arrayList.get(0).getClass();
                throw new ClassCastException();
            }
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z2) {
        m.a(this.b, z2);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i3, View view, Menu menu) {
        p pVar = menu instanceof p ? (p) menu : null;
        if (i3 == 0 && pVar == null) {
            return false;
        }
        if (pVar != null) {
            pVar.f4573x = true;
        }
        boolean zOnPreparePanel = this.b.onPreparePanel(i3, view, menu);
        if (pVar != null) {
            pVar.f4573x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i3) {
        p pVar = this.f.z(0).f3995h;
        if (pVar != null) {
            d(list, pVar, i3);
        } else {
            d(list, menu, i3);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return k.a(this.b, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.b.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        this.b.onWindowFocusChanged(z2);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i3) {
        ViewGroup viewGroup;
        if (i3 != 0) {
            return k.b(this.b, callback, i3);
        }
        B b = this.f;
        Context context = b.f4040l;
        N1.w wVar = new N1.w();
        wVar.b = context;
        wVar.f1493a = callback;
        wVar.f1494c = new ArrayList();
        wVar.f1495d = new j(0);
        a aVar = b.f4050v;
        if (aVar != null) {
            aVar.a();
        }
        C0013d c0013d = new C0013d(b, wVar, 12, false);
        b.A();
        M m2 = b.f4044p;
        if (m2 != null) {
            L l2 = m2.f4079j;
            if (l2 != null) {
                l2.a();
            }
            m2.f4075d.setHideOnContentScrollEnabled(false);
            m2.g.e();
            L l3 = new L(m2, m2.g.getContext(), c0013d);
            p pVar = l3.f4070e;
            pVar.w();
            try {
                boolean zD = ((N1.w) l3.f.f177c).d(l3, pVar);
                pVar.v();
                if (zD) {
                    m2.f4079j = l3;
                    l3.i();
                    m2.g.c(l3);
                    m2.e0(true);
                } else {
                    l3 = null;
                }
                b.f4050v = l3;
            } catch (Throwable th) {
                pVar.v();
                throw th;
            }
        }
        if (b.f4050v == null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = b.f4054z;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.cancel();
            }
            a aVar2 = b.f4050v;
            if (aVar2 != null) {
                aVar2.a();
            }
            if (b.f4051w == null) {
                if (b.f4016J) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = context.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        c cVar = new c(context, 0);
                        cVar.getTheme().setTo(themeNewTheme);
                        context = cVar;
                    }
                    b.f4051w = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    b.f4052x = popupWindow;
                    PopupWindowCompat.setWindowLayoutType(popupWindow, 2);
                    b.f4052x.setContentView(b.f4051w);
                    b.f4052x.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    b.f4051w.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    b.f4052x.setHeight(-2);
                    b.f4053y = new q(b, 1);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) b.f4008B.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        b.A();
                        M m3 = b.f4044p;
                        Context contextF0 = m3 != null ? m3.f0() : null;
                        if (contextF0 != null) {
                            context = contextF0;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        b.f4051w = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (b.f4051w != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = b.f4054z;
                if (viewPropertyAnimatorCompat2 != null) {
                    viewPropertyAnimatorCompat2.cancel();
                }
                b.f4051w.e();
                Context context2 = b.f4051w.getContext();
                ActionBarContextView actionBarContextView = b.f4051w;
                d dVar = new d();
                dVar.f4379d = context2;
                dVar.f4380e = actionBarContextView;
                dVar.f = c0013d;
                p pVar2 = new p(actionBarContextView.getContext());
                pVar2.f4561l = 1;
                dVar.f4382i = pVar2;
                pVar2.f4556e = dVar;
                if (wVar.d(dVar, pVar2)) {
                    dVar.i();
                    b.f4051w.c(dVar);
                    b.f4050v = dVar;
                    if (b.f4007A && (viewGroup = b.f4008B) != null && viewGroup.isLaidOut()) {
                        b.f4051w.setAlpha(0.0f);
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatAlpha = ViewCompat.animate(b.f4051w).alpha(1.0f);
                        b.f4054z = viewPropertyAnimatorCompatAlpha;
                        viewPropertyAnimatorCompatAlpha.setListener(new s(1, b));
                    } else {
                        b.f4051w.setAlpha(1.0f);
                        b.f4051w.setVisibility(0);
                        if (b.f4051w.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) b.f4051w.getParent());
                        }
                    }
                    if (b.f4052x != null) {
                        b.f4041m.getDecorView().post(b.f4053y);
                    }
                } else {
                    b.f4050v = null;
                }
            }
            b.H();
            b.f4050v = b.f4050v;
        }
        b.H();
        a aVar3 = b.f4050v;
        if (aVar3 != null) {
            return wVar.b(aVar3);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.b.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }
}
