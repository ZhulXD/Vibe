package T;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.graphics.PathParser;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final Matrix f2102p = new Matrix();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Path f2103a;
    public final Path b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix f2104c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Paint f2105d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Paint f2106e;
    public PathMeasure f;
    public final j g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2107h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2108i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f2109j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f2110k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2111l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f2112m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Boolean f2113n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p041q.e f2114o;

    public m() {
        this.f2104c = new Matrix();
        this.f2107h = 0.0f;
        this.f2108i = 0.0f;
        this.f2109j = 0.0f;
        this.f2110k = 0.0f;
        this.f2111l = 255;
        this.f2112m = null;
        this.f2113n = null;
        this.f2114o = new p041q.e(0);
        this.g = new j();
        this.f2103a = new Path();
        this.b = new Path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(j jVar, Matrix matrix, Canvas canvas, int i3, int i4) {
        int i5;
        float f;
        int i6;
        Matrix matrix2 = jVar.f2092a;
        ArrayList arrayList = jVar.b;
        matrix2.set(matrix);
        Matrix matrix3 = jVar.f2092a;
        matrix3.preConcat(jVar.f2098j);
        canvas.save();
        char c3 = 0;
        int i7 = 0;
        while (i7 < arrayList.size()) {
            k kVar = (k) arrayList.get(i7);
            if (kVar instanceof j) {
                a((j) kVar, matrix3, canvas, i3, i4);
            } else {
                if (kVar instanceof l) {
                    l lVar = (l) kVar;
                    float f3 = i3 / this.f2109j;
                    float f4 = i4 / this.f2110k;
                    float fMin = Math.min(f3, f4);
                    Matrix matrix4 = this.f2104c;
                    matrix4.set(matrix3);
                    matrix4.postScale(f3, f4);
                    float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                    matrix3.mapVectors(fArr);
                    float fHypot = (float) Math.hypot(fArr[c3], fArr[1]);
                    boolean z2 = c3;
                    i5 = i7;
                    float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                    float f5 = (fArr[z2 ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                    float fMax = Math.max(fHypot, fHypot2);
                    float fAbs = fMax > 0.0f ? Math.abs(f5) / fMax : 0.0f;
                    if (fAbs != 0.0f) {
                        Path path = this.f2103a;
                        path.reset();
                        PathParser.PathDataNode[] pathDataNodeArr = lVar.f2100a;
                        if (pathDataNodeArr != null) {
                            PathParser.PathDataNode.nodesToPath(pathDataNodeArr, path);
                        }
                        Path path2 = this.b;
                        path2.reset();
                        if (lVar instanceof h) {
                            path2.setFillType(lVar.f2101c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            path2.addPath(path, matrix4);
                            canvas.clipPath(path2);
                        } else {
                            i iVar = (i) lVar;
                            float f6 = iVar.f2086i;
                            if (f6 != 0.0f || iVar.f2087j != 1.0f) {
                                float f7 = iVar.f2088k;
                                float f8 = (f6 + f7) % 1.0f;
                                float f9 = (iVar.f2087j + f7) % 1.0f;
                                if (this.f == null) {
                                    this.f = new PathMeasure();
                                }
                                this.f.setPath(path, z2);
                                float length = this.f.getLength();
                                float f10 = f8 * length;
                                float f11 = f9 * length;
                                path.reset();
                                if (f10 > f11) {
                                    this.f.getSegment(f10, length, path, true);
                                    f = 0.0f;
                                    this.f.getSegment(0.0f, f11, path, true);
                                } else {
                                    f = 0.0f;
                                    this.f.getSegment(f10, f11, path, true);
                                }
                                path.rLineTo(f, f);
                            }
                            path2.addPath(path, matrix4);
                            float f12 = 255.0f;
                            if (iVar.f.willDraw()) {
                                ComplexColorCompat complexColorCompat = iVar.f;
                                if (this.f2106e == null) {
                                    i6 = ViewCompat.MEASURED_SIZE_MASK;
                                    Paint paint = new Paint(1);
                                    this.f2106e = paint;
                                    paint.setStyle(Paint.Style.FILL);
                                } else {
                                    i6 = ViewCompat.MEASURED_SIZE_MASK;
                                }
                                Paint paint2 = this.f2106e;
                                if (complexColorCompat.isGradient()) {
                                    Shader shader = complexColorCompat.getShader();
                                    shader.setLocalMatrix(matrix4);
                                    paint2.setShader(shader);
                                    paint2.setAlpha(Math.round(iVar.f2085h * 255.0f));
                                } else {
                                    paint2.setShader(null);
                                    paint2.setAlpha(255);
                                    int color = complexColorCompat.getColor();
                                    float f13 = iVar.f2085h;
                                    PorterDuff.Mode mode = p.f2125k;
                                    paint2.setColor((color & i6) | (((int) (Color.alpha(color) * f13)) << 24));
                                }
                                paint2.setColorFilter(null);
                                path2.setFillType(iVar.f2101c == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                canvas.drawPath(path2, paint2);
                            } else {
                                f12 = 255.0f;
                                i6 = ViewCompat.MEASURED_SIZE_MASK;
                            }
                            if (iVar.f2083d.willDraw()) {
                                ComplexColorCompat complexColorCompat2 = iVar.f2083d;
                                if (this.f2105d == null) {
                                    Paint paint3 = new Paint(1);
                                    this.f2105d = paint3;
                                    paint3.setStyle(Paint.Style.STROKE);
                                }
                                Paint paint4 = this.f2105d;
                                Paint.Join join = iVar.f2090m;
                                if (join != null) {
                                    paint4.setStrokeJoin(join);
                                }
                                Paint.Cap cap = iVar.f2089l;
                                if (cap != null) {
                                    paint4.setStrokeCap(cap);
                                }
                                paint4.setStrokeMiter(iVar.f2091n);
                                if (complexColorCompat2.isGradient()) {
                                    Shader shader2 = complexColorCompat2.getShader();
                                    shader2.setLocalMatrix(matrix4);
                                    paint4.setShader(shader2);
                                    paint4.setAlpha(Math.round(iVar.g * f12));
                                } else {
                                    paint4.setShader(null);
                                    paint4.setAlpha(255);
                                    int color2 = complexColorCompat2.getColor();
                                    float f14 = iVar.g;
                                    PorterDuff.Mode mode2 = p.f2125k;
                                    paint4.setColor((color2 & i6) | (((int) (Color.alpha(color2) * f14)) << 24));
                                }
                                paint4.setColorFilter(null);
                                paint4.setStrokeWidth(iVar.f2084e * fMin * fAbs);
                                canvas.drawPath(path2, paint4);
                            }
                        }
                    }
                }
                i7 = i5 + 1;
                c3 = 0;
            }
            i5 = i7;
            i7 = i5 + 1;
            c3 = 0;
        }
        canvas.restore();
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f2111l;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i3) {
        this.f2111l = i3;
    }

    public m(m mVar) {
        this.f2104c = new Matrix();
        this.f2107h = 0.0f;
        this.f2108i = 0.0f;
        this.f2109j = 0.0f;
        this.f2110k = 0.0f;
        this.f2111l = 255;
        this.f2112m = null;
        this.f2113n = null;
        p041q.e eVar = new p041q.e(0);
        this.f2114o = eVar;
        this.g = new j(mVar.g, eVar);
        this.f2103a = new Path(mVar.f2103a);
        this.b = new Path(mVar.b);
        this.f2107h = mVar.f2107h;
        this.f2108i = mVar.f2108i;
        this.f2109j = mVar.f2109j;
        this.f2110k = mVar.f2110k;
        this.f2111l = mVar.f2111l;
        this.f2112m = mVar.f2112m;
        String str = mVar.f2112m;
        if (str != null) {
            eVar.put(str, this);
        }
        this.f2113n = mVar.f2113n;
    }
}
