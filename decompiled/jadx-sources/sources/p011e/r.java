package p011e;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.minhub.gamehub.R;
import java.lang.reflect.Method;
import k.InterfaceC0299k0;
import k.p1;
import k.q1;
import p024j.B;
import p024j.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements OnApplyWindowInsetsListener, InterfaceC0299k0, B {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ B f4159c;

    public /* synthetic */ r(B b, int i3) {
        this.b = i3;
        this.f4159c = b;
    }

    @Override // p024j.B
    public void a(p pVar, boolean z2) {
        A a3;
        switch (this.b) {
            case 2:
                this.f4159c.r(pVar);
                break;
            default:
                p pVarK = pVar.k();
                int i3 = 0;
                boolean z3 = pVarK != pVar;
                if (z3) {
                    pVar = pVarK;
                }
                B b = this.f4159c;
                A[] aArr = b.f4018M;
                int length = aArr != null ? aArr.length : 0;
                while (true) {
                    if (i3 >= length) {
                        a3 = null;
                    } else {
                        a3 = aArr[i3];
                        if (a3 == null || a3.f3995h != pVar) {
                            i3++;
                        }
                    }
                }
                if (a3 != null) {
                    if (!z3) {
                        b.s(a3, z2);
                    } else {
                        b.q(a3.f3991a, a3, pVarK);
                        b.s(a3, true);
                    }
                }
                break;
        }
    }

    @Override // p024j.B
    public boolean i(p pVar) {
        Window.Callback callback;
        switch (this.b) {
            case 2:
                Window.Callback callback2 = this.f4159c.f4041m.getCallback();
                if (callback2 != null) {
                    callback2.onMenuOpened(108, pVar);
                }
                break;
            default:
                if (pVar == pVar.k()) {
                    B b = this.f4159c;
                    if (b.f4013G && (callback = b.f4041m.getCallback()) != null && !b.f4023R) {
                        callback.onMenuOpened(108, pVar);
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        boolean z2;
        boolean z3;
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        B b = this.f4159c;
        Context context = b.f4040l;
        int systemWindowInsetTop2 = windowInsetsCompat.getSystemWindowInsetTop();
        ActionBarContextView actionBarContextView = b.f4051w;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z2 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) b.f4051w.getLayoutParams();
            boolean z4 = true;
            if (b.f4051w.isShown()) {
                if (b.f4034d0 == null) {
                    b.f4034d0 = new Rect();
                    b.f4035e0 = new Rect();
                }
                Rect rect = b.f4034d0;
                Rect rect2 = b.f4035e0;
                rect.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                ViewGroup viewGroup = b.f4008B;
                if (Build.VERSION.SDK_INT >= 29) {
                    boolean z5 = q1.f4902a;
                    p1.a(viewGroup, rect, rect2);
                } else {
                    if (!q1.f4902a) {
                        q1.f4902a = true;
                        try {
                            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                            q1.b = declaredMethod;
                            if (!declaredMethod.isAccessible()) {
                                q1.b.setAccessible(true);
                            }
                        } catch (NoSuchMethodException unused) {
                            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
                        }
                    }
                    Method method = q1.b;
                    if (method != null) {
                        try {
                            method.invoke(viewGroup, rect, rect2);
                        } catch (Exception e2) {
                            Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e2);
                        }
                    }
                }
                int i3 = rect.top;
                int i4 = rect.left;
                int i5 = rect.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(b.f4008B);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i3 && marginLayoutParams.leftMargin == i4 && marginLayoutParams.rightMargin == i5) {
                    z3 = false;
                } else {
                    marginLayoutParams.topMargin = i3;
                    marginLayoutParams.leftMargin = i4;
                    marginLayoutParams.rightMargin = i5;
                    z3 = true;
                }
                if (i3 <= 0 || b.f4010D != null) {
                    View view2 = b.f4010D;
                    if (view2 != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                        int i6 = marginLayoutParams2.height;
                        int i7 = marginLayoutParams.topMargin;
                        if (i6 != i7 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i7;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            b.f4010D.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view3 = new View(context);
                    b.f4010D = view3;
                    view3.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    b.f4008B.addView(b.f4010D, -1, layoutParams);
                }
                View view4 = b.f4010D;
                z4 = view4 != null;
                if (z4 && view4.getVisibility() != 0) {
                    View view5 = b.f4010D;
                    view5.setBackgroundColor((ViewCompat.getWindowSystemUiVisibility(view5) & 8192) != 0 ? ContextCompat.getColor(context, R.color.abc_decor_view_status_guard_light) : ContextCompat.getColor(context, R.color.abc_decor_view_status_guard));
                }
                if (!b.f4015I && z4) {
                    systemWindowInsetTop2 = 0;
                }
                z2 = z4;
                z4 = z3;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z2 = false;
            } else {
                z2 = false;
                z4 = false;
            }
            if (z4) {
                b.f4051w.setLayoutParams(marginLayoutParams);
            }
        }
        View view6 = b.f4010D;
        if (view6 != null) {
            view6.setVisibility(z2 ? 0 : 8);
        }
        return ViewCompat.onApplyWindowInsets(view, systemWindowInsetTop != systemWindowInsetTop2 ? windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), systemWindowInsetTop2, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()) : windowInsetsCompat);
    }
}
