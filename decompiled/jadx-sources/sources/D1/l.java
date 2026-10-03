package D1;

import com.minhub.gamehub.data.GameEngine;
import java.io.File;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f835a;
    public final File b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GameEngine f836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final k f837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f838e;

    public l(File file, File rootDir, GameEngine engine, k confidence, String relativePath) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(confidence, "confidence");
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        this.f835a = file;
        this.b = rootDir;
        this.f836c = engine;
        this.f837d = confidence;
        this.f838e = relativePath;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return Intrinsics.areEqual(this.f835a, lVar.f835a) && Intrinsics.areEqual(this.b, lVar.b) && this.f836c == lVar.f836c && this.f837d == lVar.f837d && Intrinsics.areEqual(this.f838e, lVar.f838e);
    }

    public final int hashCode() {
        return this.f838e.hashCode() + ((this.f837d.hashCode() + ((this.f836c.hashCode() + ((this.b.hashCode() + (this.f835a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LaunchCandidate(file=");
        sb.append(this.f835a);
        sb.append(", rootDir=");
        sb.append(this.b);
        sb.append(", engine=");
        sb.append(this.f836c);
        sb.append(", confidence=");
        sb.append(this.f837d);
        sb.append(", relativePath=");
        return kotlin.collections.unsigned.a.i(sb, this.f838e, ")");
    }
}
