package p064y1;

import E.b;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0368e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EnumC0359b f6214a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6215c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6216d;

    public C0368e(EnumC0359b id, String title, String successMessage, String script) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(successMessage, "successMessage");
        Intrinsics.checkNotNullParameter(script, "script");
        this.f6214a = id;
        this.b = title;
        this.f6215c = successMessage;
        this.f6216d = script;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0368e)) {
            return false;
        }
        C0368e c0368e = (C0368e) obj;
        return this.f6214a == c0368e.f6214a && Intrinsics.areEqual(this.b, c0368e.b) && Intrinsics.areEqual(this.f6215c, c0368e.f6215c) && Intrinsics.areEqual(this.f6216d, c0368e.f6216d);
    }

    public final int hashCode() {
        return this.f6216d.hashCode() + b.d(this.f6215c, b.d(this.b, this.f6214a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "BasicCheatDefinition(id=" + this.f6214a + ", title=" + this.b + ", successMessage=" + this.f6215c + ", script=" + this.f6216d + ")";
    }
}
