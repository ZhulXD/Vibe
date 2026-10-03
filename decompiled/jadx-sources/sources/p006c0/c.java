package p006c0;

import E.b;
import android.util.Log;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    public ByteBuffer b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f3125c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f3124a = new byte[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3126d = 0;

    public final boolean a() {
        return this.f3125c.b != 0;
    }

    public final b b() {
        byte[] bArr;
        if (this.b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (a()) {
            return this.f3125c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < 6; i3++) {
            sb.append((char) c());
        }
        if (sb.toString().startsWith("GIF")) {
            this.f3125c.f = this.b.getShort();
            this.f3125c.g = this.b.getShort();
            int iC = c();
            b bVar = this.f3125c;
            bVar.f3120h = (iC & 128) != 0;
            bVar.f3121i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.f3125c.f3122j = c();
            b bVar2 = this.f3125c;
            c();
            bVar2.getClass();
            if (this.f3125c.f3120h && !a()) {
                b bVar3 = this.f3125c;
                bVar3.f3116a = e(bVar3.f3121i);
                b bVar4 = this.f3125c;
                bVar4.f3123k = bVar4.f3116a[bVar4.f3122j];
            }
        } else {
            this.f3125c.b = 1;
        }
        if (!a()) {
            boolean z2 = false;
            while (!z2 && !a() && this.f3125c.f3117c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.f3125c.f3118d = new a();
                        c();
                        int iC4 = c();
                        a aVar = this.f3125c.f3118d;
                        int i4 = (iC4 & 28) >> 2;
                        aVar.g = i4;
                        if (i4 == 0) {
                            aVar.g = 1;
                        }
                        aVar.f = (iC4 & 1) != 0;
                        short s2 = this.b.getShort();
                        if (s2 < 2) {
                            s2 = 10;
                        }
                        a aVar2 = this.f3125c.f3118d;
                        aVar2.f3113i = s2 * 10;
                        aVar2.f3112h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb2 = new StringBuilder();
                        int i5 = 0;
                        while (true) {
                            bArr = this.f3124a;
                            if (i5 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i5]);
                            i5++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b = bArr[1];
                                    byte b3 = bArr[2];
                                    this.f3125c.getClass();
                                }
                                if (this.f3126d <= 0) {
                                    break;
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    b bVar5 = this.f3125c;
                    if (bVar5.f3118d == null) {
                        bVar5.f3118d = new a();
                    }
                    bVar5.f3118d.f3108a = this.b.getShort();
                    this.f3125c.f3118d.b = this.b.getShort();
                    this.f3125c.f3118d.f3109c = this.b.getShort();
                    this.f3125c.f3118d.f3110d = this.b.getShort();
                    int iC5 = c();
                    boolean z3 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    a aVar3 = this.f3125c.f3118d;
                    aVar3.f3111e = (iC5 & 64) != 0;
                    if (z3) {
                        aVar3.f3115k = e(iPow);
                    } else {
                        aVar3.f3115k = null;
                    }
                    this.f3125c.f3118d.f3114j = this.b.position();
                    c();
                    f();
                    if (!a()) {
                        b bVar6 = this.f3125c;
                        bVar6.f3117c++;
                        bVar6.f3119e.add(bVar6.f3118d);
                    }
                } else if (iC2 != 59) {
                    this.f3125c.b = 1;
                } else {
                    z2 = true;
                }
            }
            b bVar7 = this.f3125c;
            if (bVar7.f3117c < 0) {
                bVar7.b = 1;
            }
        }
        return this.f3125c;
    }

    public final int c() {
        try {
            return this.b.get() & UByte.MAX_VALUE;
        } catch (Exception unused) {
            this.f3125c.b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.f3126d = iC;
        if (iC <= 0) {
            return;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            try {
                int i5 = this.f3126d;
                if (i3 >= i5) {
                    return;
                }
                i4 = i5 - i3;
                this.b.get(this.f3124a, i3, i4);
                i3 += i4;
            } catch (Exception e2) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbP = b.p("Error Reading Block n: ", i3, i4, " count: ", " blockSize: ");
                    sbP.append(this.f3126d);
                    Log.d("GifHeaderParser", sbP.toString(), e2);
                }
                this.f3125c.b = 1;
                return;
            }
        }
    }

    public final int[] e(int i3) {
        byte[] bArr = new byte[i3 * 3];
        int[] iArr = null;
        try {
            this.b.get(bArr);
            iArr = new int[256];
            int i4 = 0;
            int i5 = 0;
            while (i4 < i3) {
                int i6 = bArr[i5] & UByte.MAX_VALUE;
                int i7 = i5 + 2;
                int i8 = bArr[i5 + 1] & UByte.MAX_VALUE;
                i5 += 3;
                int i9 = i4 + 1;
                iArr[i4] = (i8 << 8) | (i6 << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i7] & UByte.MAX_VALUE);
                i4 = i9;
            }
            return iArr;
        } catch (BufferUnderflowException e2) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e2);
            }
            this.f3125c.b = 1;
            return iArr;
        }
    }

    public final void f() {
        int iC;
        do {
            iC = c();
            this.b.position(Math.min(this.b.position() + iC, this.b.limit()));
        } while (iC > 0);
    }
}
