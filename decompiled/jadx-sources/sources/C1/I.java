package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I implements Function1 {
    public final /* synthetic */ AtomicBoolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f441d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ File f442e;
    public final /* synthetic */ D1.b f;

    public /* synthetic */ I(AtomicBoolean atomicBoolean, AddGameActivity addGameActivity, String str, File file, D1.b bVar) {
        this.b = atomicBoolean;
        this.f440c = addGameActivity;
        this.f441d = str;
        this.f442e = file;
        this.f = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        D1.l candidate = (D1.l) obj;
        Intrinsics.checkNotNullParameter(candidate, "candidate");
        if (this.b.compareAndSet(false, true)) {
            Q q2 = Q.f488c;
            AddGameActivity addGameActivity = this.f440c;
            addGameActivity.B(q2);
            addGameActivity.D(96);
            new Thread(new E(addGameActivity, this.f441d, this.f442e, candidate, this.f, 1)).start();
        }
        return Unit.INSTANCE;
    }
}
