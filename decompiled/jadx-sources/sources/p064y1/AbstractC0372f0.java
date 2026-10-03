package p064y1;

import V1.H;
import V1.a0;
import V1.e0;
import V1.q0;
import a2.e;
import android.app.Activity;
import android.content.Context;
import com.minhub.gamehub.data.GameRepository;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.f0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0372f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f6225a;

    static {
        CoroutineContext coroutineContextPlus = CoroutineContext.Element.DefaultImpls.plus(new q0(), H.b);
        if (coroutineContextPlus.get(a0.b) == null) {
            coroutineContextPlus = coroutineContextPlus.plus(new e0());
        }
        f6225a = new e(coroutineContextPlus);
    }

    public static void a(Activity context, int i3, long j2) {
        int iCurrentTimeMillis;
        Intrinsics.checkNotNullParameter(context, "context");
        if (i3 < 0 || j2 <= 0 || (iCurrentTimeMillis = (int) ((System.currentTimeMillis() - j2) / 60000)) <= 0) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        new GameRepository(applicationContext).addPlaytime(i3, iCurrentTimeMillis);
    }
}
