package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.DrawableCompat;
import com.minhub.gamehub.R;
import p024j.C0263b;

/* JADX INFO: renamed from: k.j, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0296j extends B implements InterfaceC0302m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0300l f4851e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0296j(C0300l c0300l, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f4851e = c0300l;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        p000a.a.J(this, getContentDescription());
        setOnTouchListener(new C0263b(this, this));
    }

    @Override // k.InterfaceC0302m
    public final boolean a() {
        return false;
    }

    @Override // k.InterfaceC0302m
    public final boolean c() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f4851e.n();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i3, int i4, int i5, int i6) {
        boolean frame = super.setFrame(i3, i4, i5, i6);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            DrawableCompat.setHotspotBounds(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
