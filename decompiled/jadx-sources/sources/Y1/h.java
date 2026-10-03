package Y1;

import V1.C0189e;
import a2.w;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends Z1.a implements e, b {
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_state");

    @Volatile
    private volatile Object _state;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2477e;

    public h(Object obj) {
        this._state = obj;
    }

    public final void a(Object obj) {
        int i3;
        Z1.b[] bVarArr;
        w wVar;
        if (obj == null) {
            obj = Z1.c.f2488a;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            if (Intrinsics.areEqual(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i4 = this.f2477e;
            if ((i4 & 1) != 0) {
                this.f2477e = i4 + 2;
                return;
            }
            int i5 = i4 + 1;
            this.f2477e = i5;
            Z1.b[] bVarArr2 = this.b;
            Unit unit = Unit.INSTANCE;
            while (true) {
                j[] jVarArr = (j[]) bVarArr2;
                if (jVarArr != null) {
                    for (j jVar : jVarArr) {
                        if (jVar != null) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j.f2479a;
                            while (true) {
                                Object obj2 = atomicReferenceFieldUpdater2.get(jVar);
                                if (obj2 == null || obj2 == (wVar = i.b)) {
                                    break;
                                }
                                w wVar2 = i.f2478a;
                                if (obj2 != wVar2) {
                                    do {
                                        if (atomicReferenceFieldUpdater2.compareAndSet(jVar, obj2, wVar2)) {
                                            Result.Companion companion = Result.INSTANCE;
                                            ((C0189e) obj2).resumeWith(Result.m9constructorimpl(Unit.INSTANCE));
                                            break;
                                        }
                                    } while (atomicReferenceFieldUpdater2.get(jVar) == obj2);
                                } else {
                                    do {
                                        if (atomicReferenceFieldUpdater2.compareAndSet(jVar, obj2, wVar)) {
                                            break;
                                        }
                                    } while (atomicReferenceFieldUpdater2.get(jVar) == obj2);
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i3 = this.f2477e;
                    if (i3 == i5) {
                        this.f2477e = i5 + 1;
                        return;
                    } else {
                        bVarArr = this.b;
                        Unit unit2 = Unit.INSTANCE;
                    }
                }
                bVarArr2 = bVarArr;
                i5 = i3;
            }
        }
    }

    @Override // Y1.c
    public final Object emit(Object obj, Continuation continuation) {
        a(obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d5 A[Catch: all -> 0x003e, TryCatch #1 {all -> 0x003e, blocks: (B:14:0x0039, B:50:0x00cd, B:52:0x00d5, B:55:0x00dc, B:56:0x00e2, B:58:0x00e5, B:68:0x0106, B:71:0x0119, B:60:0x00eb, B:64:0x00f2, B:21:0x0053, B:24:0x005e, B:49:0x00be), top: B:89:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00e5 A[Catch: all -> 0x003e, TryCatch #1 {all -> 0x003e, blocks: (B:14:0x0039, B:50:0x00cd, B:52:0x00d5, B:55:0x00dc, B:56:0x00e2, B:58:0x00e5, B:68:0x0106, B:71:0x0119, B:60:0x00eb, B:64:0x00f2, B:21:0x0053, B:24:0x005e, B:49:0x00be), top: B:89:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:66:0x0104  */
    /* JADX WARN: Code duplicated, block: B:67:0x0105  */
    /* JADX WARN: Code duplicated, block: B:70:0x0118  */
    /* JADX WARN: Code duplicated, block: B:71:0x0119 A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #1 {all -> 0x003e, blocks: (B:14:0x0039, B:50:0x00cd, B:52:0x00d5, B:55:0x00dc, B:56:0x00e2, B:58:0x00e5, B:68:0x0106, B:71:0x0119, B:60:0x00eb, B:64:0x00f2, B:21:0x0053, B:24:0x005e, B:49:0x00be), top: B:89:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v4, types: [Y1.j, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v5, types: [Y1.j] */
    /* JADX WARN: Type inference failed for: r7v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0118 -> B:50:0x00cd). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0129 -> B:50:0x00cd). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // Y1.b
    public final java.lang.Object f(Y1.c r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: Y1.h.f(Y1.c, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
