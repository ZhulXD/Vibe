package p016g0;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import com.google.android.material.datepicker.c;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h implements b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Bitmap.Config f4326k = Bitmap.Config.ARGB_8888;
    public final l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f4327c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f4328d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f4329e;
    public long f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4332j;

    public h(long j2) {
        l lVar = new l();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i3 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i3 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f4329e = j2;
        this.b = lVar;
        this.f4327c = setUnmodifiableSet;
        this.f4328d = new c(7);
    }

    public final void a() {
        Log.v("LruBitmapPool", "Hits=" + this.g + ", misses=" + this.f4330h + ", puts=" + this.f4331i + ", evictions=" + this.f4332j + ", currentSize=" + this.f + ", maxSize=" + this.f4329e + "\nStrategy=" + this.b);
    }

    @Override // p016g0.b
    public final Bitmap b(int i3, int i4, Bitmap.Config config) {
        Bitmap bitmapC = c(i3, i4, config);
        if (bitmapC != null) {
            return bitmapC;
        }
        if (config == null) {
            config = f4326k;
        }
        return Bitmap.createBitmap(i3, i4, config);
    }

    public final synchronized Bitmap c(int i3, int i4, Bitmap.Config config) {
        Bitmap bitmapB;
        try {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapB = this.b.b(i3, i4, config != null ? config : f4326k);
            if (bitmapB == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder("Missing bitmap=");
                    this.b.getClass();
                    sb.append(l.c(n.d(config) * i3 * i4, config));
                    Log.d("LruBitmapPool", sb.toString());
                }
                this.f4330h++;
            } else {
                this.g++;
                long j2 = this.f;
                this.b.getClass();
                this.f = j2 - ((long) n.c(bitmapB));
                this.f4328d.getClass();
                bitmapB.setHasAlpha(true);
                bitmapB.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb2 = new StringBuilder("Get bitmap=");
                this.b.getClass();
                sb2.append(l.c(n.d(config) * i3 * i4, config));
                Log.v("LruBitmapPool", sb2.toString());
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                a();
            }
        } catch (Throwable th) {
            throw th;
        }
        return bitmapB;
    }

    public final synchronized void d(long j2) {
        while (this.f > j2) {
            try {
                l lVar = this.b;
                Bitmap bitmap = (Bitmap) lVar.b.D();
                if (bitmap != null) {
                    lVar.a(Integer.valueOf(n.c(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        Log.w("LruBitmapPool", "Size mismatch, resetting");
                        a();
                    }
                    this.f = 0L;
                    return;
                }
                this.f4328d.getClass();
                long j3 = this.f;
                this.b.getClass();
                this.f = j3 - ((long) n.c(bitmap));
                this.f4332j++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.b.getClass();
                    sb.append(l.c(n.c(bitmap), bitmap.getConfig()));
                    Log.d("LruBitmapPool", sb.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    a();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p016g0.b
    public final Bitmap e(int i3, int i4, Bitmap.Config config) {
        Bitmap bitmapC = c(i3, i4, config);
        if (bitmapC != null) {
            bitmapC.eraseColor(0);
            return bitmapC;
        }
        if (config == null) {
            config = f4326k;
        }
        return Bitmap.createBitmap(i3, i4, config);
    }

    @Override // p016g0.b
    public final synchronized void f(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.b.getClass();
                if (n.c(bitmap) <= this.f4329e && this.f4327c.contains(bitmap.getConfig())) {
                    this.b.getClass();
                    int iC = n.c(bitmap);
                    this.b.e(bitmap);
                    this.f4328d.getClass();
                    this.f4331i++;
                    this.f += (long) iC;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        StringBuilder sb = new StringBuilder("Put bitmap in pool=");
                        this.b.getClass();
                        sb.append(l.c(n.c(bitmap), bitmap.getConfig()));
                        Log.v("LruBitmapPool", sb.toString());
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        a();
                    }
                    d(this.f4329e);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb2 = new StringBuilder("Reject bitmap from pool, bitmap: ");
                this.b.getClass();
                sb2.append(l.c(n.c(bitmap), bitmap.getConfig()));
                sb2.append(", is mutable: ");
                sb2.append(bitmap.isMutable());
                sb2.append(", is allowed config: ");
                sb2.append(this.f4327c.contains(bitmap.getConfig()));
                Log.v("LruBitmapPool", sb2.toString());
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p016g0.b
    public final void k(int i3) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + i3);
        }
        if (i3 >= 40 || i3 >= 20) {
            o();
        } else if (i3 >= 20 || i3 == 15) {
            d(this.f4329e / 2);
        }
    }

    @Override // p016g0.b
    public final void o() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        d(0L);
    }
}
