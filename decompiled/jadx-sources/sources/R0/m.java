package R0;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1936d;
    public final WeakReference f;
    public V0.d g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f1934a = new TextPaint(1);
    public final M0.b b = new M0.b(1, this);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1937e = true;

    public m(l lVar) {
        this.f = new WeakReference(null);
        this.f = new WeakReference(lVar);
    }

    public final float a(String str) {
        if (!this.f1937e) {
            return this.f1935c;
        }
        b(str);
        return this.f1935c;
    }

    public final void b(String str) {
        TextPaint textPaint = this.f1934a;
        this.f1935c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.f1936d = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.f1937e = false;
    }

    public final void c(V0.d dVar, Context context) {
        if (this.g != dVar) {
            this.g = dVar;
            if (dVar != null) {
                TextPaint textPaint = this.f1934a;
                M0.b bVar = this.b;
                dVar.e(context, textPaint, bVar);
                l lVar = (l) this.f.get();
                if (lVar != null) {
                    textPaint.drawableState = lVar.getState();
                }
                dVar.d(context, textPaint, bVar);
                this.f1937e = true;
            }
            l lVar2 = (l) this.f.get();
            if (lVar2 != null) {
                lVar2.a();
                lVar2.onStateChange(lVar2.getState());
            }
        }
    }
}
