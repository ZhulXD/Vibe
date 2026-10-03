package p064y1;

import E.b;
import kotlin.collections.unsigned.a;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0356a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f6168a;
    public final boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6169c;

    public C0356a(boolean z2, boolean z3, String toggleLabel) {
        Intrinsics.checkNotNullParameter(toggleLabel, "toggleLabel");
        this.f6168a = z2;
        this.b = z3;
        this.f6169c = toggleLabel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0356a)) {
            return false;
        }
        C0356a c0356a = (C0356a) obj;
        return this.f6168a == c0356a.f6168a && this.b == c0356a.b && Intrinsics.areEqual(this.f6169c, c0356a.f6169c);
    }

    public final int hashCode() {
        return this.f6169c.hashCode() + b.b(Boolean.hashCode(this.f6168a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArrangeCustomizePanelUiState(showPanel=");
        sb.append(this.f6168a);
        sb.append(", showBody=");
        sb.append(this.b);
        sb.append(", toggleLabel=");
        return a.i(sb, this.f6169c, ")");
    }
}
