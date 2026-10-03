package T;

import android.graphics.Paint;
import androidx.core.content.res.ComplexColorCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i extends l {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ComplexColorCompat f2083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2084e;
    public ComplexColorCompat f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2085h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2086i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2087j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2088k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Paint.Cap f2089l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Paint.Join f2090m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f2091n;

    @Override // T.k
    public final boolean a() {
        return this.f.isStateful() || this.f2083d.isStateful();
    }

    @Override // T.k
    public final boolean b(int[] iArr) {
        return this.f2083d.onStateChanged(iArr) | this.f.onStateChanged(iArr);
    }

    public float getFillAlpha() {
        return this.f2085h;
    }

    public int getFillColor() {
        return this.f.getColor();
    }

    public float getStrokeAlpha() {
        return this.g;
    }

    public int getStrokeColor() {
        return this.f2083d.getColor();
    }

    public float getStrokeWidth() {
        return this.f2084e;
    }

    public float getTrimPathEnd() {
        return this.f2087j;
    }

    public float getTrimPathOffset() {
        return this.f2088k;
    }

    public float getTrimPathStart() {
        return this.f2086i;
    }

    public void setFillAlpha(float f) {
        this.f2085h = f;
    }

    public void setFillColor(int i3) {
        this.f.setColor(i3);
    }

    public void setStrokeAlpha(float f) {
        this.g = f;
    }

    public void setStrokeColor(int i3) {
        this.f2083d.setColor(i3);
    }

    public void setStrokeWidth(float f) {
        this.f2084e = f;
    }

    public void setTrimPathEnd(float f) {
        this.f2087j = f;
    }

    public void setTrimPathOffset(float f) {
        this.f2088k = f;
    }

    public void setTrimPathStart(float f) {
        this.f2086i = f;
    }
}
