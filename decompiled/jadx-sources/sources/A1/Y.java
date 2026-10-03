package A1;

import V1.AbstractC0203t;
import android.app.ActivityManager;
import androidx.core.os.EnvironmentCompat;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final K0 f142a;
    public final C0019g b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0021h f143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0013d f144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final D0 f145e;
    public final C0036q f;
    public final J g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0036q f146h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0036q f147i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d2.e f148j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile Z f149k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f150l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f151m;

    public Y(K0 registry, C0019g tokenProtector, C0021h processProbe, C0013d controller, AbstractC0203t ioDispatcher) {
        C0036q now = new C0036q(1);
        J sleep = new J(2, null);
        C0036q newSessionId = new C0036q(2);
        C0036q newToken = new C0036q(3);
        Intrinsics.checkNotNullParameter(registry, "registry");
        Intrinsics.checkNotNullParameter(tokenProtector, "tokenProtector");
        Intrinsics.checkNotNullParameter(processProbe, "processProbe");
        Intrinsics.checkNotNullParameter(controller, "controller");
        D0 activityLifecycle = D0.f55a;
        Intrinsics.checkNotNullParameter(activityLifecycle, "activityLifecycle");
        Intrinsics.checkNotNullParameter(now, "now");
        Intrinsics.checkNotNullParameter(sleep, "sleep");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(newSessionId, "newSessionId");
        Intrinsics.checkNotNullParameter(newToken, "newToken");
        this.f142a = registry;
        this.b = tokenProtector;
        this.f143c = processProbe;
        this.f144d = controller;
        this.f145e = activityLifecycle;
        this.f = now;
        this.g = sleep;
        this.f146h = newSessionId;
        this.f147i = newToken;
        this.f148j = new d2.e();
        this.f150l = Long.MIN_VALUE;
        this.f151m = Long.MIN_VALUE;
    }

    public static boolean f(Z z2, K k2) {
        if (z2 == null) {
            return false;
        }
        String str = z2.f152a;
        Z z3 = k2.f68a;
        return Intrinsics.areEqual(str, z3.f152a) && Intrinsics.areEqual(z2.f157i, z3.f157i) && Intrinsics.areEqual(z2.g, z3.g);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        L l2;
        d2.e eVar;
        if (continuationImpl instanceof L) {
            l2 = (L) continuationImpl;
            int i3 = l2.f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                l2.f = i3 - Integer.MIN_VALUE;
            } else {
                l2 = new L(this, continuationImpl);
            }
        } else {
            l2 = new L(this, continuationImpl);
        }
        Object obj = l2.f84d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = l2.f;
        boolean z2 = true;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            l2.b = str;
            l2.f83c = eVar;
            l2.f = 1;
            if (eVar.c(l2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d2.e eVar2 = l2.f83c;
            String str2 = l2.b;
            ResultKt.throwOnFailure(obj);
            eVar = eVar2;
            str = str2;
        }
        try {
            C0008a0 c0008a0L = this.f142a.l();
            o0 o0Var = c0008a0L.f166d;
            final boolean z3 = false;
            if (Intrinsics.areEqual(o0Var != null ? o0Var.f211a : null, str)) {
                Z z4 = c0008a0L.f165c;
                if (Intrinsics.areEqual(z4 != null ? z4.f157i : null, str) && z4.f == L0.b && z4.f155e == 0) {
                    z3 = true;
                }
                this.f149k = K0.f(this.f142a, new Function1() { // from class: A1.I
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        C0008a0 snapshot = (C0008a0) obj2;
                        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                        return C0008a0.a(snapshot, 0L, z3 ? null : snapshot.f165c, null, null, 51);
                    }
                }).f165c;
            } else {
                z2 = false;
            }
            return Boxing.boxBoolean(z2);
        } finally {
            eVar.d(null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:101:0x026e A[Catch: all -> 0x028a, TryCatch #6 {all -> 0x028a, blocks: (B:99:0x0260, B:101:0x026e, B:104:0x0278), top: B:173:0x0260 }] */
    /* JADX WARN: Code duplicated, block: B:103:0x0277  */
    /* JADX WARN: Code duplicated, block: B:104:0x0278 A[Catch: all -> 0x028a, TRY_LEAVE, TryCatch #6 {all -> 0x028a, blocks: (B:99:0x0260, B:101:0x026e, B:104:0x0278), top: B:173:0x0260 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x028d  */
    /* JADX WARN: Code duplicated, block: B:111:0x0295  */
    /* JADX WARN: Code duplicated, block: B:124:0x02da  */
    /* JADX WARN: Code duplicated, block: B:127:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:130:0x030a  */
    /* JADX WARN: Code duplicated, block: B:133:0x031a  */
    /* JADX WARN: Code duplicated, block: B:134:0x0320  */
    /* JADX WARN: Code duplicated, block: B:135:0x0324  */
    /* JADX WARN: Code duplicated, block: B:139:0x0350 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:142:0x0357  */
    /* JADX WARN: Code duplicated, block: B:146:0x037b  */
    /* JADX WARN: Code duplicated, block: B:149:0x038a  */
    /* JADX WARN: Code duplicated, block: B:150:0x038c A[Catch: all -> 0x03a8, TRY_LEAVE, TryCatch #5 {all -> 0x03a8, blocks: (B:147:0x037c, B:150:0x038c), top: B:171:0x037c }] */
    /* JADX WARN: Code duplicated, block: B:154:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:155:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:166:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0298 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:27:0x00da A[Catch: all -> 0x00e7, TryCatch #4 {all -> 0x00e7, blocks: (B:24:0x00ca, B:27:0x00da, B:29:0x00e0, B:32:0x00ea, B:34:0x00ee, B:36:0x00f2, B:38:0x010a, B:40:0x010f, B:41:0x0123, B:43:0x0129, B:50:0x0156, B:52:0x015c, B:53:0x0173, B:49:0x014c, B:54:0x0185, B:46:0x012e), top: B:170:0x00ca, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00e0 A[Catch: all -> 0x00e7, TryCatch #4 {all -> 0x00e7, blocks: (B:24:0x00ca, B:27:0x00da, B:29:0x00e0, B:32:0x00ea, B:34:0x00ee, B:36:0x00f2, B:38:0x010a, B:40:0x010f, B:41:0x0123, B:43:0x0129, B:50:0x0156, B:52:0x015c, B:53:0x0173, B:49:0x014c, B:54:0x0185, B:46:0x012e), top: B:170:0x00ca, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ea A[Catch: all -> 0x00e7, TryCatch #4 {all -> 0x00e7, blocks: (B:24:0x00ca, B:27:0x00da, B:29:0x00e0, B:32:0x00ea, B:34:0x00ee, B:36:0x00f2, B:38:0x010a, B:40:0x010f, B:41:0x0123, B:43:0x0129, B:50:0x0156, B:52:0x015c, B:53:0x0173, B:49:0x014c, B:54:0x0185, B:46:0x012e), top: B:170:0x00ca, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0185 A[Catch: all -> 0x00e7, TRY_LEAVE, TryCatch #4 {all -> 0x00e7, blocks: (B:24:0x00ca, B:27:0x00da, B:29:0x00e0, B:32:0x00ea, B:34:0x00ee, B:36:0x00f2, B:38:0x010a, B:40:0x010f, B:41:0x0123, B:43:0x0129, B:50:0x0156, B:52:0x015c, B:53:0x0173, B:49:0x014c, B:54:0x0185, B:46:0x012e), top: B:170:0x00ca, inners: #7 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0191  */
    /* JADX WARN: Code duplicated, block: B:59:0x0196  */
    /* JADX WARN: Code duplicated, block: B:61:0x0199  */
    /* JADX WARN: Code duplicated, block: B:63:0x019d  */
    /* JADX WARN: Code duplicated, block: B:65:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:88:0x0213 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:89:0x0214  */
    /* JADX WARN: Code duplicated, block: B:92:0x0231  */
    /* JADX WARN: Code duplicated, block: B:95:0x023d  */
    /* JADX WARN: Code duplicated, block: B:98:0x025c  */
    public final Object b(String str, ContinuationImpl continuationImpl) {
        M m2;
        String requestId;
        d2.a aVar;
        Z z2;
        L0 l2;
        String str2;
        EnumC0025j enumC0025j;
        Object objM9constructorimpl;
        Object k2;
        K k3;
        int i3;
        String str3;
        Object objM9constructorimpl2;
        EnumC0025j enumC0025j2;
        EnumC0025j enumC0025j3;
        Object objN;
        EnumC0025j enumC0025j4;
        Object obj;
        Object objE;
        EnumC0025j enumC0025j5;
        K k4;
        d2.e eVar;
        Object obj2;
        d2.a aVar2;
        K k5;
        Z z3;
        boolean z4;
        String str4;
        Object objM9constructorimpl3;
        EnumC0025j enumC0025j6;
        EnumC0025j enumC0025j7;
        String str5;
        Object objN2;
        EnumC0025j enumC0025j8;
        boolean z5;
        K k6;
        Object obj3;
        String str6;
        d2.e eVar2;
        d2.a aVar3;
        Object objE2;
        boolean z6;
        if (continuationImpl instanceof M) {
            m2 = (M) continuationImpl;
            int i4 = m2.f96j;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                m2.f96j = i4 - Integer.MIN_VALUE;
            } else {
                m2 = new M(this, continuationImpl);
            }
        } else {
            m2 = new M(this, continuationImpl);
        }
        Object obj4 = m2.f94h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        EnumC0025j enumC0025j9 = null;
        switch (m2.f96j) {
            case 0:
                ResultKt.throwOnFailure(obj4);
                d2.e eVar3 = this.f148j;
                m2.b = str;
                m2.f91c = eVar3;
                m2.f96j = 1;
                if (eVar3.c(m2) != coroutine_suspended) {
                    requestId = str;
                    aVar = eVar3;
                    try {
                        z2 = this.f142a.l().f165c;
                        if (z2 != null) {
                            str2 = "sessionToken";
                            k2 = null;
                        } else {
                            l2 = z2.f;
                            if (l2 == L0.g) {
                                k2 = EnumC0025j.f198e;
                                str2 = "sessionToken";
                            } else {
                                if (z2.f155e == 0 || l2 != L0.b) {
                                    str2 = "sessionToken";
                                    if (l2 != L0.f87d || l2 == L0.f88e) {
                                        enumC0025j = EnumC0025j.f197d;
                                    } else {
                                        try {
                                            Result.Companion companion = Result.INSTANCE;
                                            objM9constructorimpl = Result.m9constructorimpl(new String(this.b.a(new C0027k(z2.g, z2.f156h)), Charsets.UTF_8));
                                        } catch (Throwable th) {
                                            Result.Companion companion2 = Result.INSTANCE;
                                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                                        }
                                        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                                            this.f149k = K0.f(this.f142a, new E(z2, 2)).f165c;
                                            k2 = new K(z2, (String) objM9constructorimpl);
                                        } else {
                                            this.f149k = K0.f(this.f142a, new E(z2, 1)).f165c;
                                            enumC0025j = EnumC0025j.f198e;
                                        }
                                    }
                                    break;
                                } else {
                                    str2 = "sessionToken";
                                    if (((Number) this.f.invoke()).longValue() - z2.f158j < 15000) {
                                        enumC0025j = EnumC0025j.f197d;
                                    } else {
                                        this.f149k = K0.f(this.f142a, new C0015e(8)).f165c;
                                        enumC0025j = EnumC0025j.f196c;
                                    }
                                }
                                k2 = enumC0025j;
                            }
                        }
                        ((d2.e) aVar).d(null);
                        if (k2 instanceof K) {
                            k3 = (K) k2;
                        } else {
                            k3 = null;
                        }
                        if (k3 == null) {
                            enumC0025j9 = k2 instanceof EnumC0025j ? (EnumC0025j) k2 : null;
                            if (enumC0025j9 == null) {
                                return EnumC0025j.f196c;
                            }
                            return enumC0025j9;
                        }
                        try {
                            Result.Companion companion3 = Result.INSTANCE;
                            i3 = 2;
                            try {
                                C0013d c0013d = this.f144d;
                                String sessionId = k3.f68a.f152a;
                                String str7 = k3.b;
                                c0013d.getClass();
                                Intrinsics.checkNotNullParameter(requestId, "requestId");
                                Intrinsics.checkNotNullParameter(sessionId, "sessionId");
                                str3 = str2;
                                try {
                                    Intrinsics.checkNotNullParameter(str7, str3);
                                    objM9constructorimpl2 = Result.m9constructorimpl(c0013d.F("com.minhub.gamehub.action.REQUEST_CLOSE_GAME", requestId, sessionId, str7, L0.f87d));
                                } catch (Throwable th2) {
                                    th = th2;
                                    Result.Companion companion4 = Result.INSTANCE;
                                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                str3 = str2;
                                Result.Companion companion5 = Result.INSTANCE;
                                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                                enumC0025j2 = EnumC0025j.f198e;
                                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                                    objM9constructorimpl2 = enumC0025j2;
                                }
                                enumC0025j3 = (EnumC0025j) objM9constructorimpl2;
                                if (enumC0025j3 == EnumC0025j.b) {
                                    Z z7 = k3.f68a;
                                    m2.b = requestId;
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(k2);
                                    m2.f92d = k3;
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j3);
                                    m2.f96j = 3;
                                    objN = n(z7, m2);
                                    if (objN != coroutine_suspended) {
                                        enumC0025j4 = enumC0025j3;
                                        obj4 = objN;
                                        obj = k2;
                                        if (!((Boolean) obj4).booleanValue()) {
                                            eVar = this.f148j;
                                            m2.b = requestId;
                                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                            m2.f92d = k3;
                                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j4);
                                            m2.f = eVar;
                                            m2.f96j = 4;
                                            if (eVar.c(m2) != coroutine_suspended) {
                                                enumC0025j5 = enumC0025j4;
                                                obj2 = obj;
                                                aVar2 = eVar;
                                                k5 = k3;
                                                try {
                                                    z3 = this.f142a.l().f165c;
                                                    if (f(z3, k5)) {
                                                        Intrinsics.checkNotNull(z3);
                                                        if (z3.f != L0.f87d) {
                                                            z4 = false;
                                                        } else {
                                                            this.f149k = K0.f(this.f142a, new E(z3, 3)).f165c;
                                                            z4 = true;
                                                        }
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    if (!z4) {
                                                        return EnumC0025j.f198e;
                                                    }
                                                    try {
                                                        Result.Companion companion6 = Result.INSTANCE;
                                                        C0013d c0013d2 = this.f144d;
                                                        String sessionId2 = k5.f68a.f152a;
                                                        String str8 = k5.b;
                                                        c0013d2.getClass();
                                                        Intrinsics.checkNotNullParameter(requestId, "requestId");
                                                        Intrinsics.checkNotNullParameter(sessionId2, "sessionId");
                                                        Intrinsics.checkNotNullParameter(str8, str3);
                                                        str4 = requestId;
                                                        try {
                                                            objM9constructorimpl3 = Result.m9constructorimpl(c0013d2.F("com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", str4, sessionId2, str8, L0.f88e));
                                                        } catch (Throwable th4) {
                                                            th = th4;
                                                            Result.Companion companion7 = Result.INSTANCE;
                                                            objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th));
                                                        }
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                        str4 = requestId;
                                                    }
                                                    enumC0025j6 = EnumC0025j.f198e;
                                                    if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                                                        objM9constructorimpl3 = enumC0025j6;
                                                    }
                                                    enumC0025j7 = (EnumC0025j) objM9constructorimpl3;
                                                    if (enumC0025j7 == EnumC0025j.b) {
                                                        Z z8 = k5.f68a;
                                                        m2.b = SpillingKt.nullOutSpilledVariable(str4);
                                                        m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                                        m2.f92d = k5;
                                                        m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                                        m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                                        m2.g = z4;
                                                        m2.f96j = 5;
                                                        objN2 = n(z8, m2);
                                                        if (objN2 != coroutine_suspended) {
                                                            boolean z9 = z4;
                                                            enumC0025j8 = enumC0025j7;
                                                            obj4 = objN2;
                                                            z5 = z9;
                                                            k6 = k5;
                                                            obj3 = obj2;
                                                            str6 = str4;
                                                            if (((Boolean) obj4).booleanValue()) {
                                                                k4 = k6;
                                                                obj = obj3;
                                                                requestId = str6;
                                                                eVar2 = this.f148j;
                                                                m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                                                m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                                                m2.f92d = k4;
                                                                m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                                                m2.f = eVar2;
                                                                m2.f96j = 7;
                                                                if (eVar2.c(m2) != coroutine_suspended) {
                                                                    aVar3 = eVar2;
                                                                    try {
                                                                        if (f(this.f142a.l().f165c, k4)) {
                                                                            z6 = false;
                                                                        } else {
                                                                            K0.f(this.f142a, new C0015e(9));
                                                                            this.f149k = null;
                                                                            z6 = true;
                                                                        }
                                                                        return z6 ? EnumC0025j.b : EnumC0025j.f198e;
                                                                    } finally {
                                                                        ((d2.e) aVar3).d(null);
                                                                    }
                                                                }
                                                            } else {
                                                                enumC0025j7 = enumC0025j8;
                                                                k5 = k6;
                                                                obj2 = obj3;
                                                                str5 = str6;
                                                                z4 = z5;
                                                                m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                                                m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                                                m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                                                m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                                                m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                                                m2.g = z4;
                                                                m2.f96j = 6;
                                                                objE2 = e(k5, m2);
                                                                if (objE2 == coroutine_suspended) {
                                                                    return objE2;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        str5 = str4;
                                                        m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                                        m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                                        m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                                        m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                                        m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                                        m2.g = z4;
                                                        m2.f96j = 6;
                                                        objE2 = e(k5, m2);
                                                        if (objE2 == coroutine_suspended) {
                                                            return objE2;
                                                        }
                                                    }
                                                } finally {
                                                    ((d2.e) aVar2).d(null);
                                                }
                                            }
                                            break;
                                        } else {
                                            enumC0025j5 = enumC0025j4;
                                            k4 = k3;
                                            eVar2 = this.f148j;
                                            m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                            m2.f92d = k4;
                                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                            m2.f = eVar2;
                                            m2.f96j = 7;
                                            if (eVar2.c(m2) != coroutine_suspended) {
                                                aVar3 = eVar2;
                                                if (f(this.f142a.l().f165c, k4)) {
                                                    K0.f(this.f142a, new C0015e(9));
                                                    this.f149k = null;
                                                    z6 = true;
                                                } else {
                                                    z6 = false;
                                                }
                                                if (z6) {
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(k2);
                                    m2.f92d = SpillingKt.nullOutSpilledVariable(k3);
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j3);
                                    m2.f96j = i3;
                                    objE = e(k3, m2);
                                    if (objE != coroutine_suspended) {
                                        return objE;
                                    }
                                }
                                return coroutine_suspended;
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            i3 = 2;
                        }
                        enumC0025j2 = EnumC0025j.f198e;
                        if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                            objM9constructorimpl2 = enumC0025j2;
                        }
                        enumC0025j3 = (EnumC0025j) objM9constructorimpl2;
                        if (enumC0025j3 == EnumC0025j.b) {
                            m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                            m2.f91c = SpillingKt.nullOutSpilledVariable(k2);
                            m2.f92d = SpillingKt.nullOutSpilledVariable(k3);
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j3);
                            m2.f96j = i3;
                            objE = e(k3, m2);
                            if (objE != coroutine_suspended) {
                                return objE;
                            }
                        } else {
                            Z z10 = k3.f68a;
                            m2.b = requestId;
                            m2.f91c = SpillingKt.nullOutSpilledVariable(k2);
                            m2.f92d = k3;
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j3);
                            m2.f96j = 3;
                            objN = n(z10, m2);
                            if (objN != coroutine_suspended) {
                                enumC0025j4 = enumC0025j3;
                                obj4 = objN;
                                obj = k2;
                                if (!((Boolean) obj4).booleanValue()) {
                                    eVar = this.f148j;
                                    m2.b = requestId;
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                    m2.f92d = k3;
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j4);
                                    m2.f = eVar;
                                    m2.f96j = 4;
                                    if (eVar.c(m2) != coroutine_suspended) {
                                        enumC0025j5 = enumC0025j4;
                                        obj2 = obj;
                                        aVar2 = eVar;
                                        k5 = k3;
                                        z3 = this.f142a.l().f165c;
                                        if (f(z3, k5)) {
                                            Intrinsics.checkNotNull(z3);
                                            if (z3.f != L0.f87d) {
                                                z4 = false;
                                            } else {
                                                this.f149k = K0.f(this.f142a, new E(z3, 3)).f165c;
                                                z4 = true;
                                            }
                                        } else {
                                            z4 = false;
                                        }
                                        if (!z4) {
                                            return EnumC0025j.f198e;
                                        }
                                        Result.Companion companion8 = Result.INSTANCE;
                                        C0013d c0013d3 = this.f144d;
                                        String sessionId3 = k5.f68a.f152a;
                                        String str9 = k5.b;
                                        c0013d3.getClass();
                                        Intrinsics.checkNotNullParameter(requestId, "requestId");
                                        Intrinsics.checkNotNullParameter(sessionId3, "sessionId");
                                        Intrinsics.checkNotNullParameter(str9, str3);
                                        str4 = requestId;
                                        objM9constructorimpl3 = Result.m9constructorimpl(c0013d3.F("com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", str4, sessionId3, str9, L0.f88e));
                                        enumC0025j6 = EnumC0025j.f198e;
                                        if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                                            objM9constructorimpl3 = enumC0025j6;
                                        }
                                        enumC0025j7 = (EnumC0025j) objM9constructorimpl3;
                                        if (enumC0025j7 == EnumC0025j.b) {
                                            Z z11 = k5.f68a;
                                            m2.b = SpillingKt.nullOutSpilledVariable(str4);
                                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                            m2.f92d = k5;
                                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                            m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                            m2.g = z4;
                                            m2.f96j = 5;
                                            objN2 = n(z11, m2);
                                            if (objN2 != coroutine_suspended) {
                                                boolean z12 = z4;
                                                enumC0025j8 = enumC0025j7;
                                                obj4 = objN2;
                                                z5 = z12;
                                                k6 = k5;
                                                obj3 = obj2;
                                                str6 = str4;
                                                if (((Boolean) obj4).booleanValue()) {
                                                    enumC0025j7 = enumC0025j8;
                                                    k5 = k6;
                                                    obj2 = obj3;
                                                    str5 = str6;
                                                    z4 = z5;
                                                    m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                                    m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                                    m2.g = z4;
                                                    m2.f96j = 6;
                                                    objE2 = e(k5, m2);
                                                    if (objE2 == coroutine_suspended) {
                                                        return objE2;
                                                    }
                                                } else {
                                                    k4 = k6;
                                                    obj = obj3;
                                                    requestId = str6;
                                                    eVar2 = this.f148j;
                                                    m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                                    m2.f92d = k4;
                                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                                    m2.f = eVar2;
                                                    m2.f96j = 7;
                                                    if (eVar2.c(m2) != coroutine_suspended) {
                                                        aVar3 = eVar2;
                                                        if (f(this.f142a.l().f165c, k4)) {
                                                            z6 = false;
                                                        } else {
                                                            K0.f(this.f142a, new C0015e(9));
                                                            this.f149k = null;
                                                            z6 = true;
                                                        }
                                                        if (z6) {
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            str5 = str4;
                                            m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                            m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                            m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                            m2.g = z4;
                                            m2.f96j = 6;
                                            objE2 = e(k5, m2);
                                            if (objE2 == coroutine_suspended) {
                                                return objE2;
                                            }
                                        }
                                    }
                                } else {
                                    enumC0025j5 = enumC0025j4;
                                    k4 = k3;
                                    eVar2 = this.f148j;
                                    m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                    m2.f92d = k4;
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                    m2.f = eVar2;
                                    m2.f96j = 7;
                                    if (eVar2.c(m2) != coroutine_suspended) {
                                        aVar3 = eVar2;
                                        if (f(this.f142a.l().f165c, k4)) {
                                            z6 = false;
                                        } else {
                                            K0.f(this.f142a, new C0015e(9));
                                            this.f149k = null;
                                            z6 = true;
                                        }
                                        if (z6) {
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        ((d2.e) aVar).d(null);
                        throw th7;
                    }
                    break;
                }
                return coroutine_suspended;
            case 1:
                d2.a aVar4 = (d2.a) m2.f91c;
                String str10 = (String) m2.b;
                ResultKt.throwOnFailure(obj4);
                requestId = str10;
                aVar = aVar4;
                z2 = this.f142a.l().f165c;
                if (z2 != null) {
                    l2 = z2.f;
                    if (l2 == L0.g) {
                        k2 = EnumC0025j.f198e;
                        str2 = "sessionToken";
                    } else {
                        if (z2.f155e == 0) {
                        }
                        str2 = "sessionToken";
                        if (l2 != L0.f87d) {
                            enumC0025j = EnumC0025j.f197d;
                            k2 = enumC0025j;
                        } else {
                            enumC0025j = EnumC0025j.f197d;
                            k2 = enumC0025j;
                        }
                    }
                    break;
                } else {
                    str2 = "sessionToken";
                    k2 = null;
                }
                ((d2.e) aVar).d(null);
                if (k2 instanceof K) {
                    k3 = (K) k2;
                } else {
                    k3 = null;
                }
                if (k3 == null) {
                    if (k2 instanceof EnumC0025j) {
                    }
                    if (enumC0025j9 == null) {
                        return EnumC0025j.f196c;
                    }
                    return enumC0025j9;
                }
                Result.Companion companion9 = Result.INSTANCE;
                i3 = 2;
                C0013d c0013d4 = this.f144d;
                String sessionId4 = k3.f68a.f152a;
                String str11 = k3.b;
                c0013d4.getClass();
                Intrinsics.checkNotNullParameter(requestId, "requestId");
                Intrinsics.checkNotNullParameter(sessionId4, "sessionId");
                str3 = str2;
                Intrinsics.checkNotNullParameter(str11, str3);
                objM9constructorimpl2 = Result.m9constructorimpl(c0013d4.F("com.minhub.gamehub.action.REQUEST_CLOSE_GAME", requestId, sessionId4, str11, L0.f87d));
                enumC0025j2 = EnumC0025j.f198e;
                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                    objM9constructorimpl2 = enumC0025j2;
                }
                enumC0025j3 = (EnumC0025j) objM9constructorimpl2;
                if (enumC0025j3 == EnumC0025j.b) {
                    m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                    m2.f91c = SpillingKt.nullOutSpilledVariable(k2);
                    m2.f92d = SpillingKt.nullOutSpilledVariable(k3);
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j3);
                    m2.f96j = i3;
                    objE = e(k3, m2);
                    if (objE != coroutine_suspended) {
                        return objE;
                    }
                } else {
                    Z z13 = k3.f68a;
                    m2.b = requestId;
                    m2.f91c = SpillingKt.nullOutSpilledVariable(k2);
                    m2.f92d = k3;
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j3);
                    m2.f96j = 3;
                    objN = n(z13, m2);
                    if (objN != coroutine_suspended) {
                        enumC0025j4 = enumC0025j3;
                        obj4 = objN;
                        obj = k2;
                        if (!((Boolean) obj4).booleanValue()) {
                            eVar = this.f148j;
                            m2.b = requestId;
                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                            m2.f92d = k3;
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j4);
                            m2.f = eVar;
                            m2.f96j = 4;
                            if (eVar.c(m2) != coroutine_suspended) {
                                enumC0025j5 = enumC0025j4;
                                obj2 = obj;
                                aVar2 = eVar;
                                k5 = k3;
                                z3 = this.f142a.l().f165c;
                                if (f(z3, k5)) {
                                    Intrinsics.checkNotNull(z3);
                                    if (z3.f != L0.f87d) {
                                        z4 = false;
                                    } else {
                                        this.f149k = K0.f(this.f142a, new E(z3, 3)).f165c;
                                        z4 = true;
                                    }
                                } else {
                                    z4 = false;
                                }
                                if (!z4) {
                                    return EnumC0025j.f198e;
                                }
                                Result.Companion companion10 = Result.INSTANCE;
                                C0013d c0013d5 = this.f144d;
                                String sessionId5 = k5.f68a.f152a;
                                String str12 = k5.b;
                                c0013d5.getClass();
                                Intrinsics.checkNotNullParameter(requestId, "requestId");
                                Intrinsics.checkNotNullParameter(sessionId5, "sessionId");
                                Intrinsics.checkNotNullParameter(str12, str3);
                                str4 = requestId;
                                objM9constructorimpl3 = Result.m9constructorimpl(c0013d5.F("com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", str4, sessionId5, str12, L0.f88e));
                                enumC0025j6 = EnumC0025j.f198e;
                                if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                                    objM9constructorimpl3 = enumC0025j6;
                                }
                                enumC0025j7 = (EnumC0025j) objM9constructorimpl3;
                                if (enumC0025j7 == EnumC0025j.b) {
                                    Z z14 = k5.f68a;
                                    m2.b = SpillingKt.nullOutSpilledVariable(str4);
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                    m2.f92d = k5;
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                    m2.g = z4;
                                    m2.f96j = 5;
                                    objN2 = n(z14, m2);
                                    if (objN2 != coroutine_suspended) {
                                        boolean z15 = z4;
                                        enumC0025j8 = enumC0025j7;
                                        obj4 = objN2;
                                        z5 = z15;
                                        k6 = k5;
                                        obj3 = obj2;
                                        str6 = str4;
                                        if (((Boolean) obj4).booleanValue()) {
                                            enumC0025j7 = enumC0025j8;
                                            k5 = k6;
                                            obj2 = obj3;
                                            str5 = str6;
                                            z4 = z5;
                                            m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                            m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                            m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                            m2.g = z4;
                                            m2.f96j = 6;
                                            objE2 = e(k5, m2);
                                            if (objE2 == coroutine_suspended) {
                                                return objE2;
                                            }
                                        } else {
                                            k4 = k6;
                                            obj = obj3;
                                            requestId = str6;
                                            eVar2 = this.f148j;
                                            m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                            m2.f92d = k4;
                                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                            m2.f = eVar2;
                                            m2.f96j = 7;
                                            if (eVar2.c(m2) != coroutine_suspended) {
                                                aVar3 = eVar2;
                                                if (f(this.f142a.l().f165c, k4)) {
                                                    z6 = false;
                                                } else {
                                                    K0.f(this.f142a, new C0015e(9));
                                                    this.f149k = null;
                                                    z6 = true;
                                                }
                                                if (z6) {
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    str5 = str4;
                                    m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                    m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                    m2.g = z4;
                                    m2.f96j = 6;
                                    objE2 = e(k5, m2);
                                    if (objE2 == coroutine_suspended) {
                                        return objE2;
                                    }
                                }
                            }
                        } else {
                            enumC0025j5 = enumC0025j4;
                            k4 = k3;
                            eVar2 = this.f148j;
                            m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                            m2.f92d = k4;
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                            m2.f = eVar2;
                            m2.f96j = 7;
                            if (eVar2.c(m2) != coroutine_suspended) {
                                aVar3 = eVar2;
                                if (f(this.f142a.l().f165c, k4)) {
                                    z6 = false;
                                } else {
                                    K0.f(this.f142a, new C0015e(9));
                                    this.f149k = null;
                                    z6 = true;
                                }
                                if (z6) {
                                }
                            }
                        }
                    }
                }
                return coroutine_suspended;
            case 2:
                ResultKt.throwOnFailure(obj4);
                return obj4;
            case 3:
                enumC0025j4 = (EnumC0025j) m2.f93e;
                k3 = (K) m2.f92d;
                obj = m2.f91c;
                String str13 = (String) m2.b;
                ResultKt.throwOnFailure(obj4);
                str3 = "sessionToken";
                requestId = str13;
                if (!((Boolean) obj4).booleanValue()) {
                    eVar = this.f148j;
                    m2.b = requestId;
                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                    m2.f92d = k3;
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j4);
                    m2.f = eVar;
                    m2.f96j = 4;
                    if (eVar.c(m2) != coroutine_suspended) {
                        enumC0025j5 = enumC0025j4;
                        obj2 = obj;
                        aVar2 = eVar;
                        k5 = k3;
                        z3 = this.f142a.l().f165c;
                        if (f(z3, k5)) {
                            Intrinsics.checkNotNull(z3);
                            if (z3.f != L0.f87d) {
                                z4 = false;
                            } else {
                                this.f149k = K0.f(this.f142a, new E(z3, 3)).f165c;
                                z4 = true;
                            }
                        } else {
                            z4 = false;
                        }
                        if (!z4) {
                            return EnumC0025j.f198e;
                        }
                        Result.Companion companion11 = Result.INSTANCE;
                        C0013d c0013d6 = this.f144d;
                        String sessionId6 = k5.f68a.f152a;
                        String str14 = k5.b;
                        c0013d6.getClass();
                        Intrinsics.checkNotNullParameter(requestId, "requestId");
                        Intrinsics.checkNotNullParameter(sessionId6, "sessionId");
                        Intrinsics.checkNotNullParameter(str14, str3);
                        str4 = requestId;
                        objM9constructorimpl3 = Result.m9constructorimpl(c0013d6.F("com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", str4, sessionId6, str14, L0.f88e));
                        enumC0025j6 = EnumC0025j.f198e;
                        if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                            objM9constructorimpl3 = enumC0025j6;
                        }
                        enumC0025j7 = (EnumC0025j) objM9constructorimpl3;
                        if (enumC0025j7 == EnumC0025j.b) {
                            Z z16 = k5.f68a;
                            m2.b = SpillingKt.nullOutSpilledVariable(str4);
                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                            m2.f92d = k5;
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                            m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                            m2.g = z4;
                            m2.f96j = 5;
                            objN2 = n(z16, m2);
                            if (objN2 != coroutine_suspended) {
                                boolean z17 = z4;
                                enumC0025j8 = enumC0025j7;
                                obj4 = objN2;
                                z5 = z17;
                                k6 = k5;
                                obj3 = obj2;
                                str6 = str4;
                                if (((Boolean) obj4).booleanValue()) {
                                    enumC0025j7 = enumC0025j8;
                                    k5 = k6;
                                    obj2 = obj3;
                                    str5 = str6;
                                    z4 = z5;
                                    m2.b = SpillingKt.nullOutSpilledVariable(str5);
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                                    m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                                    m2.g = z4;
                                    m2.f96j = 6;
                                    objE2 = e(k5, m2);
                                    if (objE2 == coroutine_suspended) {
                                        return objE2;
                                    }
                                } else {
                                    k4 = k6;
                                    obj = obj3;
                                    requestId = str6;
                                    eVar2 = this.f148j;
                                    m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                                    m2.f92d = k4;
                                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                                    m2.f = eVar2;
                                    m2.f96j = 7;
                                    if (eVar2.c(m2) != coroutine_suspended) {
                                        aVar3 = eVar2;
                                        if (f(this.f142a.l().f165c, k4)) {
                                            z6 = false;
                                        } else {
                                            K0.f(this.f142a, new C0015e(9));
                                            this.f149k = null;
                                            z6 = true;
                                        }
                                        if (z6) {
                                        }
                                    }
                                }
                            }
                        } else {
                            str5 = str4;
                            m2.b = SpillingKt.nullOutSpilledVariable(str5);
                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                            m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                            m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                            m2.g = z4;
                            m2.f96j = 6;
                            objE2 = e(k5, m2);
                            if (objE2 == coroutine_suspended) {
                                return objE2;
                            }
                        }
                    }
                } else {
                    enumC0025j5 = enumC0025j4;
                    k4 = k3;
                    eVar2 = this.f148j;
                    m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                    m2.f92d = k4;
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                    m2.f = eVar2;
                    m2.f96j = 7;
                    if (eVar2.c(m2) != coroutine_suspended) {
                        aVar3 = eVar2;
                        if (f(this.f142a.l().f165c, k4)) {
                            z6 = false;
                        } else {
                            K0.f(this.f142a, new C0015e(9));
                            this.f149k = null;
                            z6 = true;
                        }
                        if (z6) {
                        }
                    }
                }
                return coroutine_suspended;
            case 4:
                aVar2 = (d2.a) m2.f;
                EnumC0025j enumC0025j10 = (EnumC0025j) m2.f93e;
                k5 = (K) m2.f92d;
                obj2 = m2.f91c;
                requestId = (String) m2.b;
                ResultKt.throwOnFailure(obj4);
                str3 = "sessionToken";
                enumC0025j5 = enumC0025j10;
                z3 = this.f142a.l().f165c;
                if (f(z3, k5)) {
                    Intrinsics.checkNotNull(z3);
                    if (z3.f != L0.f87d) {
                        z4 = false;
                    } else {
                        this.f149k = K0.f(this.f142a, new E(z3, 3)).f165c;
                        z4 = true;
                    }
                } else {
                    z4 = false;
                }
                if (!z4) {
                    return EnumC0025j.f198e;
                }
                Result.Companion companion12 = Result.INSTANCE;
                C0013d c0013d7 = this.f144d;
                String sessionId7 = k5.f68a.f152a;
                String str15 = k5.b;
                c0013d7.getClass();
                Intrinsics.checkNotNullParameter(requestId, "requestId");
                Intrinsics.checkNotNullParameter(sessionId7, "sessionId");
                Intrinsics.checkNotNullParameter(str15, str3);
                str4 = requestId;
                objM9constructorimpl3 = Result.m9constructorimpl(c0013d7.F("com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", str4, sessionId7, str15, L0.f88e));
                enumC0025j6 = EnumC0025j.f198e;
                if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                    objM9constructorimpl3 = enumC0025j6;
                }
                enumC0025j7 = (EnumC0025j) objM9constructorimpl3;
                if (enumC0025j7 == EnumC0025j.b) {
                    Z z18 = k5.f68a;
                    m2.b = SpillingKt.nullOutSpilledVariable(str4);
                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                    m2.f92d = k5;
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                    m2.g = z4;
                    m2.f96j = 5;
                    objN2 = n(z18, m2);
                    if (objN2 != coroutine_suspended) {
                        boolean z19 = z4;
                        enumC0025j8 = enumC0025j7;
                        obj4 = objN2;
                        z5 = z19;
                        k6 = k5;
                        obj3 = obj2;
                        str6 = str4;
                        if (((Boolean) obj4).booleanValue()) {
                            enumC0025j7 = enumC0025j8;
                            k5 = k6;
                            obj2 = obj3;
                            str5 = str6;
                            z4 = z5;
                            m2.b = SpillingKt.nullOutSpilledVariable(str5);
                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                            m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                            m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                            m2.g = z4;
                            m2.f96j = 6;
                            objE2 = e(k5, m2);
                            if (objE2 == coroutine_suspended) {
                                return objE2;
                            }
                        } else {
                            k4 = k6;
                            obj = obj3;
                            requestId = str6;
                            eVar2 = this.f148j;
                            m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                            m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                            m2.f92d = k4;
                            m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                            m2.f = eVar2;
                            m2.f96j = 7;
                            if (eVar2.c(m2) != coroutine_suspended) {
                                aVar3 = eVar2;
                                if (f(this.f142a.l().f165c, k4)) {
                                    z6 = false;
                                } else {
                                    K0.f(this.f142a, new C0015e(9));
                                    this.f149k = null;
                                    z6 = true;
                                }
                                if (z6) {
                                }
                            }
                        }
                    }
                } else {
                    str5 = str4;
                    m2.b = SpillingKt.nullOutSpilledVariable(str5);
                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                    m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                    m2.g = z4;
                    m2.f96j = 6;
                    objE2 = e(k5, m2);
                    if (objE2 == coroutine_suspended) {
                        return objE2;
                    }
                }
                return coroutine_suspended;
            case 5:
                z5 = m2.g;
                enumC0025j8 = (EnumC0025j) m2.f;
                enumC0025j5 = (EnumC0025j) m2.f93e;
                k6 = (K) m2.f92d;
                obj3 = m2.f91c;
                str6 = (String) m2.b;
                ResultKt.throwOnFailure(obj4);
                if (((Boolean) obj4).booleanValue()) {
                    enumC0025j7 = enumC0025j8;
                    k5 = k6;
                    obj2 = obj3;
                    str5 = str6;
                    z4 = z5;
                    m2.b = SpillingKt.nullOutSpilledVariable(str5);
                    m2.f91c = SpillingKt.nullOutSpilledVariable(obj2);
                    m2.f92d = SpillingKt.nullOutSpilledVariable(k5);
                    m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                    m2.f = SpillingKt.nullOutSpilledVariable(enumC0025j7);
                    m2.g = z4;
                    m2.f96j = 6;
                    objE2 = e(k5, m2);
                    if (objE2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objE2;
                }
                k4 = k6;
                obj = obj3;
                requestId = str6;
                eVar2 = this.f148j;
                m2.b = SpillingKt.nullOutSpilledVariable(requestId);
                m2.f91c = SpillingKt.nullOutSpilledVariable(obj);
                m2.f92d = k4;
                m2.f93e = SpillingKt.nullOutSpilledVariable(enumC0025j5);
                m2.f = eVar2;
                m2.f96j = 7;
                if (eVar2.c(m2) != coroutine_suspended) {
                    aVar3 = eVar2;
                    if (f(this.f142a.l().f165c, k4)) {
                        z6 = false;
                    } else {
                        K0.f(this.f142a, new C0015e(9));
                        this.f149k = null;
                        z6 = true;
                    }
                    if (z6) {
                    }
                }
                return coroutine_suspended;
            case 6:
                ResultKt.throwOnFailure(obj4);
                return obj4;
            case 7:
                aVar3 = (d2.a) m2.f;
                k4 = (K) m2.f92d;
                ResultKt.throwOnFailure(obj4);
                if (f(this.f142a.l().f165c, k4)) {
                    z6 = false;
                } else {
                    K0.f(this.f142a, new C0015e(9));
                    this.f149k = null;
                    z6 = true;
                }
                if (z6) {
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(String str, String str2, ContinuationImpl continuationImpl) {
        N n2;
        d2.e eVar;
        if (continuationImpl instanceof N) {
            n2 = (N) continuationImpl;
            int i3 = n2.g;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                n2.g = i3 - Integer.MIN_VALUE;
            } else {
                n2 = new N(this, continuationImpl);
            }
        } else {
            n2 = new N(this, continuationImpl);
        }
        Object obj = n2.f104e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = n2.g;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            n2.b = str;
            n2.f102c = str2;
            n2.f103d = eVar;
            n2.g = 1;
            if (eVar.c(n2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d2.e eVar2 = n2.f103d;
            str2 = n2.f102c;
            String str3 = n2.b;
            ResultKt.throwOnFailure(obj);
            eVar = eVar2;
            str = str3;
        }
        try {
            C0008a0 c0008a0F = K0.f(this.f142a, new H(1, str, str2));
            this.f149k = c0008a0F.f165c;
            return c0008a0F;
        } finally {
            eVar.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ContinuationImpl continuationImpl) {
        O o2;
        d2.e eVar;
        if (continuationImpl instanceof O) {
            o2 = (O) continuationImpl;
            int i3 = o2.f107e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                o2.f107e = i3 - Integer.MIN_VALUE;
            } else {
                o2 = new O(this, continuationImpl);
            }
        } else {
            o2 = new O(this, continuationImpl);
        }
        Object obj = o2.f105c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = o2.f107e;
        boolean z2 = true;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            d2.e eVar2 = this.f148j;
            o2.b = eVar2;
            o2.f107e = 1;
            if (eVar2.c(o2) == coroutine_suspended) {
                return coroutine_suspended;
            }
            eVar = eVar2;
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eVar = o2.b;
            ResultKt.throwOnFailure(obj);
        }
        try {
            Z z3 = this.f142a.l().f165c;
            if (z3 != null && z3.f == L0.b && z3.f155e == 0 && ((Number) this.f.invoke()).longValue() - z3.f158j >= 15000) {
                this.f149k = K0.f(this.f142a, new C0015e(10)).f165c;
            } else {
                z2 = false;
            }
            return Boxing.boxBoolean(z2);
        } finally {
            eVar.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(K k2, ContinuationImpl continuationImpl) {
        P p2;
        d2.e eVar;
        if (continuationImpl instanceof P) {
            p2 = (P) continuationImpl;
            int i3 = p2.f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                p2.f = i3 - Integer.MIN_VALUE;
            } else {
                p2 = new P(this, continuationImpl);
            }
        } else {
            p2 = new P(this, continuationImpl);
        }
        Object obj = p2.f109d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = p2.f;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            p2.b = k2;
            p2.f108c = eVar;
            p2.f = 1;
            if (eVar.c(p2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d2.e eVar2 = p2.f108c;
            K k3 = p2.b;
            ResultKt.throwOnFailure(obj);
            eVar = eVar2;
            k2 = k3;
        }
        try {
            Z z2 = this.f142a.l().f165c;
            if (f(z2, k2)) {
                this.f149k = K0.f(this.f142a, new E(z2, 5)).f165c;
            }
            Unit unit = Unit.INSTANCE;
            return EnumC0025j.f198e;
        } finally {
            eVar.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(String str, String str2, String str3, int i3, ContinuationImpl continuationImpl) {
        Q q2;
        d2.e eVar;
        Z z2;
        Object objM9constructorimpl;
        M0 m2;
        if (continuationImpl instanceof Q) {
            q2 = (Q) continuationImpl;
            int i4 = q2.f115i;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                q2.f115i = i4 - Integer.MIN_VALUE;
            } else {
                q2 = new Q(this, continuationImpl);
            }
        } else {
            q2 = new Q(this, continuationImpl);
        }
        Object obj = q2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = q2.f115i;
        if (i5 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            q2.b = str;
            q2.f111c = str2;
            q2.f112d = str3;
            q2.f113e = eVar;
            q2.f = i3;
            q2.f115i = 1;
            if (eVar.c(q2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i5 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i3 = q2.f;
            d2.e eVar2 = q2.f113e;
            str3 = q2.f112d;
            str2 = q2.f111c;
            String str4 = q2.b;
            ResultKt.throwOnFailure(obj);
            eVar = eVar2;
            str = str4;
        }
        try {
            if (i3 > 0 && (z2 = this.f142a.l().f165c) != null) {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(new String(this.b.a(new C0027k(z2.g, z2.f156h)), Charsets.UTF_8));
                if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                    String str5 = (String) objM9constructorimpl;
                    if (Intrinsics.areEqual(z2.f152a, str) && Intrinsics.areEqual(str5, str2) && Intrinsics.areEqual(z2.f154d, str3)) {
                        int i6 = z2.f155e;
                        if (i6 != 0) {
                            m2 = i6 == i3 ? M0.b : M0.f97c;
                        } else if (z2.f != L0.b) {
                            m2 = M0.f98d;
                        } else {
                            this.f149k = K0.f(this.f142a, new F(z2, i3, 0)).f165c;
                            m2 = M0.b;
                        }
                    } else {
                        m2 = M0.f97c;
                    }
                } else {
                    this.f149k = K0.f(this.f142a, new E(z2, 8)).f165c;
                    m2 = M0.g;
                }
            } else {
                m2 = M0.f97c;
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        } finally {
            eVar.d(null);
        }
        return m2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(String str, String str2, String str3, int i3, ContinuationImpl continuationImpl) {
        S s2;
        d2.e eVar;
        Object objM9constructorimpl;
        EnumC0010b0 enumC0010b0;
        int i4;
        if (continuationImpl instanceof S) {
            s2 = (S) continuationImpl;
            int i5 = s2.f120i;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                s2.f120i = i5 - Integer.MIN_VALUE;
            } else {
                s2 = new S(this, continuationImpl);
            }
        } else {
            s2 = new S(this, continuationImpl);
        }
        Object obj = s2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = s2.f120i;
        if (i6 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            s2.b = str;
            s2.f116c = str2;
            s2.f117d = str3;
            s2.f118e = eVar;
            s2.f = i3;
            s2.f120i = 1;
            if (eVar.c(s2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i3 = s2.f;
            d2.e eVar2 = s2.f118e;
            str3 = s2.f117d;
            str2 = s2.f116c;
            String str4 = s2.b;
            ResultKt.throwOnFailure(obj);
            eVar = eVar2;
            str = str4;
        }
        try {
            Z z2 = this.f142a.l().f165c;
            if (z2 == null) {
                enumC0010b0 = EnumC0010b0.f171e;
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(new String(this.b.a(new C0027k(z2.g, z2.f156h)), Charsets.UTF_8));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                    String str5 = (String) objM9constructorimpl;
                    if (Intrinsics.areEqual(z2.f152a, str) && Intrinsics.areEqual(str5, str2) && Intrinsics.areEqual(z2.f154d, str3) && ((i4 = z2.f155e) == 0 || i4 == i3)) {
                        long jLongValue = ((Number) this.f.invoke()).longValue();
                        long j2 = this.f150l;
                        if (jLongValue < j2 || jLongValue / 1000 != j2 / 1000) {
                            this.f150l = jLongValue;
                            int i7 = z2.f155e;
                            int i8 = i7 == 0 ? i3 : i7;
                            L0 l2 = z2.f;
                            if (l2 == L0.b) {
                                l2 = L0.f86c;
                            }
                            Z zA = Z.a(z2, i8, l2, jLongValue, 975);
                            this.f149k = zA;
                            long j3 = this.f151m;
                            if (j3 == Long.MIN_VALUE || (jLongValue >= j3 && jLongValue - j3 >= 2000)) {
                                this.f149k = K0.f(this.f142a, new E(zA, 4)).f165c;
                                this.f151m = jLongValue;
                                enumC0010b0 = EnumC0010b0.b;
                            } else {
                                enumC0010b0 = EnumC0010b0.f169c;
                            }
                        } else {
                            enumC0010b0 = EnumC0010b0.f170d;
                        }
                    } else {
                        enumC0010b0 = EnumC0010b0.f171e;
                    }
                } else {
                    this.f149k = K0.f(this.f142a, new E(z2, 0)).f165c;
                    enumC0010b0 = EnumC0010b0.f;
                }
            }
            eVar.d(null);
            return enumC0010b0;
        } catch (Throwable th2) {
            eVar.d(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(String str, String str2, String str3, int i3, L0 l2, ContinuationImpl continuationImpl) {
        T t2;
        d2.e eVar;
        Object objM9constructorimpl;
        M0 m2;
        int i4;
        if (continuationImpl instanceof T) {
            t2 = (T) continuationImpl;
            int i5 = t2.f126j;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                t2.f126j = i5 - Integer.MIN_VALUE;
            } else {
                t2 = new T(this, continuationImpl);
            }
        } else {
            t2 = new T(this, continuationImpl);
        }
        Object obj = t2.f124h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = t2.f126j;
        if (i6 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            t2.b = str;
            t2.f121c = str2;
            t2.f122d = str3;
            t2.f123e = l2;
            t2.f = eVar;
            t2.g = i3;
            t2.f126j = 1;
            if (eVar.c(t2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i3 = t2.g;
            d2.e eVar2 = t2.f;
            l2 = t2.f123e;
            str3 = t2.f122d;
            str2 = t2.f121c;
            String str4 = t2.b;
            ResultKt.throwOnFailure(obj);
            eVar = eVar2;
            str = str4;
        }
        try {
            Z z2 = this.f142a.l().f165c;
            if (z2 == null) {
                m2 = M0.f97c;
            } else {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(new String(this.b.a(new C0027k(z2.g, z2.f156h)), Charsets.UTF_8));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                    String str5 = (String) objM9constructorimpl;
                    if (!Intrinsics.areEqual(z2.f152a, str) || !Intrinsics.areEqual(str5, str2) || !Intrinsics.areEqual(z2.f154d, str3) || ((i4 = z2.f155e) != 0 && i4 != i3)) {
                        m2 = M0.f97c;
                    } else if (l2 == L0.f) {
                        if (m(z2, true) == p0.f216c) {
                            K0.f(this.f142a, new C0015e(11));
                            this.f149k = null;
                            m2 = M0.f99e;
                        } else {
                            this.f149k = K0.f(this.f142a, new E(z2, 7)).f165c;
                            m2 = M0.f;
                        }
                    } else if (com.bumptech.glide.c.f(z2.f, l2)) {
                        this.f149k = K0.f(this.f142a, new H(2, z2, l2)).f165c;
                        m2 = M0.b;
                    } else {
                        m2 = M0.f98d;
                    }
                } else {
                    this.f149k = K0.f(this.f142a, new E(z2, 6)).f165c;
                    m2 = M0.g;
                }
            }
            eVar.d(null);
            return m2;
        } catch (Throwable th2) {
            eVar.d(null);
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(ContinuationImpl continuationImpl) {
        U u2;
        d2.e eVar;
        p0 p0VarM;
        if (continuationImpl instanceof U) {
            u2 = (U) continuationImpl;
            int i3 = u2.f129e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                u2.f129e = i3 - Integer.MIN_VALUE;
            } else {
                u2 = new U(this, continuationImpl);
            }
        } else {
            u2 = new U(this, continuationImpl);
        }
        Object obj = u2.f127c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = u2.f129e;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            d2.e eVar2 = this.f148j;
            u2.b = eVar2;
            u2.f129e = 1;
            if (eVar2.c(u2) == coroutine_suspended) {
                return coroutine_suspended;
            }
            eVar = eVar2;
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eVar = u2.b;
            ResultKt.throwOnFailure(obj);
        }
        try {
            Z z2 = this.f142a.l().f165c;
            if (z2 == null) {
                p0VarM = p0.f217d;
            } else {
                p0VarM = m(z2, false);
                if (p0VarM == p0.f216c) {
                    K0.f(this.f142a, new C0015e(7));
                    this.f149k = null;
                }
            }
            return p0VarM;
        } finally {
            eVar.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object k(int i3, String str, String str2, String str3, String str4, ContinuationImpl continuationImpl) {
        V v2;
        d2.e eVar;
        String str5;
        String str6;
        String str7;
        int i4;
        String str8;
        if (continuationImpl instanceof V) {
            v2 = (V) continuationImpl;
            int i5 = v2.f135j;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                v2.f135j = i5 - Integer.MIN_VALUE;
            } else {
                v2 = new V(this, continuationImpl);
            }
        } else {
            v2 = new V(this, continuationImpl);
        }
        Object obj = v2.f133h;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = v2.f135j;
        if (i6 == 0) {
            ResultKt.throwOnFailure(obj);
            eVar = this.f148j;
            v2.f130c = str;
            v2.f131d = str2;
            v2.f132e = str3;
            v2.f = str4;
            v2.g = eVar;
            v2.b = i3;
            v2.f135j = 1;
            if (eVar.c(v2) == coroutine_suspended) {
                return coroutine_suspended;
            }
            str5 = str4;
            str6 = str;
            str7 = str3;
            i4 = i3;
            str8 = str2;
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i7 = v2.b;
            eVar = v2.g;
            String str9 = v2.f;
            String str10 = v2.f132e;
            String str11 = v2.f131d;
            String str12 = v2.f130c;
            ResultKt.throwOnFailure(obj);
            str6 = str12;
            str5 = str9;
            str7 = str10;
            str8 = str11;
            i4 = i7;
        }
        try {
            if (this.f142a.l().f165c != null) {
                throw new E0("a game session is already active");
            }
            String str13 = (String) this.f146h.invoke();
            this.f147i.getClass();
            byte[] bArr = new byte[32];
            String str14 = new String(bArr, Charsets.UTF_8);
            C0027k c0027kB = this.b.b(bArr);
            long jLongValue = ((Number) this.f.invoke()).longValue();
            Z z2 = new Z(str13, i4, str6, str8, 0, L0.b, c0027kB.f200a, c0027kB.b, str5, jLongValue, jLongValue);
            String str15 = str8;
            K0.f(this.f142a, new H(0, z2, new o0(str5, i4, str6, str7, jLongValue, 1, str15)));
            this.f149k = z2;
            n0 n0Var = new n0(str13, str14, com.bumptech.glide.d.Q(str6), str15);
            eVar.d(null);
            return n0Var;
        } catch (Throwable th) {
            eVar.d(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(x0 x0Var, Function1 function1, ContinuationImpl continuationImpl) {
        W w2;
        d2.e eVar;
        if (continuationImpl instanceof W) {
            w2 = (W) continuationImpl;
            int i3 = w2.g;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                w2.g = i3 - Integer.MIN_VALUE;
            } else {
                w2 = new W(this, continuationImpl);
            }
        } else {
            w2 = new W(this, continuationImpl);
        }
        Object obj = w2.f138e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = w2.g;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            d2.e eVar2 = this.f148j;
            w2.b = SpillingKt.nullOutSpilledVariable(x0Var);
            w2.f136c = function1;
            w2.f137d = eVar2;
            w2.g = 1;
            if (eVar2.c(w2) == coroutine_suspended) {
                return coroutine_suspended;
            }
            eVar = eVar2;
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            eVar = w2.f137d;
            function1 = w2.f136c;
            ResultKt.throwOnFailure(obj);
        }
        try {
            C0008a0 c0008a0F = K0.f(this.f142a, new G(function1, 0));
            this.f149k = c0008a0F.f165c;
            return c0008a0F;
        } finally {
            eVar.d(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:58:0x00df A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:55:0x00c8, B:72:0x010a, B:58:0x00df, B:71:0x0106, B:61:0x00e6, B:62:0x00ea, B:64:0x00f0, B:66:0x00fa), top: B:101:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e6 A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:55:0x00c8, B:72:0x010a, B:58:0x00df, B:71:0x0106, B:61:0x00e6, B:62:0x00ea, B:64:0x00f0, B:66:0x00fa), top: B:101:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00f0 A[Catch: all -> 0x0104, TryCatch #0 {all -> 0x0104, blocks: (B:55:0x00c8, B:72:0x010a, B:58:0x00df, B:71:0x0106, B:61:0x00e6, B:62:0x00ea, B:64:0x00f0, B:66:0x00fa), top: B:101:0x00c8 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0120  */
    /* JADX WARN: Code duplicated, block: B:81:0x012b  */
    /* JADX WARN: Code duplicated, block: B:83:0x012e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0136 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0138  */
    /* JADX WARN: Code duplicated, block: B:94:0x0158  */
    public final p0 m(Z z2, boolean z3) {
        Object objM9constructorimpl;
        boolean z4;
        Object objM9constructorimpl2;
        Boolean boolValueOf;
        int i3;
        Object objM9constructorimpl3;
        Boolean bool;
        long j2;
        long jLongValue;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        Boolean boolValueOf2;
        if (StringsKt.isBlank(z2.f152a) || Intrinsics.areEqual(z2.f152a, EnvironmentCompat.MEDIA_UNKNOWN) || z2.f155e == 0 || StringsKt.isBlank(z2.f154d)) {
            return p0.f217d;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(this.b.a(new C0027k(z2.g, z2.f156h)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        if (objM9constructorimpl == null) {
            return p0.f217d;
        }
        D0 d3 = this.f145e;
        String sessionId = z2.f152a;
        d3.getClass();
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        synchronized (D0.b) {
            z4 = false;
            if (Intrinsics.areEqual(D0.f56c, sessionId)) {
                C0033n c0033n = D0.f57d;
                if (c0033n != null) {
                    try {
                        objM9constructorimpl2 = Result.m9constructorimpl((Boolean) c0033n.invoke());
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                        objM9constructorimpl2 = null;
                    }
                    Boolean bool2 = (Boolean) objM9constructorimpl2;
                    boolValueOf = Boolean.valueOf(bool2 != null ? bool2.booleanValue() : false);
                }
                if (Intrinsics.areEqual(boolValueOf, Boolean.TRUE)) {
                    return p0.b;
                }
                if (!Intrinsics.areEqual(boolValueOf, Boolean.FALSE) && !StringsKt__StringsKt.contains$default((CharSequence) z2.f154d, ':', false, 2, (Object) null)) {
                    return p0.f216c;
                }
                C0021h c0021h = this.f143c;
                i3 = z2.f155e;
                String processName = z2.f154d;
                c0021h.getClass();
                Intrinsics.checkNotNullParameter(processName, "processName");
                try {
                    Object systemService = c0021h.f192c.getSystemService("activity");
                    Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
                    runningAppProcesses = ((ActivityManager) systemService).getRunningAppProcesses();
                    if (runningAppProcesses == null) {
                        boolValueOf2 = null;
                    } else {
                        if (runningAppProcesses.isEmpty()) {
                            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                                if (runningAppProcessInfo.pid != i3 && Intrinsics.areEqual(runningAppProcessInfo.processName, processName)) {
                                    z4 = true;
                                    break;
                                }
                            }
                        }
                        boolValueOf2 = Boolean.valueOf(z4);
                    }
                    objM9constructorimpl3 = Result.m9constructorimpl(boolValueOf2);
                } catch (Throwable th3) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                }
                bool = (Boolean) (Result.m15isFailureimpl(objM9constructorimpl3) ? null : objM9constructorimpl3);
                if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    return p0.b;
                }
                if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
                    return p0.f217d;
                }
                if (!z3) {
                    j2 = z2.f159k;
                    jLongValue = ((Number) this.f.invoke()).longValue();
                    if (jLongValue >= j2 || jLongValue - j2 < 3000) {
                        return p0.b;
                    }
                }
                return p0.f216c;
            }
        }
        boolValueOf = null;
        if (Intrinsics.areEqual(boolValueOf, Boolean.TRUE)) {
            return p0.b;
        }
        if (!Intrinsics.areEqual(boolValueOf, Boolean.FALSE)) {
        }
        C0021h c0021h2 = this.f143c;
        i3 = z2.f155e;
        String processName2 = z2.f154d;
        c0021h2.getClass();
        Intrinsics.checkNotNullParameter(processName2, "processName");
        Object systemService2 = c0021h2.f192c.getSystemService("activity");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.app.ActivityManager");
        runningAppProcesses = ((ActivityManager) systemService2).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            boolValueOf2 = null;
        } else {
            if (runningAppProcesses.isEmpty()) {
                while (r0.hasNext()) {
                    if (runningAppProcessInfo.pid != i3) {
                    }
                }
            }
            boolValueOf2 = Boolean.valueOf(z4);
        }
        objM9constructorimpl3 = Result.m9constructorimpl(boolValueOf2);
        bool = (Boolean) (Result.m15isFailureimpl(objM9constructorimpl3) ? null : objM9constructorimpl3);
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return p0.b;
        }
        if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
            return p0.f217d;
        }
        if (!z3) {
            j2 = z2.f159k;
            jLongValue = ((Number) this.f.invoke()).longValue();
            if (jLongValue >= j2) {
            }
            return p0.b;
        }
        return p0.f216c;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0069  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x0083 A[Catch: all -> 0x00ad, TryCatch #1 {all -> 0x00ad, blocks: (B:25:0x007b, B:27:0x0083, B:29:0x008f, B:31:0x0099, B:33:0x00a3), top: B:76:0x007b }] */
    /* JADX WARN: Code duplicated, block: B:29:0x008f A[Catch: all -> 0x00ad, TryCatch #1 {all -> 0x00ad, blocks: (B:25:0x007b, B:27:0x0083, B:29:0x008f, B:31:0x0099, B:33:0x00a3), top: B:76:0x007b }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00af  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00d1 -> B:48:0x00d2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object n(A1.Z r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: A1.Y.n(A1.Z, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
