package S;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class M extends p000a.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static boolean f1960m = true;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static boolean f1961n = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static boolean f1962o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static boolean f1963p = true;

    @Override // p000a.a
    public void L(View view, int i3) {
        if (Build.VERSION.SDK_INT == 28) {
            super.L(view, i3);
        } else if (f1963p) {
            try {
                L.a(view, i3);
            } catch (NoSuchMethodError unused) {
                f1963p = false;
            }
        }
    }

    public void P(View view, int i3, int i4, int i5, int i6) {
        if (f1962o) {
            try {
                K.a(view, i3, i4, i5, i6);
            } catch (NoSuchMethodError unused) {
                f1962o = false;
            }
        }
    }

    public void Q(View view, Matrix matrix) {
        if (f1960m) {
            try {
                J.b(view, matrix);
            } catch (NoSuchMethodError unused) {
                f1960m = false;
            }
        }
    }

    public void R(View view, Matrix matrix) {
        if (f1961n) {
            try {
                J.c(view, matrix);
            } catch (NoSuchMethodError unused) {
                f1961n = false;
            }
        }
    }
}
