package p1;

import androidx.core.view.MotionEventCompat;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class a implements Closeable {
    public final StringReader b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f5225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5226k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f5227l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f5228m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String[] f5230o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int[] f5231p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5220c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final char[] f5221d = new char[1024];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5222e = 0;
    public int f = 0;
    public int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5223h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5224i = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5229n = 1;

    static {
        com.google.android.material.datepicker.c.f3412c = new com.google.android.material.datepicker.c(27);
    }

    public a(StringReader stringReader) {
        int[] iArr = new int[32];
        this.f5228m = iArr;
        iArr[0] = 6;
        this.f5230o = new String[32];
        this.f5231p = new int[32];
        this.b = stringReader;
    }

    public final void A() throws c {
        do {
            int i3 = 0;
            while (true) {
                int i4 = this.f5222e;
                if (i4 + i3 < this.f) {
                    char c3 = this.f5221d[i4 + i3];
                    if (c3 != '\t' && c3 != '\n' && c3 != '\f' && c3 != '\r' && c3 != ' ') {
                        if (c3 != '#') {
                            if (c3 != ',') {
                                if (c3 != '/' && c3 != '=') {
                                    if (c3 != '{' && c3 != '}' && c3 != ':') {
                                        if (c3 != ';') {
                                            switch (c3) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i3++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        c();
                    }
                    this.f5222e += i3;
                    return;
                }
                this.f5222e = i4 + i3;
            }
        } while (g(1));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void B() throws IOException {
        int i3 = 0;
        do {
            int iD = this.f5224i;
            if (iD == 0) {
                iD = d();
            }
            switch (iD) {
                case 1:
                    w(3);
                    i3++;
                    this.f5224i = 0;
                    break;
                case 2:
                    if (i3 == 0) {
                        this.f5230o[this.f5229n - 1] = null;
                    }
                    this.f5229n--;
                    i3--;
                    this.f5224i = 0;
                    break;
                case 3:
                    w(1);
                    i3++;
                    this.f5224i = 0;
                    break;
                case 4:
                    this.f5229n--;
                    i3--;
                    this.f5224i = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case MotionEventCompat.AXIS_Z /* 11 */:
                case MotionEventCompat.AXIS_HAT_X /* 15 */:
                default:
                    this.f5224i = 0;
                    break;
                case 8:
                    y('\'');
                    this.f5224i = 0;
                    break;
                case 9:
                    y(Typography.quote);
                    this.f5224i = 0;
                    break;
                case 10:
                    A();
                    this.f5224i = 0;
                    break;
                case 12:
                    y('\'');
                    if (i3 == 0) {
                        this.f5230o[this.f5229n - 1] = "<skipped>";
                    }
                    this.f5224i = 0;
                    break;
                case 13:
                    y(Typography.quote);
                    if (i3 == 0) {
                        this.f5230o[this.f5229n - 1] = "<skipped>";
                    }
                    this.f5224i = 0;
                    break;
                case MotionEventCompat.AXIS_RZ /* 14 */:
                    A();
                    if (i3 == 0) {
                        this.f5230o[this.f5229n - 1] = "<skipped>";
                    }
                    this.f5224i = 0;
                    break;
                case 16:
                    this.f5222e += this.f5226k;
                    this.f5224i = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i3 > 0);
        int[] iArr = this.f5231p;
        int i4 = this.f5229n - 1;
        iArr[i4] = iArr[i4] + 1;
    }

    public final void C(String str) throws c {
        throw new c(str + k());
    }

    public final void a() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 3) {
            w(1);
            this.f5231p[this.f5229n - 1] = 0;
            this.f5224i = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
    }

    public final void b() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 1) {
            w(3);
            this.f5224i = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
    }

    public final void c() throws c {
        if (this.f5220c) {
            return;
        }
        C("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5224i = 0;
        this.f5228m[0] = 8;
        this.f5229n = 1;
        this.b.close();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0146  */
    /* JADX WARN: Code duplicated, block: B:108:0x0162  */
    /* JADX WARN: Code duplicated, block: B:110:0x016a  */
    /* JADX WARN: Code duplicated, block: B:115:0x017f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:116:0x0180  */
    /* JADX WARN: Code duplicated, block: B:119:0x0192  */
    /* JADX WARN: Code duplicated, block: B:122:0x0198  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:126:0x01a9 A[PHI: r4 r14
      0x01a9: PHI (r4v10 int) = (r4v9 int), (r4v15 int) binds: [B:118:0x0190, B:125:0x01a3] A[DONT_GENERATE, DONT_INLINE]
      0x01a9: PHI (r14v3 int) = (r14v2 int), (r14v4 int) binds: [B:118:0x0190, B:125:0x01a3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:128:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:130:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:168:0x0214  */
    /* JADX WARN: Code duplicated, block: B:169:0x0216  */
    /* JADX WARN: Code duplicated, block: B:181:0x0237 A[DONT_INVERT, PHI: r13
      0x0237: PHI (r13v20 int) = (r13v19 int), (r13v21 int) binds: [B:167:0x0212, B:173:0x021f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:182:0x0239  */
    /* JADX WARN: Code duplicated, block: B:195:0x0256  */
    /* JADX WARN: Code duplicated, block: B:197:0x0259  */
    /* JADX WARN: Code duplicated, block: B:200:0x025e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:204:0x0267 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:205:0x0268  */
    /* JADX WARN: Code duplicated, block: B:207:0x0272  */
    /* JADX WARN: Code duplicated, block: B:209:0x0278  */
    /* JADX WARN: Code duplicated, block: B:211:0x027e  */
    /* JADX WARN: Code duplicated, block: B:213:0x0281 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:214:0x0283  */
    /* JADX WARN: Code duplicated, block: B:216:0x0287  */
    /* JADX WARN: Code duplicated, block: B:226:0x02a2  */
    /* JADX WARN: Code duplicated, block: B:228:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:269:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:271:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:92:0x012a  */
    /* JADX WARN: Code duplicated, block: B:95:0x0136  */
    /* JADX WARN: Code duplicated, block: B:97:0x013d  */
    public final int d() throws IOException {
        int iQ;
        int i3;
        int iQ2;
        char c3;
        String str;
        String str2;
        int i4;
        int length;
        int i5;
        char c4;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        char c5;
        int i10;
        int i11;
        int[] iArr = this.f5228m;
        int i12 = this.f5229n - 1;
        int i13 = iArr[i12];
        char[] cArr = this.f5221d;
        if (i13 == 1) {
            iArr[i12] = 2;
        } else if (i13 == 2) {
            int iQ3 = q(true);
            if (iQ3 != 44) {
                if (iQ3 != 59) {
                    if (iQ3 == 93) {
                        this.f5224i = 4;
                        return 4;
                    }
                    C("Unterminated array");
                    throw null;
                }
                c();
            }
        } else {
            if (i13 == 3 || i13 == 5) {
                iArr[i12] = 4;
                if (i13 == 5 && (iQ = q(true)) != 44) {
                    if (iQ != 59) {
                        if (iQ == 125) {
                            this.f5224i = 2;
                            return 2;
                        }
                        C("Unterminated object");
                        throw null;
                    }
                    c();
                }
                int iQ4 = q(true);
                if (iQ4 == 34) {
                    this.f5224i = 13;
                    return 13;
                }
                if (iQ4 == 39) {
                    c();
                    this.f5224i = 12;
                    return 12;
                }
                if (iQ4 == 125) {
                    if (i13 != 5) {
                        this.f5224i = 2;
                        return 2;
                    }
                    C("Expected name");
                    throw null;
                }
                c();
                this.f5222e--;
                if (j((char) iQ4)) {
                    this.f5224i = 14;
                    return 14;
                }
                C("Expected name");
                throw null;
            }
            if (i13 != 4) {
                if (i13 == 6) {
                    if (this.f5220c) {
                        q(true);
                        int i14 = this.f5222e;
                        this.f5222e = i14 - 1;
                        if (i14 + 4 <= this.f || g(5)) {
                            int i15 = this.f5222e;
                            if (cArr[i15] == ')' && cArr[i15 + 1] == ']' && cArr[i15 + 2] == '}' && cArr[i15 + 3] == '\'' && cArr[i15 + 4] == '\n') {
                                this.f5222e = i15 + 5;
                            }
                        }
                    }
                    this.f5228m[this.f5229n - 1] = 7;
                } else if (i13 == 7) {
                    i3 = 0;
                    if (q(false) == -1) {
                        this.f5224i = 17;
                        return 17;
                    }
                    c();
                    this.f5222e--;
                } else {
                    i3 = 0;
                    if (i13 == 8) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                }
                iQ2 = q(true);
                if (iQ2 != 34) {
                    this.f5224i = 9;
                    return 9;
                }
                if (iQ2 != 39) {
                    c();
                    this.f5224i = 8;
                    return 8;
                }
                if (iQ2 != 44 && iQ2 != 59) {
                    if (iQ2 != 91) {
                        this.f5224i = 3;
                        return 3;
                    }
                    if (iQ2 != 93) {
                        if (iQ2 != 123) {
                            this.f5224i = 1;
                            return 1;
                        }
                        int i16 = this.f5222e - 1;
                        this.f5222e = i16;
                        c3 = cArr[i16];
                        if (c3 != 't' || c3 == 'T') {
                            str = "true";
                            str2 = "TRUE";
                            i4 = 5;
                        } else {
                            if (c3 != 'f' && c3 != 'F') {
                                if (c3 != 'n' && c3 != 'N') {
                                    i4 = i3;
                                    break;
                                }
                                str = "null";
                                str2 = "NULL";
                                i4 = 7;
                                if (i4 != 0) {
                                    return i4;
                                }
                                int i17 = this.f5222e;
                                i6 = this.f;
                                i7 = i3;
                                i8 = i7;
                                int i18 = i8;
                                i9 = i17;
                                z2 = true;
                                long j2 = 0;
                                while (true) {
                                    if (i9 + i8 != i6) {
                                        c5 = cArr[i9 + i8];
                                        if (c5 != '+') {
                                            if (c5 != 'E' || c5 == 'e') {
                                                if (i7 != 2 || i7 == 4) {
                                                    i7 = 5;
                                                    i8++;
                                                }
                                            } else if (c5 == '-') {
                                                if (i7 == 0) {
                                                    i7 = 1;
                                                    i18 = 1;
                                                } else {
                                                    if (i7 != 5) {
                                                    }
                                                    i7 = 6;
                                                }
                                                i8++;
                                            } else if (c5 != '.') {
                                                if (c5 >= '0' && c5 <= '9') {
                                                    if (i7 == 1 || i7 == 0) {
                                                        j2 = -(c5 - '0');
                                                        i7 = 2;
                                                    } else if (i7 == 2) {
                                                        if (j2 != 0) {
                                                            long j3 = (10 * j2) - ((long) (c5 - '0'));
                                                            z2 &= j2 > -922337203685477580L || (j2 == -922337203685477580L && j3 < j2);
                                                            j2 = j3;
                                                        }
                                                    } else if (i7 == 3) {
                                                        i7 = 4;
                                                    } else if (i7 == 5 || i7 == 6) {
                                                        i7 = 7;
                                                    }
                                                    i8++;
                                                } else if (!j(c5)) {
                                                    i11 = 2;
                                                    if (i7 != 2) {
                                                        if (i7 != i11 || i7 == 4 || i7 == 7) {
                                                            this.f5226k = i8;
                                                            i10 = 16;
                                                            this.f5224i = 16;
                                                        }
                                                    } else if (z2 || ((j2 == Long.MIN_VALUE && i18 == 0) || (j2 == 0 && i18 != 0))) {
                                                        i11 = 2;
                                                        if (i7 != i11) {
                                                        }
                                                        this.f5226k = i8;
                                                        i10 = 16;
                                                        this.f5224i = 16;
                                                    } else {
                                                        if (i18 == 0) {
                                                            j2 = -j2;
                                                        }
                                                        this.f5225j = j2;
                                                        this.f5222e += i8;
                                                        i10 = 15;
                                                        this.f5224i = 15;
                                                    }
                                                }
                                            } else if (i7 == 2) {
                                                i7 = 3;
                                                i8++;
                                            }
                                            if (i10 != 0) {
                                                return i10;
                                            }
                                            if (j(cArr[this.f5222e])) {
                                                C("Expected value");
                                                throw null;
                                            }
                                            c();
                                            this.f5224i = 10;
                                            return 10;
                                        }
                                        if (i7 != 5) {
                                        }
                                        i7 = 6;
                                        i8++;
                                    } else if (i8 != cArr.length) {
                                        if (g(i8 + 1)) {
                                            i9 = this.f5222e;
                                            i6 = this.f;
                                            c5 = cArr[i9 + i8];
                                            if (c5 != '+') {
                                                if (c5 != 'E') {
                                                    if (i7 != 2) {
                                                    }
                                                    i7 = 5;
                                                    i8++;
                                                } else {
                                                    if (i7 != 2) {
                                                    }
                                                    i7 = 5;
                                                    i8++;
                                                }
                                                if (i10 != 0) {
                                                    return i10;
                                                }
                                                if (j(cArr[this.f5222e])) {
                                                    C("Expected value");
                                                    throw null;
                                                }
                                                c();
                                                this.f5224i = 10;
                                                return 10;
                                            }
                                            if (i7 != 5) {
                                            }
                                            i7 = 6;
                                            i8++;
                                        }
                                        i11 = 2;
                                        if (i7 != 2) {
                                            if (i7 != i11) {
                                            }
                                            this.f5226k = i8;
                                            i10 = 16;
                                            this.f5224i = 16;
                                        } else {
                                            if (z2) {
                                            }
                                            i11 = 2;
                                            if (i7 != i11) {
                                            }
                                            this.f5226k = i8;
                                            i10 = 16;
                                            this.f5224i = 16;
                                        }
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (j(cArr[this.f5222e])) {
                                            C("Expected value");
                                            throw null;
                                        }
                                        c();
                                        this.f5224i = 10;
                                        return 10;
                                    }
                                    i10 = 0;
                                    if (i10 != 0) {
                                        return i10;
                                    }
                                    if (j(cArr[this.f5222e])) {
                                        C("Expected value");
                                        throw null;
                                    }
                                    c();
                                    this.f5224i = 10;
                                    return 10;
                                }
                            }
                            str = "false";
                            str2 = "FALSE";
                            i4 = 6;
                        }
                        length = str.length();
                        i5 = 1;
                        while (true) {
                            if (i5 >= length) {
                                if ((this.f5222e + length < this.f && !g(length + 1)) || !j(cArr[this.f5222e + length])) {
                                    this.f5222e += length;
                                    this.f5224i = i4;
                                    break;
                                }
                                break;
                            }
                            if ((this.f5222e + i5 >= this.f || g(i5 + 1)) && ((c4 = cArr[this.f5222e + i5]) == str.charAt(i5) || c4 == str2.charAt(i5))) {
                            }
                            i4 = i3;
                            break;
                        }
                        if (i4 != 0) {
                            return i4;
                        }
                        int i19 = this.f5222e;
                        i6 = this.f;
                        i7 = i3;
                        i8 = i7;
                        int i110 = i8;
                        i9 = i19;
                        z2 = true;
                        long j4 = 0;
                        while (true) {
                            if (i9 + i8 != i6) {
                                c5 = cArr[i9 + i8];
                                if (c5 != '+') {
                                    if (c5 != 'E') {
                                        if (i7 != 2) {
                                        }
                                        i7 = 5;
                                        i8++;
                                    } else {
                                        if (i7 != 2) {
                                        }
                                        i7 = 5;
                                        i8++;
                                    }
                                    if (i10 != 0) {
                                        return i10;
                                    }
                                    if (j(cArr[this.f5222e])) {
                                        C("Expected value");
                                        throw null;
                                    }
                                    c();
                                    this.f5224i = 10;
                                    return 10;
                                }
                                if (i7 != 5) {
                                }
                                i7 = 6;
                                i8++;
                            } else if (i8 != cArr.length) {
                                if (g(i8 + 1)) {
                                    i9 = this.f5222e;
                                    i6 = this.f;
                                    c5 = cArr[i9 + i8];
                                    if (c5 != '+') {
                                        if (c5 != 'E') {
                                            if (i7 != 2) {
                                            }
                                            i7 = 5;
                                            i8++;
                                        } else {
                                            if (i7 != 2) {
                                            }
                                            i7 = 5;
                                            i8++;
                                        }
                                        if (i10 != 0) {
                                            return i10;
                                        }
                                        if (j(cArr[this.f5222e])) {
                                            C("Expected value");
                                            throw null;
                                        }
                                        c();
                                        this.f5224i = 10;
                                        return 10;
                                    }
                                    if (i7 != 5) {
                                    }
                                    i7 = 6;
                                    i8++;
                                }
                                i11 = 2;
                                if (i7 != 2) {
                                    if (i7 != i11) {
                                    }
                                    this.f5226k = i8;
                                    i10 = 16;
                                    this.f5224i = 16;
                                } else {
                                    if (z2) {
                                    }
                                    i11 = 2;
                                    if (i7 != i11) {
                                    }
                                    this.f5226k = i8;
                                    i10 = 16;
                                    this.f5224i = 16;
                                }
                                if (i10 != 0) {
                                    return i10;
                                }
                                if (j(cArr[this.f5222e])) {
                                    C("Expected value");
                                    throw null;
                                }
                                c();
                                this.f5224i = 10;
                                return 10;
                            }
                            i10 = 0;
                            if (i10 != 0) {
                                return i10;
                            }
                            if (j(cArr[this.f5222e])) {
                                C("Expected value");
                                throw null;
                            }
                            c();
                            this.f5224i = 10;
                            return 10;
                        }
                    }
                    if (i13 == 1) {
                        this.f5224i = 4;
                        return 4;
                    }
                }
                if (i13 == 1 && i13 != 2) {
                    C("Unexpected value");
                    throw null;
                }
                c();
                this.f5222e--;
                this.f5224i = 7;
                return 7;
            }
            iArr[i12] = 5;
            int iQ5 = q(true);
            if (iQ5 != 58) {
                if (iQ5 != 61) {
                    C("Expected ':'");
                    throw null;
                }
                c();
                if (this.f5222e < this.f || g(1)) {
                    int i20 = this.f5222e;
                    if (cArr[i20] == '>') {
                        this.f5222e = i20 + 1;
                    }
                }
            }
        }
        i3 = 0;
        iQ2 = q(true);
        if (iQ2 != 34) {
            this.f5224i = 9;
            return 9;
        }
        if (iQ2 != 39) {
            c();
            this.f5224i = 8;
            return 8;
        }
        if (iQ2 != 44) {
            if (iQ2 != 91) {
                this.f5224i = 3;
                return 3;
            }
            if (iQ2 != 93) {
                if (iQ2 != 123) {
                    this.f5224i = 1;
                    return 1;
                }
                int i111 = this.f5222e - 1;
                this.f5222e = i111;
                c3 = cArr[i111];
                if (c3 != 't') {
                    str = "true";
                    str2 = "TRUE";
                    i4 = 5;
                    length = str.length();
                    i5 = 1;
                    while (true) {
                        if (i5 >= length) {
                            if (this.f5222e + length < this.f) {
                            }
                            this.f5222e += length;
                            this.f5224i = i4;
                            break;
                        }
                        i5 = this.f5222e + i5 >= this.f ? i5 + 1 : i5 + 1;
                    }
                    if (i4 != 0) {
                        return i4;
                    }
                    int i112 = this.f5222e;
                    i6 = this.f;
                    i7 = i3;
                    i8 = i7;
                    int i113 = i8;
                    i9 = i112;
                    z2 = true;
                    long j5 = 0;
                    while (true) {
                        if (i9 + i8 != i6) {
                            c5 = cArr[i9 + i8];
                            if (c5 != '+') {
                                if (c5 != 'E') {
                                    if (i7 != 2) {
                                    }
                                    i7 = 5;
                                    i8++;
                                } else {
                                    if (i7 != 2) {
                                    }
                                    i7 = 5;
                                    i8++;
                                }
                                if (i10 != 0) {
                                    return i10;
                                }
                                if (j(cArr[this.f5222e])) {
                                    C("Expected value");
                                    throw null;
                                }
                                c();
                                this.f5224i = 10;
                                return 10;
                            }
                            if (i7 != 5) {
                            }
                            i7 = 6;
                            i8++;
                        } else if (i8 != cArr.length) {
                            if (g(i8 + 1)) {
                                i9 = this.f5222e;
                                i6 = this.f;
                                c5 = cArr[i9 + i8];
                                if (c5 != '+') {
                                    if (c5 != 'E') {
                                        if (i7 != 2) {
                                        }
                                        i7 = 5;
                                        i8++;
                                    } else {
                                        if (i7 != 2) {
                                        }
                                        i7 = 5;
                                        i8++;
                                    }
                                    if (i10 != 0) {
                                        return i10;
                                    }
                                    if (j(cArr[this.f5222e])) {
                                        C("Expected value");
                                        throw null;
                                    }
                                    c();
                                    this.f5224i = 10;
                                    return 10;
                                }
                                if (i7 != 5) {
                                }
                                i7 = 6;
                                i8++;
                            }
                            i11 = 2;
                            if (i7 != 2) {
                                if (i7 != i11) {
                                }
                                this.f5226k = i8;
                                i10 = 16;
                                this.f5224i = 16;
                            } else {
                                if (z2) {
                                }
                                i11 = 2;
                                if (i7 != i11) {
                                }
                                this.f5226k = i8;
                                i10 = 16;
                                this.f5224i = 16;
                            }
                            if (i10 != 0) {
                                return i10;
                            }
                            if (j(cArr[this.f5222e])) {
                                C("Expected value");
                                throw null;
                            }
                            c();
                            this.f5224i = 10;
                            return 10;
                        }
                        i10 = 0;
                        if (i10 != 0) {
                            return i10;
                        }
                        if (j(cArr[this.f5222e])) {
                            C("Expected value");
                            throw null;
                        }
                        c();
                        this.f5224i = 10;
                        return 10;
                    }
                }
                str = "true";
                str2 = "TRUE";
                i4 = 5;
                length = str.length();
                i5 = 1;
                while (true) {
                    if (i5 >= length) {
                        if (this.f5222e + length < this.f) {
                        }
                        this.f5222e += length;
                        this.f5224i = i4;
                        break;
                    }
                    if (this.f5222e + i5 >= this.f) {
                    }
                }
                if (i4 != 0) {
                    return i4;
                }
                int i114 = this.f5222e;
                i6 = this.f;
                i7 = i3;
                i8 = i7;
                int i115 = i8;
                i9 = i114;
                z2 = true;
                long j6 = 0;
                while (true) {
                    if (i9 + i8 != i6) {
                        c5 = cArr[i9 + i8];
                        if (c5 != '+') {
                            if (c5 != 'E') {
                                if (i7 != 2) {
                                }
                                i7 = 5;
                                i8++;
                            } else {
                                if (i7 != 2) {
                                }
                                i7 = 5;
                                i8++;
                            }
                            if (i10 != 0) {
                                return i10;
                            }
                            if (j(cArr[this.f5222e])) {
                                C("Expected value");
                                throw null;
                            }
                            c();
                            this.f5224i = 10;
                            return 10;
                        }
                        if (i7 != 5) {
                        }
                        i7 = 6;
                        i8++;
                    } else if (i8 != cArr.length) {
                        if (g(i8 + 1)) {
                            i9 = this.f5222e;
                            i6 = this.f;
                            c5 = cArr[i9 + i8];
                            if (c5 != '+') {
                                if (c5 != 'E') {
                                    if (i7 != 2) {
                                    }
                                    i7 = 5;
                                    i8++;
                                } else {
                                    if (i7 != 2) {
                                    }
                                    i7 = 5;
                                    i8++;
                                }
                                if (i10 != 0) {
                                    return i10;
                                }
                                if (j(cArr[this.f5222e])) {
                                    C("Expected value");
                                    throw null;
                                }
                                c();
                                this.f5224i = 10;
                                return 10;
                            }
                            if (i7 != 5) {
                            }
                            i7 = 6;
                            i8++;
                        }
                        i11 = 2;
                        if (i7 != 2) {
                            if (i7 != i11) {
                            }
                            this.f5226k = i8;
                            i10 = 16;
                            this.f5224i = 16;
                        } else {
                            if (z2) {
                            }
                            i11 = 2;
                            if (i7 != i11) {
                            }
                            this.f5226k = i8;
                            i10 = 16;
                            this.f5224i = 16;
                        }
                        if (i10 != 0) {
                            return i10;
                        }
                        if (j(cArr[this.f5222e])) {
                            C("Expected value");
                            throw null;
                        }
                        c();
                        this.f5224i = 10;
                        return 10;
                    }
                    i10 = 0;
                    if (i10 != 0) {
                        return i10;
                    }
                    if (j(cArr[this.f5222e])) {
                        C("Expected value");
                        throw null;
                    }
                    c();
                    this.f5224i = 10;
                    return 10;
                }
                i4 = i3;
                if (i4 != 0) {
                    return i4;
                }
                int i116 = this.f5222e;
                i6 = this.f;
                i7 = i3;
                i8 = i7;
                int i117 = i8;
                i9 = i116;
                z2 = true;
                long j7 = 0;
                while (true) {
                    if (i9 + i8 != i6) {
                        c5 = cArr[i9 + i8];
                        if (c5 != '+') {
                            if (c5 != 'E') {
                                if (i7 != 2) {
                                }
                                i7 = 5;
                                i8++;
                            } else {
                                if (i7 != 2) {
                                }
                                i7 = 5;
                                i8++;
                            }
                            if (i10 != 0) {
                                return i10;
                            }
                            if (j(cArr[this.f5222e])) {
                                C("Expected value");
                                throw null;
                            }
                            c();
                            this.f5224i = 10;
                            return 10;
                        }
                        if (i7 != 5) {
                        }
                        i7 = 6;
                        i8++;
                    } else if (i8 != cArr.length) {
                        if (g(i8 + 1)) {
                            i9 = this.f5222e;
                            i6 = this.f;
                            c5 = cArr[i9 + i8];
                            if (c5 != '+') {
                                if (c5 != 'E') {
                                    if (i7 != 2) {
                                    }
                                    i7 = 5;
                                    i8++;
                                } else {
                                    if (i7 != 2) {
                                    }
                                    i7 = 5;
                                    i8++;
                                }
                                if (i10 != 0) {
                                    return i10;
                                }
                                if (j(cArr[this.f5222e])) {
                                    C("Expected value");
                                    throw null;
                                }
                                c();
                                this.f5224i = 10;
                                return 10;
                            }
                            if (i7 != 5) {
                            }
                            i7 = 6;
                            i8++;
                        }
                        i11 = 2;
                        if (i7 != 2) {
                            if (i7 != i11) {
                            }
                            this.f5226k = i8;
                            i10 = 16;
                            this.f5224i = 16;
                        } else {
                            if (z2) {
                            }
                            i11 = 2;
                            if (i7 != i11) {
                            }
                            this.f5226k = i8;
                            i10 = 16;
                            this.f5224i = 16;
                        }
                        if (i10 != 0) {
                            return i10;
                        }
                        if (j(cArr[this.f5222e])) {
                            C("Expected value");
                            throw null;
                        }
                        c();
                        this.f5224i = 10;
                        return 10;
                    }
                    i10 = 0;
                    if (i10 != 0) {
                        return i10;
                    }
                    if (j(cArr[this.f5222e])) {
                        C("Expected value");
                        throw null;
                    }
                    c();
                    this.f5224i = 10;
                    return 10;
                }
            }
            if (i13 == 1) {
                this.f5224i = 4;
                return 4;
            }
        }
        if (i13 == 1) {
        }
        c();
        this.f5222e--;
        this.f5224i = 7;
        return 7;
    }

    public final void e() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
        int i3 = this.f5229n;
        this.f5229n = i3 - 1;
        int[] iArr = this.f5231p;
        int i4 = i3 - 2;
        iArr[i4] = iArr[i4] + 1;
        this.f5224i = 0;
    }

    public final void f() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
        int i3 = this.f5229n;
        int i4 = i3 - 1;
        this.f5229n = i4;
        this.f5230o[i4] = null;
        int[] iArr = this.f5231p;
        int i5 = i3 - 2;
        iArr[i5] = iArr[i5] + 1;
        this.f5224i = 0;
    }

    public final boolean g(int i3) throws IOException {
        int i4;
        int i5;
        int i6 = this.f5223h;
        int i7 = this.f5222e;
        this.f5223h = i6 - i7;
        int i8 = this.f;
        char[] cArr = this.f5221d;
        if (i8 != i7) {
            int i9 = i8 - i7;
            this.f = i9;
            System.arraycopy(cArr, i7, cArr, 0, i9);
        } else {
            this.f = 0;
        }
        this.f5222e = 0;
        do {
            int i10 = this.f;
            int i11 = this.b.read(cArr, i10, cArr.length - i10);
            if (i11 == -1) {
                return false;
            }
            i4 = this.f + i11;
            this.f = i4;
            if (this.g == 0 && (i5 = this.f5223h) == 0 && i4 > 0 && cArr[0] == 65279) {
                this.f5222e++;
                this.f5223h = i5 + 1;
                i3++;
            }
        } while (i4 < i3);
        return true;
    }

    public final String h(boolean z2) {
        StringBuilder sb = new StringBuilder("$");
        int i3 = 0;
        while (true) {
            int i4 = this.f5229n;
            if (i3 >= i4) {
                return sb.toString();
            }
            int i5 = this.f5228m[i3];
            if (i5 == 1 || i5 == 2) {
                int i6 = this.f5231p[i3];
                if (z2 && i6 > 0 && i3 == i4 - 1) {
                    i6--;
                }
                sb.append('[');
                sb.append(i6);
                sb.append(']');
            } else if (i5 == 3 || i5 == 4 || i5 == 5) {
                sb.append('.');
                String str = this.f5230o[i3];
                if (str != null) {
                    sb.append(str);
                }
            }
            i3++;
        }
    }

    public final boolean i() throws IOException {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        return (iD == 2 || iD == 4 || iD == 17) ? false : true;
    }

    public final boolean j(char c3) throws c {
        if (c3 == '\t' || c3 == '\n' || c3 == '\f' || c3 == '\r' || c3 == ' ') {
            return false;
        }
        if (c3 != '#') {
            if (c3 == ',') {
                return false;
            }
            if (c3 != '/' && c3 != '=') {
                if (c3 == '{' || c3 == '}' || c3 == ':') {
                    return false;
                }
                if (c3 != ';') {
                    switch (c3) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        c();
        return false;
    }

    public final String k() {
        StringBuilder sbP = E.b.p(" at line ", this.g + 1, (this.f5222e - this.f5223h) + 1, " column ", " path ");
        sbP.append(h(false));
        return sbP.toString();
    }

    public final boolean l() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 5) {
            this.f5224i = 0;
            int[] iArr = this.f5231p;
            int i3 = this.f5229n - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        }
        if (iD != 6) {
            throw new IllegalStateException("Expected a boolean but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
        this.f5224i = 0;
        int[] iArr2 = this.f5231p;
        int i4 = this.f5229n - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return false;
    }

    public final double m() throws IOException {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 15) {
            this.f5224i = 0;
            int[] iArr = this.f5231p;
            int i3 = this.f5229n - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f5225j;
        }
        if (iD == 16) {
            this.f5227l = new String(this.f5221d, this.f5222e, this.f5226k);
            this.f5222e += this.f5226k;
        } else if (iD == 8 || iD == 9) {
            this.f5227l = s(iD == 8 ? '\'' : Typography.quote);
        } else if (iD == 10) {
            this.f5227l = u();
        } else if (iD != 11) {
            throw new IllegalStateException("Expected a double but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
        this.f5224i = 11;
        double d3 = Double.parseDouble(this.f5227l);
        if (!this.f5220c && (Double.isNaN(d3) || Double.isInfinite(d3))) {
            throw new c("JSON forbids NaN and infinities: " + d3 + k());
        }
        this.f5227l = null;
        this.f5224i = 0;
        int[] iArr2 = this.f5231p;
        int i4 = this.f5229n - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return d3;
    }

    public final int n() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 15) {
            long j2 = this.f5225j;
            int i3 = (int) j2;
            if (j2 != i3) {
                throw new NumberFormatException("Expected an int but was " + this.f5225j + k());
            }
            this.f5224i = 0;
            int[] iArr = this.f5231p;
            int i4 = this.f5229n - 1;
            iArr[i4] = iArr[i4] + 1;
            return i3;
        }
        if (iD == 16) {
            this.f5227l = new String(this.f5221d, this.f5222e, this.f5226k);
            this.f5222e += this.f5226k;
        } else {
            if (iD != 8 && iD != 9 && iD != 10) {
                throw new IllegalStateException("Expected an int but was " + kotlin.collections.unsigned.a.q(v()) + k());
            }
            if (iD == 10) {
                this.f5227l = u();
            } else {
                this.f5227l = s(iD == 8 ? '\'' : Typography.quote);
            }
            try {
                int i5 = Integer.parseInt(this.f5227l);
                this.f5224i = 0;
                int[] iArr2 = this.f5231p;
                int i6 = this.f5229n - 1;
                iArr2[i6] = iArr2[i6] + 1;
                return i5;
            } catch (NumberFormatException unused) {
            }
        }
        this.f5224i = 11;
        double d3 = Double.parseDouble(this.f5227l);
        int i7 = (int) d3;
        if (i7 != d3) {
            throw new NumberFormatException("Expected an int but was " + this.f5227l + k());
        }
        this.f5227l = null;
        this.f5224i = 0;
        int[] iArr3 = this.f5231p;
        int i8 = this.f5229n - 1;
        iArr3[i8] = iArr3[i8] + 1;
        return i7;
    }

    public final long o() throws IOException {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 15) {
            this.f5224i = 0;
            int[] iArr = this.f5231p;
            int i3 = this.f5229n - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f5225j;
        }
        if (iD == 16) {
            this.f5227l = new String(this.f5221d, this.f5222e, this.f5226k);
            this.f5222e += this.f5226k;
        } else {
            if (iD != 8 && iD != 9 && iD != 10) {
                throw new IllegalStateException("Expected a long but was " + kotlin.collections.unsigned.a.q(v()) + k());
            }
            if (iD == 10) {
                this.f5227l = u();
            } else {
                this.f5227l = s(iD == 8 ? '\'' : Typography.quote);
            }
            try {
                long j2 = Long.parseLong(this.f5227l);
                this.f5224i = 0;
                int[] iArr2 = this.f5231p;
                int i4 = this.f5229n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return j2;
            } catch (NumberFormatException unused) {
            }
        }
        this.f5224i = 11;
        double d3 = Double.parseDouble(this.f5227l);
        long j3 = (long) d3;
        if (j3 != d3) {
            throw new NumberFormatException("Expected a long but was " + this.f5227l + k());
        }
        this.f5227l = null;
        this.f5224i = 0;
        int[] iArr3 = this.f5231p;
        int i5 = this.f5229n - 1;
        iArr3[i5] = iArr3[i5] + 1;
        return j3;
    }

    public final String p() {
        String strS;
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 14) {
            strS = u();
        } else if (iD == 12) {
            strS = s('\'');
        } else {
            if (iD != 13) {
                throw new IllegalStateException("Expected a name but was " + kotlin.collections.unsigned.a.q(v()) + k());
            }
            strS = s(Typography.quote);
        }
        this.f5224i = 0;
        this.f5230o[this.f5229n - 1] = strS;
        return strS;
    }

    public final int q(boolean z2) throws IOException {
        int i3 = this.f5222e;
        int i4 = this.f;
        while (true) {
            if (i3 == i4) {
                this.f5222e = i3;
                if (!g(1)) {
                    if (!z2) {
                        return -1;
                    }
                    throw new EOFException("End of input" + k());
                }
                i3 = this.f5222e;
                i4 = this.f;
            }
            int i5 = i3 + 1;
            char[] cArr = this.f5221d;
            char c3 = cArr[i3];
            if (c3 == '\n') {
                this.g++;
                this.f5223h = i5;
            } else if (c3 != ' ' && c3 != '\r' && c3 != '\t') {
                if (c3 == '/') {
                    this.f5222e = i5;
                    if (i5 == i4) {
                        this.f5222e = i3;
                        boolean zG = g(2);
                        this.f5222e++;
                        if (!zG) {
                        }
                        return c3;
                    }
                    c();
                    int i6 = this.f5222e;
                    char c4 = cArr[i6];
                    if (c4 == '*') {
                        this.f5222e = i6 + 1;
                        while (true) {
                            if (this.f5222e + 2 > this.f && !g(2)) {
                                C("Unterminated comment");
                                throw null;
                            }
                            int i7 = this.f5222e;
                            if (cArr[i7] != '\n') {
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= 2) {
                                        i3 = this.f5222e + 2;
                                        i4 = this.f;
                                        break;
                                    }
                                    if (cArr[this.f5222e + i8] != "*/".charAt(i8)) {
                                        break;
                                    }
                                    i8++;
                                }
                            } else {
                                this.g++;
                                this.f5223h = i7 + 1;
                            }
                            this.f5222e++;
                        }
                    } else {
                        if (c4 != '/') {
                            return c3;
                        }
                        this.f5222e = i6 + 1;
                        z();
                        i3 = this.f5222e;
                        i4 = this.f;
                    }
                } else {
                    if (c3 != '#') {
                        this.f5222e = i5;
                        return c3;
                    }
                    this.f5222e = i5;
                    c();
                    z();
                    i3 = this.f5222e;
                    i4 = this.f;
                }
            }
            i3 = i5;
        }
    }

    public final void r() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD != 7) {
            throw new IllegalStateException("Expected null but was " + kotlin.collections.unsigned.a.q(v()) + k());
        }
        this.f5224i = 0;
        int[] iArr = this.f5231p;
        int i3 = this.f5229n - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public final String s(char c3) throws c {
        int i3;
        char[] cArr;
        StringBuilder sb = null;
        do {
            int i4 = this.f5222e;
            int i5 = this.f;
            while (true) {
                int i6 = i5;
                i3 = i4;
                while (true) {
                    cArr = this.f5221d;
                    if (i4 < i6) {
                        int i7 = i4 + 1;
                        char c4 = cArr[i4];
                        if (c4 == c3) {
                            this.f5222e = i7;
                            int i8 = (i7 - i3) - 1;
                            if (sb == null) {
                                return new String(cArr, i3, i8);
                            }
                            sb.append(cArr, i3, i8);
                            return sb.toString();
                        }
                        if (c4 == '\\') {
                            this.f5222e = i7;
                            int i9 = i7 - i3;
                            int i10 = i9 - 1;
                            if (sb == null) {
                                sb = new StringBuilder(Math.max(i9 * 2, 16));
                            }
                            sb.append(cArr, i3, i10);
                            sb.append(x());
                            i4 = this.f5222e;
                            i5 = this.f;
                        } else {
                            if (c4 == '\n') {
                                this.g++;
                                this.f5223h = i7;
                            }
                            i4 = i7;
                        }
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder(Math.max((i4 - i3) * 2, 16));
            }
            sb.append(cArr, i3, i4 - i3);
            this.f5222e = i4;
        } while (g(1));
        C("Unterminated string");
        throw null;
    }

    public final String t() {
        String str;
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        if (iD == 10) {
            str = u();
        } else if (iD == 8) {
            str = s('\'');
        } else if (iD == 9) {
            str = s(Typography.quote);
        } else if (iD == 11) {
            str = this.f5227l;
            this.f5227l = null;
        } else if (iD == 15) {
            str = Long.toString(this.f5225j);
        } else {
            if (iD != 16) {
                throw new IllegalStateException("Expected a string but was " + kotlin.collections.unsigned.a.q(v()) + k());
            }
            str = new String(this.f5221d, this.f5222e, this.f5226k);
            this.f5222e += this.f5226k;
        }
        this.f5224i = 0;
        int[] iArr = this.f5231p;
        int i3 = this.f5229n - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public final String toString() {
        return a.class.getSimpleName() + k();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    public final String u() throws c {
        String string;
        StringBuilder sb = null;
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (true) {
                int i5 = this.f5222e;
                int i6 = i5 + i4;
                int i7 = this.f;
                char[] cArr = this.f5221d;
                if (i6 < i7) {
                    char c3 = cArr[i5 + i4];
                    if (c3 != '\t' && c3 != '\n' && c3 != '\f' && c3 != '\r' && c3 != ' ') {
                        if (c3 != '#') {
                            if (c3 != ',') {
                                if (c3 != '/' && c3 != '=') {
                                    if (c3 != '{' && c3 != '}' && c3 != ':') {
                                        if (c3 != ';') {
                                            switch (c3) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i4++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        c();
                    }
                    i3 = i4;
                } else if (i4 >= cArr.length) {
                    if (sb == null) {
                        sb = new StringBuilder(Math.max(i4, 16));
                    }
                    sb.append(cArr, this.f5222e, i4);
                    this.f5222e += i4;
                    if (!g(1)) {
                    }
                } else if (!g(i4 + 1)) {
                    i3 = i4;
                }
                if (sb == null) {
                    string = new String(cArr, this.f5222e, i3);
                } else {
                    sb.append(cArr, this.f5222e, i3);
                    string = sb.toString();
                }
                this.f5222e += i3;
                return string;
            }
        }
    }

    public final int v() {
        int iD = this.f5224i;
        if (iD == 0) {
            iD = d();
        }
        switch (iD) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case MotionEventCompat.AXIS_Z /* 11 */:
                return 6;
            case 12:
            case 13:
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return 5;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void w(int i3) {
        int i4 = this.f5229n;
        int[] iArr = this.f5228m;
        if (i4 == iArr.length) {
            int i5 = i4 * 2;
            this.f5228m = Arrays.copyOf(iArr, i5);
            this.f5231p = Arrays.copyOf(this.f5231p, i5);
            this.f5230o = (String[]) Arrays.copyOf(this.f5230o, i5);
        }
        int[] iArr2 = this.f5228m;
        int i6 = this.f5229n;
        this.f5229n = i6 + 1;
        iArr2[i6] = i3;
    }

    public final char x() throws c {
        int i3;
        if (this.f5222e == this.f && !g(1)) {
            C("Unterminated escape sequence");
            throw null;
        }
        int i4 = this.f5222e;
        int i5 = i4 + 1;
        this.f5222e = i5;
        char[] cArr = this.f5221d;
        char c3 = cArr[i4];
        if (c3 == '\n') {
            this.g++;
            this.f5223h = i5;
            return c3;
        }
        if (c3 == '\"' || c3 == '\'' || c3 == '/' || c3 == '\\') {
            return c3;
        }
        if (c3 == 'b') {
            return '\b';
        }
        if (c3 == 'f') {
            return '\f';
        }
        if (c3 == 'n') {
            return '\n';
        }
        if (c3 == 'r') {
            return '\r';
        }
        if (c3 == 't') {
            return '\t';
        }
        if (c3 != 'u') {
            C("Invalid escape sequence");
            throw null;
        }
        if (i4 + 5 > this.f && !g(4)) {
            C("Unterminated escape sequence");
            throw null;
        }
        int i6 = this.f5222e;
        int i7 = i6 + 4;
        char c4 = 0;
        while (i6 < i7) {
            char c5 = cArr[i6];
            char c6 = (char) (c4 << 4);
            if (c5 >= '0' && c5 <= '9') {
                i3 = c5 - '0';
            } else if (c5 >= 'a' && c5 <= 'f') {
                i3 = c5 - 'W';
            } else {
                if (c5 < 'A' || c5 > 'F') {
                    throw new NumberFormatException("\\u".concat(new String(cArr, this.f5222e, 4)));
                }
                i3 = c5 - '7';
            }
            c4 = (char) (i3 + c6);
            i6++;
        }
        this.f5222e += 4;
        return c4;
    }

    public final void y(char c3) throws c {
        do {
            int i3 = this.f5222e;
            int i4 = this.f;
            while (i3 < i4) {
                int i5 = i3 + 1;
                char c4 = this.f5221d[i3];
                if (c4 == c3) {
                    this.f5222e = i5;
                    return;
                }
                if (c4 == '\\') {
                    this.f5222e = i5;
                    x();
                    i3 = this.f5222e;
                    i4 = this.f;
                } else {
                    if (c4 == '\n') {
                        this.g++;
                        this.f5223h = i5;
                    }
                    i3 = i5;
                }
            }
            this.f5222e = i3;
        } while (g(1));
        C("Unterminated string");
        throw null;
    }

    public final void z() {
        char c3;
        do {
            if (this.f5222e >= this.f && !g(1)) {
                return;
            }
            int i3 = this.f5222e;
            int i4 = i3 + 1;
            this.f5222e = i4;
            c3 = this.f5221d[i3];
            if (c3 == '\n') {
                this.g++;
                this.f5223h = i4;
                return;
            }
        } while (c3 != '\r');
    }
}
