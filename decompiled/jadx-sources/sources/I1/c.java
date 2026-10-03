package I1;

import A1.C0015e;
import java.io.File;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1175a;
    public final String b;

    public c(String gameId, String canonicalContentPath) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(canonicalContentPath, "canonicalContentPath");
        this.f1175a = gameId;
        this.b = canonicalContentPath;
        if (StringsKt.isBlank(gameId) || gameId.length() > 1024) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (StringsKt.isBlank(canonicalContentPath) || canonicalContentPath.length() > 8192) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (!new File(canonicalContentPath).isAbsolute()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (!Intrinsics.areEqual(new File(canonicalContentPath).getCanonicalPath(), canonicalContentPath)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final String a() {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        for (Object obj : CollectionsKt.listOf((Object[]) new String[]{"minhub-runtime-identity-v1", this.f1175a, this.b})) {
            Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
            byte[] bytes = ((String) obj).getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            messageDigest.update(ByteBuffer.allocate(4).putInt(bytes.length).array());
            messageDigest.update(bytes);
        }
        byte[] bArrDigest = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
        return ArraysKt___ArraysKt.joinToString$default(bArrDigest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new C0015e(29), 30, (Object) null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.areEqual(this.f1175a, cVar.f1175a) && Intrinsics.areEqual(this.b, cVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f1175a.hashCode() * 31);
    }

    public final String toString() {
        return E.b.n("RuntimeIdentity(gameId=", this.f1175a, ", canonicalContentPath=", this.b, ")");
    }
}
