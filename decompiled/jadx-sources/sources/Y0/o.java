package Y0;

import A1.C0009b;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w[] f2439a = new w[4];
    public final Matrix[] b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Matrix[] f2440c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PointF f2441d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Path f2442e = new Path();
    public final Path f = new Path();
    public final w g = new w();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f2443h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f2444i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Path f2445j = new Path();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Path f2446k = new Path();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f2447l = true;

    public o() {
        for (int i3 = 0; i3 < 4; i3++) {
            this.f2439a[i3] = new w();
            this.b[i3] = new Matrix();
            this.f2440c[i3] = new Matrix();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(m mVar, float f, RectF rectF, C0009b c0009b, Path path) {
        Matrix[] matrixArr;
        float[] fArr;
        int i3;
        w[] wVarArr;
        char c3;
        Matrix[] matrixArr2;
        e eVar;
        char c4;
        c cVar;
        p000a.a aVar;
        path.rewind();
        Path path2 = this.f2442e;
        path2.rewind();
        Path path3 = this.f;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i4 = 0;
        while (true) {
            matrixArr = this.f2440c;
            fArr = this.f2443h;
            wVarArr = this.f2439a;
            c3 = 0;
            matrixArr2 = this.b;
            if (i4 >= 4) {
                break;
            }
            if (i4 == 1) {
                cVar = mVar.g;
            } else if (i4 != 2) {
                cVar = i4 != 3 ? mVar.f : mVar.f2432e;
            } else {
                cVar = mVar.f2433h;
            }
            if (i4 == 1) {
                aVar = mVar.f2430c;
            } else if (i4 != 2) {
                aVar = i4 != 3 ? mVar.b : mVar.f2429a;
            } else {
                aVar = mVar.f2431d;
            }
            w wVar = wVarArr[i4];
            aVar.getClass();
            aVar.i(wVar, f, cVar.a(rectF));
            int i5 = i4 + 1;
            float f3 = (i5 % 4) * 90;
            matrixArr2[i4].reset();
            PointF pointF = this.f2441d;
            if (i4 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i4 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i4 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i4].setTranslate(pointF.x, pointF.y);
            matrixArr2[i4].preRotate(f3);
            w wVar2 = wVarArr[i4];
            fArr[0] = wVar2.f2462c;
            fArr[1] = wVar2.f2463d;
            matrixArr2[i4].mapPoints(fArr);
            matrixArr[i4].reset();
            matrixArr[i4].setTranslate(fArr[0], fArr[1]);
            matrixArr[i4].preRotate(f3);
            i4 = i5;
        }
        char c5 = 1;
        int i6 = 0;
        for (i3 = 4; i6 < i3; i3 = 4) {
            w wVar3 = wVarArr[i6];
            fArr[c3] = wVar3.f2461a;
            fArr[c5] = wVar3.b;
            matrixArr2[i6].mapPoints(fArr);
            if (i6 == 0) {
                path.moveTo(fArr[c3], fArr[c5]);
            } else {
                path.lineTo(fArr[c3], fArr[c5]);
            }
            wVarArr[i6].b(matrixArr2[i6], path);
            if (c0009b != null) {
                w wVar4 = wVarArr[i6];
                Matrix matrix = matrixArr2[i6];
                h hVar = (h) c0009b.b;
                BitSet bitSet = hVar.f2400e;
                wVar4.getClass();
                bitSet.set(i6, (boolean) c3);
                v[] vVarArr = hVar.f2398c;
                wVar4.a(wVar4.f);
                vVarArr[i6] = new p(new ArrayList(wVar4.f2465h), new Matrix(matrix));
            }
            int i7 = i6 + 1;
            int i8 = i7 % 4;
            w wVar5 = wVarArr[i6];
            fArr[0] = wVar5.f2462c;
            fArr[1] = wVar5.f2463d;
            matrixArr2[i6].mapPoints(fArr);
            w wVar6 = wVarArr[i8];
            float f4 = wVar6.f2461a;
            float[] fArr2 = this.f2444i;
            fArr2[0] = f4;
            fArr2[1] = wVar6.b;
            matrixArr2[i8].mapPoints(fArr2);
            w[] wVarArr2 = wVarArr;
            float fMax = Math.max(((float) Math.hypot(fArr[0] - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
            w wVar7 = wVarArr2[i6];
            fArr[0] = wVar7.f2462c;
            fArr[1] = wVar7.f2463d;
            matrixArr2[i6].mapPoints(fArr);
            float fAbs = (i6 == 1 || i6 == 3) ? Math.abs(rectF.centerX() - fArr[0]) : Math.abs(rectF.centerY() - fArr[1]);
            w wVar8 = this.g;
            wVar8.d(0.0f, 0.0f, 270.0f, 0.0f);
            if (i6 == 1) {
                eVar = mVar.f2436k;
            } else if (i6 != 2) {
                eVar = i6 != 3 ? mVar.f2435j : mVar.f2434i;
            } else {
                eVar = mVar.f2437l;
            }
            eVar.j(fMax, fAbs, f, wVar8);
            Path path4 = this.f2445j;
            path4.reset();
            wVar8.b(matrixArr[i6], path4);
            if (this.f2447l && (eVar.i() || b(path4, i6) || b(path4, i8))) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr[0] = wVar8.f2461a;
                c5 = 1;
                fArr[1] = wVar8.b;
                matrixArr[i6].mapPoints(fArr);
                path2.moveTo(fArr[0], fArr[1]);
                wVar8.b(matrixArr[i6], path2);
            } else {
                c5 = 1;
                wVar8.b(matrixArr[i6], path);
            }
            if (c0009b != null) {
                Matrix matrix2 = matrixArr[i6];
                h hVar2 = (h) c0009b.b;
                c4 = 0;
                hVar2.f2400e.set(i6 + 4, false);
                v[] vVarArr2 = hVar2.f2399d;
                wVar8.a(wVar8.f);
                vVarArr2[i6] = new p(new ArrayList(wVar8.f2465h), new Matrix(matrix2));
            } else {
                c4 = 0;
            }
            c3 = c4;
            wVarArr = wVarArr2;
            i6 = i7;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public final boolean b(Path path, int i3) {
        Path path2 = this.f2446k;
        path2.reset();
        this.f2439a[i3].b(this.b[i3], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }
}
