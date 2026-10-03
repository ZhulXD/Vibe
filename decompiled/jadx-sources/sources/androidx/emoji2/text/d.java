package androidx.emoji2.text;

import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements g {
    public static final ThreadLocal b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f2871a;

    public d() {
        TextPaint textPaint = new TextPaint();
        this.f2871a = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
