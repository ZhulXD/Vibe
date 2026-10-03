package p064y1;

import Q1.d;
import com.minhub.gamehub.game.GameActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: y1.z, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0430z implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f6411d;

    public /* synthetic */ C0430z(GameActivity gameActivity, d dVar, int i3) {
        this.b = i3;
        this.f6410c = gameActivity;
        this.f6411d = dVar;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        d dVar = this.f6411d;
        GameActivity gameActivity = this.f6410c;
        switch (i3) {
            case 0:
                int i4 = GameActivity.f3676L;
                gameActivity.runOnUiThread(new RunnableC0386k(gameActivity, dVar, 3));
                break;
            default:
                int i5 = GameActivity.f3676L;
                gameActivity.runOnUiThread(new RunnableC0386k(gameActivity, dVar, 2));
                break;
        }
        return Unit.INSTANCE;
    }
}
