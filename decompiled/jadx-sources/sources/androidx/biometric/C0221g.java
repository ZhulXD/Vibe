package androidx.biometric;

import java.util.Arrays;

/* JADX INFO: renamed from: androidx.biometric.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0221g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2764a;
    public final CharSequence b;

    public C0221g(int i3, CharSequence charSequence) {
        this.f2764a = i3;
        this.b = charSequence;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0221g)) {
            return false;
        }
        C0221g c0221g = (C0221g) obj;
        if (this.f2764a != c0221g.f2764a) {
            return false;
        }
        CharSequence charSequence = c0221g.b;
        CharSequence charSequence2 = this.b;
        String string = charSequence2 != null ? charSequence2.toString() : null;
        String string2 = charSequence != null ? charSequence.toString() : null;
        if (string == null && string2 == null) {
            return true;
        }
        return string != null && string.equals(string2);
    }

    public final int hashCode() {
        Integer numValueOf = Integer.valueOf(this.f2764a);
        CharSequence charSequence = this.b;
        return Arrays.hashCode(new Object[]{numValueOf, charSequence != null ? charSequence.toString() : null});
    }
}
