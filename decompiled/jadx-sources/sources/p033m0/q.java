package p033m0;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.material.datepicker.c;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import p009d0.a;
import p009d0.e;
import p009d0.h;
import p009d0.i;
import p009d0.j;
import p016g0.b;
import p016g0.g;
import p063y0.f;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q {
    public static final h f = h.a(a.f3865d, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");
    public static final h g = new h("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, h.f3869e);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f5131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final h f5132i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c f5133j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ArrayDeque f5134k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f5135a;
    public final DisplayMetrics b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final g f5136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f5137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final w f5138e = w.a();

    static {
        n nVar = n.b;
        Boolean bool = Boolean.FALSE;
        f5131h = h.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f5132i = h.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f5133j = new c(21);
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = n.f6026a;
        f5134k = new ArrayDeque(0);
    }

    public q(ArrayList arrayList, DisplayMetrics displayMetrics, b bVar, g gVar) {
        this.f5137d = arrayList;
        f.c(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        f.c(bVar, "Argument must not be null");
        this.f5135a = bVar;
        f.c(gVar, "Argument must not be null");
        this.f5136c = gVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(F.b r9, android.graphics.BitmapFactory.Options r10, p033m0.p r11, p016g0.b r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto L22
            r11.q()
            int r1 = r9.b
            switch(r1) {
                case 10: goto L22;
                case 11: goto Lf;
                default: goto Le;
            }
        Le:
            goto L22
        Lf:
            java.lang.Object r1 = r9.f943c
            com.bumptech.glide.load.data.i r1 = (com.bumptech.glide.load.data.i) r1
            java.lang.Object r1 = r1.f3247c
            m0.x r1 = (p033m0.x) r1
            monitor-enter(r1)
            byte[] r2 = r1.b     // Catch: java.lang.Throwable -> L1f
            int r2 = r2.length     // Catch: java.lang.Throwable -> L1f
            r1.f5147d = r2     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)
            goto L22
        L1f:
            r9 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r9
        L22:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = p033m0.z.b
            r4.lock()
            android.graphics.Bitmap r9 = r9.f(r10)     // Catch: java.lang.IllegalArgumentException -> L35 java.lang.Throwable -> L7c
            r4.unlock()
            return r9
        L35:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L7c
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = E.b.p(r6, r1, r2, r7, r8)     // Catch: java.lang.Throwable -> L7c
            r1.append(r3)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L7c
            java.lang.String r2 = d(r2)     // Catch: java.lang.Throwable -> L7c
            r1.append(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L7c
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L7c
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L7c
            if (r1 == 0) goto L66
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L7c
        L66:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L7b
            r12.f(r0)     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            android.graphics.Bitmap r9 = c(r9, r10, r11, r12)     // Catch: java.io.IOException -> L7a java.lang.Throwable -> L7c
            java.util.concurrent.locks.Lock r10 = p033m0.z.b
            r10.unlock()
            return r9
        L7a:
            throw r5     // Catch: java.lang.Throwable -> L7c
        L7b:
            throw r5     // Catch: java.lang.Throwable -> L7c
        L7c:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = p033m0.z.b
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p033m0.q.c(F.b, android.graphics.BitmapFactory$Options, m0.p, g0.b):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final C0354d a(F.b bVar, int i3, int i4, i iVar, p pVar) {
        ArrayDeque arrayDeque;
        BitmapFactory.Options options;
        byte[] bArr = (byte[]) this.f5136c.c(65536, byte[].class);
        synchronized (q.class) {
            arrayDeque = f5134k;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                e(options);
            }
        }
        options.inTempStorage = bArr;
        a aVar = (a) iVar.c(f);
        j jVar = (j) iVar.c(g);
        n nVar = (n) iVar.c(n.g);
        boolean zBooleanValue = ((Boolean) iVar.c(f5131h)).booleanValue();
        h hVar = f5132i;
        try {
            C0354d c0354dB = C0354d.b(b(bVar, options, nVar, aVar, jVar, iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue(), i3, i4, zBooleanValue, pVar), this.f5135a);
            e(options);
            synchronized (arrayDeque) {
                arrayDeque.offer(options);
            }
            return c0354dB;
        } finally {
            e(options);
            ArrayDeque arrayDeque2 = f5134k;
            synchronized (arrayDeque2) {
                arrayDeque2.offer(options);
                this.f5136c.g(bArr);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:143:0x035c  */
    /* JADX WARN: Code duplicated, block: B:146:0x038b  */
    /* JADX WARN: Code duplicated, block: B:147:0x0395  */
    /* JADX WARN: Code duplicated, block: B:149:0x0398  */
    /* JADX WARN: Code duplicated, block: B:150:0x039a  */
    /* JADX WARN: Code duplicated, block: B:160:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:161:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:164:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:165:0x03d4  */
    /* JADX WARN: Code duplicated, block: B:168:0x03dd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:171:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:173:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:177:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:179:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:180:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:183:0x0421  */
    /* JADX WARN: Code duplicated, block: B:187:0x0460 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:197:0x0481  */
    /* JADX WARN: Code duplicated, block: B:199:0x0485  */
    /* JADX WARN: Code duplicated, block: B:201:0x0489  */
    /* JADX WARN: Code duplicated, block: B:203:0x048f  */
    /* JADX WARN: Code duplicated, block: B:208:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:210:0x04a4  */
    /* JADX WARN: Code duplicated, block: B:211:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:214:0x04b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:215:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:218:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:220:0x0557  */
    /* JADX WARN: Code duplicated, block: B:222:0x0561  */
    /* JADX WARN: Code duplicated, block: B:223:0x0564  */
    /* JADX WARN: Code duplicated, block: B:226:0x0575  */
    /* JADX WARN: Code duplicated, block: B:227:0x0579  */
    /* JADX WARN: Code duplicated, block: B:228:0x0582  */
    /* JADX WARN: Code duplicated, block: B:229:0x0586  */
    /* JADX WARN: Code duplicated, block: B:230:0x058f  */
    /* JADX WARN: Code duplicated, block: B:231:0x0598  */
    /* JADX WARN: Code duplicated, block: B:232:0x059c  */
    /* JADX WARN: Code duplicated, block: B:235:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:236:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:240:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:243:0x03a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:255:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x010b  */
    /* JADX WARN: Code duplicated, block: B:46:0x010d  */
    /* JADX WARN: Code duplicated, block: B:47:0x0110  */
    /* JADX WARN: Code duplicated, block: B:48:0x0112  */
    /* JADX WARN: Code duplicated, block: B:50:0x0117  */
    /* JADX WARN: Code duplicated, block: B:51:0x0119  */
    /* JADX WARN: Code duplicated, block: B:54:0x011e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x0120  */
    /* JADX WARN: Code duplicated, block: B:58:0x0125  */
    /* JADX WARN: Code duplicated, block: B:59:0x0128  */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0133  */
    /* JADX WARN: Code duplicated, block: B:65:0x0137 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:68:0x013c  */
    /* JADX WARN: Code duplicated, block: B:69:0x013e  */
    /* JADX WARN: Code duplicated, block: B:72:0x0157 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:73:0x0159  */
    /* JADX WARN: Instruction removed from duplicated block: B:143:0x035c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:218:0x04d2, please report this as an issue */
    public final Bitmap b(F.b bVar, BitmapFactory.Options options, n nVar, a aVar, j jVar, boolean z2, int i3, int i4, boolean z3, p pVar) throws Throwable {
        long j2;
        String str;
        int iC;
        int iK;
        int i5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        ImageHeaderParser$ImageType imageHeaderParser$ImageTypeH;
        int i9;
        String str2;
        b bVar2;
        String str3;
        int i10;
        boolean zC;
        boolean z5;
        boolean zHasAlpha;
        Bitmap.Config config;
        boolean z6;
        int i11;
        int i12;
        boolean z7;
        float f3;
        int i13;
        int iRound;
        int iRound2;
        int i14;
        b bVar3;
        Bitmap bitmapC;
        Matrix matrix;
        Bitmap.Config config2;
        Bitmap bitmapE;
        boolean z8;
        ColorSpace.Named named;
        Bitmap.Config config3;
        int i15;
        int i16;
        int iFloor;
        int iFloor2;
        int iRound3;
        int i17 = p063y0.h.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        options.inJustDecodeBounds = true;
        b bVar4 = this.f5135a;
        c(bVar, options, pVar, bVar4);
        options.inJustDecodeBounds = false;
        int[] iArr = {options.outWidth, options.outHeight};
        int i18 = iArr[0];
        int i19 = iArr[1];
        String str4 = options.outMimeType;
        boolean z9 = (i18 == -1 || i19 == -1) ? false : z2;
        x xVar = null;
        switch (bVar.b) {
            case 10:
                j2 = jElapsedRealtimeNanos;
                str = str4;
                List list = (List) bVar.f944d;
                ByteBuffer byteBufferC = p063y0.b.c((ByteBuffer) bVar.f943c);
                g gVar = (g) bVar.f945e;
                if (byteBufferC != null) {
                    int size = list.size();
                    int i20 = 0;
                    while (true) {
                        if (i20 < size) {
                            List list2 = list;
                            try {
                                iC = ((e) list.get(i20)).c(byteBufferC, gVar);
                                g gVar2 = gVar;
                                if (iC != -1) {
                                    iK = iC;
                                    switch (iK) {
                                        case 3:
                                        case 4:
                                            i5 = 180;
                                            break;
                                        case 5:
                                        case 6:
                                            i5 = 90;
                                            break;
                                        case 7:
                                        case 8:
                                            i5 = 270;
                                            break;
                                        default:
                                            i5 = 0;
                                            break;
                                    }
                                    switch (iK) {
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            z4 = true;
                                            break;
                                        default:
                                            z4 = false;
                                            break;
                                    }
                                    if (i3 == Integer.MIN_VALUE) {
                                        if (i5 != 90) {
                                            i6 = 270;
                                            if (i5 == 270) {
                                                i7 = i18;
                                            }
                                        } else {
                                            i6 = 270;
                                        }
                                        i7 = i19;
                                    } else {
                                        i6 = 270;
                                        i7 = i3;
                                    }
                                    if (i4 == Integer.MIN_VALUE) {
                                        i8 = i4;
                                    } else if (i5 != 90 || i5 == i6) {
                                        i8 = i18;
                                    } else {
                                        i8 = i19;
                                    }
                                    imageHeaderParser$ImageTypeH = bVar.h();
                                    i9 = iK;
                                    boolean z10 = z4;
                                    if (i18 > 0 || i19 <= 0) {
                                        str2 = ", density: ";
                                        bVar2 = bVar4;
                                        str3 = ", target density: ";
                                        i10 = i7;
                                        if (Log.isLoggable("Downsampler", 3)) {
                                            Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                                        }
                                    } else {
                                        if (i5 == 90 || i5 == 270) {
                                            i15 = i19;
                                            i16 = i18;
                                        } else {
                                            i16 = i19;
                                            i15 = i18;
                                        }
                                        i10 = i7;
                                        float fB = nVar.b(i15, i16, i10, i8);
                                        if (fB <= 0.0f) {
                                            throw new IllegalArgumentException("Cannot scale with factor: " + fB + " from: " + nVar + ", source: [" + i18 + "x" + i19 + "], target: [" + i10 + "x" + i8 + "]");
                                        }
                                        int iA = nVar.a(i15, i16, i10, i8);
                                        if (iA == 0) {
                                            throw new IllegalArgumentException("Cannot round with null rounding");
                                        }
                                        int i21 = i5;
                                        float f4 = i15;
                                        int i22 = i15;
                                        float f5 = i16;
                                        int i23 = i16;
                                        int i24 = (int) (((double) (fB * f5)) + 0.5d);
                                        int i25 = i22 / ((int) (((double) (fB * f4)) + 0.5d));
                                        int i26 = i23 / i24;
                                        int iMax = Math.max(1, Integer.highestOneBit(iA == 1 ? Math.max(i25, i26) : Math.min(i25, i26)));
                                        if (iA == 1 && iMax < 1.0f / fB) {
                                            iMax <<= 1;
                                        }
                                        options.inSampleSize = iMax;
                                        if (imageHeaderParser$ImageTypeH == ImageHeaderParser$ImageType.JPEG) {
                                            float fMin = Math.min(iMax, 8);
                                            iFloor = (int) Math.ceil(f4 / fMin);
                                            iFloor2 = (int) Math.ceil(f5 / fMin);
                                            int i27 = iMax / 8;
                                            if (i27 > 0) {
                                                iFloor2 /= i27;
                                                iRound3 = iFloor / i27;
                                            } else {
                                                iRound3 = iFloor;
                                            }
                                        } else {
                                            if (imageHeaderParser$ImageTypeH == ImageHeaderParser$ImageType.PNG || imageHeaderParser$ImageTypeH == ImageHeaderParser$ImageType.PNG_A) {
                                                float f6 = iMax;
                                                iFloor = (int) Math.floor(f4 / f6);
                                                iFloor2 = (int) Math.floor(f5 / f6);
                                            } else if (imageHeaderParser$ImageTypeH.isWebp()) {
                                                float f7 = iMax;
                                                iRound3 = Math.round(f4 / f7);
                                                iFloor2 = Math.round(f5 / f7);
                                            } else if (i22 % iMax == 0 && i23 % iMax == 0) {
                                                iRound3 = i22 / iMax;
                                                iFloor2 = i23 / iMax;
                                            } else {
                                                options.inJustDecodeBounds = true;
                                                c(bVar, options, pVar, bVar4);
                                                options.inJustDecodeBounds = false;
                                                int[] iArr2 = {options.outWidth, options.outHeight};
                                                iFloor = iArr2[0];
                                                iFloor2 = iArr2[1];
                                            }
                                            iRound3 = iFloor;
                                        }
                                        double dB = nVar.b(iRound3, iFloor2, i10, i8);
                                        int iRound4 = (int) Math.round((dB <= 1.0d ? dB : 1.0d / dB) * 2.147483647E9d);
                                        bVar2 = bVar4;
                                        int i28 = (int) ((((double) iRound4) * dB) + 0.5d);
                                        float f8 = i28 / iRound4;
                                        int i29 = iMax;
                                        options.inTargetDensity = (int) (((dB / ((double) f8)) * ((double) i28)) + 0.5d);
                                        int iRound5 = (int) Math.round((dB <= 1.0d ? dB : 1.0d / dB) * 2.147483647E9d);
                                        options.inDensity = iRound5;
                                        int i30 = options.inTargetDensity;
                                        if (i30 <= 0 || iRound5 <= 0 || i30 == iRound5) {
                                            options.inTargetDensity = 0;
                                            options.inDensity = 0;
                                        } else {
                                            options.inScaled = true;
                                        }
                                        if (Log.isLoggable("Downsampler", 2)) {
                                            StringBuilder sbP = E.b.p("Calculate scaling, source: [", i18, i19, "x", "], degreesToRotate: ");
                                            sbP.append(i21);
                                            sbP.append(", target: [");
                                            sbP.append(i10);
                                            sbP.append("x");
                                            sbP.append(i8);
                                            sbP.append("], power of two scaled: [");
                                            sbP.append(iRound3);
                                            sbP.append("x");
                                            sbP.append(iFloor2);
                                            sbP.append("], exact scale factor: ");
                                            sbP.append(fB);
                                            sbP.append(", power of 2 sample size: ");
                                            sbP.append(i29);
                                            sbP.append(", adjusted scale factor: ");
                                            sbP.append(dB);
                                            str3 = ", target density: ";
                                            sbP.append(str3);
                                            sbP.append(options.inTargetDensity);
                                            str2 = ", density: ";
                                            sbP.append(str2);
                                            sbP.append(options.inDensity);
                                            Log.v("Downsampler", sbP.toString());
                                        } else {
                                            str2 = r7;
                                            str3 = ", target density: ";
                                        }
                                    }
                                    zC = this.f5138e.c(i10, i8, z9, z10);
                                    if (zC) {
                                        options.inPreferredConfig = Bitmap.Config.HARDWARE;
                                        z5 = false;
                                        options.inMutable = false;
                                    } else {
                                        z5 = false;
                                    }
                                    if (zC) {
                                        if (aVar != a.b) {
                                            try {
                                                zHasAlpha = bVar.h().hasAlpha();
                                            } catch (IOException e2) {
                                                if (Log.isLoggable("Downsampler", 3)) {
                                                    Log.d("Downsampler", "Cannot determine whether the image has alpha or not from header, format " + aVar, e2);
                                                }
                                                zHasAlpha = z5;
                                            }
                                            if (zHasAlpha) {
                                                config = Bitmap.Config.ARGB_8888;
                                            } else {
                                                config = Bitmap.Config.RGB_565;
                                            }
                                            options.inPreferredConfig = config;
                                            if (config == Bitmap.Config.RGB_565) {
                                                z6 = true;
                                                options.inDither = true;
                                            } else {
                                                z6 = true;
                                            }
                                        } else {
                                            z6 = true;
                                            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                        }
                                        break;
                                    } else {
                                        z6 = true;
                                    }
                                    i11 = Build.VERSION.SDK_INT;
                                    if (i18 >= 0 || i19 < 0 || !z3) {
                                        i12 = options.inTargetDensity;
                                        if (i12 > 0 || (i14 = options.inDensity) <= 0 || i12 == i14) {
                                            z7 = z5;
                                        } else {
                                            z7 = z6;
                                        }
                                        if (z7) {
                                            f3 = i12 / options.inDensity;
                                        } else {
                                            f3 = 1.0f;
                                        }
                                        i13 = options.inSampleSize;
                                        float f9 = i13;
                                        int iCeil = (int) Math.ceil(i18 / f9);
                                        int iCeil2 = (int) Math.ceil(i19 / f9);
                                        iRound = Math.round(iCeil * f3);
                                        iRound2 = Math.round(iCeil2 * f3);
                                        if (Log.isLoggable("Downsampler", 2)) {
                                            StringBuilder sbP2 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                                            sbP2.append(i18);
                                            sbP2.append("x");
                                            sbP2.append(i19);
                                            sbP2.append("], sampleSize: ");
                                            sbP2.append(i13);
                                            sbP2.append(", targetDensity: ");
                                            sbP2.append(options.inTargetDensity);
                                            sbP2.append(str2);
                                            sbP2.append(options.inDensity);
                                            sbP2.append(", density multiplier: ");
                                            sbP2.append(f3);
                                            Log.v("Downsampler", sbP2.toString());
                                        }
                                        i8 = iRound2;
                                    } else {
                                        iRound = i10;
                                    }
                                    if (iRound > 0 || i8 <= 0) {
                                        bVar3 = bVar2;
                                    } else {
                                        if (i11 < 26) {
                                            config3 = null;
                                        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
                                            bVar3 = bVar2;
                                        } else {
                                            config3 = options.outConfig;
                                        }
                                        if (config3 == null) {
                                            config3 = options.inPreferredConfig;
                                        }
                                        bVar3 = bVar2;
                                        options.inBitmap = bVar3.b(iRound, i8, config3);
                                    }
                                    if (jVar != null) {
                                        if (i11 >= 28) {
                                            if (jVar == j.b || options.outColorSpace == null || !options.outColorSpace.isWideGamut()) {
                                                z8 = false;
                                            } else {
                                                z8 = true;
                                            }
                                            if (z8) {
                                                named = ColorSpace.Named.DISPLAY_P3;
                                            } else {
                                                named = ColorSpace.Named.SRGB;
                                            }
                                            options.inPreferredColorSpace = ColorSpace.get(named);
                                        } else if (i11 >= 26) {
                                            ColorSpace.Named unused = ColorSpace.Named.SRGB;
                                            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                                        }
                                    }
                                    bitmapC = c(bVar, options, pVar, bVar3);
                                    pVar.d(bitmapC, bVar3);
                                    if (Log.isLoggable("Downsampler", 2)) {
                                        Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i18 + "x" + i19 + "] " + str + " with inBitmap " + d(options.inBitmap) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + p063y0.h.a(j2));
                                    }
                                    if (bitmapC != null) {
                                        return null;
                                    }
                                    bitmapC.setDensity(this.b.densityDpi);
                                    switch (i9) {
                                        case 2:
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                            matrix = new Matrix();
                                            switch (i9) {
                                                case 2:
                                                    matrix.setScale(-1.0f, 1.0f);
                                                    break;
                                                case 3:
                                                    matrix.setRotate(180.0f);
                                                    break;
                                                case 4:
                                                    matrix.setRotate(180.0f);
                                                    matrix.postScale(-1.0f, 1.0f);
                                                    break;
                                                case 5:
                                                    matrix.setRotate(90.0f);
                                                    matrix.postScale(-1.0f, 1.0f);
                                                    break;
                                                case 6:
                                                    matrix.setRotate(90.0f);
                                                    break;
                                                case 7:
                                                    matrix.setRotate(-90.0f);
                                                    matrix.postScale(-1.0f, 1.0f);
                                                    break;
                                                case 8:
                                                    matrix.setRotate(-90.0f);
                                                    break;
                                            }
                                            RectF rectF = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                                            matrix.mapRect(rectF);
                                            int iRound6 = Math.round(rectF.width());
                                            int iRound7 = Math.round(rectF.height());
                                            if (bitmapC.getConfig() != null) {
                                                config2 = bitmapC.getConfig();
                                            } else {
                                                config2 = Bitmap.Config.ARGB_8888;
                                            }
                                            bitmapE = bVar3.e(iRound6, iRound7, config2);
                                            matrix.postTranslate(-rectF.left, -rectF.top);
                                            bitmapE.setHasAlpha(bitmapC.hasAlpha());
                                            z.a(bitmapC, bitmapE, matrix);
                                            break;
                                        default:
                                            bitmapE = bitmapC;
                                            break;
                                    }
                                    if (!bitmapC.equals(bitmapE)) {
                                        bVar3.f(bitmapC);
                                    }
                                    return bitmapE;
                                }
                                i20++;
                                list = list2;
                                gVar = gVar2;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }
                iK = -1;
                switch (iK) {
                    case 3:
                    case 4:
                        i5 = 180;
                        break;
                    case 5:
                    case 6:
                        i5 = 90;
                        break;
                    case 7:
                    case 8:
                        i5 = 270;
                        break;
                    default:
                        i5 = 0;
                        break;
                }
                switch (iK) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z4 = true;
                        break;
                    default:
                        z4 = false;
                        break;
                }
                if (i3 == Integer.MIN_VALUE) {
                    if (i5 != 90) {
                        i6 = 270;
                        if (i5 == 270) {
                            i7 = i18;
                        }
                    } else {
                        i6 = 270;
                    }
                    i7 = i19;
                } else {
                    i6 = 270;
                    i7 = i3;
                }
                if (i4 == Integer.MIN_VALUE) {
                    i8 = i4;
                } else if (i5 != 90) {
                    i8 = i18;
                } else {
                    i8 = i18;
                }
                imageHeaderParser$ImageTypeH = bVar.h();
                i9 = iK;
                boolean z11 = z4;
                if (i18 > 0) {
                    str2 = ", density: ";
                    bVar2 = bVar4;
                    str3 = ", target density: ";
                    i10 = i7;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    bVar2 = bVar4;
                    str3 = ", target density: ";
                    i10 = i7;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                    }
                }
                zC = this.f5138e.c(i10, i8, z9, z11);
                if (zC) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    z5 = false;
                    options.inMutable = false;
                } else {
                    z5 = false;
                }
                if (zC) {
                    z6 = true;
                } else if (aVar != a.b) {
                    zHasAlpha = bVar.h().hasAlpha();
                    if (zHasAlpha) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.RGB_565;
                    }
                    options.inPreferredConfig = config;
                    if (config == Bitmap.Config.RGB_565) {
                        z6 = true;
                        options.inDither = true;
                    } else {
                        z6 = true;
                    }
                } else {
                    z6 = true;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                }
                i11 = Build.VERSION.SDK_INT;
                if (i18 >= 0) {
                    i12 = options.inTargetDensity;
                    if (i12 > 0) {
                        z7 = z5;
                    } else {
                        z7 = z5;
                    }
                    if (z7) {
                        f3 = i12 / options.inDensity;
                    } else {
                        f3 = 1.0f;
                    }
                    i13 = options.inSampleSize;
                    float f10 = i13;
                    int iCeil3 = (int) Math.ceil(i18 / f10);
                    int iCeil4 = (int) Math.ceil(i19 / f10);
                    iRound = Math.round(iCeil3 * f3);
                    iRound2 = Math.round(iCeil4 * f3);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbP3 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbP3.append(i18);
                        sbP3.append("x");
                        sbP3.append(i19);
                        sbP3.append("], sampleSize: ");
                        sbP3.append(i13);
                        sbP3.append(", targetDensity: ");
                        sbP3.append(options.inTargetDensity);
                        sbP3.append(str2);
                        sbP3.append(options.inDensity);
                        sbP3.append(", density multiplier: ");
                        sbP3.append(f3);
                        Log.v("Downsampler", sbP3.toString());
                    }
                    i8 = iRound2;
                } else {
                    i12 = options.inTargetDensity;
                    if (i12 > 0) {
                        z7 = z5;
                    } else {
                        z7 = z5;
                    }
                    if (z7) {
                        f3 = i12 / options.inDensity;
                    } else {
                        f3 = 1.0f;
                    }
                    i13 = options.inSampleSize;
                    float f11 = i13;
                    int iCeil5 = (int) Math.ceil(i18 / f11);
                    int iCeil6 = (int) Math.ceil(i19 / f11);
                    iRound = Math.round(iCeil5 * f3);
                    iRound2 = Math.round(iCeil6 * f3);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbP4 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbP4.append(i18);
                        sbP4.append("x");
                        sbP4.append(i19);
                        sbP4.append("], sampleSize: ");
                        sbP4.append(i13);
                        sbP4.append(", targetDensity: ");
                        sbP4.append(options.inTargetDensity);
                        sbP4.append(str2);
                        sbP4.append(options.inDensity);
                        sbP4.append(", density multiplier: ");
                        sbP4.append(f3);
                        Log.v("Downsampler", sbP4.toString());
                    }
                    i8 = iRound2;
                }
                if (iRound > 0) {
                    bVar3 = bVar2;
                } else {
                    bVar3 = bVar2;
                }
                if (jVar != null) {
                    if (i11 >= 28) {
                        if (jVar == j.b) {
                            z8 = false;
                        } else {
                            z8 = false;
                        }
                        if (z8) {
                            named = ColorSpace.Named.DISPLAY_P3;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i11 >= 26) {
                        ColorSpace.Named unused2 = ColorSpace.Named.SRGB;
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                bitmapC = c(bVar, options, pVar, bVar3);
                pVar.d(bitmapC, bVar3);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i18 + "x" + i19 + "] " + str + " with inBitmap " + d(options.inBitmap) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + p063y0.h.a(j2));
                }
                if (bitmapC != null) {
                    return null;
                }
                bitmapC.setDensity(this.b.densityDpi);
                switch (i9) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i9) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                        }
                        RectF rectF2 = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                        matrix.mapRect(rectF2);
                        int iRound8 = Math.round(rectF2.width());
                        int iRound9 = Math.round(rectF2.height());
                        if (bitmapC.getConfig() != null) {
                            config2 = bitmapC.getConfig();
                        } else {
                            config2 = Bitmap.Config.ARGB_8888;
                        }
                        bitmapE = bVar3.e(iRound8, iRound9, config2);
                        matrix.postTranslate(-rectF2.left, -rectF2.top);
                        bitmapE.setHasAlpha(bitmapC.hasAlpha());
                        z.a(bitmapC, bitmapE, matrix);
                        break;
                    default:
                        bitmapE = bitmapC;
                        break;
                }
                if (!bitmapC.equals(bitmapE)) {
                    bVar3.f(bitmapC);
                }
                return bitmapE;
            case MotionEventCompat.AXIS_Z /* 11 */:
                j2 = jElapsedRealtimeNanos;
                str = str4;
                List list3 = (List) bVar.f945e;
                x xVar2 = (x) ((com.bumptech.glide.load.data.i) bVar.f943c).f3247c;
                xVar2.reset();
                iK = p000a.a.k(list3, xVar2, (g) bVar.f944d);
                switch (iK) {
                    case 3:
                    case 4:
                        i5 = 180;
                        break;
                    case 5:
                    case 6:
                        i5 = 90;
                        break;
                    case 7:
                    case 8:
                        i5 = 270;
                        break;
                    default:
                        i5 = 0;
                        break;
                }
                switch (iK) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z4 = true;
                        break;
                    default:
                        z4 = false;
                        break;
                }
                if (i3 == Integer.MIN_VALUE) {
                    if (i5 != 90) {
                        i6 = 270;
                        if (i5 == 270) {
                            i7 = i18;
                        }
                    } else {
                        i6 = 270;
                    }
                    i7 = i19;
                } else {
                    i6 = 270;
                    i7 = i3;
                }
                if (i4 == Integer.MIN_VALUE) {
                    i8 = i4;
                } else if (i5 != 90) {
                    i8 = i18;
                } else {
                    i8 = i18;
                }
                imageHeaderParser$ImageTypeH = bVar.h();
                i9 = iK;
                boolean z12 = z4;
                if (i18 > 0) {
                    str2 = ", density: ";
                    bVar2 = bVar4;
                    str3 = ", target density: ";
                    i10 = i7;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    bVar2 = bVar4;
                    str3 = ", target density: ";
                    i10 = i7;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                    }
                }
                zC = this.f5138e.c(i10, i8, z9, z12);
                if (zC) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    z5 = false;
                    options.inMutable = false;
                } else {
                    z5 = false;
                }
                if (zC) {
                    z6 = true;
                } else if (aVar != a.b) {
                    zHasAlpha = bVar.h().hasAlpha();
                    if (zHasAlpha) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.RGB_565;
                    }
                    options.inPreferredConfig = config;
                    if (config == Bitmap.Config.RGB_565) {
                        z6 = true;
                        options.inDither = true;
                    } else {
                        z6 = true;
                    }
                } else {
                    z6 = true;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                }
                i11 = Build.VERSION.SDK_INT;
                if (i18 >= 0) {
                    i12 = options.inTargetDensity;
                    if (i12 > 0) {
                        z7 = z5;
                    } else {
                        z7 = z5;
                    }
                    if (z7) {
                        f3 = i12 / options.inDensity;
                    } else {
                        f3 = 1.0f;
                    }
                    i13 = options.inSampleSize;
                    float f12 = i13;
                    int iCeil7 = (int) Math.ceil(i18 / f12);
                    int iCeil8 = (int) Math.ceil(i19 / f12);
                    iRound = Math.round(iCeil7 * f3);
                    iRound2 = Math.round(iCeil8 * f3);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbP5 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbP5.append(i18);
                        sbP5.append("x");
                        sbP5.append(i19);
                        sbP5.append("], sampleSize: ");
                        sbP5.append(i13);
                        sbP5.append(", targetDensity: ");
                        sbP5.append(options.inTargetDensity);
                        sbP5.append(str2);
                        sbP5.append(options.inDensity);
                        sbP5.append(", density multiplier: ");
                        sbP5.append(f3);
                        Log.v("Downsampler", sbP5.toString());
                    }
                    i8 = iRound2;
                } else {
                    i12 = options.inTargetDensity;
                    if (i12 > 0) {
                        z7 = z5;
                    } else {
                        z7 = z5;
                    }
                    if (z7) {
                        f3 = i12 / options.inDensity;
                    } else {
                        f3 = 1.0f;
                    }
                    i13 = options.inSampleSize;
                    float f13 = i13;
                    int iCeil9 = (int) Math.ceil(i18 / f13);
                    int iCeil10 = (int) Math.ceil(i19 / f13);
                    iRound = Math.round(iCeil9 * f3);
                    iRound2 = Math.round(iCeil10 * f3);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbP6 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbP6.append(i18);
                        sbP6.append("x");
                        sbP6.append(i19);
                        sbP6.append("], sampleSize: ");
                        sbP6.append(i13);
                        sbP6.append(", targetDensity: ");
                        sbP6.append(options.inTargetDensity);
                        sbP6.append(str2);
                        sbP6.append(options.inDensity);
                        sbP6.append(", density multiplier: ");
                        sbP6.append(f3);
                        Log.v("Downsampler", sbP6.toString());
                    }
                    i8 = iRound2;
                }
                if (iRound > 0) {
                    bVar3 = bVar2;
                } else {
                    bVar3 = bVar2;
                }
                if (jVar != null) {
                    if (i11 >= 28) {
                        if (jVar == j.b) {
                            z8 = false;
                        } else {
                            z8 = false;
                        }
                        if (z8) {
                            named = ColorSpace.Named.DISPLAY_P3;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i11 >= 26) {
                        ColorSpace.Named unused3 = ColorSpace.Named.SRGB;
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                bitmapC = c(bVar, options, pVar, bVar3);
                pVar.d(bitmapC, bVar3);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i18 + "x" + i19 + "] " + str + " with inBitmap " + d(options.inBitmap) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + p063y0.h.a(j2));
                }
                if (bitmapC != null) {
                    return null;
                }
                bitmapC.setDensity(this.b.densityDpi);
                switch (i9) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i9) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                        }
                        RectF rectF3 = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                        matrix.mapRect(rectF3);
                        int iRound10 = Math.round(rectF3.width());
                        int iRound11 = Math.round(rectF3.height());
                        if (bitmapC.getConfig() != null) {
                            config2 = bitmapC.getConfig();
                        } else {
                            config2 = Bitmap.Config.ARGB_8888;
                        }
                        bitmapE = bVar3.e(iRound10, iRound11, config2);
                        matrix.postTranslate(-rectF3.left, -rectF3.top);
                        bitmapE.setHasAlpha(bitmapC.hasAlpha());
                        z.a(bitmapC, bitmapE, matrix);
                        break;
                    default:
                        bitmapE = bitmapC;
                        break;
                }
                if (!bitmapC.equals(bitmapE)) {
                    bVar3.f(bitmapC);
                }
                return bitmapE;
            default:
                List list4 = (List) bVar.f944d;
                j2 = jElapsedRealtimeNanos;
                com.bumptech.glide.load.data.i iVar = (com.bumptech.glide.load.data.i) bVar.f945e;
                g gVar3 = (g) bVar.f943c;
                int size2 = list4.size();
                str = str4;
                int i31 = 0;
                while (true) {
                    if (i31 < size2) {
                        int i32 = size2;
                        e eVar = (e) list4.get(i31);
                        int i33 = i31;
                        try {
                            List list5 = list4;
                            x xVar3 = new x(new FileInputStream(iVar.e().getFileDescriptor()), gVar3);
                            try {
                                iC = eVar.b(xVar3, gVar3);
                                xVar3.b();
                                iVar.e();
                                if (iC != -1) {
                                    iK = iC;
                                } else {
                                    i31 = i33 + 1;
                                    size2 = i32;
                                    list4 = list5;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                xVar = xVar3;
                                if (xVar != null) {
                                    xVar.b();
                                }
                                iVar.e();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        iK = -1;
                    }
                }
                switch (iK) {
                    case 3:
                    case 4:
                        i5 = 180;
                        break;
                    case 5:
                    case 6:
                        i5 = 90;
                        break;
                    case 7:
                    case 8:
                        i5 = 270;
                        break;
                    default:
                        i5 = 0;
                        break;
                }
                switch (iK) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        z4 = true;
                        break;
                    default:
                        z4 = false;
                        break;
                }
                if (i3 == Integer.MIN_VALUE) {
                    if (i5 != 90) {
                        i6 = 270;
                        if (i5 == 270) {
                            i7 = i18;
                        }
                    } else {
                        i6 = 270;
                    }
                    i7 = i19;
                } else {
                    i6 = 270;
                    i7 = i3;
                }
                if (i4 == Integer.MIN_VALUE) {
                    i8 = i4;
                } else if (i5 != 90) {
                    i8 = i18;
                } else {
                    i8 = i18;
                }
                imageHeaderParser$ImageTypeH = bVar.h();
                i9 = iK;
                boolean z13 = z4;
                if (i18 > 0) {
                    str2 = ", density: ";
                    bVar2 = bVar4;
                    str3 = ", target density: ";
                    i10 = i7;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                    }
                } else {
                    str2 = ", density: ";
                    bVar2 = bVar4;
                    str3 = ", target density: ";
                    i10 = i7;
                    if (Log.isLoggable("Downsampler", 3)) {
                        Log.d("Downsampler", "Unable to determine dimensions for: " + imageHeaderParser$ImageTypeH + " with target [" + i10 + "x" + i8 + "]");
                    }
                }
                zC = this.f5138e.c(i10, i8, z9, z13);
                if (zC) {
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    z5 = false;
                    options.inMutable = false;
                } else {
                    z5 = false;
                }
                if (zC) {
                    z6 = true;
                } else if (aVar != a.b) {
                    zHasAlpha = bVar.h().hasAlpha();
                    if (zHasAlpha) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.RGB_565;
                    }
                    options.inPreferredConfig = config;
                    if (config == Bitmap.Config.RGB_565) {
                        z6 = true;
                        options.inDither = true;
                    } else {
                        z6 = true;
                    }
                } else {
                    z6 = true;
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                }
                i11 = Build.VERSION.SDK_INT;
                if (i18 >= 0) {
                    i12 = options.inTargetDensity;
                    if (i12 > 0) {
                        z7 = z5;
                    } else {
                        z7 = z5;
                    }
                    if (z7) {
                        f3 = i12 / options.inDensity;
                    } else {
                        f3 = 1.0f;
                    }
                    i13 = options.inSampleSize;
                    float f14 = i13;
                    int iCeil11 = (int) Math.ceil(i18 / f14);
                    int iCeil12 = (int) Math.ceil(i19 / f14);
                    iRound = Math.round(iCeil11 * f3);
                    iRound2 = Math.round(iCeil12 * f3);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbP7 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbP7.append(i18);
                        sbP7.append("x");
                        sbP7.append(i19);
                        sbP7.append("], sampleSize: ");
                        sbP7.append(i13);
                        sbP7.append(", targetDensity: ");
                        sbP7.append(options.inTargetDensity);
                        sbP7.append(str2);
                        sbP7.append(options.inDensity);
                        sbP7.append(", density multiplier: ");
                        sbP7.append(f3);
                        Log.v("Downsampler", sbP7.toString());
                    }
                    i8 = iRound2;
                } else {
                    i12 = options.inTargetDensity;
                    if (i12 > 0) {
                        z7 = z5;
                    } else {
                        z7 = z5;
                    }
                    if (z7) {
                        f3 = i12 / options.inDensity;
                    } else {
                        f3 = 1.0f;
                    }
                    i13 = options.inSampleSize;
                    float f15 = i13;
                    int iCeil13 = (int) Math.ceil(i18 / f15);
                    int iCeil14 = (int) Math.ceil(i19 / f15);
                    iRound = Math.round(iCeil13 * f3);
                    iRound2 = Math.round(iCeil14 * f3);
                    if (Log.isLoggable("Downsampler", 2)) {
                        StringBuilder sbP8 = E.b.p("Calculated target [", iRound, iRound2, "x", "] for source [");
                        sbP8.append(i18);
                        sbP8.append("x");
                        sbP8.append(i19);
                        sbP8.append("], sampleSize: ");
                        sbP8.append(i13);
                        sbP8.append(", targetDensity: ");
                        sbP8.append(options.inTargetDensity);
                        sbP8.append(str2);
                        sbP8.append(options.inDensity);
                        sbP8.append(", density multiplier: ");
                        sbP8.append(f3);
                        Log.v("Downsampler", sbP8.toString());
                    }
                    i8 = iRound2;
                }
                if (iRound > 0) {
                    bVar3 = bVar2;
                } else {
                    bVar3 = bVar2;
                }
                if (jVar != null) {
                    if (i11 >= 28) {
                        if (jVar == j.b) {
                            z8 = false;
                        } else {
                            z8 = false;
                        }
                        if (z8) {
                            named = ColorSpace.Named.DISPLAY_P3;
                        } else {
                            named = ColorSpace.Named.SRGB;
                        }
                        options.inPreferredColorSpace = ColorSpace.get(named);
                    } else if (i11 >= 26) {
                        ColorSpace.Named unused4 = ColorSpace.Named.SRGB;
                        options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    }
                }
                bitmapC = c(bVar, options, pVar, bVar3);
                pVar.d(bitmapC, bVar3);
                if (Log.isLoggable("Downsampler", 2)) {
                    Log.v("Downsampler", "Decoded " + d(bitmapC) + " from [" + i18 + "x" + i19 + "] " + str + " with inBitmap " + d(options.inBitmap) + " for [" + i3 + "x" + i4 + "], sample size: " + options.inSampleSize + str2 + options.inDensity + str3 + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + p063y0.h.a(j2));
                }
                if (bitmapC != null) {
                    return null;
                }
                bitmapC.setDensity(this.b.densityDpi);
                switch (i9) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        matrix = new Matrix();
                        switch (i9) {
                            case 2:
                                matrix.setScale(-1.0f, 1.0f);
                                break;
                            case 3:
                                matrix.setRotate(180.0f);
                                break;
                            case 4:
                                matrix.setRotate(180.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 5:
                                matrix.setRotate(90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 6:
                                matrix.setRotate(90.0f);
                                break;
                            case 7:
                                matrix.setRotate(-90.0f);
                                matrix.postScale(-1.0f, 1.0f);
                                break;
                            case 8:
                                matrix.setRotate(-90.0f);
                                break;
                        }
                        RectF rectF4 = new RectF(0.0f, 0.0f, bitmapC.getWidth(), bitmapC.getHeight());
                        matrix.mapRect(rectF4);
                        int iRound12 = Math.round(rectF4.width());
                        int iRound13 = Math.round(rectF4.height());
                        if (bitmapC.getConfig() != null) {
                            config2 = bitmapC.getConfig();
                        } else {
                            config2 = Bitmap.Config.ARGB_8888;
                        }
                        bitmapE = bVar3.e(iRound12, iRound13, config2);
                        matrix.postTranslate(-rectF4.left, -rectF4.top);
                        bitmapE.setHasAlpha(bitmapC.hasAlpha());
                        z.a(bitmapC, bitmapE, matrix);
                        break;
                    default:
                        bitmapE = bitmapC;
                        break;
                }
                if (!bitmapC.equals(bitmapE)) {
                    bVar3.f(bitmapC);
                }
                return bitmapE;
        }
    }
}
