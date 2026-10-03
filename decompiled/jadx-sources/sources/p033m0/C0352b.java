package p033m0;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.data.c;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p009d0.h;
import p009d0.i;
import p009d0.l;
import p014f0.F;
import p016g0.g;
import p063y0.n;

/* JADX INFO: renamed from: m0.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0352b implements l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f5117c = h.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f5118d = new h("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, h.f3869e);
    public final g b;

    public C0352b(g gVar) {
        this.b = gVar;
    }

    @Override // p009d0.l
    public final int m(i iVar) {
        return 2;
    }

    @Override // p009d0.b
    public final boolean p(Object obj, File file, i iVar) throws Throwable {
        boolean z2;
        Bitmap bitmap = (Bitmap) ((F) obj).get();
        h hVar = f5118d;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) iVar.c(hVar);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i3 = p063y0.h.b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) iVar.c(f5117c)).intValue();
        OutputStream cVar = null;
        try {
            try {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    g gVar = this.b;
                    if (gVar != null) {
                        try {
                            cVar = new c(fileOutputStream, gVar);
                        } catch (IOException e2) {
                            e = e2;
                            cVar = fileOutputStream;
                            if (Log.isLoggable("BitmapEncoder", 3)) {
                                Log.d("BitmapEncoder", "Failed to encode Bitmap", e);
                            }
                            if (cVar != null) {
                                try {
                                    cVar.close();
                                } catch (IOException unused) {
                                }
                            }
                            z2 = false;
                        } catch (Throwable th) {
                            th = th;
                            cVar = fileOutputStream;
                            if (cVar != null) {
                                try {
                                    cVar.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        cVar = fileOutputStream;
                    }
                    bitmap.compress(compressFormat, iIntValue, cVar);
                    cVar.close();
                    try {
                        cVar.close();
                    } catch (IOException unused3) {
                    }
                    z2 = true;
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (IOException e3) {
                e = e3;
            }
            if (Log.isLoggable("BitmapEncoder", 2)) {
                Log.v("BitmapEncoder", "Compressed with type: " + compressFormat + " of size " + n.c(bitmap) + " in " + p063y0.h.a(jElapsedRealtimeNanos) + ", options format: " + iVar.c(hVar) + ", hasAlpha: " + bitmap.hasAlpha());
            }
            return z2;
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
