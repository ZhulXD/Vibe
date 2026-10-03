package K1;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1222a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f1223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f1225e;
    public final I1.i f;

    public a(String engine, String gameId, Set pluginIds, int i3, i channel, I1.i requestedMode) {
        I1.i actualMode = I1.i.b;
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(pluginIds, "pluginIds");
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(actualMode, "actualMode");
        Intrinsics.checkNotNullParameter(requestedMode, "requestedMode");
        this.f1222a = engine;
        this.b = gameId;
        this.f1223c = pluginIds;
        this.f1224d = i3;
        this.f1225e = channel;
        this.f = requestedMode;
        if (!j.f1245a.matches(engine)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (StringsKt.isBlank(gameId) || gameId.length() > 128) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (i3 < 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (!Intrinsics.areEqual(this.f1222a, aVar.f1222a) || !Intrinsics.areEqual((Object) null, (Object) null) || !Intrinsics.areEqual(this.b, aVar.b) || !Intrinsics.areEqual(this.f1223c, aVar.f1223c) || !Intrinsics.areEqual((Object) null, (Object) null) || this.f1224d != aVar.f1224d || this.f1225e != aVar.f1225e) {
            return false;
        }
        I1.i iVar = I1.i.b;
        return this.f == aVar.f;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((I1.i.b.hashCode() + ((this.f1225e.hashCode() + E.b.a(this.f1224d, (this.f1223c.hashCode() + E.b.d(this.b, this.f1222a.hashCode() * 961, 31)) * 961, 31)) * 31)) * 31);
    }

    public final String toString() {
        I1.i iVar = I1.i.b;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("CompatibilityInput(engine=", this.f1222a, ", detectedEngineVersion=null, gameId=", this.b, ", pluginIds=");
        sbJ.append(this.f1223c);
        sbJ.append(", pluginFingerprint=null, appVersion=");
        sbJ.append(this.f1224d);
        sbJ.append(", channel=");
        sbJ.append(this.f1225e);
        sbJ.append(", actualMode=");
        sbJ.append(iVar);
        sbJ.append(", requestedMode=");
        sbJ.append(this.f);
        sbJ.append(")");
        return sbJ.toString();
    }
}
