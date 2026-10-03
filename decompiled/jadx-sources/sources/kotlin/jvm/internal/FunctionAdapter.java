package kotlin.jvm.internal;

import kotlin.Function;
import kotlin.SinceKotlin;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@SinceKotlin(version = "1.4")
public interface FunctionAdapter {
    Function<?> getFunctionDelegate();
}
