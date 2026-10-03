package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import java.util.stream.IntStream;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class y implements Spannable {
    public boolean b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Spannable f2904c;

    public y(Spannable spannable) {
        this.f2904c = spannable;
    }

    public final void a() {
        Spannable spannable = this.f2904c;
        if (!this.b) {
            if ((Build.VERSION.SDK_INT < 28 ? new Y0.e(19) : new x(19)).n(spannable)) {
                this.f2904c = new SpannableString(spannable);
            }
        }
        this.b = true;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i3) {
        return this.f2904c.charAt(i3);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return this.f2904c.chars();
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return this.f2904c.codePoints();
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f2904c.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f2904c.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f2904c.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i3, int i4, Class cls) {
        return this.f2904c.getSpans(i3, i4, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f2904c.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i3, int i4, Class cls) {
        return this.f2904c.nextSpanTransition(i3, i4, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        a();
        this.f2904c.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i3, int i4, int i5) {
        a();
        this.f2904c.setSpan(obj, i3, i4, i5);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i3, int i4) {
        return this.f2904c.subSequence(i3, i4);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f2904c.toString();
    }
}
