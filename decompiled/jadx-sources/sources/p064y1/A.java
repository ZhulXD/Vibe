package p064y1;

import Q1.c;
import Q1.d;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class A implements Function2 {
    public final /* synthetic */ GameActivity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Game f6028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f6029d;

    public /* synthetic */ A(GameActivity gameActivity, Game game, d dVar) {
        this.b = gameActivity;
        this.f6028c = game;
        this.f6029d = dVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        GameActivity gameActivity = this.b;
        Game game = this.f6028c;
        d session = this.f6029d;
        String rawTitle = (String) obj;
        String str = (String) obj2;
        int i3 = GameActivity.f3676L;
        Intrinsics.checkNotNullParameter(rawTitle, "title");
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(rawTitle, "rawTitle");
        boolean z2 = false;
        if (gameActivity.y(session)) {
            synchronized (session) {
                if (session.f1850c && !session.f1855j) {
                    session.f1855j = true;
                    c cVarA = session.a(rawTitle, str, false);
                    if (cVarA == null) {
                        session.c();
                    } else {
                        AbstractC0409s.e(gameActivity, game, session, cVarA, false);
                        z2 = true;
                    }
                }
            }
        }
        return Boolean.valueOf(z2);
    }
}
