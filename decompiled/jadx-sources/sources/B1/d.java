package B1;

import android.view.KeyEvent;
import com.minhub.gamehub.gamepad.ButtonCatalogActivity;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.ImageViewerActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.OnlineCatalogRepository;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f308c;

    public /* synthetic */ d(KeyEvent.Callback callback, int i3) {
        this.b = i3;
        this.f308c = callback;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        n nVar;
        int i3 = this.b;
        KeyEvent.Callback callback = this.f308c;
        switch (i3) {
            case 0:
                ButtonCatalogActivity buttonCatalogActivity = (ButtonCatalogActivity) callback;
                String id = (String) obj;
                Boolean bool = (Boolean) obj2;
                bool.getClass();
                int i4 = ButtonCatalogActivity.f3734h;
                Intrinsics.checkNotNullParameter(id, "id");
                LinkedHashMap linkedHashMapM = buttonCatalogActivity.m();
                linkedHashMapM.put(id, bool);
                buttonCatalogActivity.n(linkedHashMapM);
                return Unit.INSTANCE;
            case 1:
                GamepadOverlay gamepadOverlay = (GamepadOverlay) callback;
                float fFloatValue = ((Float) obj).floatValue();
                float fFloatValue2 = ((Float) obj2).floatValue();
                int i5 = GamepadOverlay.f3736h;
                gamepadOverlay.getClass();
                if (((float) Math.sqrt((fFloatValue2 * fFloatValue2) + (fFloatValue * fFloatValue))) >= 0.2f) {
                    switch ((int) (((((double) (((float) Math.toDegrees(Math.atan2(fFloatValue2, fFloatValue))) + 360)) + 22.5d) % ((double) 360)) / ((double) 45))) {
                        case 0:
                            nVar = n.f;
                            break;
                        case 1:
                            nVar = n.f338j;
                            break;
                        case 2:
                            nVar = n.f334d;
                            break;
                        case 3:
                            nVar = n.f337i;
                            break;
                        case 4:
                            nVar = n.f335e;
                            break;
                        case 5:
                            nVar = n.g;
                            break;
                        case 6:
                            nVar = n.f333c;
                            break;
                        case 7:
                            nVar = n.f336h;
                            break;
                        default:
                            nVar = n.b;
                            break;
                    }
                } else {
                    nVar = n.b;
                }
                if (nVar != gamepadOverlay.f3738d) {
                    gamepadOverlay.c(nVar);
                    gamepadOverlay.f3738d = nVar;
                }
                return Unit.INSTANCE;
            case 2:
                int i6 = AddGameActivity.f3740y;
                return OnlineCatalogRepository.fetchPageConditional$default((OnlineCatalogRepository) ((AddGameActivity) callback).f3743i.getValue(), ((Integer) obj).intValue(), 250, false, (String) obj2, 4, null);
            default:
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) callback;
                int iIntValue = ((Integer) obj).intValue();
                List urls = (List) obj2;
                int i7 = OnlineGameDetailActivity.f3801i;
                Intrinsics.checkNotNullParameter(urls, "urls");
                int i8 = ImageViewerActivity.f3783e;
                OnlineCatalogItem onlineCatalogItem = onlineGameDetailActivity.f;
                if (onlineCatalogItem == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("item");
                    onlineCatalogItem = null;
                }
                Y0.e.o(onlineGameDetailActivity, urls, iIntValue, onlineCatalogItem.getTitle(), 16);
                return Unit.INSTANCE;
        }
    }
}
