package N1;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1464a;
    public final String b;

    public p(String allowedHost, String allowedPathPrefix) {
        Intrinsics.checkNotNullParameter(allowedHost, "allowedHost");
        Intrinsics.checkNotNullParameter(allowedPathPrefix, "allowedPathPrefix");
        Intrinsics.checkNotNullParameter("AUTHORIZED_ROLLBACK_V2", "authorizedRollbackMarker");
        this.f1464a = allowedHost;
        this.b = allowedPathPrefix;
        if (StringsKt.isBlank(allowedHost)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (!StringsKt.N(allowedPathPrefix, "/")) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return Intrinsics.areEqual(this.f1464a, pVar.f1464a) && Intrinsics.areEqual(this.b, pVar.b) && Intrinsics.areEqual("AUTHORIZED_ROLLBACK_V2", "AUTHORIZED_ROLLBACK_V2");
    }

    public final int hashCode() {
        return ((Long.hashCode(7776000000L) + E.b.c(4102444800000L, E.b.c(Long.MAX_VALUE, E.b.a(128, E.b.c(33554432L, E.b.c(33554432L, E.b.c(262144L, E.b.d(this.b, this.f1464a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31)) * 31) - 1264708301;
    }

    public final String toString() {
        return E.b.n("OtaSecurityPolicy(allowedHost=", this.f1464a, ", allowedPathPrefix=", this.b, ", maxManifestBytes=262144, maxBundleBytes=33554432, maxPlaintextBytes=33554432, maxVersionLength=128, maxSequence=9223372036854775807, maxTimestampMillis=4102444800000, maxFreshnessMillis=7776000000, authorizedRollbackMarker=AUTHORIZED_ROLLBACK_V2)");
    }
}
