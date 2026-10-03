package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import p053v.c;
import p053v.d;
import p053v.e;
import p053v.f;
import p053v.g;
import p053v.h;
import p056w.b;
import p059x.q;
import p059x.r;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class Flow extends r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g f2796j;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new int[32];
        this.g = new HashMap();
        this.f5835d = context;
        super.e(attributeSet);
        g gVar = new g();
        gVar.f5538f0 = 0;
        gVar.f5539g0 = 0;
        gVar.f5540h0 = 0;
        gVar.f5541i0 = 0;
        gVar.f5542j0 = 0;
        gVar.f5543k0 = 0;
        gVar.f5544l0 = false;
        gVar.f5545m0 = 0;
        gVar.n0 = 0;
        gVar.f5546o0 = new b();
        gVar.p0 = null;
        gVar.f5547q0 = -1;
        gVar.f5548r0 = -1;
        gVar.s0 = -1;
        gVar.f5549t0 = -1;
        gVar.f5550u0 = -1;
        gVar.f5551v0 = -1;
        gVar.f5552w0 = 0.5f;
        gVar.f5553x0 = 0.5f;
        gVar.f5554y0 = 0.5f;
        gVar.f5555z0 = 0.5f;
        gVar.f5524A0 = 0.5f;
        gVar.f5525B0 = 0.5f;
        gVar.f5526C0 = 0;
        gVar.f5527D0 = 0;
        gVar.f5528E0 = 2;
        gVar.f5529F0 = 2;
        gVar.f5530G0 = 0;
        gVar.f5531H0 = -1;
        gVar.f5532I0 = 0;
        gVar.f5533J0 = new ArrayList();
        gVar.f5534K0 = null;
        gVar.f5535L0 = null;
        gVar.f5536M0 = null;
        gVar.f5537O0 = 0;
        this.f2796j = gVar;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 0) {
                    this.f2796j.f5532I0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    g gVar2 = this.f2796j;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    gVar2.f5538f0 = dimensionPixelSize;
                    gVar2.f5539g0 = dimensionPixelSize;
                    gVar2.f5540h0 = dimensionPixelSize;
                    gVar2.f5541i0 = dimensionPixelSize;
                } else if (index == 11) {
                    g gVar3 = this.f2796j;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    gVar3.f5540h0 = dimensionPixelSize2;
                    gVar3.f5542j0 = dimensionPixelSize2;
                    gVar3.f5543k0 = dimensionPixelSize2;
                } else if (index == 12) {
                    this.f2796j.f5541i0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f2796j.f5542j0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f2796j.f5538f0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f2796j.f5543k0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f2796j.f5539g0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 37) {
                    this.f2796j.f5530G0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 27) {
                    this.f2796j.f5547q0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 36) {
                    this.f2796j.f5548r0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 21) {
                    this.f2796j.s0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 29) {
                    this.f2796j.f5550u0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 23) {
                    this.f2796j.f5549t0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 31) {
                    this.f2796j.f5551v0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 25) {
                    this.f2796j.f5552w0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 20) {
                    this.f2796j.f5554y0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 28) {
                    this.f2796j.f5524A0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 22) {
                    this.f2796j.f5555z0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 30) {
                    this.f2796j.f5525B0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 34) {
                    this.f2796j.f5553x0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 24) {
                    this.f2796j.f5528E0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 33) {
                    this.f2796j.f5529F0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 26) {
                    this.f2796j.f5526C0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 35) {
                    this.f2796j.f5527D0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 32) {
                    this.f2796j.f5531H0 = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
            }
        }
        this.f5836e = this.f2796j;
        g();
    }

    @Override // p059x.c
    public final void f(d dVar, boolean z2) {
        g gVar = this.f2796j;
        int i3 = gVar.f5540h0;
        if (i3 > 0 || gVar.f5541i0 > 0) {
            if (z2) {
                gVar.f5542j0 = gVar.f5541i0;
                gVar.f5543k0 = i3;
            } else {
                gVar.f5542j0 = i3;
                gVar.f5543k0 = gVar.f5541i0;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0146  */
    /* JADX WARN: Code duplicated, block: B:104:0x014a  */
    /* JADX WARN: Code duplicated, block: B:106:0x014f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0153  */
    /* JADX WARN: Code duplicated, block: B:112:0x015b  */
    /* JADX WARN: Code duplicated, block: B:115:0x0163  */
    /* JADX WARN: Code duplicated, block: B:118:0x016b  */
    /* JADX WARN: Code duplicated, block: B:121:0x0171  */
    /* JADX WARN: Code duplicated, block: B:130:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x0188  */
    /* JADX WARN: Code duplicated, block: B:132:0x0196  */
    /* JADX WARN: Code duplicated, block: B:137:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:151:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:164:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:169:0x020e  */
    /* JADX WARN: Code duplicated, block: B:174:0x022c  */
    /* JADX WARN: Code duplicated, block: B:176:0x0232 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:177:0x0234  */
    /* JADX WARN: Code duplicated, block: B:182:0x0244  */
    /* JADX WARN: Code duplicated, block: B:184:0x024c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:185:0x024e  */
    /* JADX WARN: Code duplicated, block: B:190:0x0262  */
    /* JADX WARN: Code duplicated, block: B:194:0x026b  */
    /* JADX WARN: Code duplicated, block: B:195:0x026d  */
    /* JADX WARN: Code duplicated, block: B:200:0x0296  */
    /* JADX WARN: Code duplicated, block: B:202:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:203:0x02af  */
    /* JADX WARN: Code duplicated, block: B:205:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:207:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:209:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:226:0x0319  */
    /* JADX WARN: Code duplicated, block: B:228:0x0335  */
    /* JADX WARN: Code duplicated, block: B:230:0x033a  */
    /* JADX WARN: Code duplicated, block: B:232:0x0349  */
    /* JADX WARN: Code duplicated, block: B:234:0x034f  */
    /* JADX WARN: Code duplicated, block: B:236:0x035e  */
    /* JADX WARN: Code duplicated, block: B:253:0x0381  */
    /* JADX WARN: Code duplicated, block: B:255:0x0399  */
    /* JADX WARN: Code duplicated, block: B:257:0x039d  */
    /* JADX WARN: Code duplicated, block: B:266:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:271:0x03dc  */
    /* JADX WARN: Code duplicated, block: B:273:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:274:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:278:0x040f  */
    /* JADX WARN: Code duplicated, block: B:280:0x0417  */
    /* JADX WARN: Code duplicated, block: B:282:0x041b  */
    /* JADX WARN: Code duplicated, block: B:283:0x042c  */
    /* JADX WARN: Code duplicated, block: B:286:0x044e  */
    /* JADX WARN: Code duplicated, block: B:288:0x0457  */
    /* JADX WARN: Code duplicated, block: B:290:0x045d  */
    /* JADX WARN: Code duplicated, block: B:291:0x046e  */
    /* JADX WARN: Code duplicated, block: B:294:0x048e  */
    /* JADX WARN: Code duplicated, block: B:298:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:301:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:303:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:304:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:307:0x0515 A[LOOP:14: B:306:0x0513->B:307:0x0515, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:312:0x0540 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:313:0x0542  */
    /* JADX WARN: Code duplicated, block: B:314:0x0547 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:315:0x0549  */
    /* JADX WARN: Code duplicated, block: B:316:0x054b  */
    /* JADX WARN: Code duplicated, block: B:319:0x054f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:320:0x0551  */
    /* JADX WARN: Code duplicated, block: B:321:0x0556 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:322:0x0558  */
    /* JADX WARN: Code duplicated, block: B:323:0x055a  */
    /* JADX WARN: Code duplicated, block: B:326:0x0569  */
    /* JADX WARN: Code duplicated, block: B:327:0x056c  */
    /* JADX WARN: Code duplicated, block: B:338:0x00dd A[EDGE_INSN: B:338:0x00dd->B:64:0x00dd BREAK  A[LOOP:1: B:58:0x00c6->B:63:0x00d8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:340:0x00d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:343:0x00f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:344:0x0143 A[EDGE_INSN: B:344:0x0143->B:100:0x0143 BREAK  A[LOOP:3: B:88:0x0127->B:99:0x0140], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:347:0x0140 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:359:0x023d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:362:0x0257 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:363:0x0169 A[EDGE_INSN: B:363:0x0169->B:117:0x0169 BREAK  A[LOOP:9: B:105:0x014d->B:116:0x0166], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x0166 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00be  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00df  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:77:0x0106  */
    /* JADX WARN: Code duplicated, block: B:79:0x0109  */
    /* JADX WARN: Code duplicated, block: B:81:0x010c  */
    /* JADX WARN: Code duplicated, block: B:82:0x0116 A[PHI: r30 r31 r32 r33 r35
      0x0116: PHI (r30v2 int) = (r30v0 int), (r30v3 int), (r30v4 int), (r30v6 int) binds: [B:299:0x04b6, B:297:0x049d, B:202:0x02a3, B:81:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0116: PHI (r31v2 int) = (r31v0 int), (r31v3 int), (r31v4 int), (r31v6 int) binds: [B:299:0x04b6, B:297:0x049d, B:202:0x02a3, B:81:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0116: PHI (r32v2 int) = (r32v0 int), (r32v3 int), (r32v4 int), (r32v6 int) binds: [B:299:0x04b6, B:297:0x049d, B:202:0x02a3, B:81:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0116: PHI (r33v2 int[]) = (r33v0 int[]), (r33v3 int[]), (r33v4 int[]), (r33v6 int[]) binds: [B:299:0x04b6, B:297:0x049d, B:202:0x02a3, B:81:0x010c] A[DONT_GENERATE, DONT_INLINE]
      0x0116: PHI (r35v2 int) = (r35v0 int), (r35v3 int), (r35v4 int), (r35v6 int) binds: [B:299:0x04b6, B:297:0x049d, B:202:0x02a3, B:81:0x010c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x011c  */
    /* JADX WARN: Code duplicated, block: B:85:0x0120  */
    /* JADX WARN: Code duplicated, block: B:87:0x0124  */
    /* JADX WARN: Code duplicated, block: B:89:0x0129  */
    /* JADX WARN: Code duplicated, block: B:91:0x012d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0135  */
    /* JADX WARN: Code duplicated, block: B:98:0x013d  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p059x.r
    public final void h(g gVar, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr;
        int i9;
        int i10;
        d[] dVarArr;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        d[] dVarArr2;
        int i16;
        int i17;
        int i18;
        int[] iArr2;
        int i19;
        int i20;
        int i21;
        int i22;
        f fVar;
        int i23;
        char c3;
        char c4;
        int i24;
        int i25;
        boolean z2;
        int i26;
        c cVar;
        c cVar2;
        f fVar2;
        int i27;
        int i28;
        f fVar3;
        int i29;
        int i30;
        int i31;
        int i32;
        d dVar;
        int iC;
        boolean z3;
        int i33;
        int size;
        int[] iArr3;
        int i34;
        boolean z4;
        c cVar3;
        int i35;
        int i36;
        int i37;
        int i38;
        c cVar4;
        c cVar5;
        c cVar6;
        int i39;
        int iMax;
        int i40;
        f fVar4;
        int i41;
        int iD;
        int iC2;
        int i42;
        f fVar5;
        f fVar6;
        int i43;
        int i44;
        d dVar2;
        int iD2;
        int i45;
        boolean z5;
        d dVar3;
        int i46;
        int i47;
        int i48;
        int i49;
        int iCeil;
        int iCeil2;
        int i50;
        int i51;
        d dVar4;
        int iC3;
        boolean z6;
        d[] dVarArr3;
        d[] dVarArr4;
        int i52;
        int i53;
        int i54;
        int iD3;
        int i55;
        int iC4;
        d dVar5;
        d dVar6;
        int i56;
        int i57;
        int i58;
        int i59;
        d dVar7;
        d[] dVarArr5;
        d dVar8;
        d dVar9;
        int i60;
        int i61;
        int i62;
        d dVar10;
        int iD4;
        int i63;
        int i64;
        d dVar11;
        int i65;
        int mode = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size3 = View.MeasureSpec.getSize(i4);
        int i66 = 0;
        if (gVar == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        ArrayList arrayList = gVar.f5533J0;
        if (gVar.f5562e0 > 0) {
            b bVar = gVar.f5546o0;
            d dVar12 = gVar.f5454I;
            p059x.f fVar7 = dVar12 != null ? ((e) dVar12).f5499g0 : null;
            if (fVar7 == null) {
                gVar.f5545m0 = 0;
                gVar.n0 = 0;
                gVar.f5544l0 = false;
            } else {
                int i67 = 0;
                while (i67 < gVar.f5562e0) {
                    d dVar13 = gVar.f5561d0[i67];
                    if (dVar13 != null && !(dVar13 instanceof h)) {
                        int iH = dVar13.h(i66);
                        int iH2 = dVar13.h(1);
                        if (iH != 3 || dVar13.f5479j == 1 || iH2 != 3 || dVar13.f5480k == 1) {
                            if (iH == 3) {
                                iH = 2;
                            }
                            if (iH2 == 3) {
                                iH2 = 2;
                            }
                            bVar.f5576a = iH;
                            bVar.b = iH2;
                            bVar.f5577c = dVar13.l();
                            bVar.f5578d = dVar13.i();
                            fVar7.a(dVar13, bVar);
                            dVar13.y(bVar.f5579e);
                            dVar13.v(bVar.f);
                            int i68 = bVar.g;
                            dVar13.f5460P = i68;
                            dVar13.f5492w = i68 > 0;
                        }
                    }
                    i67++;
                    i66 = 0;
                }
                i5 = gVar.f5542j0;
                i6 = gVar.f5543k0;
                i7 = gVar.f5538f0;
                i8 = gVar.f5539g0;
                iArr = new int[2];
                i9 = (size2 - i5) - i6;
                i10 = gVar.f5532I0;
                if (i10 == 1) {
                    i9 = (size3 - i7) - i8;
                }
                if (i10 == 0) {
                    if (gVar.f5547q0 == -1) {
                        i65 = 0;
                        gVar.f5547q0 = 0;
                    } else {
                        i65 = 0;
                    }
                    if (gVar.f5548r0 == -1) {
                        gVar.f5548r0 = i65;
                    }
                } else {
                    if (gVar.f5547q0 == -1) {
                        gVar.f5547q0 = 0;
                    }
                    if (gVar.f5548r0 == -1) {
                        gVar.f5548r0 = 0;
                    }
                }
                dVarArr = gVar.f5561d0;
                i11 = 0;
                i12 = 0;
                while (true) {
                    i13 = gVar.f5562e0;
                    i14 = i7;
                    if (i11 < i13) {
                        break;
                    }
                    if (gVar.f5561d0[i11].f5466V == 8) {
                        i12++;
                    }
                    i11++;
                    i7 = i14;
                }
                if (i12 > 0) {
                    dVarArr = new d[i13 - i12];
                    i63 = 0;
                    i64 = 0;
                    while (i63 < gVar.f5562e0) {
                        dVar11 = gVar.f5561d0[i63];
                        int i69 = i63;
                        if (dVar11.f5466V != 8) {
                            dVarArr[i64] = dVar11;
                            i64++;
                        }
                        i63 = i69 + 1;
                    }
                    i15 = i64;
                } else {
                    i15 = i13;
                }
                dVarArr2 = dVarArr;
                gVar.N0 = dVarArr2;
                gVar.f5537O0 = i15;
                i16 = gVar.f5530G0;
                if (i16 != 0) {
                    if (i16 != 1) {
                        i26 = gVar.f5532I0;
                        cVar = gVar.f5446A;
                        cVar2 = gVar.f5495z;
                        if (i15 == 0) {
                            iArr2 = iArr;
                            i19 = i5;
                            i20 = i6;
                            i21 = i14;
                            i17 = i8;
                        } else {
                            arrayList.clear();
                            i27 = i9;
                            i19 = i5;
                            i20 = i6;
                            i21 = i14;
                            i17 = i8;
                            iArr2 = iArr;
                            i28 = 3;
                            fVar2 = new f(gVar, i26, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i27);
                            arrayList.add(fVar2);
                            if (i26 == 0) {
                                fVar6 = fVar2;
                                i43 = 0;
                                i32 = 0;
                                i44 = 0;
                                while (i43 < i15) {
                                    dVar2 = dVarArr2[i43];
                                    iD2 = gVar.D(dVar2, i27);
                                    i45 = i43;
                                    if (dVar2.f5474c0[0] == i28) {
                                        i32++;
                                    }
                                    int i70 = i32;
                                    z5 = (i44 != i27 || (gVar.f5526C0 + i44) + iD2 > i27) && fVar6.b != null;
                                    if (!z5 && i45 > 0 && (i47 = gVar.f5531H0) > 0 && i45 % i47 == 0) {
                                        z5 = true;
                                    }
                                    if (z5) {
                                        i46 = i45;
                                        dVar3 = dVar2;
                                        f fVar8 = new f(gVar, i26, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i27);
                                        fVar8.f5519n = i46;
                                        arrayList.add(fVar8);
                                        fVar6 = fVar8;
                                    } else {
                                        dVar3 = dVar2;
                                        i46 = i45;
                                        if (i46 > 0) {
                                            i44 = gVar.f5526C0 + iD2 + i44;
                                        }
                                        fVar6.a(dVar3);
                                        i43 = i46 + 1;
                                        i32 = i70;
                                        i28 = 3;
                                    }
                                    i44 = iD2;
                                    fVar6.a(dVar3);
                                    i43 = i46 + 1;
                                    i32 = i70;
                                    i28 = 3;
                                }
                            } else {
                                fVar3 = fVar2;
                                i29 = 0;
                                i30 = 0;
                                i31 = 0;
                                while (i29 < i15) {
                                    dVar = dVarArr2[i29];
                                    iC = gVar.C(dVar, i27);
                                    if (dVar.f5474c0[1] == 3) {
                                        i30++;
                                    }
                                    int i71 = i30;
                                    z3 = (i31 != i27 || (gVar.f5527D0 + i31) + iC > i27) && fVar3.b != null;
                                    if (!z3 && i29 > 0 && (i33 = gVar.f5531H0) > 0 && i29 % i33 == 0) {
                                        z3 = true;
                                    }
                                    if (z3) {
                                        f fVar9 = new f(gVar, i26, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i27);
                                        fVar9.f5519n = i29;
                                        arrayList.add(fVar9);
                                        fVar3 = fVar9;
                                    } else {
                                        if (i29 > 0) {
                                            i31 = gVar.f5527D0 + iC + i31;
                                        }
                                        fVar3.a(dVar);
                                        i29++;
                                        i30 = i71;
                                    }
                                    i31 = iC;
                                    fVar3.a(dVar);
                                    i29++;
                                    i30 = i71;
                                }
                                i32 = i30;
                            }
                            size = arrayList.size();
                            c cVar7 = gVar.f5493x;
                            c cVar8 = gVar.f5494y;
                            int i72 = gVar.f5542j0;
                            int i73 = gVar.f5538f0;
                            int i74 = gVar.f5543k0;
                            int i75 = gVar.f5539g0;
                            iArr3 = gVar.f5474c0;
                            i34 = i26;
                            if (iArr3[0] != 2 || iArr3[1] == 2) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (i32 > 0 && z4) {
                                for (i42 = 0; i42 < size; i42++) {
                                    fVar5 = (f) arrayList.get(i42);
                                    if (i34 == 0) {
                                        fVar5.e(i27 - fVar5.d());
                                    } else {
                                        fVar5.e(i27 - fVar5.c());
                                    }
                                }
                            }
                            cVar3 = cVar8;
                            i35 = i72;
                            i36 = i73;
                            i37 = i74;
                            i38 = i75;
                            cVar4 = cVar;
                            cVar5 = cVar7;
                            cVar6 = cVar2;
                            i39 = 0;
                            iMax = 0;
                            i40 = 0;
                            while (i39 < size) {
                                fVar4 = (f) arrayList.get(i39);
                                if (i34 == 0) {
                                    if (i39 < size - 1) {
                                        cVar4 = ((f) arrayList.get(i39 + 1)).b.f5494y;
                                        i38 = 0;
                                    } else {
                                        i38 = gVar.f5539g0;
                                        cVar4 = cVar;
                                    }
                                    c cVar9 = fVar4.b.f5446A;
                                    i41 = i34;
                                    fVar4.f(i41, cVar5, cVar3, cVar6, cVar4, i35, i36, i37, i38, i27);
                                    iMax = Math.max(iMax, fVar4.d());
                                    iC2 = fVar4.c() + i40;
                                    if (i39 > 0) {
                                        iC2 += gVar.f5527D0;
                                    }
                                    i40 = iC2;
                                    cVar3 = cVar9;
                                    i36 = 0;
                                } else {
                                    i41 = i34;
                                    if (i39 < size - 1) {
                                        cVar6 = ((f) arrayList.get(i39 + 1)).b.f5493x;
                                        i37 = 0;
                                    } else {
                                        i37 = gVar.f5543k0;
                                        cVar6 = cVar2;
                                    }
                                    c cVar10 = fVar4.b.f5495z;
                                    fVar4.f(i41, cVar5, cVar3, cVar6, cVar4, i35, i36, i37, i38, i27);
                                    iD = fVar4.d() + iMax;
                                    int iMax2 = Math.max(i40, fVar4.c());
                                    if (i39 > 0) {
                                        iD += gVar.f5526C0;
                                    }
                                    i40 = iMax2;
                                    iMax = iD;
                                    cVar5 = cVar10;
                                    i35 = 0;
                                }
                                i39++;
                                i34 = i41;
                            }
                            iArr2[0] = iMax;
                            iArr2[1] = i40;
                        }
                    } else if (i16 != 2) {
                        i17 = i8;
                        iArr2 = iArr;
                        i19 = i5;
                        i20 = i6;
                        i21 = i14;
                    } else {
                        i48 = gVar.f5532I0;
                        if (i48 == 0) {
                            iCeil2 = gVar.f5531H0;
                            if (iCeil2 <= 0) {
                                i60 = 0;
                                i61 = 0;
                                i62 = 0;
                                while (i60 < i15) {
                                    int i76 = i60;
                                    if (i60 > 0) {
                                        i61 += gVar.f5526C0;
                                    }
                                    dVar10 = dVarArr2[i76];
                                    if (dVar10 != null) {
                                        iD4 = gVar.D(dVar10, i9) + i61;
                                        if (iD4 > i9) {
                                            break;
                                        }
                                        i62++;
                                        i61 = iD4;
                                    }
                                    i60 = i76 + 1;
                                }
                                iCeil2 = i62;
                            }
                            iCeil = 0;
                        } else {
                            i49 = gVar.f5531H0;
                            if (i49 <= 0) {
                                i50 = 0;
                                i51 = 0;
                                iCeil = 0;
                                while (i50 < i15) {
                                    int i77 = i50;
                                    if (i50 > 0) {
                                        i51 += gVar.f5527D0;
                                    }
                                    dVar4 = dVarArr2[i77];
                                    if (dVar4 != null) {
                                        iC3 = gVar.C(dVar4, i9) + i51;
                                        if (iC3 > i9) {
                                            break;
                                        }
                                        iCeil++;
                                        i51 = iC3;
                                    }
                                    i50 = i77 + 1;
                                }
                            } else {
                                iCeil = i49;
                            }
                            iCeil2 = 0;
                        }
                        if (gVar.f5536M0 == null) {
                            gVar.f5536M0 = new int[2];
                        }
                        z6 = (iCeil != 0 && i48 == 1) || (iCeil2 == 0 && i48 == 0);
                        while (!z6) {
                            if (i48 == 0) {
                                iCeil = (int) Math.ceil(i15 / iCeil2);
                            } else {
                                iCeil2 = (int) Math.ceil(i15 / iCeil);
                            }
                            dVarArr3 = gVar.f5535L0;
                            if (dVarArr3 != null || dVarArr3.length < iCeil2) {
                                gVar.f5535L0 = new d[iCeil2];
                            } else {
                                Arrays.fill(dVarArr3, (Object) null);
                            }
                            dVarArr4 = gVar.f5534K0;
                            if (dVarArr4 != null || dVarArr4.length < iCeil) {
                                gVar.f5534K0 = new d[iCeil];
                            } else {
                                Arrays.fill(dVarArr4, (Object) null);
                            }
                            i52 = 0;
                            while (i52 < iCeil2) {
                                i56 = 0;
                                while (i56 < iCeil) {
                                    i57 = (i56 * iCeil2) + i52;
                                    i58 = i52;
                                    if (i48 == 1) {
                                        i57 = (i58 * iCeil) + i56;
                                    }
                                    i59 = i57;
                                    int i78 = i48;
                                    if (i59 >= dVarArr2.length && (dVar7 = dVarArr2[i59]) != null) {
                                        int iD5 = gVar.D(dVar7, i9);
                                        dVarArr5 = dVarArr2;
                                        dVar8 = gVar.f5535L0[i58];
                                        if (dVar8 != null || dVar8.l() < iD5) {
                                            gVar.f5535L0[i58] = dVar7;
                                        }
                                        int iC5 = gVar.C(dVar7, i9);
                                        dVar9 = gVar.f5534K0[i56];
                                        if (dVar9 != null || dVar9.i() < iC5) {
                                            gVar.f5534K0[i56] = dVar7;
                                        }
                                    } else {
                                        dVarArr5 = dVarArr2;
                                    }
                                    i56++;
                                    i48 = i78;
                                    i52 = i58;
                                    dVarArr2 = dVarArr5;
                                }
                                i52++;
                            }
                            d[] dVarArr6 = dVarArr2;
                            i53 = i48;
                            iD3 = 0;
                            for (i54 = 0; i54 < iCeil2; i54++) {
                                dVar6 = gVar.f5535L0[i54];
                                if (dVar6 == null) {
                                    if (i54 > 0) {
                                        iD3 += gVar.f5526C0;
                                    }
                                    iD3 = gVar.D(dVar6, i9) + iD3;
                                }
                            }
                            i55 = 0;
                            iC4 = 0;
                            while (i55 < iCeil) {
                                dVar5 = gVar.f5534K0[i55];
                                int i79 = i55;
                                if (dVar5 == null) {
                                    if (i55 > 0) {
                                        iC4 += gVar.f5527D0;
                                    }
                                    iC4 = gVar.C(dVar5, i9) + iC4;
                                }
                                i55 = i79 + 1;
                            }
                            iArr[0] = iD3;
                            iArr[1] = iC4;
                            if (i53 == 0) {
                                if (iD3 > i9 || iCeil2 <= 1) {
                                    z6 = true;
                                } else {
                                    iCeil2--;
                                    z6 = z6;
                                }
                            } else if (iC4 > i9 || iCeil <= 1) {
                                z6 = true;
                            } else {
                                iCeil--;
                                z6 = z6;
                            }
                            i48 = i53;
                            i8 = i8;
                            dVarArr2 = dVarArr6;
                        }
                        int[] iArr4 = gVar.f5536M0;
                        iArr4[0] = iCeil2;
                        iArr4[1] = iCeil;
                        c4 = 1;
                        iArr2 = iArr;
                        i19 = i5;
                        i20 = i6;
                        i21 = i14;
                        i17 = i8;
                        c3 = 0;
                    }
                    c3 = 0;
                    c4 = 1;
                } else {
                    i17 = i8;
                    i18 = i9;
                    iArr2 = iArr;
                    i19 = i5;
                    i20 = i6;
                    i21 = i14;
                    i22 = gVar.f5532I0;
                    if (i15 == 0) {
                        c3 = 0;
                        c4 = 1;
                    } else {
                        if (arrayList.size() == 0) {
                            fVar = new f(gVar, i22, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i18);
                            arrayList.add(fVar);
                        } else {
                            f fVar10 = (f) arrayList.get(0);
                            fVar10.f5510c = 0;
                            fVar10.b = null;
                            fVar10.f5517l = 0;
                            fVar10.f5518m = 0;
                            fVar10.f5519n = 0;
                            fVar10.f5520o = 0;
                            fVar10.f5521p = 0;
                            fVar10.f(i22, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, gVar.f5542j0, gVar.f5538f0, gVar.f5543k0, gVar.f5539g0, i18);
                            fVar = fVar10;
                        }
                        for (i23 = 0; i23 < i15; i23++) {
                            fVar.a(dVarArr2[i23]);
                        }
                        c3 = 0;
                        iArr2[0] = fVar.d();
                        c4 = 1;
                        iArr2[1] = fVar.c();
                    }
                }
                i24 = iArr2[c3] + i19 + i20;
                i25 = iArr2[c4] + i21 + i17;
                if (mode != 1073741824) {
                    if (mode == Integer.MIN_VALUE) {
                        size2 = Math.min(i24, size2);
                    } else if (mode == 0) {
                        size2 = i24;
                    } else {
                        size2 = 0;
                    }
                }
                if (mode2 != 1073741824) {
                    if (mode2 == Integer.MIN_VALUE) {
                        size3 = Math.min(i25, size3);
                    } else if (mode2 == 0) {
                        size3 = i25;
                    } else {
                        size3 = 0;
                    }
                }
                gVar.f5545m0 = size2;
                gVar.n0 = size3;
                gVar.y(size2);
                gVar.v(size3);
                if (gVar.f5562e0 > 0) {
                    z2 = c4;
                } else {
                    z2 = 0;
                }
                gVar.f5544l0 = z2;
            }
        } else {
            i5 = gVar.f5542j0;
            i6 = gVar.f5543k0;
            i7 = gVar.f5538f0;
            i8 = gVar.f5539g0;
            iArr = new int[2];
            i9 = (size2 - i5) - i6;
            i10 = gVar.f5532I0;
            if (i10 == 1) {
                i9 = (size3 - i7) - i8;
            }
            if (i10 == 0) {
                if (gVar.f5547q0 == -1) {
                    i65 = 0;
                    gVar.f5547q0 = 0;
                } else {
                    i65 = 0;
                }
                if (gVar.f5548r0 == -1) {
                    gVar.f5548r0 = i65;
                }
            } else {
                if (gVar.f5547q0 == -1) {
                    gVar.f5547q0 = 0;
                }
                if (gVar.f5548r0 == -1) {
                    gVar.f5548r0 = 0;
                }
            }
            dVarArr = gVar.f5561d0;
            i11 = 0;
            i12 = 0;
            while (true) {
                i13 = gVar.f5562e0;
                i14 = i7;
                if (i11 < i13) {
                    break;
                    break;
                }
                if (gVar.f5561d0[i11].f5466V == 8) {
                    i12++;
                }
                i11++;
                i7 = i14;
            }
            if (i12 > 0) {
                dVarArr = new d[i13 - i12];
                i63 = 0;
                i64 = 0;
                while (i63 < gVar.f5562e0) {
                    dVar11 = gVar.f5561d0[i63];
                    int i610 = i63;
                    if (dVar11.f5466V != 8) {
                        dVarArr[i64] = dVar11;
                        i64++;
                    }
                    i63 = i610 + 1;
                }
                i15 = i64;
            } else {
                i15 = i13;
            }
            dVarArr2 = dVarArr;
            gVar.N0 = dVarArr2;
            gVar.f5537O0 = i15;
            i16 = gVar.f5530G0;
            if (i16 != 0) {
                if (i16 != 1) {
                    i26 = gVar.f5532I0;
                    cVar = gVar.f5446A;
                    cVar2 = gVar.f5495z;
                    if (i15 == 0) {
                        iArr2 = iArr;
                        i19 = i5;
                        i20 = i6;
                        i21 = i14;
                        i17 = i8;
                    } else {
                        arrayList.clear();
                        i27 = i9;
                        i19 = i5;
                        i20 = i6;
                        i21 = i14;
                        i17 = i8;
                        iArr2 = iArr;
                        i28 = 3;
                        fVar2 = new f(gVar, i26, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i27);
                        arrayList.add(fVar2);
                        if (i26 == 0) {
                            fVar6 = fVar2;
                            i43 = 0;
                            i32 = 0;
                            i44 = 0;
                            while (i43 < i15) {
                                dVar2 = dVarArr2[i43];
                                iD2 = gVar.D(dVar2, i27);
                                i45 = i43;
                                if (dVar2.f5474c0[0] == i28) {
                                    i32++;
                                }
                                int i710 = i32;
                                if (i44 != i27) {
                                }
                                if (!z5) {
                                    z5 = true;
                                }
                                if (z5) {
                                    i46 = i45;
                                    dVar3 = dVar2;
                                    f fVar11 = new f(gVar, i26, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i27);
                                    fVar11.f5519n = i46;
                                    arrayList.add(fVar11);
                                    fVar6 = fVar11;
                                } else {
                                    dVar3 = dVar2;
                                    i46 = i45;
                                    if (i46 > 0) {
                                        i44 = gVar.f5526C0 + iD2 + i44;
                                    }
                                    fVar6.a(dVar3);
                                    i43 = i46 + 1;
                                    i32 = i710;
                                    i28 = 3;
                                }
                                i44 = iD2;
                                fVar6.a(dVar3);
                                i43 = i46 + 1;
                                i32 = i710;
                                i28 = 3;
                            }
                        } else {
                            fVar3 = fVar2;
                            i29 = 0;
                            i30 = 0;
                            i31 = 0;
                            while (i29 < i15) {
                                dVar = dVarArr2[i29];
                                iC = gVar.C(dVar, i27);
                                if (dVar.f5474c0[1] == 3) {
                                    i30++;
                                }
                                int i711 = i30;
                                if (i31 != i27) {
                                }
                                if (!z3) {
                                    z3 = true;
                                }
                                if (z3) {
                                    f fVar12 = new f(gVar, i26, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i27);
                                    fVar12.f5519n = i29;
                                    arrayList.add(fVar12);
                                    fVar3 = fVar12;
                                } else {
                                    if (i29 > 0) {
                                        i31 = gVar.f5527D0 + iC + i31;
                                    }
                                    fVar3.a(dVar);
                                    i29++;
                                    i30 = i711;
                                }
                                i31 = iC;
                                fVar3.a(dVar);
                                i29++;
                                i30 = i711;
                            }
                            i32 = i30;
                        }
                        size = arrayList.size();
                        c cVar11 = gVar.f5493x;
                        c cVar12 = gVar.f5494y;
                        int i712 = gVar.f5542j0;
                        int i713 = gVar.f5538f0;
                        int i714 = gVar.f5543k0;
                        int i715 = gVar.f5539g0;
                        iArr3 = gVar.f5474c0;
                        i34 = i26;
                        if (iArr3[0] != 2) {
                            z4 = true;
                        } else {
                            z4 = true;
                        }
                        if (i32 > 0) {
                            while (i42 < size) {
                                fVar5 = (f) arrayList.get(i42);
                                if (i34 == 0) {
                                    fVar5.e(i27 - fVar5.d());
                                } else {
                                    fVar5.e(i27 - fVar5.c());
                                }
                            }
                        }
                        cVar3 = cVar12;
                        i35 = i712;
                        i36 = i713;
                        i37 = i714;
                        i38 = i715;
                        cVar4 = cVar;
                        cVar5 = cVar11;
                        cVar6 = cVar2;
                        i39 = 0;
                        iMax = 0;
                        i40 = 0;
                        while (i39 < size) {
                            fVar4 = (f) arrayList.get(i39);
                            if (i34 == 0) {
                                if (i39 < size - 1) {
                                    cVar4 = ((f) arrayList.get(i39 + 1)).b.f5494y;
                                    i38 = 0;
                                } else {
                                    i38 = gVar.f5539g0;
                                    cVar4 = cVar;
                                }
                                c cVar13 = fVar4.b.f5446A;
                                i41 = i34;
                                fVar4.f(i41, cVar5, cVar3, cVar6, cVar4, i35, i36, i37, i38, i27);
                                iMax = Math.max(iMax, fVar4.d());
                                iC2 = fVar4.c() + i40;
                                if (i39 > 0) {
                                    iC2 += gVar.f5527D0;
                                }
                                i40 = iC2;
                                cVar3 = cVar13;
                                i36 = 0;
                            } else {
                                i41 = i34;
                                if (i39 < size - 1) {
                                    cVar6 = ((f) arrayList.get(i39 + 1)).b.f5493x;
                                    i37 = 0;
                                } else {
                                    i37 = gVar.f5543k0;
                                    cVar6 = cVar2;
                                }
                                c cVar14 = fVar4.b.f5495z;
                                fVar4.f(i41, cVar5, cVar3, cVar6, cVar4, i35, i36, i37, i38, i27);
                                iD = fVar4.d() + iMax;
                                int iMax3 = Math.max(i40, fVar4.c());
                                if (i39 > 0) {
                                    iD += gVar.f5526C0;
                                }
                                i40 = iMax3;
                                iMax = iD;
                                cVar5 = cVar14;
                                i35 = 0;
                            }
                            i39++;
                            i34 = i41;
                        }
                        iArr2[0] = iMax;
                        iArr2[1] = i40;
                    }
                } else if (i16 != 2) {
                    i17 = i8;
                    iArr2 = iArr;
                    i19 = i5;
                    i20 = i6;
                    i21 = i14;
                } else {
                    i48 = gVar.f5532I0;
                    if (i48 == 0) {
                        iCeil2 = gVar.f5531H0;
                        if (iCeil2 <= 0) {
                            i60 = 0;
                            i61 = 0;
                            i62 = 0;
                            while (i60 < i15) {
                                int i716 = i60;
                                if (i60 > 0) {
                                    i61 += gVar.f5526C0;
                                }
                                dVar10 = dVarArr2[i716];
                                if (dVar10 != null) {
                                    iD4 = gVar.D(dVar10, i9) + i61;
                                    if (iD4 > i9) {
                                        break;
                                        break;
                                    } else {
                                        i62++;
                                        i61 = iD4;
                                    }
                                }
                                i60 = i716 + 1;
                            }
                            iCeil2 = i62;
                        }
                        iCeil = 0;
                    } else {
                        i49 = gVar.f5531H0;
                        if (i49 <= 0) {
                            i50 = 0;
                            i51 = 0;
                            iCeil = 0;
                            while (i50 < i15) {
                                int i717 = i50;
                                if (i50 > 0) {
                                    i51 += gVar.f5527D0;
                                }
                                dVar4 = dVarArr2[i717];
                                if (dVar4 != null) {
                                    iC3 = gVar.C(dVar4, i9) + i51;
                                    if (iC3 > i9) {
                                        break;
                                        break;
                                    } else {
                                        iCeil++;
                                        i51 = iC3;
                                    }
                                }
                                i50 = i717 + 1;
                            }
                        } else {
                            iCeil = i49;
                        }
                        iCeil2 = 0;
                    }
                    if (gVar.f5536M0 == null) {
                        gVar.f5536M0 = new int[2];
                    }
                    if (iCeil != 0) {
                    }
                    while (!z6) {
                        if (i48 == 0) {
                            iCeil = (int) Math.ceil(i15 / iCeil2);
                        } else {
                            iCeil2 = (int) Math.ceil(i15 / iCeil);
                        }
                        dVarArr3 = gVar.f5535L0;
                        if (dVarArr3 != null) {
                            gVar.f5535L0 = new d[iCeil2];
                        } else {
                            gVar.f5535L0 = new d[iCeil2];
                        }
                        dVarArr4 = gVar.f5534K0;
                        if (dVarArr4 != null) {
                            gVar.f5534K0 = new d[iCeil];
                        } else {
                            gVar.f5534K0 = new d[iCeil];
                        }
                        i52 = 0;
                        while (i52 < iCeil2) {
                            i56 = 0;
                            while (i56 < iCeil) {
                                i57 = (i56 * iCeil2) + i52;
                                i58 = i52;
                                if (i48 == 1) {
                                    i57 = (i58 * iCeil) + i56;
                                }
                                i59 = i57;
                                int i718 = i48;
                                if (i59 >= dVarArr2.length) {
                                    dVarArr5 = dVarArr2;
                                } else {
                                    int iD6 = gVar.D(dVar7, i9);
                                    dVarArr5 = dVarArr2;
                                    dVar8 = gVar.f5535L0[i58];
                                    if (dVar8 != null) {
                                        gVar.f5535L0[i58] = dVar7;
                                    } else {
                                        gVar.f5535L0[i58] = dVar7;
                                    }
                                    int iC6 = gVar.C(dVar7, i9);
                                    dVar9 = gVar.f5534K0[i56];
                                    if (dVar9 != null) {
                                        gVar.f5534K0[i56] = dVar7;
                                    } else {
                                        gVar.f5534K0[i56] = dVar7;
                                    }
                                }
                                i56++;
                                i48 = i718;
                                i52 = i58;
                                dVarArr2 = dVarArr5;
                            }
                            i52++;
                        }
                        d[] dVarArr7 = dVarArr2;
                        i53 = i48;
                        iD3 = 0;
                        while (i54 < iCeil2) {
                            dVar6 = gVar.f5535L0[i54];
                            if (dVar6 == null) {
                                if (i54 > 0) {
                                    iD3 += gVar.f5526C0;
                                }
                                iD3 = gVar.D(dVar6, i9) + iD3;
                            }
                        }
                        i55 = 0;
                        iC4 = 0;
                        while (i55 < iCeil) {
                            dVar5 = gVar.f5534K0[i55];
                            int i719 = i55;
                            if (dVar5 == null) {
                                if (i55 > 0) {
                                    iC4 += gVar.f5527D0;
                                }
                                iC4 = gVar.C(dVar5, i9) + iC4;
                            }
                            i55 = i719 + 1;
                        }
                        iArr[0] = iD3;
                        iArr[1] = iC4;
                        if (i53 == 0) {
                            if (iD3 > i9) {
                            }
                            z6 = true;
                        } else {
                            if (iC4 > i9) {
                            }
                            z6 = true;
                        }
                        i48 = i53;
                        i8 = i8;
                        dVarArr2 = dVarArr7;
                    }
                    int[] iArr5 = gVar.f5536M0;
                    iArr5[0] = iCeil2;
                    iArr5[1] = iCeil;
                    c4 = 1;
                    iArr2 = iArr;
                    i19 = i5;
                    i20 = i6;
                    i21 = i14;
                    i17 = i8;
                    c3 = 0;
                }
                c3 = 0;
                c4 = 1;
            } else {
                i17 = i8;
                i18 = i9;
                iArr2 = iArr;
                i19 = i5;
                i20 = i6;
                i21 = i14;
                i22 = gVar.f5532I0;
                if (i15 == 0) {
                    c3 = 0;
                    c4 = 1;
                } else {
                    if (arrayList.size() == 0) {
                        fVar = new f(gVar, i22, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, i18);
                        arrayList.add(fVar);
                    } else {
                        f fVar13 = (f) arrayList.get(0);
                        fVar13.f5510c = 0;
                        fVar13.b = null;
                        fVar13.f5517l = 0;
                        fVar13.f5518m = 0;
                        fVar13.f5519n = 0;
                        fVar13.f5520o = 0;
                        fVar13.f5521p = 0;
                        fVar13.f(i22, gVar.f5493x, gVar.f5494y, gVar.f5495z, gVar.f5446A, gVar.f5542j0, gVar.f5538f0, gVar.f5543k0, gVar.f5539g0, i18);
                        fVar = fVar13;
                    }
                    while (i23 < i15) {
                        fVar.a(dVarArr2[i23]);
                    }
                    c3 = 0;
                    iArr2[0] = fVar.d();
                    c4 = 1;
                    iArr2[1] = fVar.c();
                }
            }
            i24 = iArr2[c3] + i19 + i20;
            i25 = iArr2[c4] + i21 + i17;
            if (mode != 1073741824) {
                if (mode == Integer.MIN_VALUE) {
                    size2 = Math.min(i24, size2);
                } else if (mode == 0) {
                    size2 = i24;
                } else {
                    size2 = 0;
                }
            }
            if (mode2 != 1073741824) {
                if (mode2 == Integer.MIN_VALUE) {
                    size3 = Math.min(i25, size3);
                } else if (mode2 == 0) {
                    size3 = i25;
                } else {
                    size3 = 0;
                }
            }
            gVar.f5545m0 = size2;
            gVar.n0 = size3;
            gVar.y(size2);
            gVar.v(size3);
            if (gVar.f5562e0 > 0) {
                z2 = c4;
            } else {
                z2 = 0;
            }
            gVar.f5544l0 = z2;
        }
        setMeasuredDimension(gVar.f5545m0, gVar.n0);
    }

    @Override // p059x.c, android.view.View
    public final void onMeasure(int i3, int i4) {
        h(this.f2796j, i3, i4);
    }

    public void setFirstHorizontalBias(float f) {
        this.f2796j.f5554y0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i3) {
        this.f2796j.s0 = i3;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f2796j.f5555z0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i3) {
        this.f2796j.f5549t0 = i3;
        requestLayout();
    }

    public void setHorizontalAlign(int i3) {
        this.f2796j.f5528E0 = i3;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f2796j.f5552w0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i3) {
        this.f2796j.f5526C0 = i3;
        requestLayout();
    }

    public void setHorizontalStyle(int i3) {
        this.f2796j.f5547q0 = i3;
        requestLayout();
    }

    public void setMaxElementsWrap(int i3) {
        this.f2796j.f5531H0 = i3;
        requestLayout();
    }

    public void setOrientation(int i3) {
        this.f2796j.f5532I0 = i3;
        requestLayout();
    }

    public void setPadding(int i3) {
        g gVar = this.f2796j;
        gVar.f5538f0 = i3;
        gVar.f5539g0 = i3;
        gVar.f5540h0 = i3;
        gVar.f5541i0 = i3;
        requestLayout();
    }

    public void setPaddingBottom(int i3) {
        this.f2796j.f5539g0 = i3;
        requestLayout();
    }

    public void setPaddingLeft(int i3) {
        this.f2796j.f5542j0 = i3;
        requestLayout();
    }

    public void setPaddingRight(int i3) {
        this.f2796j.f5543k0 = i3;
        requestLayout();
    }

    public void setPaddingTop(int i3) {
        this.f2796j.f5538f0 = i3;
        requestLayout();
    }

    public void setVerticalAlign(int i3) {
        this.f2796j.f5529F0 = i3;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f2796j.f5553x0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i3) {
        this.f2796j.f5527D0 = i3;
        requestLayout();
    }

    public void setVerticalStyle(int i3) {
        this.f2796j.f5548r0 = i3;
        requestLayout();
    }

    public void setWrapMode(int i3) {
        this.f2796j.f5530G0 = i3;
        requestLayout();
    }
}
