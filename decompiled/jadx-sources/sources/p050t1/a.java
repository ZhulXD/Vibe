package p050t1;

import java.util.Set;
import org.json.JSONException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ b f5324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f5325d;

    public /* synthetic */ a(b bVar, String str, int i3) {
        this.b = i3;
        this.f5324c = bVar;
        this.f5325d = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws JSONException {
        switch (this.b) {
            case 0:
                b bVar = this.f5324c;
                Set<String> enabledButtonIds = bVar.f5326a.getEnabledButtonIds();
                String str = this.f5325d;
                if (!enabledButtonIds.contains(str)) {
                    bVar.f5326a.h(str);
                }
                break;
            default:
                b bVar2 = this.f5324c;
                Set<String> enabledButtonIds2 = bVar2.f5326a.getEnabledButtonIds();
                String str2 = this.f5325d;
                if (enabledButtonIds2.contains(str2)) {
                    bVar2.f5326a.h(str2);
                }
                break;
        }
    }
}
