package p024j;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.core.view.GravityCompat;
import com.minhub.gamehub.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f4462a;
    public final p b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public View f4465e;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public B f4466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public y f4467i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PopupWindow.OnDismissListener f4468j;
    public int f = GravityCompat.START;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final z f4469k = new z(this);

    public A(Context context, p pVar, View view, boolean z2, int i3, int i4) {
        this.f4462a = context;
        this.b = pVar;
        this.f4465e = view;
        this.f4463c = z2;
        this.f4464d = i3;
    }

    public final y a() {
        y h2;
        if (this.f4467i == null) {
            Context context = this.f4462a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                h2 = new ViewOnKeyListenerC0271j(context, this.f4465e, this.f4464d, this.f4463c);
            } else {
                h2 = new H(this.f4462a, this.b, this.f4465e, this.f4464d, this.f4463c);
            }
            h2.n(this.b);
            h2.t(this.f4469k);
            h2.p(this.f4465e);
            h2.l(this.f4466h);
            h2.q(this.g);
            h2.r(this.f);
            this.f4467i = h2;
        }
        return this.f4467i;
    }

    public final boolean b() {
        y yVar = this.f4467i;
        return yVar != null && yVar.b();
    }

    public void c() {
        this.f4467i = null;
        PopupWindow.OnDismissListener onDismissListener = this.f4468j;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i3, int i4, boolean z2, boolean z3) {
        y yVarA = a();
        yVarA.u(z3);
        if (z2) {
            if ((GravityCompat.getAbsoluteGravity(this.f, this.f4465e.getLayoutDirection()) & 7) == 5) {
                i3 -= this.f4465e.getWidth();
            }
            yVarA.s(i3);
            yVarA.v(i4);
            int i5 = (int) ((this.f4462a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            yVarA.b = new Rect(i3 - i5, i4 - i5, i3 + i5, i4 + i5);
        }
        yVarA.c();
    }
}
