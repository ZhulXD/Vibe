package A1;

import V1.InterfaceC0207x;
import android.content.BroadcastReceiver;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: A1.z, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0044z extends SuspendLambda implements Function2 {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Y f283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f284e;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ L0 f287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ BroadcastReceiver.PendingResult f288k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0044z(Y y2, String str, String str2, String str3, int i3, String str4, L0 l2, BroadcastReceiver.PendingResult pendingResult, Continuation continuation) {
        super(2, continuation);
        this.f283d = y2;
        this.f284e = str;
        this.f = str2;
        this.g = str3;
        this.f285h = i3;
        this.f286i = str4;
        this.f287j = l2;
        this.f288k = pendingResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0044z(this.f283d, this.f284e, this.f, this.g, this.f285h, this.f286i, this.f287j, this.f288k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0044z) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0079, code lost:
    
        if (r12 == r0) goto L32;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.f282c
            java.lang.String r5 = r11.g
            java.lang.String r4 = r11.f
            java.lang.String r3 = r11.f284e
            A1.Y r2 = r11.f283d
            android.content.BroadcastReceiver$PendingResult r9 = r11.f288k
            r8 = 3
            r10 = 2
            r6 = 1
            if (r1 == 0) goto L38
            if (r1 == r6) goto L33
            if (r1 == r10) goto L2e
            if (r1 != r8) goto L26
            java.lang.Object r0 = r11.b
            A1.L0 r0 = (A1.L0) r0
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L23
            goto L7c
        L23:
            r0 = move-exception
            r12 = r0
            goto L84
        L26:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L2e:
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L23
            r7 = r11
            goto L7e
        L33:
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L23
            r7 = r11
            goto L48
        L38:
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r6
            int r6 = r11.f285h     // Catch: java.lang.Throwable -> L23
            r11.f282c = r12     // Catch: java.lang.Throwable -> L23
            r7 = r11
            java.lang.Object r12 = r2.g(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L23
            if (r12 != r0) goto L48
            goto L7b
        L48:
            java.lang.String r12 = r7.f286i     // Catch: java.lang.Throwable -> L23
            java.lang.String r1 = "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r12, r1)     // Catch: java.lang.Throwable -> L23
            if (r1 == 0) goto L5d
            int r6 = r7.f285h     // Catch: java.lang.Throwable -> L23
            r7.f282c = r10     // Catch: java.lang.Throwable -> L23
            java.lang.Object r12 = r2.h(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L23
            if (r12 != r0) goto L7e
            goto L7b
        L5d:
            java.lang.String r1 = "com.minhub.gamehub.action.GAME_SESSION_STATUS"
            boolean r12 = kotlin.jvm.internal.Intrinsics.areEqual(r12, r1)     // Catch: java.lang.Throwable -> L23
            if (r12 == 0) goto L7e
            r12 = r8
            r8 = r7
            A1.L0 r7 = r8.f287j     // Catch: java.lang.Throwable -> L23
            if (r7 == 0) goto L7e
            int r6 = r8.f285h     // Catch: java.lang.Throwable -> L23
            java.lang.Object r1 = kotlin.coroutines.jvm.internal.SpillingKt.nullOutSpilledVariable(r7)     // Catch: java.lang.Throwable -> L23
            r8.b = r1     // Catch: java.lang.Throwable -> L23
            r8.f282c = r12     // Catch: java.lang.Throwable -> L23
            java.lang.Object r12 = r2.i(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L23
            if (r12 != r0) goto L7c
        L7b:
            return r0
        L7c:
            A1.M0 r12 = (A1.M0) r12     // Catch: java.lang.Throwable -> L23
        L7e:
            r9.finish()
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        L84:
            r9.finish()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: A1.C0044z.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
