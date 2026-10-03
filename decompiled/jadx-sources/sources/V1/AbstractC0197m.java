package V1;

import kotlin.Result;
import kotlin.ResultKt;

/* JADX INFO: renamed from: V1.m, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0197m {
    public static final Object a(Object obj) {
        if (!(obj instanceof C0195k)) {
            return Result.m9constructorimpl(obj);
        }
        Result.Companion companion = Result.INSTANCE;
        return Result.m9constructorimpl(ResultKt.createFailure(((C0195k) obj).f2296a));
    }
}
