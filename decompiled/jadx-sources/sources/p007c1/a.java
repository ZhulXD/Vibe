package p007c1;

import Y0.e;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3144d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i3) {
        super(21);
        this.f3144d = i3;
    }

    @Override // Y0.e
    public final void r(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float fSin;
        float fCos;
        switch (this.f3144d) {
            case 0:
                RectF rectFG = e.g(tabLayout, view);
                RectF rectFG2 = e.g(tabLayout, view2);
                if (rectFG.left < rectFG2.left) {
                    double d3 = (((double) f) * 3.141592653589793d) / 2.0d;
                    fSin = (float) (1.0d - Math.cos(d3));
                    fCos = (float) Math.sin(d3);
                } else {
                    double d4 = (((double) f) * 3.141592653589793d) / 2.0d;
                    fSin = (float) Math.sin(d4);
                    fCos = (float) (1.0d - Math.cos(d4));
                }
                drawable.setBounds(B0.a.c((int) rectFG.left, fSin, (int) rectFG2.left), drawable.getBounds().top, B0.a.c((int) rectFG.right, fCos, (int) rectFG2.right), drawable.getBounds().bottom);
                break;
            default:
                if (f >= 0.5f) {
                    view = view2;
                }
                RectF rectFG3 = e.g(tabLayout, view);
                float fB = f < 0.5f ? B0.a.b(1.0f, 0.0f, 0.0f, 0.5f, f) : B0.a.b(0.0f, 1.0f, 0.5f, 1.0f, f);
                drawable.setBounds((int) rectFG3.left, drawable.getBounds().top, (int) rectFG3.right, drawable.getBounds().bottom);
                drawable.setAlpha((int) (fB * 255.0f));
                break;
        }
    }
}
