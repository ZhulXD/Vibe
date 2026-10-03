package P;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* JADX INFO: renamed from: P.h0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class C0149h0 extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public y0 f1687a;
    public final Rect b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1689d;

    public C0149h0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.f1688c = true;
        this.f1689d = false;
    }

    public C0149h0(int i3, int i4) {
        super(i3, i4);
        this.b = new Rect();
        this.f1688c = true;
        this.f1689d = false;
    }

    public C0149h0(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = new Rect();
        this.f1688c = true;
        this.f1689d = false;
    }

    public C0149h0(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = new Rect();
        this.f1688c = true;
        this.f1689d = false;
    }

    public C0149h0(C0149h0 c0149h0) {
        super((ViewGroup.LayoutParams) c0149h0);
        this.b = new Rect();
        this.f1688c = true;
        this.f1689d = false;
    }
}
