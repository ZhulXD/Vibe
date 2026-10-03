package E1;

import V1.InterfaceC0207x;
import android.content.Context;
import android.util.Log;
import java.io.File;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import p064y1.C0429y1;
import p064y1.EnumC0420v1;
import p064y1.G1;
import p064y1.W0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ L1.a f921d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t(Context context, L1.a aVar, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f920c = context;
        this.f921d = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                return new t(this.f920c, this.f921d, continuation, 0);
            default:
                return new t(this.f920c, this.f921d, continuation, 1);
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
        return ((t) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i3 = this.b;
        L1.a build = this.f921d;
        Context context = this.f920c;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (i3) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Regex regex = W0.f6153a;
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(build, "build");
                C0429y1 c0429y1 = C0429y1.f6409a;
                return Boxing.boxBoolean(C0429y1.q(build, context, EnumC0420v1.GODOT));
            default:
                ResultKt.throwOnFailure(obj);
                Regex regex2 = G1.f6072a;
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(build, "build");
                C0429y1 c0429y2 = C0429y1.f6409a;
                boolean zQ = C0429y1.q(build, context, EnumC0420v1.RENPY7);
                File filesDir = context.getFilesDir();
                File file = new File(filesDir, G1.d(build.a()));
                boolean z2 = !file.exists() || FilesKt.deleteRecursively(file);
                Iterator it = CollectionsKt.listOf((Object[]) new String[]{G1.e(build.a()), kotlin.collections.unsigned.a.g(G1.d(build.a()), ".staging"), kotlin.collections.unsigned.a.g(G1.d(build.a()), ".previous")}).iterator();
                while (it.hasNext()) {
                    FilesKt.deleteRecursively(new File(filesDir, (String) it.next()));
                }
                Log.i("RenpyRuntimes", "Removed Ren'Py " + build.b + " core (install=" + zQ + ", private=" + z2 + ")");
                return Boxing.boxBoolean(zQ && z2);
        }
    }
}
