package p064y1;

import com.minhub.gamehub.game.GodotGameActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import p061x1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D0 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GodotGameActivity f6049c;

    public /* synthetic */ D0(GodotGameActivity godotGameActivity, int i3) {
        this.b = i3;
        this.f6049c = godotGameActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        int i4 = 0;
        GodotGameActivity godotGameActivity = this.f6049c;
        switch (i3) {
            case 0:
                int i5 = GodotGameActivity.f3707q;
                godotGameActivity.n();
                return Unit.INSTANCE;
            case 1:
                int i6 = GodotGameActivity.f3707q;
                godotGameActivity.finish();
                return Unit.INSTANCE;
            case 2:
                int i7 = GodotGameActivity.f3707q;
                List listP = godotGameActivity.p();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listP) {
                    if (((a) obj).f6001k) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                int size = arrayList.size();
                while (i4 < size) {
                    Object obj2 = arrayList.get(i4);
                    i4++;
                    arrayList2.add(((a) obj2).f5994a);
                }
                return CollectionsKt.toSet(arrayList2);
            default:
                V0 v2 = godotGameActivity.b;
                if (v2 != null) {
                    v2.b("joyconnectionchanged", 0, Boolean.TRUE, "MinHub Virtual Gamepad");
                }
                return Unit.INSTANCE;
        }
    }
}
