package C1;

import com.minhub.gamehub.hub.AddGameActivity;
import java.io.File;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ File f430e;
    public final /* synthetic */ D1.b f;

    public /* synthetic */ G(AddGameActivity addGameActivity, String str, File file, D1.b bVar, int i3) {
        this.b = i3;
        this.f428c = addGameActivity;
        this.f429d = str;
        this.f430e = file;
        this.f = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                O.i(this.f428c, this.f429d, this.f430e, this.f);
                break;
            default:
                O.i(this.f428c, this.f429d, this.f430e, this.f);
                break;
        }
    }
}
