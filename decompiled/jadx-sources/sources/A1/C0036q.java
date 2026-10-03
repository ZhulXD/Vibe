package A1;

import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.data.DataEncryptor;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogRepository;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.plugin.GodotPluginRegistry;

/* JADX INFO: renamed from: A1.q, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0036q implements Function0 {
    public final /* synthetic */ int b;

    public /* synthetic */ C0036q(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return Long.valueOf(System.currentTimeMillis());
            case 1:
                return Long.valueOf(System.currentTimeMillis());
            case 2:
                return UUID.randomUUID().toString();
            case 3:
                return new byte[32];
            case 4:
                int i3 = GamepadOverlay.f3736h;
                return Unit.INSTANCE;
            case 5:
                int i4 = GamepadOverlay.f3736h;
                return Unit.INSTANCE;
            case 6:
                int i5 = GamepadOverlay.f3736h;
                return Unit.INSTANCE;
            case 7:
                int i6 = AddGameActivity.f3740y;
                Intrinsics.checkNotNullParameter("https://h-game18.xyz/wp-json/rrc/v1/gamehub-catalog", "catalogJsonUrl");
                Intrinsics.checkNotNullParameter("h-game18.xyz", "catalogHostHeader");
                Intrinsics.checkNotNullParameter("", "customLanIp");
                List listCreateListBuilder = CollectionsKt.createListBuilder();
                listCreateListBuilder.add("https://h-game18.xyz/wp-json/rrc/v1/gamehub-catalog");
                return new OnlineCatalogRepository(CollectionsKt.build(listCreateListBuilder), null, null, 6, null);
            case 8:
                return DataEncryptor.secretKey_delegate$lambda$0();
            case 9:
                return Unit.INSTANCE;
            case 10:
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_Z /* 11 */:
                return Unit.INSTANCE;
            case 12:
                return Unit.INSTANCE;
            case 13:
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                return Unit.INSTANCE;
            case 16:
                return GodotPluginRegistry.getPluginRegistry();
            case 17:
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                return Unit.INSTANCE;
            default:
                int i7 = GameActivity.f3676L;
                return Unit.INSTANCE;
        }
    }
}
