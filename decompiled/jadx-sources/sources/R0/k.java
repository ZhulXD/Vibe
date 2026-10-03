package R0;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f1926a;
    public final TextPaint b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1928d;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1932j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Layout.Alignment f1929e = Layout.Alignment.ALIGN_NORMAL;
    public int f = IntCompanionObject.MAX_VALUE;
    public float g = 1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1930h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1931i = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextUtils.TruncateAt f1933k = null;

    public k(CharSequence charSequence, TextPaint textPaint, int i3) {
        this.f1926a = charSequence;
        this.b = textPaint;
        this.f1927c = i3;
        this.f1928d = charSequence.length();
    }

    public final StaticLayout a() {
        if (this.f1926a == null) {
            this.f1926a = "";
        }
        int iMax = Math.max(0, this.f1927c);
        CharSequence charSequenceEllipsize = this.f1926a;
        int i3 = this.f;
        TextPaint textPaint = this.b;
        if (i3 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.f1933k);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.f1928d);
        this.f1928d = iMin;
        if (this.f1932j && this.f == 1) {
            this.f1929e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
        builderObtain.setAlignment(this.f1929e);
        builderObtain.setIncludePad(this.f1931i);
        builderObtain.setTextDirection(this.f1932j ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f1933k;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f);
        float f = this.g;
        if (f != 1.0f) {
            builderObtain.setLineSpacing(0.0f, f);
        }
        if (this.f > 1) {
            builderObtain.setHyphenationFrequency(this.f1930h);
        }
        return builderObtain.build();
    }
}
