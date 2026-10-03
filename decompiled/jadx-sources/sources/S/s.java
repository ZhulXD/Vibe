package S;

import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class s extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2003a = -1;
    public boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public F.f f2005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final F f2006e;
    public Runnable f;
    public final /* synthetic */ B g;

    public s(B b) {
        this.g = b;
        F f = new F();
        long[] jArr = new long[20];
        f.b = jArr;
        f.f1958c = new float[20];
        f.f1957a = 0;
        Arrays.fill(jArr, Long.MIN_VALUE);
        this.f2006e = f;
    }

    @Override // S.w, S.t
    public final void e(v vVar) {
        this.f2004c = true;
    }

    public final void g() {
        if (this.f2005d != null) {
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        float f = this.f2003a;
        F f3 = this.f2006e;
        int i3 = f3.f1957a;
        float[] fArr = (float[]) f3.f1958c;
        long[] jArr = (long[]) f3.b;
        char c3 = 20;
        int i4 = (i3 + 1) % 20;
        f3.f1957a = i4;
        jArr[i4] = jCurrentAnimationTimeMillis;
        fArr[i4] = f;
        F.e eVar = new F.e();
        float fSqrt = 0.0f;
        eVar.f951a = 0.0f;
        this.f2005d = new F.f(eVar);
        F.g gVar = new F.g();
        gVar.b = 1.0f;
        int i5 = 0;
        gVar.f963c = false;
        gVar.f962a = Math.sqrt(200.0f);
        gVar.f963c = false;
        F.f fVar = this.f2005d;
        fVar.f960l = gVar;
        fVar.b = this.f2003a;
        fVar.f953c = true;
        ArrayList arrayList = fVar.f959k;
        if (fVar.f955e) {
            throw new UnsupportedOperationException("Error: Update listeners must be added beforethe animation.");
        }
        if (!arrayList.contains(this)) {
            arrayList.add(this);
        }
        F.f fVar2 = this.f2005d;
        int i6 = f3.f1957a;
        long j2 = Long.MIN_VALUE;
        if (i6 != 0 || jArr[i6] != Long.MIN_VALUE) {
            long j3 = jArr[i6];
            long j4 = j3;
            while (true) {
                long j5 = jArr[i6];
                if (j5 == j2) {
                    break;
                }
                float f4 = j3 - j5;
                float fAbs = Math.abs(j5 - j4);
                if (f4 > 100.0f || fAbs > 40.0f) {
                    break;
                }
                if (i6 == 0) {
                    i6 = 20;
                }
                i6--;
                i5++;
                if (i5 >= 20) {
                    break;
                }
                j4 = j5;
                j2 = Long.MIN_VALUE;
            }
            if (i5 >= 2) {
                float f5 = 1000.0f;
                if (i5 == 2) {
                    int i7 = f3.f1957a;
                    int i8 = i7 == 0 ? 19 : i7 - 1;
                    float f6 = jArr[i7] - jArr[i8];
                    if (f6 != 0.0f) {
                        fSqrt = ((fArr[i7] - fArr[i8]) / f6) * 1000.0f;
                    }
                } else {
                    int i9 = f3.f1957a;
                    int i10 = ((i9 - i5) + 21) % 20;
                    int i11 = (i9 + 21) % 20;
                    long j6 = jArr[i10];
                    float f7 = fArr[i10];
                    int i12 = i10 + 1;
                    int i13 = i12 % 20;
                    float f8 = 0.0f;
                    while (i13 != i11) {
                        long j7 = jArr[i13];
                        float f9 = fSqrt;
                        int i14 = i11;
                        float f10 = j7 - j6;
                        if (f10 != f9) {
                            float f11 = fArr[i13];
                            float f12 = (f11 - f7) / f10;
                            float fAbs2 = (Math.abs(f12) * (f12 - ((float) (Math.sqrt(2.0f * Math.abs(f8)) * ((double) Math.signum(f8)))))) + f8;
                            if (i13 == i12) {
                                fAbs2 *= 0.5f;
                            }
                            f8 = fAbs2;
                            f7 = f11;
                            j6 = j7;
                        }
                        i13 = (i13 + 1) % 20;
                        fSqrt = f9;
                        i11 = i14;
                        c3 = c3;
                        f5 = f5;
                    }
                    fSqrt = ((float) (Math.sqrt(Math.abs(f8) * 2.0f) * ((double) Math.signum(f8)))) * f5;
                }
            }
        }
        fVar2.f952a = fSqrt;
        F.f fVar3 = this.f2005d;
        fVar3.f = this.g.f2036y + 1;
        fVar3.g = -1.0f;
        fVar3.f957i = 4.0f;
        r rVar = new r(this);
        ArrayList arrayList2 = fVar3.f958j;
        if (arrayList2.contains(rVar)) {
            return;
        }
        arrayList2.add(rVar);
    }
}
