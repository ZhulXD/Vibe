package A1;

import com.minhub.gamehub.game.GodotGameActivity;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: A1.o, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0034o implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f210c;

    public /* synthetic */ RunnableC0034o(int i3, Function0 function0) {
        this.b = i3;
        this.f210c = function0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i3 = this.b;
        Function0 function0 = this.f210c;
        switch (i3) {
            case 0:
                function0.invoke();
                break;
            case 1:
                function0.invoke();
                break;
            case 2:
                function0.invoke();
                break;
            case 3:
                function0.invoke();
                break;
            default:
                int i4 = GodotGameActivity.f3707q;
                function0.invoke();
                break;
        }
    }
}
