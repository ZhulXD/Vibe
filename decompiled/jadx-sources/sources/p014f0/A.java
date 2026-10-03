package p014f0;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class A implements Appendable {
    public final Appendable b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4177c = true;

    public A(Appendable appendable) {
        this.b = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c3) throws IOException {
        boolean z2 = this.f4177c;
        Appendable appendable = this.b;
        if (z2) {
            this.f4177c = false;
            appendable.append("  ");
        }
        this.f4177c = c3 == '\n';
        appendable.append(c3);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i3, int i4) throws IOException {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z2 = this.f4177c;
        Appendable appendable = this.b;
        boolean z3 = false;
        if (z2) {
            this.f4177c = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i4 - 1) == '\n') {
            z3 = true;
        }
        this.f4177c = z3;
        appendable.append(charSequence, i3, i4);
        return this;
    }
}
