package p059x;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import p051u.h;
import p053v.c;
import p053v.d;
import p053v.g;
import p056w.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f5896a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5897c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5899e;
    public int f;
    public int g;

    public f(ConstraintLayout constraintLayout) {
        this.f5896a = constraintLayout;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0174  */
    /* JADX WARN: Code duplicated, block: B:104:0x0178  */
    /* JADX WARN: Code duplicated, block: B:107:0x0180  */
    /* JADX WARN: Code duplicated, block: B:109:0x0184  */
    /* JADX WARN: Code duplicated, block: B:112:0x018e  */
    /* JADX WARN: Code duplicated, block: B:115:0x019e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:124:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:126:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:129:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:132:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:133:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:135:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:136:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:139:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:140:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:146:0x0207  */
    /* JADX WARN: Code duplicated, block: B:147:0x020c  */
    /* JADX WARN: Code duplicated, block: B:150:0x0211  */
    /* JADX WARN: Code duplicated, block: B:153:0x0219 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:155:0x0222 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:156:0x0224 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x022e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:160:0x0230  */
    /* JADX WARN: Code duplicated, block: B:162:0x0234  */
    /* JADX WARN: Code duplicated, block: B:164:0x023a  */
    /* JADX WARN: Code duplicated, block: B:167:0x0251  */
    /* JADX WARN: Code duplicated, block: B:168:0x0254  */
    /* JADX WARN: Code duplicated, block: B:171:0x025a  */
    /* JADX WARN: Code duplicated, block: B:175:0x0262  */
    /* JADX WARN: Code duplicated, block: B:178:0x026a  */
    /* JADX WARN: Code duplicated, block: B:180:0x026e  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00da  */
    /* JADX WARN: Code duplicated, block: B:58:0x00df  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:64:0x0105  */
    /* JADX WARN: Code duplicated, block: B:65:0x0107  */
    /* JADX WARN: Code duplicated, block: B:68:0x010f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0111  */
    /* JADX WARN: Code duplicated, block: B:75:0x0122  */
    /* JADX WARN: Code duplicated, block: B:77:0x0126 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:79:0x0129  */
    /* JADX WARN: Code duplicated, block: B:83:0x013c  */
    /* JADX WARN: Code duplicated, block: B:84:0x014b  */
    /* JADX WARN: Code duplicated, block: B:86:0x0158  */
    /* JADX WARN: Code duplicated, block: B:87:0x015a  */
    /* JADX WARN: Code duplicated, block: B:89:0x015e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0160  */
    /* JADX WARN: Code duplicated, block: B:93:0x0165 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:96:0x016b  */
    /* JADX WARN: Code duplicated, block: B:98:0x016e A[ADDED_TO_REGION] */
    public final void a(d dVar, b bVar) {
        int iMakeMeasureSpec;
        boolean z2;
        int iA;
        int i3;
        int iMakeMeasureSpec2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        e eVar;
        int measuredWidth;
        int measuredHeight;
        int baseline;
        int i4;
        int measuredWidth2;
        int i5;
        int i6;
        int measuredHeight2;
        int i7;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i8;
        int childMeasureSpec;
        if (dVar == null) {
            return;
        }
        c cVar = dVar.f5495z;
        c cVar2 = dVar.f5493x;
        int[] iArr = dVar.g;
        if (dVar.f5466V == 8) {
            bVar.f5579e = 0;
            bVar.f = 0;
            bVar.g = 0;
            return;
        }
        int i9 = bVar.f5576a;
        int i10 = bVar.b;
        int i11 = bVar.f5577c;
        int i12 = bVar.f5578d;
        int i13 = this.b + this.f5897c;
        int i14 = this.f5898d;
        View view = dVar.f5465U;
        int iA2 = h.a(i9);
        int i15 = 2;
        if (iA2 != 0) {
            if (iA2 == 1) {
                i15 = 2;
                childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i14, -2);
                iArr[2] = -2;
            } else {
                if (iA2 != 2) {
                    if (iA2 != 3) {
                        i15 = 2;
                        z2 = false;
                        iMakeMeasureSpec = 0;
                    } else {
                        int i16 = this.f;
                        int i17 = cVar2 != null ? cVar2.f5445e : 0;
                        if (cVar != null) {
                            i17 += cVar.f5445e;
                        }
                        iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i16, i14 + i17, -1);
                        iArr[i15] = -1;
                    }
                    iA = h.a(i10);
                    if (iA == 0) {
                        i3 = 3;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                        iArr[3] = i12;
                        z3 = false;
                    } else if (iA == 1) {
                        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
                        i3 = 3;
                        iArr[3] = -2;
                        iMakeMeasureSpec2 = childMeasureSpec2;
                        z3 = true;
                    } else if (iA == i15) {
                        iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
                        if (dVar.f5480k == 1) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        iArr[3] = 0;
                        if (bVar.f5582j) {
                            if (z12 || iArr[2] == 0 || iArr[1] == dVar.i()) {
                                z13 = false;
                            } else {
                                z13 = true;
                            }
                            if (z12 || z13) {
                                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                        } else {
                            z3 = true;
                        }
                        i3 = 3;
                    } else if (iA != 3) {
                        i3 = 3;
                        z3 = false;
                        iMakeMeasureSpec2 = 0;
                    } else {
                        int i18 = this.g;
                        if (cVar2 != null) {
                            i8 = dVar.f5494y.f5445e;
                        } else {
                            i8 = 0;
                        }
                        if (cVar != null) {
                            i8 += dVar.f5446A.f5445e;
                        }
                        iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i18, i13 + i8, -1);
                        iArr[3] = -1;
                        z3 = false;
                        i3 = 3;
                    }
                    if (i9 == i3) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (i10 == i3) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    if (i10 != 4 || i10 == 1) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (i9 != 4 || i9 == 1) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (z4 || dVar.f5456L <= 0.0f) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    if (z5 || dVar.f5456L <= 0.0f) {
                        z9 = false;
                    } else {
                        z9 = true;
                    }
                    eVar = (e) view.getLayoutParams();
                    if (bVar.f5582j && z4 && dVar.f5479j == 0 && z5 && dVar.f5480k == 0) {
                        measuredWidth2 = 0;
                        measuredHeight2 = 0;
                        baseline = 0;
                    } else {
                        if ((view instanceof r) || !(dVar instanceof g)) {
                            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                        } else {
                            ((r) view).h((g) dVar, iMakeMeasureSpec, iMakeMeasureSpec2);
                        }
                        measuredWidth = view.getMeasuredWidth();
                        measuredHeight = view.getMeasuredHeight();
                        baseline = view.getBaseline();
                        if (z2) {
                            iArr[0] = measuredWidth;
                            iArr[2] = measuredHeight;
                        } else {
                            iArr[0] = 0;
                            iArr[2] = 0;
                        }
                        if (z3) {
                            iArr[1] = measuredHeight;
                            iArr[3] = measuredWidth;
                        } else {
                            iArr[1] = 0;
                            iArr[3] = 0;
                        }
                        i4 = dVar.f5482m;
                        if (i4 > 0) {
                            measuredWidth2 = Math.max(i4, measuredWidth);
                        } else {
                            measuredWidth2 = measuredWidth;
                        }
                        i5 = dVar.f5483n;
                        if (i5 > 0) {
                            measuredWidth2 = Math.min(i5, measuredWidth2);
                        }
                        i6 = dVar.f5485p;
                        if (i6 > 0) {
                            measuredHeight2 = Math.max(i6, measuredHeight);
                        } else {
                            measuredHeight2 = measuredHeight;
                        }
                        i7 = dVar.f5486q;
                        if (i7 > 0) {
                            measuredHeight2 = Math.min(i7, measuredHeight2);
                        }
                        if (!z8 && z6) {
                            measuredWidth2 = (int) ((measuredHeight2 * dVar.f5456L) + 0.5f);
                        } else if (z9 && z7) {
                            measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                        }
                        if (measuredWidth == measuredWidth2 || measuredHeight != measuredHeight2) {
                            if (measuredWidth != measuredWidth2) {
                                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                            }
                            if (measuredHeight != measuredHeight2) {
                                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                            }
                            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                            measuredWidth2 = view.getMeasuredWidth();
                            measuredHeight2 = view.getMeasuredHeight();
                            baseline = view.getBaseline();
                        }
                    }
                    if (baseline != -1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (measuredWidth2 == bVar.f5577c || measuredHeight2 != bVar.f5578d) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    bVar.f5581i = z11;
                    if (eVar.f5860X) {
                        z10 = true;
                    }
                    if (z10 && baseline != -1 && dVar.f5460P != baseline) {
                        bVar.f5581i = true;
                    }
                    bVar.f5579e = measuredWidth2;
                    bVar.f = measuredHeight2;
                    bVar.f5580h = z10;
                    bVar.g = baseline;
                }
                i15 = 2;
                childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f, i14, -2);
                boolean z14 = dVar.f5479j == 1;
                iArr[2] = 0;
                if (bVar.f5582j) {
                    boolean z15 = (!z14 || iArr[3] == 0 || iArr[0] == dVar.l()) ? false : true;
                    if (!z14 || z15) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dVar.l(), 1073741824);
                    }
                }
            }
            iMakeMeasureSpec = childMeasureSpec;
            z2 = true;
            iA = h.a(i10);
            if (iA == 0) {
                i3 = 3;
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
                iArr[3] = i12;
                z3 = false;
            } else if (iA == 1) {
                int childMeasureSpec3 = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
                i3 = 3;
                iArr[3] = -2;
                iMakeMeasureSpec2 = childMeasureSpec3;
                z3 = true;
            } else if (iA == i15) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
                if (dVar.f5480k == 1) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                iArr[3] = 0;
                if (bVar.f5582j) {
                    z3 = true;
                } else {
                    if (z12) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    if (z12) {
                    }
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                    z3 = false;
                }
                i3 = 3;
            } else if (iA != 3) {
                i3 = 3;
                z3 = false;
                iMakeMeasureSpec2 = 0;
            } else {
                int i19 = this.g;
                if (cVar2 != null) {
                    i8 = dVar.f5494y.f5445e;
                } else {
                    i8 = 0;
                }
                if (cVar != null) {
                    i8 += dVar.f5446A.f5445e;
                }
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i19, i13 + i8, -1);
                iArr[3] = -1;
                z3 = false;
                i3 = 3;
            }
            if (i9 == i3) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (i10 == i3) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (i10 != 4) {
                z6 = true;
            } else {
                z6 = true;
            }
            if (i9 != 4) {
                z7 = true;
            } else {
                z7 = true;
            }
            if (z4) {
                z8 = false;
            } else {
                z8 = false;
            }
            if (z5) {
                z9 = false;
            } else {
                z9 = false;
            }
            eVar = (e) view.getLayoutParams();
            if (bVar.f5582j) {
                if (view instanceof r) {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                measuredWidth = view.getMeasuredWidth();
                measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                if (z2) {
                    iArr[0] = measuredWidth;
                    iArr[2] = measuredHeight;
                } else {
                    iArr[0] = 0;
                    iArr[2] = 0;
                }
                if (z3) {
                    iArr[1] = measuredHeight;
                    iArr[3] = measuredWidth;
                } else {
                    iArr[1] = 0;
                    iArr[3] = 0;
                }
                i4 = dVar.f5482m;
                if (i4 > 0) {
                    measuredWidth2 = Math.max(i4, measuredWidth);
                } else {
                    measuredWidth2 = measuredWidth;
                }
                i5 = dVar.f5483n;
                if (i5 > 0) {
                    measuredWidth2 = Math.min(i5, measuredWidth2);
                }
                i6 = dVar.f5485p;
                if (i6 > 0) {
                    measuredHeight2 = Math.max(i6, measuredHeight);
                } else {
                    measuredHeight2 = measuredHeight;
                }
                i7 = dVar.f5486q;
                if (i7 > 0) {
                    measuredHeight2 = Math.min(i7, measuredHeight2);
                }
                if (!z8) {
                    if (z9) {
                        measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                    }
                } else if (z9) {
                    measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                }
                if (measuredWidth == measuredWidth2) {
                    if (measuredWidth != measuredWidth2) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                    }
                    if (measuredHeight != measuredHeight2) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    measuredWidth2 = view.getMeasuredWidth();
                    measuredHeight2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                } else {
                    if (measuredWidth != measuredWidth2) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                    }
                    if (measuredHeight != measuredHeight2) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    measuredWidth2 = view.getMeasuredWidth();
                    measuredHeight2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
            } else {
                if (view instanceof r) {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                measuredWidth = view.getMeasuredWidth();
                measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                if (z2) {
                    iArr[0] = measuredWidth;
                    iArr[2] = measuredHeight;
                } else {
                    iArr[0] = 0;
                    iArr[2] = 0;
                }
                if (z3) {
                    iArr[1] = measuredHeight;
                    iArr[3] = measuredWidth;
                } else {
                    iArr[1] = 0;
                    iArr[3] = 0;
                }
                i4 = dVar.f5482m;
                if (i4 > 0) {
                    measuredWidth2 = Math.max(i4, measuredWidth);
                } else {
                    measuredWidth2 = measuredWidth;
                }
                i5 = dVar.f5483n;
                if (i5 > 0) {
                    measuredWidth2 = Math.min(i5, measuredWidth2);
                }
                i6 = dVar.f5485p;
                if (i6 > 0) {
                    measuredHeight2 = Math.max(i6, measuredHeight);
                } else {
                    measuredHeight2 = measuredHeight;
                }
                i7 = dVar.f5486q;
                if (i7 > 0) {
                    measuredHeight2 = Math.min(i7, measuredHeight2);
                }
                if (!z8) {
                    if (z9) {
                        measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                    }
                } else if (z9) {
                    measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                }
                if (measuredWidth == measuredWidth2) {
                    if (measuredWidth != measuredWidth2) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                    }
                    if (measuredHeight != measuredHeight2) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    measuredWidth2 = view.getMeasuredWidth();
                    measuredHeight2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                } else {
                    if (measuredWidth != measuredWidth2) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                    }
                    if (measuredHeight != measuredHeight2) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    measuredWidth2 = view.getMeasuredWidth();
                    measuredHeight2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                }
            }
            if (baseline != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (measuredWidth2 == bVar.f5577c) {
                z11 = true;
            } else {
                z11 = true;
            }
            bVar.f5581i = z11;
            if (eVar.f5860X) {
                z10 = true;
            }
            if (z10) {
                bVar.f5581i = true;
            }
            bVar.f5579e = measuredWidth2;
            bVar.f = measuredHeight2;
            bVar.f5580h = z10;
            bVar.g = baseline;
        }
        i15 = 2;
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
        iArr[2] = i11;
        iMakeMeasureSpec = iMakeMeasureSpec3;
        z2 = false;
        iA = h.a(i10);
        if (iA == 0) {
            i3 = 3;
            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            iArr[3] = i12;
            z3 = false;
        } else if (iA == 1) {
            int childMeasureSpec4 = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
            i3 = 3;
            iArr[3] = -2;
            iMakeMeasureSpec2 = childMeasureSpec4;
            z3 = true;
        } else if (iA == i15) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i13, -2);
            if (dVar.f5480k == 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            iArr[3] = 0;
            if (bVar.f5582j) {
                z3 = true;
            } else {
                if (z12) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                if (z12) {
                }
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(dVar.i(), 1073741824);
                z3 = false;
            }
            i3 = 3;
        } else if (iA != 3) {
            i3 = 3;
            z3 = false;
            iMakeMeasureSpec2 = 0;
        } else {
            int i110 = this.g;
            if (cVar2 != null) {
                i8 = dVar.f5494y.f5445e;
            } else {
                i8 = 0;
            }
            if (cVar != null) {
                i8 += dVar.f5446A.f5445e;
            }
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i110, i13 + i8, -1);
            iArr[3] = -1;
            z3 = false;
            i3 = 3;
        }
        if (i9 == i3) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (i10 == i3) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (i10 != 4) {
            z6 = true;
        } else {
            z6 = true;
        }
        if (i9 != 4) {
            z7 = true;
        } else {
            z7 = true;
        }
        if (z4) {
            z8 = false;
        } else {
            z8 = false;
        }
        if (z5) {
            z9 = false;
        } else {
            z9 = false;
        }
        eVar = (e) view.getLayoutParams();
        if (bVar.f5582j) {
            if (view instanceof r) {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            }
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            baseline = view.getBaseline();
            if (z2) {
                iArr[0] = measuredWidth;
                iArr[2] = measuredHeight;
            } else {
                iArr[0] = 0;
                iArr[2] = 0;
            }
            if (z3) {
                iArr[1] = measuredHeight;
                iArr[3] = measuredWidth;
            } else {
                iArr[1] = 0;
                iArr[3] = 0;
            }
            i4 = dVar.f5482m;
            if (i4 > 0) {
                measuredWidth2 = Math.max(i4, measuredWidth);
            } else {
                measuredWidth2 = measuredWidth;
            }
            i5 = dVar.f5483n;
            if (i5 > 0) {
                measuredWidth2 = Math.min(i5, measuredWidth2);
            }
            i6 = dVar.f5485p;
            if (i6 > 0) {
                measuredHeight2 = Math.max(i6, measuredHeight);
            } else {
                measuredHeight2 = measuredHeight;
            }
            i7 = dVar.f5486q;
            if (i7 > 0) {
                measuredHeight2 = Math.min(i7, measuredHeight2);
            }
            if (!z8) {
                if (z9) {
                    measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                }
            } else if (z9) {
                measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
            }
            if (measuredWidth == measuredWidth2) {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                }
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            } else {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                }
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            }
        } else {
            if (view instanceof r) {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            }
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            baseline = view.getBaseline();
            if (z2) {
                iArr[0] = measuredWidth;
                iArr[2] = measuredHeight;
            } else {
                iArr[0] = 0;
                iArr[2] = 0;
            }
            if (z3) {
                iArr[1] = measuredHeight;
                iArr[3] = measuredWidth;
            } else {
                iArr[1] = 0;
                iArr[3] = 0;
            }
            i4 = dVar.f5482m;
            if (i4 > 0) {
                measuredWidth2 = Math.max(i4, measuredWidth);
            } else {
                measuredWidth2 = measuredWidth;
            }
            i5 = dVar.f5483n;
            if (i5 > 0) {
                measuredWidth2 = Math.min(i5, measuredWidth2);
            }
            i6 = dVar.f5485p;
            if (i6 > 0) {
                measuredHeight2 = Math.max(i6, measuredHeight);
            } else {
                measuredHeight2 = measuredHeight;
            }
            i7 = dVar.f5486q;
            if (i7 > 0) {
                measuredHeight2 = Math.min(i7, measuredHeight2);
            }
            if (!z8) {
                if (z9) {
                    measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
                }
            } else if (z9) {
                measuredHeight2 = (int) ((measuredWidth2 / dVar.f5456L) + 0.5f);
            }
            if (measuredWidth == measuredWidth2) {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                }
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            } else {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth2, 1073741824);
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824);
                }
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            }
        }
        if (baseline != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (measuredWidth2 == bVar.f5577c) {
            z11 = true;
        } else {
            z11 = true;
        }
        bVar.f5581i = z11;
        if (eVar.f5860X) {
            z10 = true;
        }
        if (z10) {
            bVar.f5581i = true;
        }
        bVar.f5579e = measuredWidth2;
        bVar.f = measuredHeight2;
        bVar.f5580h = z10;
        bVar.g = baseline;
    }
}
