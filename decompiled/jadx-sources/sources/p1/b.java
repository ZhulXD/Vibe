package p1;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class b implements Closeable, Flushable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Pattern f5232j = Pattern.compile("-?(?:0|[1-9][0-9]*)(?:\\.[0-9]+)?(?:[eE][-+]?[0-9]+)?");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String[] f5233k = new String[128];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f5234l;
    public final Writer b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f5235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5237e;
    public boolean f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f5238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5239i;

    static {
        for (int i3 = 0; i3 <= 31; i3++) {
            f5233k[i3] = String.format("\\u%04x", Integer.valueOf(i3));
        }
        String[] strArr = f5233k;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f5234l = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public b(Writer writer) {
        int[] iArr = new int[32];
        this.f5235c = iArr;
        this.f5236d = 0;
        if (iArr.length == 0) {
            this.f5235c = Arrays.copyOf(iArr, 0);
        }
        int[] iArr2 = this.f5235c;
        int i3 = this.f5236d;
        this.f5236d = i3 + 1;
        iArr2[i3] = 6;
        this.f5237e = ":";
        this.f5239i = true;
        Objects.requireNonNull(writer, "out == null");
        this.b = writer;
    }

    public final void a() throws IOException {
        int iJ = j();
        if (iJ == 1) {
            this.f5235c[this.f5236d - 1] = 2;
            h();
            return;
        }
        Writer writer = this.b;
        if (iJ == 2) {
            writer.append(',');
            h();
        } else {
            if (iJ == 4) {
                writer.append((CharSequence) this.f5237e);
                this.f5235c[this.f5236d - 1] = 5;
                return;
            }
            if (iJ != 6) {
                if (iJ != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            this.f5235c[this.f5236d - 1] = 7;
        }
    }

    public void b() throws IOException {
        q();
        a();
        int i3 = this.f5236d;
        int[] iArr = this.f5235c;
        if (i3 == iArr.length) {
            this.f5235c = Arrays.copyOf(iArr, i3 * 2);
        }
        int[] iArr2 = this.f5235c;
        int i4 = this.f5236d;
        this.f5236d = i4 + 1;
        iArr2[i4] = 1;
        this.b.write(91);
    }

    public void c() throws IOException {
        q();
        a();
        int i3 = this.f5236d;
        int[] iArr = this.f5235c;
        if (i3 == iArr.length) {
            this.f5235c = Arrays.copyOf(iArr, i3 * 2);
        }
        int[] iArr2 = this.f5235c;
        int i4 = this.f5236d;
        this.f5236d = i4 + 1;
        iArr2[i4] = 3;
        this.b.write(123);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.b.close();
        int i3 = this.f5236d;
        if (i3 > 1 || (i3 == 1 && this.f5235c[i3 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f5236d = 0;
    }

    public final void d(int i3, int i4, char c3) throws IOException {
        int iJ = j();
        if (iJ != i4 && iJ != i3) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f5238h != null) {
            throw new IllegalStateException("Dangling name: " + this.f5238h);
        }
        this.f5236d--;
        if (iJ == i4) {
            h();
        }
        this.b.write(c3);
    }

    public void e() throws IOException {
        d(1, 2, ']');
    }

    public void f() throws IOException {
        d(3, 5, '}');
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f5236d == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.b.flush();
    }

    public void g(String str) {
        Objects.requireNonNull(str, "name == null");
        if (this.f5238h != null) {
            throw new IllegalStateException();
        }
        if (this.f5236d == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f5238h = str;
    }

    public b i() throws IOException {
        if (this.f5238h != null) {
            if (!this.f5239i) {
                this.f5238h = null;
                return this;
            }
            q();
        }
        a();
        this.b.write("null");
        return this;
    }

    public final int j() {
        int i3 = this.f5236d;
        if (i3 != 0) {
            return this.f5235c[i3 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public final void k(String str) throws IOException {
        String str2;
        String[] strArr = this.g ? f5234l : f5233k;
        Writer writer = this.b;
        writer.write(34);
        int length = str.length();
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i3 < i4) {
                        writer.write(str, i3, i4 - i3);
                    }
                    writer.write(str2);
                    i3 = i4 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i3 < i4) {
                    writer.write(str, i3, i4 - i3);
                }
                writer.write(str2);
                i3 = i4 + 1;
            }
        }
        if (i3 < length) {
            writer.write(str, i3, length - i3);
        }
        writer.write(34);
    }

    public void l(double d3) throws IOException {
        q();
        if (this.f || !(Double.isNaN(d3) || Double.isInfinite(d3))) {
            a();
            this.b.append((CharSequence) Double.toString(d3));
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d3);
        }
    }

    public void m(long j2) throws IOException {
        q();
        a();
        this.b.write(Long.toString(j2));
    }

    public void n(Number number) throws IOException {
        if (number == null) {
            i();
            return;
        }
        q();
        String string = number.toString();
        if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
            Class<?> cls = number.getClass();
            if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !f5232j.matcher(string).matches()) {
                throw new IllegalArgumentException("String created by " + cls + " is not a valid JSON number: " + string);
            }
        } else if (!this.f) {
            throw new IllegalArgumentException("Numeric values must be finite, but was ".concat(string));
        }
        a();
        this.b.append((CharSequence) string);
    }

    public void o(String str) throws IOException {
        if (str == null) {
            i();
            return;
        }
        q();
        a();
        k(str);
    }

    public void p(boolean z2) throws IOException {
        q();
        a();
        this.b.write(z2 ? "true" : "false");
    }

    public final void q() throws IOException {
        if (this.f5238h != null) {
            int iJ = j();
            if (iJ == 5) {
                this.b.write(44);
            } else if (iJ != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            h();
            this.f5235c[this.f5236d - 1] = 4;
            k(this.f5238h);
            this.f5238h = null;
        }
    }

    public final void h() {
    }
}
