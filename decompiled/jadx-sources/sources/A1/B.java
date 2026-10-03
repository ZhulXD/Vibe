package A1;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final B f43a = new B();
    public static volatile C0043y b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile A f44c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile C0009b f45d;

    public static C0043y b(Context context, Activity activity) {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        Object objM9constructorimpl3;
        Object objM9constructorimpl4;
        Object objM9constructorimpl5;
        List listFilterNotNull;
        List listFilterNotNull2;
        List listFilterNotNull3;
        File file = new File(context.getFilesDir(), "game-session.json");
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        arrayList.add(context.getFilesDir());
        arrayList.add(context.getCacheDir());
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(context.getExternalFilesDirs(null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        File[] fileArr = (File[]) objM9constructorimpl;
        if (fileArr != null && (listFilterNotNull3 = ArraysKt.filterNotNull(fileArr)) != null) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, listFilterNotNull3);
        }
        try {
            objM9constructorimpl2 = Result.m9constructorimpl(context.getExternalCacheDirs());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl2)) {
            objM9constructorimpl2 = null;
        }
        File[] fileArr2 = (File[]) objM9constructorimpl2;
        if (fileArr2 != null && (listFilterNotNull2 = ArraysKt.filterNotNull(fileArr2)) != null) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, listFilterNotNull2);
        }
        try {
            objM9constructorimpl3 = Result.m9constructorimpl(context.getExternalMediaDirs());
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th3));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl3)) {
            objM9constructorimpl3 = null;
        }
        File[] fileArr3 = (File[]) objM9constructorimpl3;
        if (fileArr3 != null && (listFilterNotNull = ArraysKt.filterNotNull(fileArr3)) != null) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, listFilterNotNull);
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            int i4 = i3 + 1;
            File file2 = (File) obj;
            try {
                Result.Companion companion5 = Result.INSTANCE;
                objM9constructorimpl5 = Result.m9constructorimpl(file2.getCanonicalPath());
            } catch (Throwable th4) {
                Result.Companion companion6 = Result.INSTANCE;
                objM9constructorimpl5 = Result.m9constructorimpl(ResultKt.createFailure(th4));
            }
            if (Result.m12exceptionOrNullimpl(objM9constructorimpl5) != null) {
                objM9constructorimpl5 = file2.getAbsolutePath();
            }
            if (hashSet.add((String) objM9constructorimpl5)) {
                arrayList2.add(obj);
            }
            i3 = i4;
        }
        K0 k2 = new K0(file, arrayList2);
        Intrinsics.checkNotNullParameter("game-session-token", "alias");
        C0019g c0019g = new C0019g();
        C0021h c0021h = new C0021h(context, 0);
        C0013d c0013d = new C0013d(context, k2);
        c2.c cVar = V1.H.b;
        Y y2 = new Y(k2, c0019g, c0021h, c0013d, cVar);
        V1.a0 a0Var = V1.a0.b;
        if (f44c == null) {
            CoroutineContext coroutineContextPlus = CoroutineContext.Element.DefaultImpls.plus(new V1.q0(), cVar);
            if (coroutineContextPlus.get(a0Var) == null) {
                coroutineContextPlus = coroutineContextPlus.plus(new V1.e0());
            }
            a2.e eVar = new a2.e(coroutineContextPlus);
            A receiver = new A(eVar, y2);
            try {
                Result.Companion companion7 = Result.INSTANCE;
                String[] actions = {"com.minhub.gamehub.action.GAME_SESSION_STATUS", "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"};
                Intrinsics.checkNotNullParameter(actions, "actions");
                IntentFilter filter = new IntentFilter();
                for (int i5 = 0; i5 < 2; i5++) {
                    filter.addAction(actions[i5]);
                }
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(receiver, "receiver");
                Intrinsics.checkNotNullParameter(filter, "filter");
                if (Build.VERSION.SDK_INT >= 33) {
                    context.registerReceiver(receiver, filter, "com.minhub.gamehub.permission.GAME_SESSION", null, 4);
                } else {
                    context.registerReceiver(receiver, filter, "com.minhub.gamehub.permission.GAME_SESSION", null);
                }
                objM9constructorimpl4 = Result.m9constructorimpl(Unit.INSTANCE);
            } catch (Throwable th5) {
                Result.Companion companion8 = Result.INSTANCE;
                objM9constructorimpl4 = Result.m9constructorimpl(ResultKt.createFailure(th5));
            }
            if (Result.m16isSuccessimpl(objM9constructorimpl4)) {
                f44c = receiver;
            }
            if (Result.m12exceptionOrNullimpl(objM9constructorimpl4) != null) {
                V1.b0 b0Var = (V1.b0) eVar.b.get(a0Var);
                if (b0Var == null) {
                    throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + eVar).toString());
                }
                b0Var.b(null);
            }
        }
        Intrinsics.checkNotNullParameter(activity, "activity");
        C0009b c0009b = new C0009b();
        c0009b.b = new WeakReference(activity);
        f45d = c0009b;
        Intrinsics.checkNotNullParameter(context, "context");
        return new C0043y(y2, new D0(), c0009b);
    }

    public final synchronized C0043y a(Context context, Activity value) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(value, "activity");
        C0043y c0043y = b;
        if (c0043y != null) {
            C0009b c0009b = f45d;
            if (c0009b != null) {
                Intrinsics.checkNotNullParameter(value, "value");
                c0009b.b = new WeakReference(value);
            }
            return c0043y;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        C0043y c0043yB = b(applicationContext, value);
        b = c0043yB;
        return c0043yB;
    }
}
