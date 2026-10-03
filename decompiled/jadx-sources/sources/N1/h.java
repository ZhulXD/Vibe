package N1;

import java.io.File;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Function0 {
    public final /* synthetic */ i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f1432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f1433d;

    public /* synthetic */ h(i iVar, String str, long j2) {
        this.b = iVar;
        this.f1432c = str;
        this.f1433d = j2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        i iVar = this.b;
        q qVarG = iVar.g();
        r state = qVarG.f1465a;
        if (qVarG.f1467d != null) {
            return qVarG;
        }
        Map map = state.f;
        String str = this.f1432c;
        f fVar = (f) map.get(str);
        if (fVar == null) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter("unknown artifact", "message");
            return new q(state, null, null, "unknown artifact", 6);
        }
        String str2 = fVar.f1428e;
        if (state.f1470d.contains(str)) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter("artifact revoked", "message");
            return new q(state, null, null, "artifact revoked", 6);
        }
        if (!i.p(str) || !i.b(fVar.f1425a, str2)) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter("unsafe artifact path", "message");
            return new q(state, null, null, "unsafe artifact path", 6);
        }
        File file = new File(iVar.f1434a, str2);
        if (!iVar.j(file)) {
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter("unsafe artifact path", "message");
            return new q(state, null, null, "unsafe artifact path", 6);
        }
        long j2 = fVar.f1426c;
        if (j2 >= 0) {
            long j3 = this.f1433d;
            if (j2 <= j3 && j2 <= iVar.b) {
                try {
                    byte[] bArrC = iVar.c(file, j2, j3);
                    try {
                        if (StringsKt.equals(i.m(bArrC), fVar.f1427d, true)) {
                            return new q(state, fVar, bArrC, null, 8);
                        }
                        Intrinsics.checkNotNullParameter(state, "state");
                        Intrinsics.checkNotNullParameter("artifact hash mismatch", "message");
                        return new q(state, null, null, "artifact hash mismatch", 6);
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    state = state;
                }
                Intrinsics.checkNotNullParameter(state, "state");
                Intrinsics.checkNotNullParameter("artifact unreadable", "message");
                return new q(state, null, null, "artifact unreadable", 6);
            }
        }
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter("artifact too large", "message");
        return new q(state, null, null, "artifact too large", 6);
    }
}
