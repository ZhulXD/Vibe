package p019h0;

import java.security.MessageDigest;
import p065z0.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements e {
    public final MessageDigest b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p065z0.h f4372c = new p065z0.h();

    public h(MessageDigest messageDigest) {
        this.b = messageDigest;
    }

    @Override // p065z0.e
    public final p065z0.h b() {
        return this.f4372c;
    }
}
