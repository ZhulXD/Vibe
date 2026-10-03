package p064y1;

import android.app.Activity;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameStorage;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.e0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0369e0 {
    public static final void a(Activity activity, int i3) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            Result.Companion companion = Result.INSTANCE;
            activity.setRequestedOrientation(b(activity, i3) ? 7 : 6);
            Result.m9constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m9constructorimpl(ResultKt.createFailure(th));
        }
    }

    public static final boolean b(Activity activity, int i3) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            Result.Companion companion = Result.INSTANCE;
            Game gameFindById = GameStorage.INSTANCE.get(activity).findById(i3);
            boolean z2 = false;
            if (gameFindById != null && gameFindById.isPortraitGame()) {
                z2 = true;
            }
            objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(z2));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = bool;
        }
        return ((Boolean) objM9constructorimpl).booleanValue();
    }
}
