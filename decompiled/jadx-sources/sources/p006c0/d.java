package p006c0;

import A1.C0013d;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.fragment.app.FragmentTransaction;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.UByte;
import p016g0.b;
import p016g0.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f3127a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0013d f3128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ByteBuffer f3129d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f3130e;
    public short[] f;
    public byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f3131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f3132i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f3133j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3134k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b f3135l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bitmap f3136m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f3137n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3138o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f3139p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f3140q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f3141r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Boolean f3142s;
    public final int[] b = new int[256];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Bitmap.Config f3143t = Bitmap.Config.ARGB_8888;

    public d(C0013d c0013d, b bVar, ByteBuffer byteBuffer, int i3) {
        this.f3128c = c0013d;
        this.f3135l = new b();
        synchronized (this) {
            try {
                if (i3 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i3);
                }
                int iHighestOneBit = Integer.highestOneBit(i3);
                int i4 = 0;
                this.f3138o = 0;
                this.f3135l = bVar;
                this.f3134k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f3129d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.f3129d.order(ByteOrder.LITTLE_ENDIAN);
                this.f3137n = false;
                ArrayList arrayList = bVar.f3119e;
                int size = arrayList.size();
                while (i4 < size) {
                    Object obj = arrayList.get(i4);
                    i4++;
                    if (((a) obj).g == 3) {
                        this.f3137n = true;
                        break;
                    }
                }
                this.f3139p = iHighestOneBit;
                int i5 = bVar.f;
                this.f3141r = i5 / iHighestOneBit;
                int i6 = bVar.g;
                this.f3140q = i6 / iHighestOneBit;
                int i7 = i5 * i6;
                g gVar = (g) this.f3128c.f178d;
                this.f3132i = gVar == null ? new byte[i7] : (byte[]) gVar.c(i7, byte[].class);
                C0013d c0013d2 = this.f3128c;
                int i8 = this.f3141r * this.f3140q;
                g gVar2 = (g) c0013d2.f178d;
                this.f3133j = gVar2 == null ? new int[i8] : (int[]) gVar2.c(i8, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Bitmap a() {
        Boolean bool = this.f3142s;
        Bitmap bitmapB = ((b) this.f3128c.f177c).b(this.f3141r, this.f3140q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f3143t);
        bitmapB.setHasAlpha(true);
        return bitmapB;
    }

    public final synchronized Bitmap b() {
        try {
            if (this.f3135l.f3117c <= 0 || this.f3134k < 0) {
                if (Log.isLoggable("d", 3)) {
                    Log.d("d", "Unable to decode frame, frameCount=" + this.f3135l.f3117c + ", framePointer=" + this.f3134k);
                }
                this.f3138o = 1;
            }
            int i3 = this.f3138o;
            if (i3 != 1 && i3 != 2) {
                this.f3138o = 0;
                if (this.f3130e == null) {
                    g gVar = (g) this.f3128c.f178d;
                    this.f3130e = gVar == null ? new byte[255] : (byte[]) gVar.c(255, byte[].class);
                }
                a aVar = (a) this.f3135l.f3119e.get(this.f3134k);
                int i4 = this.f3134k - 1;
                a aVar2 = i4 >= 0 ? (a) this.f3135l.f3119e.get(i4) : null;
                int[] iArr = aVar.f3115k;
                if (iArr == null) {
                    iArr = this.f3135l.f3116a;
                }
                this.f3127a = iArr;
                if (iArr == null) {
                    if (Log.isLoggable("d", 3)) {
                        Log.d("d", "No valid color table found for frame #" + this.f3134k);
                    }
                    this.f3138o = 1;
                    return null;
                }
                if (aVar.f) {
                    System.arraycopy(iArr, 0, this.b, 0, iArr.length);
                    int[] iArr2 = this.b;
                    this.f3127a = iArr2;
                    iArr2[aVar.f3112h] = 0;
                    if (aVar.g == 2 && this.f3134k == 0) {
                        this.f3142s = Boolean.TRUE;
                    }
                }
                return d(aVar, aVar2);
            }
            if (Log.isLoggable("d", 3)) {
                Log.d("d", "Unable to decode frame, status=" + this.f3138o);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f3143t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:98:0x01dc A[PHI: r5
      0x01dc: PHI (r5v44 int) = (r5v38 int), (r5v46 int), (r5v46 int) binds: [B:93:0x01c8, B:95:0x01d3, B:96:0x01d5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v31, types: [short] */
    /* JADX WARN: Type inference failed for: r6v33 */
    public final Bitmap d(a aVar, a aVar2) {
        byte b;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        short s2;
        int i8;
        Bitmap bitmap;
        int i9;
        C0013d c0013d = this.f3128c;
        byte b3 = 0;
        int[] iArr2 = this.f3133j;
        if (aVar2 == null) {
            Bitmap bitmap2 = this.f3136m;
            if (bitmap2 != null) {
                ((b) c0013d.f177c).f(bitmap2);
            }
            this.f3136m = null;
            Arrays.fill(iArr2, 0);
        }
        if (aVar2 != null && aVar2.g == 3 && this.f3136m == null) {
            Arrays.fill(iArr2, 0);
        }
        if (aVar2 != null && (i8 = aVar2.g) > 0) {
            if (i8 == 2) {
                if (aVar.f) {
                    i9 = 0;
                } else {
                    b bVar = this.f3135l;
                    i9 = bVar.f3123k;
                    if (aVar.f3115k != null && bVar.f3122j == aVar.f3112h) {
                        i9 = 0;
                    }
                }
                int i10 = aVar2.f3110d;
                int i11 = this.f3139p;
                int i12 = i10 / i11;
                int i13 = aVar2.b / i11;
                int i14 = aVar2.f3109c / i11;
                int i15 = aVar2.f3108a / i11;
                int i16 = this.f3141r;
                int i17 = (i13 * i16) + i15;
                int i18 = (i12 * i16) + i17;
                while (i17 < i18) {
                    int i19 = i17 + i14;
                    for (int i20 = i17; i20 < i19; i20++) {
                        iArr2[i20] = i9;
                    }
                    i17 += this.f3141r;
                }
            } else if (i8 == 3 && (bitmap = this.f3136m) != null) {
                int i21 = this.f3140q;
                int i22 = this.f3141r;
                bitmap.getPixels(iArr2, 0, i22, 0, 0, i22, i21);
            }
        }
        this.f3129d.position(aVar.f3114j);
        int i23 = aVar.f3109c * aVar.f3110d;
        byte[] bArr = this.f3132i;
        if (bArr == null || bArr.length < i23) {
            g gVar = (g) c0013d.f178d;
            this.f3132i = gVar == null ? new byte[i23] : (byte[]) gVar.c(i23, byte[].class);
        }
        byte[] bArr2 = this.f3132i;
        if (this.f == null) {
            this.f = new short[4096];
        }
        short[] sArr = this.f;
        if (this.g == null) {
            this.g = new byte[4096];
        }
        byte[] bArr3 = this.g;
        if (this.f3131h == null) {
            this.f3131h = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr4 = this.f3131h;
        int i24 = this.f3129d.get() & UByte.MAX_VALUE;
        int i25 = 1;
        int i26 = 1 << i24;
        int i27 = i26 + 1;
        int i28 = i26 + 2;
        int i29 = i24 + 1;
        int i30 = (1 << i29) - 1;
        int i31 = 0;
        while (i31 < i26) {
            sArr[i31] = 0;
            bArr3[i31] = (byte) i31;
            i31++;
            i25 = i25;
        }
        int i32 = i25;
        byte[] bArr5 = this.f3130e;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        int i36 = 0;
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        int i40 = 0;
        int i41 = i29;
        int i42 = i28;
        int i43 = i30;
        int i44 = -1;
        while (true) {
            if (i33 >= i23) {
                iArr2 = iArr2;
                b = b3;
                break;
            }
            if (i34 == 0) {
                i7 = -1;
                int i45 = this.f3129d.get() & UByte.MAX_VALUE;
                if (i45 > 0) {
                    ByteBuffer byteBuffer = this.f3129d;
                    byteBuffer.get(this.f3130e, 0, Math.min(i45, byteBuffer.remaining()));
                }
                if (i45 <= 0) {
                    this.f3138o = 3;
                    b = 0;
                    break;
                }
                i34 = i45;
                i35 = 0;
            } else {
                sArr = sArr;
                iArr2 = iArr2;
                i7 = -1;
            }
            i37 += (bArr5[i35] & UByte.MAX_VALUE) << i36;
            i35++;
            i34--;
            i36 += 8;
            i42 = i42;
            int i46 = i41;
            i44 = i44;
            i39 = i39;
            while (true) {
                i36 = i36;
                if (i36 < i46) {
                    i41 = i46;
                    b3 = 0;
                    break;
                }
                int i47 = i37 & i43;
                i37 >>= i46;
                i36 -= i46;
                if (i47 == i26) {
                    i46 = i29;
                    i42 = i28;
                    i43 = i30;
                    i36 = i36;
                    i44 = i7;
                } else {
                    if (i47 == i27) {
                        i41 = i46;
                        b3 = 0;
                        break;
                    }
                    int i48 = i46;
                    if (i44 == i7) {
                        bArr2[i38] = bArr3[i47];
                        i38++;
                        i33++;
                        i44 = i47;
                        i39 = i44;
                        i46 = i48;
                    } else {
                        if (i47 >= i42) {
                            bArr4[i40] = (byte) i39;
                            i40++;
                            s2 = i44;
                        } else {
                            s2 = i47;
                        }
                        while (s2 >= i26) {
                            bArr4[i40] = bArr3[s2];
                            i40++;
                            s2 = sArr[s2];
                        }
                        i39 = bArr3[s2] & UByte.MAX_VALUE;
                        byte b4 = (byte) i39;
                        bArr2[i38] = b4;
                        while (true) {
                            i38++;
                            i33++;
                            if (i40 <= 0) {
                                break;
                            }
                            i40--;
                            bArr2[i38] = bArr4[i40];
                        }
                        if (i42 < 4096) {
                            sArr[i42] = (short) i44;
                            bArr3[i42] = b4;
                            i42++;
                            if ((i42 & i43) != 0 || i42 >= 4096) {
                                i46 = i48;
                            } else {
                                i46 = i48 + 1;
                                i43 += i42;
                            }
                        } else {
                            i46 = i48;
                        }
                        i44 = i47;
                    }
                    i7 = -1;
                }
            }
        }
        Arrays.fill(bArr2, i38, i23, b);
        if (aVar.f3111e || this.f3139p != i32) {
            int i49 = aVar.f3110d;
            int i50 = this.f3139p;
            int i51 = i49 / i50;
            int i52 = aVar.b / i50;
            int i53 = aVar.f3109c / i50;
            int i54 = aVar.f3108a / i50;
            boolean z2 = this.f3134k == 0;
            byte[] bArr6 = this.f3132i;
            int[] iArr3 = this.f3127a;
            Boolean bool = this.f3142s;
            int i55 = 8;
            int i56 = 0;
            int i57 = 1;
            int i58 = 0;
            while (i58 < i51) {
                if (aVar.f3111e) {
                    if (i56 >= i51) {
                        i57++;
                        if (i57 == 2) {
                            i56 = 4;
                        } else if (i57 == 3) {
                            i55 = 4;
                            i56 = 2;
                        } else if (i57 == 4) {
                            i56 = 1;
                            i55 = 2;
                        }
                    }
                    i3 = i56 + i55;
                } else {
                    i3 = i56;
                    i56 = i58;
                }
                int i59 = i56 + i52;
                int i60 = i51;
                boolean z3 = i50 == 1;
                if (i59 < this.f3140q) {
                    int i61 = this.f3141r;
                    int i62 = i59 * i61;
                    int i63 = i62 + i54;
                    int i64 = i63 + i53;
                    int i65 = i62 + i61;
                    if (i65 < i64) {
                        i64 = i65;
                    }
                    i4 = i50;
                    int i66 = i58 * i50 * aVar.f3109c;
                    int[] iArr4 = this.f3133j;
                    if (z3) {
                        int i67 = i63;
                        while (i67 < i64) {
                            int i68 = i67;
                            int i69 = iArr3[bArr6[i66] & UByte.MAX_VALUE];
                            if (i69 != 0) {
                                iArr4[i68] = i69;
                            } else if (z2 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i66 += i4;
                            i67 = i68 + 1;
                        }
                    } else {
                        int i70 = ((i64 - i63) * i4) + i66;
                        int i71 = i63;
                        while (i71 < i64) {
                            int i72 = i64;
                            int i73 = aVar.f3109c;
                            int i74 = i71;
                            int i75 = i66;
                            int i76 = 0;
                            int i77 = 0;
                            int i78 = 0;
                            int i79 = 0;
                            int i80 = 0;
                            while (true) {
                                if (i75 >= this.f3139p + i66) {
                                    i5 = i53;
                                    break;
                                }
                                byte[] bArr7 = this.f3132i;
                                i5 = i53;
                                if (i75 >= bArr7.length || i75 >= i70) {
                                    break;
                                }
                                int i81 = this.f3127a[bArr7[i75] & UByte.MAX_VALUE];
                                if (i81 != 0) {
                                    i76 += (i81 >> 24) & 255;
                                    i77 += (i81 >> 16) & 255;
                                    i78 += (i81 >> 8) & 255;
                                    i79 += i81 & 255;
                                    i80++;
                                }
                                i75++;
                                i53 = i5;
                            }
                            int i82 = i66 + i73;
                            int i83 = i82;
                            while (i83 < this.f3139p + i82) {
                                byte[] bArr8 = this.f3132i;
                                int i84 = i82;
                                if (i83 >= bArr8.length || i83 >= i70) {
                                    break;
                                }
                                int i85 = this.f3127a[bArr8[i83] & UByte.MAX_VALUE];
                                if (i85 != 0) {
                                    i76 += (i85 >> 24) & 255;
                                    i77 += (i85 >> 16) & 255;
                                    i78 += (i85 >> 8) & 255;
                                    i79 += i85 & 255;
                                    i80++;
                                }
                                i83++;
                                i82 = i84;
                            }
                            int i86 = i80 == 0 ? 0 : ((i76 / i80) << 24) | ((i77 / i80) << 16) | ((i78 / i80) << 8) | (i79 / i80);
                            if (i86 != 0) {
                                iArr4[i74] = i86;
                            } else if (z2 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i66 += i4;
                            i71 = i74 + 1;
                            i64 = i72;
                            i53 = i5;
                        }
                    }
                    i58++;
                    i56 = i3;
                    i51 = i60;
                    i52 = i52;
                    i50 = i4;
                    i53 = i53;
                } else {
                    i4 = i50;
                }
                i58++;
                i56 = i3;
                i51 = i60;
                i52 = i52;
                i50 = i4;
                i53 = i53;
            }
            if (this.f3142s == null) {
                this.f3142s = Boolean.valueOf(bool == null ? false : bool.booleanValue());
            }
        } else {
            int i87 = aVar.f3110d;
            int i88 = aVar.b;
            int i89 = aVar.f3109c;
            int i90 = aVar.f3108a;
            byte b5 = this.f3134k == 0 ? (byte) 1 : b;
            byte[] bArr9 = this.f3132i;
            int[] iArr5 = this.f3127a;
            byte b6 = -1;
            for (int i91 = b; i91 < i87; i91++) {
                int i92 = this.f3141r;
                int i93 = (i91 + i88) * i92;
                int i94 = i93 + i90;
                int i95 = i94 + i89;
                int i96 = i93 + i92;
                if (i96 < i95) {
                    i95 = i96;
                }
                int i97 = aVar.f3109c * i91;
                while (i94 < i95) {
                    byte b7 = bArr9[i97];
                    int i98 = b7 & UByte.MAX_VALUE;
                    if (i98 != b6) {
                        int i99 = iArr5[i98];
                        if (i99 != 0) {
                            this.f3133j[i94] = i99;
                        } else {
                            b6 = b7;
                        }
                    }
                    i97++;
                    i94++;
                }
            }
            Boolean bool2 = this.f3142s;
            this.f3142s = Boolean.valueOf((bool2 != null && bool2.booleanValue()) || !(this.f3142s != null || b5 == 0 || b6 == -1));
        }
        if (this.f3137n && ((i6 = aVar.g) == 0 || i6 == 1)) {
            if (this.f3136m == null) {
                this.f3136m = a();
            }
            Bitmap bitmap3 = this.f3136m;
            int i100 = this.f3140q;
            int i101 = this.f3141r;
            iArr = iArr2;
            bitmap3.setPixels(iArr, 0, i101, 0, 0, i101, i100);
        } else {
            iArr = iArr2;
        }
        Bitmap bitmapA = a();
        int i102 = this.f3140q;
        int i103 = this.f3141r;
        bitmapA.setPixels(iArr, 0, i103, 0, 0, i103, i102);
        return bitmapA;
    }
}
