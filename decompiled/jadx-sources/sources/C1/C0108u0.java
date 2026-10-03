package C1;

import V1.InterfaceC0207x;
import android.content.Context;
import com.minhub.gamehub.data.Game;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: C1.u0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0108u0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Game f693d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0108u0(Context context, Game game, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        switch (i3) {
            case 1:
                String str = G1.g.f997a;
                this.f692c = context;
                this.f693d = game;
                super(2, continuation);
                break;
            default:
                String str2 = G1.g.f997a;
                this.f692c = context;
                this.f693d = game;
                break;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i3 = this.b;
        Game game = this.f693d;
        Context context = this.f692c;
        switch (i3) {
            case 0:
                String str = G1.g.f997a;
                return new C0108u0(context, game, continuation, 0);
            default:
                String str2 = G1.g.f997a;
                return new C0108u0(context, game, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) obj;
        Continuation continuation = (Continuation) obj2;
        switch (this.b) {
            case 0:
                break;
        }
        return ((C0108u0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0113  */
    /* JADX WARN: Code duplicated, block: B:38:0x0123  */
    /* JADX WARN: Code duplicated, block: B:40:0x012d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0139  */
    /* JADX WARN: Code duplicated, block: B:46:0x01a8  */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x005a, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r11.getSharedPreferences("game_patch_ota", 0).getString("folder_" + r12, null), "") != false) goto L6;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:41:0x0139, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C1.C0108u0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
