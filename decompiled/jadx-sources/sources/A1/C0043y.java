package A1;

import android.util.Log;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: A1.y, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0043y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Y f277a;
    public final C0009b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0036q f278c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d2.e f279d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d2.e f280e;
    public final ConcurrentHashMap.KeySetView f;
    public final AtomicBoolean g;

    public C0043y(Y sessionManager, D0 runtimePreparer, C0009b activityLauncher) {
        C0036q now = new C0036q(0);
        Intrinsics.checkNotNullParameter(sessionManager, "sessionManager");
        Intrinsics.checkNotNullParameter(runtimePreparer, "runtimePreparer");
        Intrinsics.checkNotNullParameter(activityLauncher, "activityLauncher");
        Intrinsics.checkNotNullParameter(now, "now");
        this.f277a = sessionManager;
        this.b = activityLauncher;
        this.f278c = now;
        this.f279d = new d2.e();
        this.f280e = new d2.e();
        this.f = ConcurrentHashMap.newKeySet();
        this.g = new AtomicBoolean(false);
    }

    public static EnumC0014d0 e(Throwable th) {
        if (th instanceof I0) {
            return EnumC0014d0.f;
        }
        return th instanceof J0 ? EnumC0014d0.f181e : EnumC0014d0.f181e;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x009f A[Catch: all -> 0x003c, TryCatch #2 {all -> 0x003c, blocks: (B:14:0x0037, B:45:0x00ce, B:47:0x00d6, B:48:0x00de, B:34:0x0099, B:36:0x009f, B:38:0x00a3, B:40:0x00a9, B:41:0x00b1), top: B:59:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a9 A[Catch: all -> 0x003c, TryCatch #2 {all -> 0x003c, blocks: (B:14:0x0037, B:45:0x00ce, B:47:0x00d6, B:48:0x00de, B:34:0x0099, B:36:0x009f, B:38:0x00a3, B:40:0x00a9, B:41:0x00b1), top: B:59:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b1 A[Catch: all -> 0x003c, TryCatch #2 {all -> 0x003c, blocks: (B:14:0x0037, B:45:0x00ce, B:47:0x00d6, B:48:0x00de, B:34:0x0099, B:36:0x009f, B:38:0x00a3, B:40:0x00a9, B:41:0x00b1), top: B:59:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d6 A[Catch: all -> 0x003c, TryCatch #2 {all -> 0x003c, blocks: (B:14:0x0037, B:45:0x00ce, B:47:0x00d6, B:48:0x00de, B:34:0x0099, B:36:0x009f, B:38:0x00a3, B:40:0x00a9, B:41:0x00b1), top: B:59:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00de A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #2 {all -> 0x003c, blocks: (B:14:0x0037, B:45:0x00ce, B:47:0x00d6, B:48:0x00de, B:34:0x0099, B:36:0x009f, B:38:0x00a3, B:40:0x00a9, B:41:0x00b1), top: B:59:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r3v0, types: [A1.Y] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v5 */
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
    public final Object a(String str, ContinuationImpl continuationImpl) throws Throwable {
        C0037s c0037s;
        int i3;
        d2.a aVar;
        ?? r13;
        ?? r6;
        d2.a aVar2;
        o0 o0Var;
        String str2;
        ?? r2;
        Object c0022h0;
        d2.a aVar3;
        d2.a aVar4;
        if (continuationImpl instanceof C0037s) {
            c0037s = (C0037s) continuationImpl;
            int i4 = c0037s.f228i;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c0037s.f228i = i4 - Integer.MIN_VALUE;
            } else {
                c0037s = new C0037s(this, continuationImpl);
            }
        } else {
            c0037s = new C0037s(this, continuationImpl);
        }
        Object objA = c0037s.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c0037s.f228i;
        ?? r3 = this.f277a;
        int i6 = 0;
        try {
            try {
                if (i5 == 0) {
                    ResultKt.throwOnFailure(objA);
                    c0037s.b = str;
                    d2.e eVar = this.f279d;
                    c0037s.f224c = eVar;
                    c0037s.f226e = 0;
                    c0037s.f228i = 1;
                    if (eVar.c(c0037s) != coroutine_suspended) {
                        i3 = 0;
                        r13 = str;
                        aVar = eVar;
                    }
                    return coroutine_suspended;
                }
                if (i5 != 1) {
                    if (i5 == 2) {
                        i6 = c0037s.f;
                        int i7 = c0037s.f226e;
                        d2.a aVar5 = c0037s.f224c;
                        String str3 = c0037s.b;
                        try {
                            ResultKt.throwOnFailure(objA);
                            i3 = i7;
                            aVar2 = aVar5;
                            r6 = str3;
                            o0Var = ((C0008a0) objA).f166d;
                            if (o0Var != null) {
                                str2 = o0Var.f211a;
                            } else {
                                str2 = null;
                            }
                            if (Intrinsics.areEqual(str2, (Object) r6)) {
                                this.f.add(r6);
                                c0037s.b = r6;
                                c0037s.f224c = aVar2;
                                c0037s.f225d = SpillingKt.nullOutSpilledVariable(o0Var);
                                c0037s.f226e = i3;
                                c0037s.f = i6;
                                c0037s.f228i = 3;
                                objA = r3.a(r6, c0037s);
                                if (objA != coroutine_suspended) {
                                    r2 = r6;
                                    aVar4 = aVar2;
                                }
                                return coroutine_suspended;
                            }
                            c0022h0 = new C0022h0(r6, EnumC0014d0.b);
                            aVar3 = aVar2;
                            ((d2.e) aVar3).d(null);
                            return c0022h0;
                        } catch (Throwable th) {
                            th = th;
                            str = aVar5;
                            ((d2.e) str).d(null);
                            throw th;
                        }
                    }
                    if (i5 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d2.a aVar6 = c0037s.f224c;
                    String str4 = c0037s.b;
                    ResultKt.throwOnFailure(objA);
                    r2 = str4;
                    aVar4 = aVar6;
                    if (((Boolean) objA).booleanValue()) {
                        c0022h0 = C0020g0.f191a;
                        aVar3 = aVar4;
                    } else {
                        c0022h0 = new C0022h0(r2, EnumC0014d0.f181e);
                        aVar3 = aVar4;
                    }
                    ((d2.e) aVar3).d(null);
                    return c0022h0;
                }
                int i8 = c0037s.f226e;
                d2.a aVar7 = c0037s.f224c;
                String str5 = c0037s.b;
                ResultKt.throwOnFailure(objA);
                aVar = aVar7;
                i3 = i8;
                r13 = str5;
                x0 x0Var = x0.f274c;
                C0015e c0015e = new C0015e(6);
                c0037s.b = r13;
                c0037s.f224c = aVar;
                c0037s.f226e = i3;
                c0037s.f = 0;
                c0037s.f228i = 2;
                Object objL = r3.l(x0Var, c0015e, c0037s);
                if (objL != coroutine_suspended) {
                    r6 = r13;
                    aVar2 = aVar;
                    objA = objL;
                    o0Var = ((C0008a0) objA).f166d;
                    if (o0Var != null) {
                        str2 = o0Var.f211a;
                    } else {
                        str2 = null;
                    }
                    if (Intrinsics.areEqual(str2, (Object) r6)) {
                        c0022h0 = new C0022h0(r6, EnumC0014d0.b);
                        aVar3 = aVar2;
                    } else {
                        this.f.add(r6);
                        c0037s.b = r6;
                        c0037s.f224c = aVar2;
                        c0037s.f225d = SpillingKt.nullOutSpilledVariable(o0Var);
                        c0037s.f226e = i3;
                        c0037s.f = i6;
                        c0037s.f228i = 3;
                        objA = r3.a(r6, c0037s);
                        if (objA != coroutine_suspended) {
                            r2 = r6;
                            aVar4 = aVar2;
                            if (((Boolean) objA).booleanValue()) {
                                c0022h0 = new C0022h0(r2, EnumC0014d0.f181e);
                                aVar3 = aVar4;
                            } else {
                                c0022h0 = C0020g0.f191a;
                                aVar3 = aVar4;
                            }
                        }
                    }
                    ((d2.e) aVar3).d(null);
                    return c0022h0;
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                d2.a aVar8 = aVar;
                th = th2;
                str = aVar8;
                ((d2.e) str).d(null);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) {
        C0038t c0038t;
        if (continuationImpl instanceof C0038t) {
            c0038t = (C0038t) continuationImpl;
            int i3 = c0038t.f231e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0038t.f231e = i3 - Integer.MIN_VALUE;
            } else {
                c0038t = new C0038t(this, continuationImpl);
            }
        } else {
            c0038t = new C0038t(this, continuationImpl);
        }
        Object objL = c0038t.f229c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c0038t.f231e;
        Y y2 = this.f277a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objL);
            x0 x0Var = x0.f274c;
            C0015e c0015e = new C0015e(1);
            c0038t.f231e = 1;
            objL = y2.l(x0Var, c0015e, c0038t);
            if (objL != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i4 != 1) {
            if (i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objL);
            return null;
        }
        ResultKt.throwOnFailure(objL);
        o0 o0Var = ((C0008a0) objL).f166d;
        if (o0Var != null) {
            long jLongValue = ((Number) this.f278c.invoke()).longValue();
            long j2 = o0Var.f214e;
            if (j2 <= jLongValue) {
                long j3 = jLongValue - j2;
                if (j3 >= 0 && j3 < 600000) {
                    return o0Var;
                }
            }
            x0 x0Var2 = x0.b;
            C0035p c0035p = new C0035p(0, o0Var);
            c0038t.b = SpillingKt.nullOutSpilledVariable(o0Var);
            c0038t.f231e = 2;
            if (y2.l(x0Var2, c0035p, c0038t) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ContinuationImpl continuationImpl) {
        C0039u c0039u;
        Object objM9constructorimpl;
        if (continuationImpl instanceof C0039u) {
            c0039u = (C0039u) continuationImpl;
            int i3 = c0039u.f235e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0039u.f235e = i3 - Integer.MIN_VALUE;
            } else {
                c0039u = new C0039u(this, continuationImpl);
            }
        } else {
            c0039u = new C0039u(this, continuationImpl);
        }
        Object objB = c0039u.f233c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c0039u.f235e;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(objB);
                Result.Companion companion = Result.INSTANCE;
                c0039u.b = SpillingKt.nullOutSpilledVariable(this);
                c0039u.f235e = 1;
                objB = b(c0039u);
                if (objB == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objB);
            }
            o0 o0Var = (o0) objB;
            objM9constructorimpl = Result.m9constructorimpl(o0Var != null ? o0Var.f211a : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            return null;
        }
        return objM9constructorimpl;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:107:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:109:0x0300  */
    /* JADX WARN: Code duplicated, block: B:111:0x0306  */
    /* JADX WARN: Code duplicated, block: B:113:0x0316  */
    /* JADX WARN: Code duplicated, block: B:115:0x0325  */
    /* JADX WARN: Code duplicated, block: B:118:0x0365  */
    /* JADX WARN: Code duplicated, block: B:119:0x0367  */
    /* JADX WARN: Code duplicated, block: B:122:0x0377  */
    /* JADX WARN: Code duplicated, block: B:125:0x0384  */
    /* JADX WARN: Code duplicated, block: B:127:0x038c  */
    /* JADX WARN: Code duplicated, block: B:129:0x0392  */
    /* JADX WARN: Code duplicated, block: B:131:0x0396  */
    /* JADX WARN: Code duplicated, block: B:133:0x039e  */
    /* JADX WARN: Code duplicated, block: B:135:0x03a4  */
    /* JADX WARN: Code duplicated, block: B:138:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:142:0x0411  */
    /* JADX WARN: Code duplicated, block: B:145:0x0422  */
    /* JADX WARN: Code duplicated, block: B:147:0x0429 A[Catch: all -> 0x043d, TRY_ENTER, TryCatch #4 {all -> 0x043d, blocks: (B:196:0x059a, B:143:0x041c, B:147:0x0429, B:149:0x0431), top: B:211:0x041c }] */
    /* JADX WARN: Code duplicated, block: B:149:0x0431 A[Catch: all -> 0x043d, TRY_LEAVE, TryCatch #4 {all -> 0x043d, blocks: (B:196:0x059a, B:143:0x041c, B:147:0x0429, B:149:0x0431), top: B:211:0x041c }] */
    /* JADX WARN: Code duplicated, block: B:157:0x048a  */
    /* JADX WARN: Code duplicated, block: B:163:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:171:0x051c  */
    /* JADX WARN: Code duplicated, block: B:174:0x0529  */
    /* JADX WARN: Code duplicated, block: B:175:0x052c  */
    /* JADX WARN: Code duplicated, block: B:178:0x0535  */
    /* JADX WARN: Code duplicated, block: B:180:0x0539  */
    /* JADX WARN: Code duplicated, block: B:181:0x053c  */
    /* JADX WARN: Code duplicated, block: B:184:0x0545  */
    /* JADX WARN: Code duplicated, block: B:185:0x0547  */
    /* JADX WARN: Code duplicated, block: B:192:0x0590  */
    /* JADX WARN: Code duplicated, block: B:205:0x0441 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x016e A[PHI: r0 r6 r8 r9 r10
      0x016e: PHI (r0v48 java.lang.Object) = (r0v39 java.lang.Object), (r0v1 java.lang.Object) binds: [B:102:0x02ed, B:30:0x015d] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r6v28 A1.j) = (r6v25 A1.j), (r6v37 A1.j) binds: [B:102:0x02ed, B:30:0x015d] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r8v22 A1.Z) = (r8v19 A1.Z), (r8v25 A1.Z) binds: [B:102:0x02ed, B:30:0x015d] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r9v14 A1.o0) = (r9v11 A1.o0), (r9v17 A1.o0) binds: [B:102:0x02ed, B:30:0x015d] A[DONT_GENERATE, DONT_INLINE]
      0x016e: PHI (r10v9 java.lang.String) = (r10v7 java.lang.String), (r10v11 java.lang.String) binds: [B:102:0x02ed, B:30:0x015d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:46:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:48:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:51:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:54:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:57:0x0206  */
    /* JADX WARN: Code duplicated, block: B:58:0x0209  */
    /* JADX WARN: Code duplicated, block: B:61:0x020e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0250 A[DONT_INVERT, PHI: r6 r8 r9
      0x0250: PHI (r6v11 A1.Z) = (r6v8 A1.Z), (r6v17 A1.Z) binds: [B:60:0x020c, B:71:0x024f] A[DONT_GENERATE, DONT_INLINE]
      0x0250: PHI (r8v10 A1.o0) = (r8v7 A1.o0), (r8v11 A1.o0) binds: [B:60:0x020c, B:71:0x024f] A[DONT_GENERATE, DONT_INLINE]
      0x0250: PHI (r9v4 java.lang.String) = (r9v2 java.lang.String), (r9v5 java.lang.String) binds: [B:60:0x020c, B:71:0x024f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:73:0x0252  */
    /* JADX WARN: Code duplicated, block: B:78:0x0270  */
    /* JADX WARN: Code duplicated, block: B:81:0x0277  */
    /* JADX WARN: Code duplicated, block: B:83:0x027d  */
    /* JADX WARN: Code duplicated, block: B:86:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:89:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    /* JADX WARN: Code duplicated, block: B:91:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:93:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:94:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:97:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:99:0x02c2  */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x054d, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r3.f173a, r14) != false) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x021b, code lost:
    
        if (r0 == r5) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0263, code lost:
    
        if (r0 == r5) goto L191;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [int] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v45 */
    /* JADX WARN: Type inference failed for: r6v46 */
    /* JADX WARN: Type inference failed for: r6v70 */
    /* JADX WARN: Type inference failed for: r6v71 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(java.lang.String r27, kotlin.coroutines.jvm.internal.ContinuationImpl r28) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: A1.C0043y.d(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00f4 A[Catch: all -> 0x0154, PHI: r2 r14
      0x00f4: PHI (r2v10 d2.a) = (r2v6 d2.a), (r2v23 d2.a) binds: [B:53:0x00f1, B:22:0x0051] A[DONT_GENERATE, DONT_INLINE]
      0x00f4: PHI (r14v7 A1.e0) = (r14v6 A1.e0), (r14v10 A1.e0) binds: [B:53:0x00f1, B:22:0x0051] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #0 {all -> 0x0154, blocks: (B:55:0x00f4, B:52:0x00db), top: B:90:0x00db }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0100  */
    /* JADX WARN: Code duplicated, block: B:63:0x0118  */
    /* JADX WARN: Code duplicated, block: B:71:0x013e A[Catch: all -> 0x014d, TRY_LEAVE, TryCatch #5 {all -> 0x014d, blocks: (B:69:0x013a, B:71:0x013e, B:76:0x014f), top: B:99:0x013a }] */
    /* JADX WARN: Code duplicated, block: B:76:0x014f A[Catch: all -> 0x014d, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x014d, blocks: (B:69:0x013a, B:71:0x013e, B:76:0x014f), top: B:99:0x013a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:85:0x0161  */
    /* JADX WARN: Code duplicated, block: B:87:0x016d  */
    /* JADX WARN: Code duplicated, block: B:95:0x0108 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final Object f(C0016e0 c0016e0, ContinuationImpl continuationImpl) throws Throwable {
        C0041w c0041w;
        C0016e0 c0016e1;
        d2.a aVar;
        int i3;
        Y y2;
        x0 x0Var;
        C0035p c0035p;
        Throwable th;
        boolean zCompareAndSet;
        C0016e0 c0016e2;
        C0016e0 c0016e3 = c0016e0;
        if (continuationImpl instanceof C0041w) {
            c0041w = (C0041w) continuationImpl;
            int i4 = c0041w.g;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c0041w.g = i4 - Integer.MIN_VALUE;
            } else {
                c0041w = new C0041w(this, continuationImpl);
            }
        } else {
            c0041w = new C0041w(this, continuationImpl);
        }
        Object objD = c0041w.f267e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c0041w.g;
        AtomicBoolean atomicBoolean = this.g;
        if (i5 == 0) {
            ResultKt.throwOnFailure(objD);
            String str = c0016e3.f184a;
            String str2 = c0016e3.f185c;
            Log.d("GameLaunch", "coordinator request begin request=" + str + " engine=" + str2);
            if (StringsKt.isBlank(str) || c0016e3.b < 0 || StringsKt.isBlank(str2) || StringsKt.isBlank(c0016e3.f186d) || StringsKt.isBlank(c0016e3.f187e)) {
                return new C0022h0(str, EnumC0014d0.b);
            }
            EnumC0012c0 source = c0016e3.g;
            if (source != null) {
                Intrinsics.checkNotNullParameter(source, "source");
                switch (source.ordinal()) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        break;
                    case 8:
                    case 9:
                    case 10:
                        return new C0022h0(str, EnumC0014d0.b);
                    default:
                        throw new NoWhenBranchMatchedException();
                }
            }
            try {
                d2.e eVar = this.f279d;
                c0041w.b = c0016e3;
                c0041w.f265c = eVar;
                c0041w.f266d = 0;
                c0041w.g = 1;
                if (eVar.c(c0041w) != coroutine_suspended) {
                    c0016e1 = c0016e3;
                    aVar = eVar;
                    i3 = 0;
                    y2 = this.f277a;
                    x0Var = x0.b;
                    c0035p = new C0035p(1, c0016e1);
                    c0041w.b = c0016e1;
                    c0041w.f265c = aVar;
                    c0041w.f266d = i3;
                    c0041w.g = 2;
                    if (y2.l(x0Var, c0035p, c0041w) == coroutine_suspended) {
                        zCompareAndSet = atomicBoolean.compareAndSet(false, true);
                        ((d2.e) aVar).d(null);
                        if (!zCompareAndSet) {
                            return new C0030l0(c0016e1.f184a);
                        }
                        String str3 = c0016e1.f184a;
                        c0041w.b = c0016e1;
                        c0041w.f265c = null;
                        c0041w.g = 3;
                        objD = d(str3, c0041w);
                        if (objD != coroutine_suspended) {
                            c0016e2 = c0016e1;
                            InterfaceC0032m0 interfaceC0032m0 = (InterfaceC0032m0) objD;
                            Log.d("GameLaunch", "coordinator request result request=" + c0016e2.f184a + " result=" + interfaceC0032m0);
                            atomicBoolean.set(false);
                            return interfaceC0032m0;
                        }
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th2) {
                th = th2;
                if (th instanceof CancellationException) {
                    throw th;
                }
                return new C0022h0(c0016e3.f184a, e(th));
            }
        }
        if (i5 == 1) {
            int i6 = c0041w.f266d;
            d2.a aVar2 = c0041w.f265c;
            c0016e1 = c0041w.b;
            try {
                ResultKt.throwOnFailure(objD);
                i3 = i6;
                aVar = aVar2;
                try {
                    y2 = this.f277a;
                    x0Var = x0.b;
                    c0035p = new C0035p(1, c0016e1);
                    c0041w.b = c0016e1;
                    c0041w.f265c = aVar;
                    c0041w.f266d = i3;
                    c0041w.g = 2;
                    if (y2.l(x0Var, c0035p, c0041w) == coroutine_suspended) {
                        zCompareAndSet = atomicBoolean.compareAndSet(false, true);
                        ((d2.e) aVar).d(null);
                        if (!zCompareAndSet) {
                            return new C0030l0(c0016e1.f184a);
                        }
                        String str4 = c0016e1.f184a;
                        c0041w.b = c0016e1;
                        c0041w.f265c = null;
                        c0041w.g = 3;
                        objD = d(str4, c0041w);
                        if (objD != coroutine_suspended) {
                            c0016e2 = c0016e1;
                            InterfaceC0032m0 interfaceC0032m1 = (InterfaceC0032m0) objD;
                            Log.d("GameLaunch", "coordinator request result request=" + c0016e2.f184a + " result=" + interfaceC0032m1);
                            atomicBoolean.set(false);
                            return interfaceC0032m1;
                        }
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    ((d2.e) aVar).d(null);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                c0016e3 = c0016e1;
                if (th instanceof CancellationException) {
                    return new C0022h0(c0016e3.f184a, e(th));
                }
                throw th;
            }
        }
        if (i5 != 2) {
            if (i5 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c0016e2 = c0041w.b;
            try {
                ResultKt.throwOnFailure(objD);
                InterfaceC0032m0 interfaceC0032m2 = (InterfaceC0032m0) objD;
                Log.d("GameLaunch", "coordinator request result request=" + c0016e2.f184a + " result=" + interfaceC0032m2);
                atomicBoolean.set(false);
                return interfaceC0032m2;
            } catch (Throwable th5) {
                th = th5;
                try {
                    if (!(th instanceof CancellationException)) {
                        throw th;
                    }
                    C0022h0 c0022h0 = new C0022h0(c0016e2.f184a, e(th));
                    atomicBoolean.set(false);
                    return c0022h0;
                } catch (Throwable th6) {
                    atomicBoolean.set(false);
                    throw th6;
                }
            }
        }
        aVar = c0041w.f265c;
        C0016e0 c0016e4 = c0041w.b;
        try {
            ResultKt.throwOnFailure(objD);
            c0016e1 = c0016e4;
            zCompareAndSet = atomicBoolean.compareAndSet(false, true);
            ((d2.e) aVar).d(null);
            if (!zCompareAndSet) {
                return new C0030l0(c0016e1.f184a);
            }
            try {
                String str5 = c0016e1.f184a;
                c0041w.b = c0016e1;
                c0041w.f265c = null;
                c0041w.g = 3;
                objD = d(str5, c0041w);
                if (objD != coroutine_suspended) {
                    c0016e2 = c0016e1;
                    InterfaceC0032m0 interfaceC0032m3 = (InterfaceC0032m0) objD;
                    Log.d("GameLaunch", "coordinator request result request=" + c0016e2.f184a + " result=" + interfaceC0032m3);
                    atomicBoolean.set(false);
                    return interfaceC0032m3;
                }
                return coroutine_suspended;
            } catch (Throwable th7) {
                th = th7;
                c0016e2 = c0016e1;
                if (!(th instanceof CancellationException)) {
                    throw th;
                }
                C0022h0 c0022h1 = new C0022h0(c0016e2.f184a, e(th));
                atomicBoolean.set(false);
                return c0022h1;
            }
        } catch (Throwable th8) {
            th = th8;
            ((d2.e) aVar).d(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x007e A[Catch: all -> 0x008d, TRY_LEAVE, TryCatch #2 {all -> 0x008d, blocks: (B:44:0x007a, B:46:0x007e, B:51:0x008f), top: B:63:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:51:0x008f A[Catch: all -> 0x008d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x008d, blocks: (B:44:0x007a, B:46:0x007e, B:51:0x008f), top: B:63:0x007a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(ContinuationImpl continuationImpl) {
        C0042x c0042x;
        o0 o0Var;
        Throwable th;
        if (continuationImpl instanceof C0042x) {
            c0042x = (C0042x) continuationImpl;
            int i3 = c0042x.f273e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0042x.f273e = i3 - Integer.MIN_VALUE;
            } else {
                c0042x = new C0042x(this, continuationImpl);
            }
        } else {
            c0042x = new C0042x(this, continuationImpl);
        }
        Object objB = c0042x.f271c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c0042x.f273e;
        AtomicBoolean atomicBoolean = this.g;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(objB);
                c0042x.f273e = 1;
                objB = b(c0042x);
                if (objB == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i4 != 1) {
                if (i4 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                o0Var = c0042x.b;
                try {
                    ResultKt.throwOnFailure(objB);
                    InterfaceC0032m0 interfaceC0032m0 = (InterfaceC0032m0) objB;
                    atomicBoolean.set(false);
                    return interfaceC0032m0;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (!(th instanceof CancellationException)) {
                            throw th;
                        }
                        C0022h0 c0022h0 = new C0022h0(o0Var.f211a, e(th));
                        atomicBoolean.set(false);
                        return c0022h0;
                    } catch (Throwable th3) {
                        atomicBoolean.set(false);
                        throw th3;
                    }
                }
            }
            ResultKt.throwOnFailure(objB);
            o0 o0Var2 = (o0) objB;
            if (o0Var2 == null) {
                return C0020g0.f191a;
            }
            String str = o0Var2.f211a;
            if (!atomicBoolean.compareAndSet(false, true)) {
                return new C0030l0(str);
            }
            try {
                c0042x.b = o0Var2;
                c0042x.f273e = 2;
                Object objD = d(str, c0042x);
                if (objD != coroutine_suspended) {
                    o0Var = o0Var2;
                    objB = objD;
                    InterfaceC0032m0 interfaceC0032m1 = (InterfaceC0032m0) objB;
                    atomicBoolean.set(false);
                    return interfaceC0032m1;
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                o0Var = o0Var2;
                th = th4;
                if (!(th instanceof CancellationException)) {
                    throw th;
                }
                C0022h0 c0022h1 = new C0022h0(o0Var.f211a, e(th));
                atomicBoolean.set(false);
                return c0022h1;
            }
        } catch (Throwable th5) {
            if (th5 instanceof CancellationException) {
                throw th5;
            }
            return new C0022h0("recovery", e(th5));
        }
    }
}
