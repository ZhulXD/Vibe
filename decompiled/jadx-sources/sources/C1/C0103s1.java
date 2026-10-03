package C1;

import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: C1.s1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0103s1 implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ KiriKiriInstallActivity f681c;

    public /* synthetic */ C0103s1(KiriKiriInstallActivity kiriKiriInstallActivity, int i3) {
        this.b = i3;
        this.f681c = kiriKiriInstallActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i3 = this.b;
        KiriKiriInstallActivity kiriKiriInstallActivity = this.f681c;
        switch (i3) {
            case 0:
                int i4 = KiriKiriInstallActivity.f3784o;
                kiriKiriInstallActivity.startActivity(kiriKiriInstallActivity.m());
                kiriKiriInstallActivity.finish();
                break;
            default:
                int i5 = KiriKiriInstallActivity.f3784o;
                kiriKiriInstallActivity.p(kiriKiriInstallActivity.m());
                break;
        }
        return Unit.INSTANCE;
    }
}
