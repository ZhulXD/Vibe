package k;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i1 implements InterfaceC0303m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Toolbar f4839a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f4840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f4841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f4842e;
    public Drawable f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f4843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f4844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f4845j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Window.Callback f4846k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f4847l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0300l f4848m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4849n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Drawable f4850o;

    public final void a(int i3) {
        View view;
        Toolbar toolbar = this.f4839a;
        int i4 = this.b ^ i3;
        this.b = i3;
        if (i4 != 0) {
            if ((i4 & 4) != 0) {
                if ((i3 & 4) != 0) {
                    b();
                }
                if ((this.b & 4) != 0) {
                    Drawable drawable = this.f;
                    if (drawable == null) {
                        drawable = this.f4850o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i4 & 3) != 0) {
                c();
            }
            if ((i4 & 8) != 0) {
                if ((i3 & 8) != 0) {
                    toolbar.setTitle(this.f4843h);
                    toolbar.setSubtitle(this.f4844i);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i4 & 16) == 0 || (view = this.f4840c) == null) {
                return;
            }
            if ((i3 & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    public final void b() {
        Toolbar toolbar = this.f4839a;
        if ((this.b & 4) != 0) {
            if (TextUtils.isEmpty(this.f4845j)) {
                toolbar.setNavigationContentDescription(this.f4849n);
            } else {
                toolbar.setNavigationContentDescription(this.f4845j);
            }
        }
    }

    public final void c() {
        Drawable drawable;
        int i3 = this.b;
        if ((i3 & 2) == 0) {
            drawable = null;
        } else if ((i3 & 1) == 0 || (drawable = this.f4842e) == null) {
            drawable = this.f4841d;
        }
        this.f4839a.setLogo(drawable);
    }
}
