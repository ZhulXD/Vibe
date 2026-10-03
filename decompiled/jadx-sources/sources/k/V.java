package k;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class V extends ResourcesCompat.FontCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4785a;
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WeakReference f4786c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Z f4787d;

    public V(Z z2, int i3, int i4, WeakReference weakReference) {
        this.f4787d = z2;
        this.f4785a = i3;
        this.b = i4;
        this.f4786c = weakReference;
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    /* JADX INFO: renamed from: onFontRetrieved */
    public final void lambda$callbackSuccessAsync$0(Typeface typeface) {
        int i3;
        if (Build.VERSION.SDK_INT >= 28 && (i3 = this.f4785a) != -1) {
            typeface = Y.a(typeface, i3, (this.b & 2) != 0);
        }
        Z z2 = this.f4787d;
        if (z2.f4805m) {
            z2.f4804l = typeface;
            TextView textView = (TextView) this.f4786c.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new H0.b(textView, typeface, z2.f4802j));
                } else {
                    textView.setTypeface(typeface, z2.f4802j);
                }
            }
        }
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    /* JADX INFO: renamed from: onFontRetrievalFailed */
    public final void lambda$callbackFailAsync$1(int i3) {
    }
}
