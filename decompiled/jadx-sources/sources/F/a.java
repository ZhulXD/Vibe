package F;

import A1.C0009b;
import S.B;
import S.r;
import S.s;
import S.u;
import S.v;
import android.os.SystemClock;
import android.view.Choreographer;
import java.util.ArrayList;
import p041q.j;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f942a;

    public a(b bVar) {
        this.f942a = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x004a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0052  */
    /* JADX WARN: Code duplicated, block: B:19:0x005f  */
    /* JADX WARN: Code duplicated, block: B:20:0x009b  */
    /* JADX WARN: Code duplicated, block: B:26:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:29:0x010b  */
    /* JADX WARN: Code duplicated, block: B:31:0x0118  */
    /* JADX WARN: Code duplicated, block: B:34:0x0134  */
    /* JADX WARN: Code duplicated, block: B:38:0x0148  */
    /* JADX WARN: Code duplicated, block: B:40:0x014e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0162  */
    /* JADX WARN: Code duplicated, block: B:44:0x0184  */
    /* JADX WARN: Code duplicated, block: B:47:0x018e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0193  */
    /* JADX WARN: Code duplicated, block: B:49:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:54:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:56:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:58:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        long j3;
        long j4;
        float f;
        g gVar;
        int i3;
        boolean z2;
        long j5;
        long j6;
        ArrayList arrayList;
        ThreadLocal threadLocal;
        c cVar;
        ArrayList arrayList2;
        int iIndexOf;
        int i4;
        int size;
        long j7;
        long j8;
        int i5;
        f fVar;
        float f3;
        s sVar;
        B b;
        u uVar;
        v vVar;
        Runnable runnable;
        c cVar2 = (c) ((C0009b) this.f942a.f943c).b;
        long jUptimeMillis = SystemClock.uptimeMillis();
        ArrayList arrayList3 = cVar2.b;
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        int i6 = 0;
        while (i6 < arrayList3.size()) {
            f fVar2 = (f) arrayList3.get(i6);
            if (fVar2 == null) {
                j5 = jUptimeMillis;
                j6 = jUptimeMillis2;
                i3 = i6;
            } else {
                j jVar = cVar2.f946a;
                Long l2 = (Long) jVar.get(fVar2);
                if (l2 == null) {
                    j3 = fVar2.f956h;
                    if (j3 == 0) {
                        fVar2.f956h = jUptimeMillis;
                        fVar2.b(fVar2.b);
                        j5 = jUptimeMillis;
                        j6 = jUptimeMillis2;
                        i3 = i6;
                    } else {
                        j4 = jUptimeMillis - j3;
                        fVar2.f956h = jUptimeMillis;
                        if (fVar2.f961m != Float.MAX_VALUE) {
                            g gVar2 = fVar2.f960l;
                            double d3 = gVar2.f967i;
                            long j9 = j4 / 2;
                            d dVarA = gVar2.a(fVar2.b, fVar2.f952a, j9);
                            g gVar3 = fVar2.f960l;
                            gVar3.f967i = fVar2.f961m;
                            fVar2.f961m = Float.MAX_VALUE;
                            d dVarA2 = gVar3.a(dVarA.f950a, dVarA.b, j9);
                            fVar2.b = dVarA2.f950a;
                            fVar2.f952a = dVarA2.b;
                        } else {
                            d dVarA3 = fVar2.f960l.a(fVar2.b, fVar2.f952a, j4);
                            fVar2.b = dVarA3.f950a;
                            fVar2.f952a = dVarA3.b;
                        }
                        float fMax = Math.max(fVar2.b, fVar2.g);
                        fVar2.b = fMax;
                        float fMin = Math.min(fMax, fVar2.f);
                        fVar2.b = fMin;
                        f = fVar2.f952a;
                        gVar = fVar2.f960l;
                        gVar.getClass();
                        i3 = i6;
                        if (Math.abs(f) < gVar.f965e) {
                            z2 = false;
                        } else {
                            z2 = false;
                        }
                        float fMin2 = Math.min(fVar2.b, fVar2.f);
                        fVar2.b = fMin2;
                        float fMax2 = Math.max(fMin2, fVar2.g);
                        fVar2.b = fMax2;
                        fVar2.b(fMax2);
                        if (z2) {
                            arrayList = fVar2.f958j;
                            fVar2.f955e = false;
                            threadLocal = c.f;
                            if (threadLocal.get() == null) {
                                threadLocal.set(new c());
                            }
                            cVar = (c) threadLocal.get();
                            cVar.f946a.remove(fVar2);
                            arrayList2 = cVar.b;
                            iIndexOf = arrayList2.indexOf(fVar2);
                            if (iIndexOf >= 0) {
                                arrayList2.set(iIndexOf, null);
                                cVar.f949e = true;
                            }
                            fVar2.f956h = 0L;
                            fVar2.f953c = false;
                            i4 = 0;
                            while (i4 < arrayList.size()) {
                                if (arrayList.get(i4) != null) {
                                    r rVar = (r) arrayList.get(i4);
                                    f3 = fVar2.b;
                                    sVar = rVar.f2002a;
                                    b = sVar.g;
                                    uVar = u.f2007c;
                                    if (f3 < 1.0f) {
                                        j7 = jUptimeMillis;
                                        long j10 = b.f2036y;
                                        v vVarP = b.P(0);
                                        vVar = vVarP.f2031t;
                                        vVarP.f2031t = null;
                                        j8 = jUptimeMillis2;
                                        i5 = i4;
                                        fVar = fVar2;
                                        b.F(-1L, sVar.f2003a);
                                        b.F(j10, -1L);
                                        sVar.f2003a = j10;
                                        runnable = sVar.f;
                                        if (runnable != null) {
                                            runnable.run();
                                        }
                                        b.f2033v.clear();
                                        if (vVar != null) {
                                            vVar.y(vVar, uVar, true);
                                        }
                                    } else {
                                        j7 = jUptimeMillis;
                                        j8 = jUptimeMillis2;
                                        i5 = i4;
                                        fVar = fVar2;
                                        b.y(b, uVar, false);
                                    }
                                    i4 = i5 + 1;
                                    fVar2 = fVar;
                                    jUptimeMillis = j7;
                                    jUptimeMillis2 = j8;
                                } else {
                                    j7 = jUptimeMillis;
                                    j8 = jUptimeMillis2;
                                    i5 = i4;
                                    fVar = fVar2;
                                }
                                i4 = i5 + 1;
                                fVar2 = fVar;
                                jUptimeMillis = j7;
                                jUptimeMillis2 = j8;
                            }
                            j5 = jUptimeMillis;
                            j6 = jUptimeMillis2;
                            for (size = arrayList.size() - 1; size >= 0; size--) {
                                if (arrayList.get(size) == null) {
                                    arrayList.remove(size);
                                }
                            }
                        } else {
                            j5 = jUptimeMillis;
                            j6 = jUptimeMillis2;
                        }
                    }
                } else if (l2.longValue() < jUptimeMillis2) {
                    jVar.remove(fVar2);
                    j3 = fVar2.f956h;
                    if (j3 == 0) {
                        fVar2.f956h = jUptimeMillis;
                        fVar2.b(fVar2.b);
                        j5 = jUptimeMillis;
                        j6 = jUptimeMillis2;
                        i3 = i6;
                    } else {
                        j4 = jUptimeMillis - j3;
                        fVar2.f956h = jUptimeMillis;
                        if (fVar2.f961m != Float.MAX_VALUE) {
                            g gVar4 = fVar2.f960l;
                            double d4 = gVar4.f967i;
                            long j11 = j4 / 2;
                            d dVarA4 = gVar4.a(fVar2.b, fVar2.f952a, j11);
                            g gVar5 = fVar2.f960l;
                            gVar5.f967i = fVar2.f961m;
                            fVar2.f961m = Float.MAX_VALUE;
                            d dVarA5 = gVar5.a(dVarA4.f950a, dVarA4.b, j11);
                            fVar2.b = dVarA5.f950a;
                            fVar2.f952a = dVarA5.b;
                        } else {
                            d dVarA6 = fVar2.f960l.a(fVar2.b, fVar2.f952a, j4);
                            fVar2.b = dVarA6.f950a;
                            fVar2.f952a = dVarA6.b;
                        }
                        float fMax3 = Math.max(fVar2.b, fVar2.g);
                        fVar2.b = fMax3;
                        float fMin3 = Math.min(fMax3, fVar2.f);
                        fVar2.b = fMin3;
                        f = fVar2.f952a;
                        gVar = fVar2.f960l;
                        gVar.getClass();
                        i3 = i6;
                        if (Math.abs(f) < gVar.f965e || Math.abs(fMin3 - ((float) gVar.f967i)) >= gVar.f964d) {
                            z2 = false;
                        } else {
                            fVar2.b = (float) fVar2.f960l.f967i;
                            fVar2.f952a = 0.0f;
                            z2 = true;
                        }
                        float fMin4 = Math.min(fVar2.b, fVar2.f);
                        fVar2.b = fMin4;
                        float fMax4 = Math.max(fMin4, fVar2.g);
                        fVar2.b = fMax4;
                        fVar2.b(fMax4);
                        if (z2) {
                            arrayList = fVar2.f958j;
                            fVar2.f955e = false;
                            threadLocal = c.f;
                            if (threadLocal.get() == null) {
                                threadLocal.set(new c());
                            }
                            cVar = (c) threadLocal.get();
                            cVar.f946a.remove(fVar2);
                            arrayList2 = cVar.b;
                            iIndexOf = arrayList2.indexOf(fVar2);
                            if (iIndexOf >= 0) {
                                arrayList2.set(iIndexOf, null);
                                cVar.f949e = true;
                            }
                            fVar2.f956h = 0L;
                            fVar2.f953c = false;
                            i4 = 0;
                            while (i4 < arrayList.size()) {
                                if (arrayList.get(i4) != null) {
                                    r rVar2 = (r) arrayList.get(i4);
                                    f3 = fVar2.b;
                                    sVar = rVar2.f2002a;
                                    b = sVar.g;
                                    uVar = u.f2007c;
                                    if (f3 < 1.0f) {
                                        j7 = jUptimeMillis;
                                        long j12 = b.f2036y;
                                        v vVarP2 = b.P(0);
                                        vVar = vVarP2.f2031t;
                                        vVarP2.f2031t = null;
                                        j8 = jUptimeMillis2;
                                        i5 = i4;
                                        fVar = fVar2;
                                        b.F(-1L, sVar.f2003a);
                                        b.F(j12, -1L);
                                        sVar.f2003a = j12;
                                        runnable = sVar.f;
                                        if (runnable != null) {
                                            runnable.run();
                                        }
                                        b.f2033v.clear();
                                        if (vVar != null) {
                                            vVar.y(vVar, uVar, true);
                                        }
                                    } else {
                                        j7 = jUptimeMillis;
                                        j8 = jUptimeMillis2;
                                        i5 = i4;
                                        fVar = fVar2;
                                        b.y(b, uVar, false);
                                    }
                                    i4 = i5 + 1;
                                    fVar2 = fVar;
                                    jUptimeMillis = j7;
                                    jUptimeMillis2 = j8;
                                } else {
                                    j7 = jUptimeMillis;
                                    j8 = jUptimeMillis2;
                                    i5 = i4;
                                    fVar = fVar2;
                                }
                                i4 = i5 + 1;
                                fVar2 = fVar;
                                jUptimeMillis = j7;
                                jUptimeMillis2 = j8;
                            }
                            j5 = jUptimeMillis;
                            j6 = jUptimeMillis2;
                            while (size >= 0) {
                                if (arrayList.get(size) == null) {
                                    arrayList.remove(size);
                                }
                            }
                        } else {
                            j5 = jUptimeMillis;
                            j6 = jUptimeMillis2;
                        }
                    }
                } else {
                    j5 = jUptimeMillis;
                    j6 = jUptimeMillis2;
                    i3 = i6;
                }
            }
            i6 = i3 + 1;
            jUptimeMillis = j5;
            jUptimeMillis2 = j6;
        }
        if (cVar2.f949e) {
            for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                if (arrayList3.get(size2) == null) {
                    arrayList3.remove(size2);
                }
            }
            cVar2.f949e = false;
        }
        if (arrayList3.size() > 0) {
            if (cVar2.f948d == null) {
                cVar2.f948d = new b(cVar2.f947c);
            }
            b bVar = cVar2.f948d;
            ((Choreographer) bVar.f944d).postFrameCallback((a) bVar.f945e);
        }
    }
}
