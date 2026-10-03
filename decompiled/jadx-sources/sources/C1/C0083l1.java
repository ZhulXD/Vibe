package C1;

import V1.InterfaceC0207x;
import android.R;
import android.app.Activity;
import android.content.Context;
import android.util.Log;
import java.io.File;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import p011e.C0240b;

/* JADX INFO: renamed from: C1.l1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0083l1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f643c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0083l1(int i3, Context context, Continuation continuation) {
        super(2, continuation);
        this.b = i3;
        this.f643c = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new C0083l1(0, this.f643c, continuation);
            case 1:
                return new C0083l1(1, this.f643c, continuation);
            default:
                return new C0083l1(2, (Activity) this.f643c, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) obj;
        Continuation continuation = (Continuation) obj2;
        switch (this.b) {
            case 0:
                break;
            case 1:
                break;
        }
        return ((C0083l1) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i3 = this.b;
        Context ctx = this.f643c;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (i3) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Intrinsics.checkNotNull(ctx);
                G1.m.c(ctx, 79);
                String str = G1.g.f997a;
                Intrinsics.checkNotNull(ctx);
                Intrinsics.checkNotNullParameter(ctx, "ctx");
                for (Object obj2 : G1.g.b) {
                    Intrinsics.checkNotNullExpressionValue(obj2, "next(...)");
                    String str2 = (String) obj2;
                    try {
                        String str3 = G1.g.c() + "/engines/" + str2;
                        if (((Number) G1.g.i(str3 + "/patch_manifest_v2.json?t=" + System.currentTimeMillis()).getFirst()).intValue() == 404) {
                            FilesKt.deleteRecursively(G1.g.d(ctx, str2));
                            Log.i("MinHub-GamePatch", "engine=" + str2 + " not published; cache cleared");
                        }
                        if (((Number) G1.g.i(str3 + "/pre/patch_manifest_v2.json?t=" + System.currentTimeMillis()).getFirst()).intValue() == 404) {
                            FilesKt.deleteRecursively(G1.g.g(ctx, str2));
                        }
                        File fileD = G1.g.d(ctx, str2);
                        File parentFile = fileD.getParentFile();
                        if (parentFile != null) {
                            parentFile.mkdirs();
                        }
                        G1.k kVarK = G1.m.k(fileD, G1.g.c() + "/engines/" + str2 + "/patch_manifest_v2.json", G1.g.f(str2), 79);
                        Log.i("MinHub-GamePatch", "engine=" + str2 + " status=" + kVarK.f1005a + " " + kVarK.b);
                        G1.k kVarK2 = G1.m.k(G1.g.g(ctx, str2), G1.g.c() + "/engines/" + str2 + "/pre/patch_manifest_v2.json", G1.g.f(str2 + "/pre"), 79);
                        Log.i("MinHub-GamePatch", "engine=" + str2 + "/pre status=" + kVarK2.f1005a + " " + kVarK2.b);
                    } catch (Exception e2) {
                        Log.w("MinHub-GamePatch", "engine=" + str2 + " failed: " + e2.getMessage());
                    }
                }
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                Context applicationContext = ctx.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                return G1.m.c(applicationContext, 79);
            default:
                ResultKt.throwOnFailure(obj);
                Activity activity = (Activity) ctx;
                O0.b bVar = new O0.b(activity, 0);
                C0240b c0240b = (C0240b) bVar.f4145c;
                c0240b.f4098d = "Runtime unavailable";
                c0240b.f = "The Ren'Py runtime is not installed or could not be verified safely.";
                bVar.h(R.string.ok, new f2.c(activity, 5));
                c0240b.f4105m = false;
                return bVar.e();
        }
    }
}
