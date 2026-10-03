package i2;

import A1.C0009b;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.c;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends FilterInputStream {
    public C0009b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f4460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f4461d;

    public b(BufferedInputStream bufferedInputStream) {
        super(bufferedInputStream);
        this.f4460c = 0L;
        this.f4461d = 0L;
    }

    public final C0009b a() throws IOException {
        int i3;
        C0009b c0009b = this.b;
        if (c0009b != null) {
            long jSkip = 0;
            if (((a) c0009b.b).b > this.f4460c) {
                long j2 = 0;
                while (true) {
                    long j3 = ((a) this.b.b).b - this.f4460c;
                    if (j2 >= j3) {
                        break;
                    }
                    long jSkip2 = skip(j3 - j2);
                    if (jSkip2 == 0 && ((a) this.b.b).b - this.f4460c > 0) {
                        throw new IOException("Possible tar file corruption");
                    }
                    j2 += jSkip2;
                }
            }
            this.b = null;
            this.f4460c = 0L;
            long j4 = this.f4461d;
            if (j4 > 0 && (i3 = (int) (j4 % 512)) > 0) {
                while (true) {
                    long j5 = 512 - i3;
                    if (jSkip >= j5) {
                        break;
                    }
                    jSkip += skip(j5 - jSkip);
                }
            }
        }
        byte[] bArr = new byte[512];
        byte[] bArr2 = new byte[512];
        int i4 = 0;
        while (i4 < 512) {
            int i5 = read(bArr2, 0, 512 - i4);
            if (i5 < 0) {
                break;
            }
            System.arraycopy(bArr2, 0, bArr, i4, i5);
            i4 += i5;
        }
        for (int i6 = 0; i6 < 512; i6++) {
            if (bArr[i6] != 0) {
                C0009b c0009b2 = new C0009b();
                a aVar = new a();
                aVar.f4457a = new StringBuffer();
                String property = System.getProperty("user.name", "");
                if (property.length() > 31) {
                    property = property.substring(0, 31);
                }
                new StringBuffer(property);
                aVar.f4459d = new StringBuffer();
                c0009b2.b = aVar;
                aVar.f4457a = a.a(0, 100, bArr);
                c.E(100, 8, bArr);
                c.E(108, 8, bArr);
                c.E(116, 8, bArr);
                aVar.b = c.E(124, 12, bArr);
                c.E(136, 12, bArr);
                c.E(148, 8, bArr);
                aVar.f4458c = bArr[156];
                a.a(157, 100, bArr);
                a.a(InputDeviceCompat.SOURCE_KEYBOARD, 8, bArr);
                a.a(265, 32, bArr);
                a.a(297, 32, bArr);
                c.E(329, 8, bArr);
                c.E(337, 8, bArr);
                aVar.f4459d = a.a(345, 155, bArr);
                this.b = c0009b2;
                break;
            }
        }
        return this.b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i3) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int i3 = read(bArr, 0, 1);
        return i3 != -1 ? bArr[0] & UByte.MAX_VALUE : i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        throw new IOException("mark/reset not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j2) throws IOException {
        if (j2 <= 0) {
            return 0L;
        }
        byte[] bArr = new byte[2048];
        long j3 = j2;
        while (j3 > 0) {
            int i3 = read(bArr, 0, (int) (j3 < 2048 ? j3 : 2048L));
            if (i3 < 0) {
                break;
            }
            j3 -= (long) i3;
        }
        return j2 - j3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i3, int i4) throws IOException {
        C0009b c0009b = this.b;
        if (c0009b != null) {
            long j2 = this.f4460c;
            long j3 = ((a) c0009b.b).b;
            if (j2 == j3) {
                return -1;
            }
            if (j3 - j2 < i4) {
                i4 = (int) (j3 - j2);
            }
        }
        int i5 = super.read(bArr, i3, i4);
        if (i5 != -1) {
            if (this.b != null) {
                this.f4460c += (long) i5;
            }
            this.f4461d += (long) i5;
        }
        return i5;
    }
}
