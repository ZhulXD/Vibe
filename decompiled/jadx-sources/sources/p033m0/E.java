package p033m0;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.material.datepicker.c;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import p009d0.h;
import p009d0.i;
import p009d0.k;
import p014f0.F;
import p016g0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E implements k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f5111d = new h("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new j(1));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f5112e = new h("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new j(2));
    public static final c f = new c(24);
    public static final List g = Collections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f5113a;
    public final b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f5114c = f;

    public E(b bVar, c cVar) {
        this.b = bVar;
        this.f5113a = cVar;
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:59:0x0100  */
    /* JADX WARN: Code duplicated, block: B:61:0x0104  */
    /* JADX WARN: Code duplicated, block: B:63:0x0108  */
    /* JADX WARN: Code duplicated, block: B:74:0x012c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0134  */
    /* JADX WARN: Code duplicated, block: B:76:0x0138  */
    /* JADX WARN: Code duplicated, block: B:77:0x013e  */
    /* JADX WARN: Code duplicated, block: B:81:0x011b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 3301. Try increasing type updates limit count.
    	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:61)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:298)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyWithWiderIgnSame(TypeUpdate.java:73)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.applyResolvedVars(TypeSearch.java:100)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:76)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.runMultiVariableSearch(FixTypesVisitor.java:119)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p009d0.k
    public final F b(Object obj, int i3, int i4, i iVar) throws Exception {
        long j2;
        int i5;
        ExecutorService executorService;
        boolean zIsTerminated;
        ExecutorService executorService2;
        boolean zIsTerminated2;
        long jLongValue = ((Long) iVar.c(f5111d)).longValue();
        if (jLongValue < 0 && jLongValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + jLongValue);
        }
        Integer num = (Integer) iVar.c(f5112e);
        if (num == null) {
            num = 2;
        }
        n nVar = (n) iVar.c(n.g);
        if (nVar == null) {
            nVar = n.f;
        }
        n nVar2 = nVar;
        this.f5114c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        boolean z2 = false;
        try {
            switch (this.f5113a.b) {
                case 22:
                    AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
                    try {
                        mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                        mediaMetadataRetriever = mediaMetadataRetriever;
                        j2 = 1;
                        i5 = 29;
                        try {
                            Bitmap bitmapC = c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i3, i4, nVar2);
                            if (Build.VERSION.SDK_INT < 29) {
                                mediaMetadataRetriever.release();
                            } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                                mediaMetadataRetriever.close();
                            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                                executorService2 = (ExecutorService) mediaMetadataRetriever;
                                if (executorService2 != ForkJoinPool.commonPool() && !(zIsTerminated2 = executorService2.isTerminated())) {
                                    executorService2.shutdown();
                                    while (!zIsTerminated2) {
                                        try {
                                            zIsTerminated2 = executorService2.awaitTermination(1L, TimeUnit.DAYS);
                                        } catch (InterruptedException unused) {
                                            if (!z2) {
                                                executorService2.shutdownNow();
                                                z2 = true;
                                            }
                                        }
                                    }
                                    if (z2) {
                                        Thread.currentThread().interrupt();
                                    }
                                }
                            } else {
                                mediaMetadataRetriever.release();
                            }
                            return C0354d.b(bitmapC, this.b);
                        } catch (Throwable th) {
                            th = th;
                            if (Build.VERSION.SDK_INT >= i5) {
                                mediaMetadataRetriever.release();
                            } else if (!(mediaMetadataRetriever instanceof AutoCloseable)) {
                                mediaMetadataRetriever.close();
                            } else if (mediaMetadataRetriever instanceof ExecutorService) {
                                executorService = (ExecutorService) mediaMetadataRetriever;
                                if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                                    executorService.shutdown();
                                    while (!zIsTerminated) {
                                        try {
                                            zIsTerminated = executorService.awaitTermination(j2, TimeUnit.DAYS);
                                        } catch (InterruptedException unused2) {
                                            if (!z2) {
                                                executorService.shutdownNow();
                                                z2 = true;
                                            }
                                        }
                                    }
                                    if (z2) {
                                        Thread.currentThread().interrupt();
                                    }
                                }
                            } else {
                                mediaMetadataRetriever.release();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        mediaMetadataRetriever = mediaMetadataRetriever;
                        i5 = 29;
                        j2 = 1;
                        if (Build.VERSION.SDK_INT >= i5) {
                            mediaMetadataRetriever.release();
                        } else if (!(mediaMetadataRetriever instanceof AutoCloseable)) {
                            mediaMetadataRetriever.close();
                        } else if (mediaMetadataRetriever instanceof ExecutorService) {
                            executorService = (ExecutorService) mediaMetadataRetriever;
                            if (executorService != ForkJoinPool.commonPool()) {
                                executorService.shutdown();
                                while (!zIsTerminated) {
                                    zIsTerminated = executorService.awaitTermination(j2, TimeUnit.DAYS);
                                }
                                if (z2) {
                                    Thread.currentThread().interrupt();
                                }
                            }
                        } else {
                            mediaMetadataRetriever.release();
                        }
                        throw th;
                    }
                case 23:
                    mediaMetadataRetriever.setDataSource(new D((ByteBuffer) obj));
                    mediaMetadataRetriever = mediaMetadataRetriever;
                    j2 = 1;
                    i5 = 29;
                    Bitmap bitmapC2 = c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i3, i4, nVar2);
                    if (Build.VERSION.SDK_INT < 29) {
                        mediaMetadataRetriever.release();
                    } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                        mediaMetadataRetriever.close();
                    } else if (mediaMetadataRetriever instanceof ExecutorService) {
                        executorService2 = (ExecutorService) mediaMetadataRetriever;
                        if (executorService2 != ForkJoinPool.commonPool()) {
                            executorService2.shutdown();
                            while (!zIsTerminated2) {
                                zIsTerminated2 = executorService2.awaitTermination(1L, TimeUnit.DAYS);
                            }
                            if (z2) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    } else {
                        mediaMetadataRetriever.release();
                    }
                    return C0354d.b(bitmapC2, this.b);
                default:
                    mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
                    mediaMetadataRetriever = mediaMetadataRetriever;
                    j2 = 1;
                    i5 = 29;
                    Bitmap bitmapC3 = c(obj, mediaMetadataRetriever, jLongValue, num.intValue(), i3, i4, nVar2);
                    if (Build.VERSION.SDK_INT < 29) {
                        mediaMetadataRetriever.release();
                    } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                        mediaMetadataRetriever.close();
                    } else if (mediaMetadataRetriever instanceof ExecutorService) {
                        executorService2 = (ExecutorService) mediaMetadataRetriever;
                        if (executorService2 != ForkJoinPool.commonPool()) {
                            executorService2.shutdown();
                            while (!zIsTerminated2) {
                                zIsTerminated2 = executorService2.awaitTermination(1L, TimeUnit.DAYS);
                            }
                            if (z2) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    } else {
                        mediaMetadataRetriever.release();
                    }
                    return C0354d.b(bitmapC3, this.b);
            }
        } catch (Throwable th3) {
            th = th3;
            j2 = 1;
            i5 = 29;
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:60:0x010f  */
    /* JADX WARN: Code duplicated, block: B:71:0x013e  */
    /* JADX WARN: Code duplicated, block: B:73:0x0144 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:77:0x015e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:78:0x0160 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:84:0x0178  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:91:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:9:0x0026  */
    public final Bitmap c(Object obj, MediaMetadataRetriever mediaMetadataRetriever, long j2, int i3, int i4, int i5, n nVar) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        MediaExtractor mediaExtractor;
        String str = Build.DEVICE;
        Bitmap bitmapCreateBitmap = null;
        if (str != null && str.matches(".+_cheets|cheets_.+")) {
            try {
                if ("video/webm".equals(mediaMetadataRetriever.extractMetadata(12))) {
                    mediaExtractor = new MediaExtractor();
                    try {
                        switch (this.f5113a.b) {
                            case 22:
                                AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
                                mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
                                break;
                            case 23:
                                mediaExtractor.setDataSource(new D((ByteBuffer) obj));
                                break;
                            default:
                                mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
                                break;
                        }
                        int trackCount = mediaExtractor.getTrackCount();
                        for (int i11 = 0; i11 < trackCount; i11++) {
                            if ("video/x-vnd.on2.vp8".equals(mediaExtractor.getTrackFormat(i11).getString("mime"))) {
                                mediaExtractor.release();
                                throw new IllegalStateException("Cannot decode VP8 video on CrOS.");
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            if (Log.isLoggable("VideoDecoder", 3)) {
                                Log.d("VideoDecoder", "Exception trying to extract track info for a webm video on CrOS.", th);
                            }
                            if (mediaExtractor != null) {
                            }
                            if (Build.VERSION.SDK_INT >= 27) {
                                try {
                                    i8 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
                                    i9 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
                                    i10 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
                                    if (i10 != 90) {
                                        i9 = i8;
                                        i8 = i9;
                                    } else {
                                        i9 = i8;
                                        i8 = i9;
                                    }
                                    float fB = nVar.b(i8, i9, i4, i5);
                                    bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j2, i3, Math.round(i8 * fB), Math.round(fB * i9));
                                } catch (Throwable th2) {
                                    if (Log.isLoggable("VideoDecoder", 3)) {
                                        Log.d("VideoDecoder", "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th2);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap == null) {
                                bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j2, i3);
                            }
                            if (Build.MODEL.startsWith("Pixel")) {
                                i6 = Build.VERSION.SDK_INT;
                                if (i6 >= 30) {
                                    try {
                                        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(36);
                                        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(35);
                                        i7 = Integer.parseInt(strExtractMetadata);
                                        int i12 = Integer.parseInt(strExtractMetadata2);
                                        if (i7 != 7) {
                                            if (Log.isLoggable("VideoDecoder", 3)) {
                                                Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                            }
                                            Matrix matrix = new Matrix();
                                            matrix.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix, true);
                                        } else {
                                            if (Log.isLoggable("VideoDecoder", 3)) {
                                                Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                            }
                                            Matrix matrix2 = new Matrix();
                                            matrix2.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                            bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix2, true);
                                        }
                                    } catch (NumberFormatException unused) {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
                                        }
                                    }
                                }
                            } else {
                                i6 = Build.VERSION.SDK_INT;
                                if (i6 >= 30) {
                                    String strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(36);
                                    String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(35);
                                    i7 = Integer.parseInt(strExtractMetadata3);
                                    int i13 = Integer.parseInt(strExtractMetadata4);
                                    if (i7 != 7) {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                        }
                                        Matrix matrix3 = new Matrix();
                                        matrix3.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix3, true);
                                    } else {
                                        if (Log.isLoggable("VideoDecoder", 3)) {
                                            Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                                        }
                                        Matrix matrix4 = new Matrix();
                                        matrix4.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                                        bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix4, true);
                                    }
                                }
                            }
                            if (bitmapCreateBitmap != null) {
                                return bitmapCreateBitmap;
                            }
                            throw new Q.c("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
                        } catch (Throwable th3) {
                            if (mediaExtractor != null) {
                                mediaExtractor.release();
                            }
                            throw th3;
                        }
                    }
                    mediaExtractor.release();
                }
            } catch (Throwable th4) {
                th = th4;
                mediaExtractor = null;
            }
        }
        if (Build.VERSION.SDK_INT >= 27 && i4 != Integer.MIN_VALUE && i5 != Integer.MIN_VALUE && nVar != n.f5128e) {
            i8 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            i9 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            i10 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (i10 != 90 || i10 == 270) {
                i9 = i8;
                i8 = i9;
            }
            float fB2 = nVar.b(i8, i9, i4, i5);
            bitmapCreateBitmap = mediaMetadataRetriever.getScaledFrameAtTime(j2, i3, Math.round(i8 * fB2), Math.round(fB2 * i9));
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = mediaMetadataRetriever.getFrameAtTime(j2, i3);
        }
        if (Build.MODEL.startsWith("Pixel") || Build.VERSION.SDK_INT != 33) {
            i6 = Build.VERSION.SDK_INT;
            if (i6 >= 30 && i6 < 33) {
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(36);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(35);
                i7 = Integer.parseInt(strExtractMetadata5);
                int i14 = Integer.parseInt(strExtractMetadata6);
                if ((i7 != 7 || i7 == 6) && i14 == 6 && Math.abs(Integer.parseInt(mediaMetadataRetriever.extractMetadata(24))) == 180) {
                    if (Log.isLoggable("VideoDecoder", 3)) {
                        Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                    }
                    Matrix matrix5 = new Matrix();
                    matrix5.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                    bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix5, true);
                }
            }
        } else {
            Iterator it = g.iterator();
            do {
                if (it.hasNext()) {
                }
            } while (!Build.ID.startsWith((String) it.next()));
            String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(36);
            String strExtractMetadata8 = mediaMetadataRetriever.extractMetadata(35);
            i7 = Integer.parseInt(strExtractMetadata7);
            int i15 = Integer.parseInt(strExtractMetadata8);
            if (i7 != 7) {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix6 = new Matrix();
                matrix6.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix6, true);
            } else {
                if (Log.isLoggable("VideoDecoder", 3)) {
                    Log.d("VideoDecoder", "Applying HDR 180 deg thumbnail correction");
                }
                Matrix matrix7 = new Matrix();
                matrix7.postRotate(180.0f, bitmapCreateBitmap.getWidth() / 2.0f, bitmapCreateBitmap.getHeight() / 2.0f);
                bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateBitmap, 0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), matrix7, true);
            }
        }
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new Q.c("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
    }
}
