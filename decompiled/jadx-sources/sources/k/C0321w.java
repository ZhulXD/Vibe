package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;

/* JADX INFO: renamed from: k.w, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0321w {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static C0321w f4934c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public P0 f4935a;

    public static synchronized C0321w a() {
        try {
            if (f4934c == null) {
                d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f4934c;
    }

    public static synchronized PorterDuffColorFilter c(int i3, PorterDuff.Mode mode) {
        return P0.e(i3, mode);
    }

    public static synchronized void d() {
        if (f4934c == null) {
            C0321w c0321w = new C0321w();
            f4934c = c0321w;
            c0321w.f4935a = P0.b();
            P0 p0 = f4934c.f4935a;
            C0319v c0319v = new C0319v();
            synchronized (p0) {
                p0.f4732e = c0319v;
            }
        }
    }

    public static void e(Drawable drawable, X0 x2, int[] iArr) {
        PorterDuff.Mode mode = P0.f;
        int[] state = drawable.getState();
        if (drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z2 = x2.f4795d;
        if (!z2 && !x2.f4794c) {
            drawable.clearColorFilter();
            return;
        }
        PorterDuffColorFilter porterDuffColorFilterE = null;
        ColorStateList colorStateList = z2 ? x2.f4793a : null;
        PorterDuff.Mode mode2 = x2.f4794c ? x2.b : P0.f;
        if (colorStateList != null && mode2 != null) {
            porterDuffColorFilterE = P0.e(colorStateList.getColorForState(iArr, 0), mode2);
        }
        drawable.setColorFilter(porterDuffColorFilterE);
    }

    public final synchronized Drawable b(Context context, int i3) {
        return this.f4935a.c(context, i3);
    }
}
