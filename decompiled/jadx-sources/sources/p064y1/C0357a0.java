package p064y1;

import V1.InterfaceC0207x;
import android.app.Activity;
import android.content.Intent;
import com.minhub.gamehub.data.Game;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: y1.a0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0357a0 extends SuspendLambda implements Function2 {
    public Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f6170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f6171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f6172e;
    public Object f;
    public Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f6173h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f6174i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f6175j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Game f6176k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ Activity f6177l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ Intent f6178m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0357a0(Game game, Activity activity, Intent intent, Continuation continuation) {
        super(2, continuation);
        this.f6176k = game;
        this.f6177l = activity;
        this.f6178m = intent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0357a0 c0357a0 = new C0357a0(this.f6176k, this.f6177l, this.f6178m, continuation);
        c0357a0.f6175j = obj;
        return c0357a0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0357a0) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00fd, code lost:
    
        if (V1.A.e(r0, r6, r18) == r3) goto L60;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p064y1.C0357a0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
