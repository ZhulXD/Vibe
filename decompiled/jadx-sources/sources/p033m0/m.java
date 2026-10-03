package p033m0;

import E.b;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import p009d0.e;
import p016g0.g;
import p024j.C0269h;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f5125a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    public static final int[] b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static int e(l lVar, g gVar) {
        try {
            int iG = lVar.g();
            if ((iG & 65496) == 65496 || iG == 19789 || iG == 18761) {
                int iG2 = g(lVar);
                if (iG2 != -1) {
                    byte[] bArr = (byte[]) gVar.c(iG2, byte[].class);
                    try {
                        return h(lVar, bArr, iG2);
                    } finally {
                        gVar.g(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iG);
                return -1;
            }
        } catch (k unused) {
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType f(l lVar) {
        try {
            int iG = lVar.g();
            if (iG == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iF = (iG << 8) | lVar.f();
            if (iF == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iF2 = (iF << 8) | lVar.f();
            if (iF2 == -1991225785) {
                lVar.skip(21L);
                try {
                    return lVar.f() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (k unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iF2 == 1380533830) {
                lVar.skip(4L);
                if (((lVar.g() << 16) | lVar.g()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iG2 = (lVar.g() << 16) | lVar.g();
                if ((iG2 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i3 = iG2 & 255;
                if (i3 != 88) {
                    if (i3 != 76) {
                        return ImageHeaderParser$ImageType.WEBP;
                    }
                    lVar.skip(4L);
                    return (lVar.f() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                lVar.skip(4L);
                short sF = lVar.f();
                if ((sF & 2) != 0) {
                    return ImageHeaderParser$ImageType.ANIMATED_WEBP;
                }
                return (sF & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((lVar.g() << 16) | lVar.g()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iG3 = (lVar.g() << 16) | lVar.g();
            if (iG3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i4 = 0;
            boolean z2 = iG3 == 1635150182;
            lVar.skip(4L);
            int i5 = iF2 - 16;
            if (i5 % 4 == 0) {
                while (i4 < 5 && i5 > 0) {
                    int iG4 = (lVar.g() << 16) | lVar.g();
                    if (iG4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iG4 == 1635150182) {
                        z2 = true;
                    }
                    i4++;
                    i5 -= 4;
                }
            }
            return z2 ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (k unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public static int g(l lVar) {
        short sF;
        int iG;
        long j2;
        long jSkip;
        do {
            short sF2 = lVar.f();
            if (sF2 == 255) {
                sF = lVar.f();
                if (sF != 218) {
                    if (sF != 217) {
                        iG = lVar.g() - 2;
                        if (sF == 225) {
                            return iG;
                        }
                        j2 = iG;
                        jSkip = lVar.skip(j2);
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                        return -1;
                    }
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sF2));
                return -1;
            }
            return -1;
        } while (jSkip == j2);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbP = b.p("Unable to skip enough data, type: ", sF, iG, ", wanted to skip: ", ", but actually skipped: ");
            sbP.append(jSkip);
            Log.d("DfltImageHeaderParser", sbP.toString());
        }
        return -1;
    }

    public static int h(l lVar, byte[] bArr, int i3) {
        ByteOrder byteOrder;
        int iE = lVar.e(bArr, i3);
        short s2 = -1;
        if (iE == i3) {
            int i4 = 0;
            byte[] bArr2 = f5125a;
            boolean z2 = bArr != null && i3 > bArr2.length;
            if (z2) {
                for (int i5 = 0; i5 < bArr2.length; i5++) {
                    if (bArr[i5] != bArr2[i5]) {
                        z2 = false;
                        break;
                    }
                }
            }
            if (!z2) {
                if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                }
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
                return -1;
            }
            ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i3);
            short s3 = byteBuffer.remaining() - 6 >= 2 ? byteBuffer.getShort(6) : (short) -1;
            if (s3 != 18761) {
                if (s3 != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) s3));
                }
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            byteBuffer.order(byteOrder);
            int i6 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
            int i7 = i6 + 6;
            short s4 = byteBuffer.remaining() - i7 >= 2 ? byteBuffer.getShort(i7) : (short) -1;
            while (i4 < s4) {
                int i8 = (i4 * 12) + i6 + 8;
                short s5 = byteBuffer.remaining() - i8 >= 2 ? byteBuffer.getShort(i8) : s2;
                if (s5 != 274) {
                    s2 = s2;
                } else {
                    int i9 = i8 + 2;
                    short s6 = byteBuffer.remaining() - i9 >= 2 ? byteBuffer.getShort(i9) : s2;
                    if (s6 < 1 || s6 > 12) {
                        s2 = s2;
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) s6));
                        }
                    } else {
                        int i10 = i8 + 4;
                        int i11 = byteBuffer.remaining() - i10 >= 4 ? byteBuffer.getInt(i10) : s2;
                        if (i11 < 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Negative tiff component count");
                            }
                            s2 = s2;
                        } else {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder sbP = b.p("Got tagIndex=", i4, s5, " tagType=", " formatCode=");
                                sbP.append((int) s6);
                                sbP.append(" componentCount=");
                                sbP.append(i11);
                                Log.d("DfltImageHeaderParser", sbP.toString());
                            }
                            int i12 = i11 + b[s6];
                            if (i12 <= 4) {
                                int i13 = i8 + 8;
                                if (i13 >= 0 && i13 <= byteBuffer.remaining()) {
                                    if (i12 >= 0 && i12 + i13 <= byteBuffer.remaining()) {
                                        return byteBuffer.remaining() - i13 >= 2 ? byteBuffer.getShort(i13) : s2;
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) s5));
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i13 + " tagType=" + ((int) s5));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) s6));
                            }
                        }
                    }
                }
                i4++;
                s2 = s2;
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i3 + ", actually read: " + iE);
            return -1;
        }
        return s2;
    }

    @Override // p009d0.e
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        f.c(byteBuffer, "Argument must not be null");
        return f(new j(byteBuffer, 0));
    }

    @Override // p009d0.e
    public final int b(InputStream inputStream, g gVar) {
        C0269h c0269h = new C0269h(10, inputStream);
        f.c(gVar, "Argument must not be null");
        return e(c0269h, gVar);
    }

    @Override // p009d0.e
    public final int c(ByteBuffer byteBuffer, g gVar) {
        j jVar = new j(byteBuffer, 0);
        f.c(gVar, "Argument must not be null");
        return e(jVar, gVar);
    }

    @Override // p009d0.e
    public final ImageHeaderParser$ImageType d(InputStream inputStream) {
        return f(new C0269h(10, inputStream));
    }
}
