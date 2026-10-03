package p061x1;

import B1.EnumC0045a;
import E.b;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5994a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f5996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f5997e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f5998h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f5999i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f6000j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f6001k;

    public a(String id, String label, String keyCode, float f, float f3, int i3, int i4, String shape, String colorHex, float f4, boolean z2) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(keyCode, "keyCode");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(colorHex, "colorHex");
        this.f5994a = id;
        this.b = label;
        this.f5995c = keyCode;
        this.f5996d = f;
        this.f5997e = f3;
        this.f = i3;
        this.g = i4;
        this.f5998h = shape;
        this.f5999i = colorHex;
        this.f6000j = f4;
        this.f6001k = z2;
    }

    public static a a(a aVar, String str, float f, float f3, int i3, int i4, String str2, String str3, float f4, boolean z2, int i5) {
        String id = aVar.f5994a;
        String label = aVar.b;
        if ((i5 & 4) != 0) {
            str = aVar.f5995c;
        }
        String keyCode = str;
        if ((i5 & 8) != 0) {
            f = aVar.f5996d;
        }
        float f5 = f;
        float f6 = (i5 & 16) != 0 ? aVar.f5997e : f3;
        int i6 = (i5 & 32) != 0 ? aVar.f : i3;
        int i7 = (i5 & 64) != 0 ? aVar.g : i4;
        String shape = (i5 & 128) != 0 ? aVar.f5998h : str2;
        String colorHex = (i5 & 256) != 0 ? aVar.f5999i : str3;
        float f7 = (i5 & 512) != 0 ? aVar.f6000j : f4;
        boolean z3 = (i5 & 1024) != 0 ? aVar.f6001k : z2;
        aVar.getClass();
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(keyCode, "keyCode");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(colorHex, "colorHex");
        return new a(id, label, keyCode, f5, f6, i6, i7, shape, colorHex, f7, z3);
    }

    public final EnumC0045a b() {
        String upperCase = this.f5998h.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        int iHashCode = upperCase.hashCode();
        if (iHashCode != 2511332) {
            if (iHashCode != 1988079824) {
                if (iHashCode == 2103451277 && upperCase.equals("ROUNDED")) {
                    return EnumC0045a.f303c;
                }
            } else if (upperCase.equals("CIRCLE")) {
                return EnumC0045a.b;
            }
        } else if (upperCase.equals("RECT")) {
            return EnumC0045a.f304d;
        }
        return EnumC0045a.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.areEqual(this.f5994a, aVar.f5994a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.f5995c, aVar.f5995c) && Float.compare(this.f5996d, aVar.f5996d) == 0 && Float.compare(this.f5997e, aVar.f5997e) == 0 && this.f == aVar.f && this.g == aVar.g && Intrinsics.areEqual(this.f5998h, aVar.f5998h) && Intrinsics.areEqual(this.f5999i, aVar.f5999i) && Float.compare(this.f6000j, aVar.f6000j) == 0 && this.f6001k == aVar.f6001k;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f6001k) + ((Float.hashCode(this.f6000j) + b.d(this.f5999i, b.d(this.f5998h, b.a(this.g, b.a(this.f, (Float.hashCode(this.f5997e) + ((Float.hashCode(this.f5996d) + b.d(this.f5995c, b.d(this.b, this.f5994a.hashCode() * 31, 31), 31)) * 31)) * 31, 31), 31), 31), 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("ButtonConfig(id=", this.f5994a, ", label=", this.b, ", keyCode=");
        sbJ.append(this.f5995c);
        sbJ.append(", x=");
        sbJ.append(this.f5996d);
        sbJ.append(", y=");
        sbJ.append(this.f5997e);
        sbJ.append(", widthDp=");
        sbJ.append(this.f);
        sbJ.append(", heightDp=");
        sbJ.append(this.g);
        sbJ.append(", shape=");
        sbJ.append(this.f5998h);
        sbJ.append(", colorHex=");
        sbJ.append(this.f5999i);
        sbJ.append(", opacity=");
        sbJ.append(this.f6000j);
        sbJ.append(", visible=");
        sbJ.append(this.f6001k);
        sbJ.append(")");
        return sbJ.toString();
    }
}
