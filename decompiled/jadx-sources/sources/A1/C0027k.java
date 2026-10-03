package A1;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: A1.k, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0027k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f200a;
    public final String b;

    public C0027k(String ciphertextBase64, String ivBase64) {
        Intrinsics.checkNotNullParameter(ciphertextBase64, "ciphertextBase64");
        Intrinsics.checkNotNullParameter(ivBase64, "ivBase64");
        this.f200a = ciphertextBase64;
        this.b = ivBase64;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0027k)) {
            return false;
        }
        C0027k c0027k = (C0027k) obj;
        return Intrinsics.areEqual(this.f200a, c0027k.f200a) && Intrinsics.areEqual(this.b, c0027k.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f200a.hashCode() * 31);
    }

    public final String toString() {
        return E.b.n("EncryptedToken(ciphertextBase64=", this.f200a, ", ivBase64=", this.b, ")");
    }
}
