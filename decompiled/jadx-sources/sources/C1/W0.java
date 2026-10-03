package C1;

import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameMetadataSync;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class W0 extends AdaptedFunctionReference implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Game p0 = (Game) obj;
        Intrinsics.checkNotNullParameter(p0, "p0");
        return GameMetadataSync.syncFromDisk$default((GameMetadataSync) this.receiver, p0, null, 2, null);
    }
}
