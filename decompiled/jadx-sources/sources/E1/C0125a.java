package E1;

import com.minhub.gamehub.game.GodotGameActivity;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;

/* JADX INFO: renamed from: E1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0125a implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f880c;

    public /* synthetic */ C0125a(String str, int i3) {
        this.b = i3;
        this.f880c = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i3 = this.b;
        String str = this.f880c;
        switch (i3) {
            case 0:
                B1.A it = (B1.A) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it.f299a, str));
            case 1:
                MatchResult match = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(match, "match");
                return kotlin.collections.unsigned.a.h(match.getValue(), "\n", str);
            case 2:
                p061x1.a it2 = (p061x1.a) obj;
                int i4 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(it2, "it");
                return p061x1.a.a(it2, null, 0.0f, 0.0f, 0, 0, null, this.f880c, 0.0f, false, 1791);
            default:
                p061x1.a it3 = (p061x1.a) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                return p061x1.a.a(it3, null, 0.0f, 0.0f, 0, 0, null, this.f880c, 0.0f, false, 1791);
        }
    }
}
