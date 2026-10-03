package C1;

import java.io.File;
import kotlin.io.FilesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f425c;

    public /* synthetic */ F(File file, int i3) {
        this.b = i3;
        this.f425c = file;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                FilesKt.deleteRecursively(this.f425c);
                break;
            case 1:
                FilesKt.deleteRecursively(this.f425c);
                break;
            default:
                FilesKt.deleteRecursively(this.f425c);
                break;
        }
    }
}
