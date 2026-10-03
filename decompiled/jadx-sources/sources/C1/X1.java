package C1;

import java.io.File;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class X1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f527a;
    public final File b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f528c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f529d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f530e;
    public final String f;

    public X1(int i3, File file, List original, List draft, String str, String str2) {
        Intrinsics.checkNotNullParameter(original, "original");
        Intrinsics.checkNotNullParameter(draft, "draft");
        this.f527a = i3;
        this.b = file;
        this.f528c = original;
        this.f529d = draft;
        this.f530e = str;
        this.f = str2;
    }

    public static X1 a(X1 x2, List list, String str, int i3) {
        int i4 = x2.f527a;
        File file = x2.b;
        List original = x2.f528c;
        if ((i3 & 8) != 0) {
            list = x2.f529d;
        }
        List draft = list;
        String str2 = x2.f530e;
        x2.getClass();
        Intrinsics.checkNotNullParameter(original, "original");
        Intrinsics.checkNotNullParameter(draft, "draft");
        return new X1(i4, file, original, draft, str2, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof X1)) {
            return false;
        }
        X1 x2 = (X1) obj;
        return this.f527a == x2.f527a && Intrinsics.areEqual(this.b, x2.b) && Intrinsics.areEqual(this.f528c, x2.f528c) && Intrinsics.areEqual(this.f529d, x2.f529d) && Intrinsics.areEqual(this.f530e, x2.f530e) && Intrinsics.areEqual(this.f, x2.f);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f527a) * 31;
        File file = this.b;
        int iHashCode2 = (this.f529d.hashCode() + ((this.f528c.hashCode() + ((iHashCode + (file == null ? 0 : file.hashCode())) * 31)) * 31)) * 31;
        String str = this.f530e;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "PluginDraftUiState(gameId=" + this.f527a + ", file=" + this.b + ", original=" + this.f528c + ", draft=" + this.f529d + ", parseError=" + this.f530e + ", statusMessage=" + this.f + ")";
    }

    public /* synthetic */ X1(int i3, File file, List list, List list2, String str, String str2, int i4) {
        this(i3, file, list, list2, (i4 & 16) != 0 ? null : str, (i4 & 32) != 0 ? null : str2);
    }
}
