package p003b0;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends ByteArrayOutputStream {
    public final /* synthetic */ g b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, int i3) {
        super(i3);
        this.b = gVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i3 = ((ByteArrayOutputStream) this).count;
        if (i3 > 0 && ((ByteArrayOutputStream) this).buf[i3 - 1] == 13) {
            i3--;
        }
        try {
            return new String(((ByteArrayOutputStream) this).buf, 0, i3, this.b.f3095c.name());
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }
}
