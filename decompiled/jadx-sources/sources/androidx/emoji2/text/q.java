package androidx.emoji2.text;

import C1.RunnableC0068g1;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class q implements i {
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FontRequest f2889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p f2890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2891e = new Object();
    public Handler f;
    public ThreadPoolExecutor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ThreadPoolExecutor f2892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.bumptech.glide.c f2893i;

    public q(Context context, FontRequest fontRequest) {
        Preconditions.checkNotNull(context, "Context cannot be null");
        Preconditions.checkNotNull(fontRequest, "FontRequest cannot be null");
        this.b = context.getApplicationContext();
        this.f2889c = fontRequest;
        this.f2890d = r.f2894d;
    }

    @Override // androidx.emoji2.text.i
    public final void a(com.bumptech.glide.c cVar) {
        Preconditions.checkNotNull(cVar, "LoaderCallback cannot be null");
        synchronized (this.f2891e) {
            this.f2893i = cVar;
        }
        synchronized (this.f2891e) {
            try {
                if (this.f2893i == null) {
                    return;
                }
                if (this.g == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new a("emojiCompat"));
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                    this.f2892h = threadPoolExecutor;
                    this.g = threadPoolExecutor;
                }
                this.g.execute(new RunnableC0068g1(8, this));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        synchronized (this.f2891e) {
            try {
                this.f2893i = null;
                Handler handler = this.f;
                if (handler != null) {
                    handler.removeCallbacks(null);
                }
                this.f = null;
                ThreadPoolExecutor threadPoolExecutor = this.f2892h;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.g = null;
                this.f2892h = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final FontsContractCompat.FontInfo c() {
        try {
            p pVar = this.f2890d;
            Context context = this.b;
            FontRequest fontRequest = this.f2889c;
            pVar.getClass();
            FontsContractCompat.FontFamilyResult fontFamilyResultFetchFonts = FontsContractCompat.fetchFonts(context, null, fontRequest);
            if (fontFamilyResultFetchFonts.getStatusCode() != 0) {
                throw new RuntimeException("fetchFonts failed (" + fontFamilyResultFetchFonts.getStatusCode() + ")");
            }
            FontsContractCompat.FontInfo[] fonts = fontFamilyResultFetchFonts.getFonts();
            if (fonts == null || fonts.length == 0) {
                throw new RuntimeException("fetchFonts failed (empty result)");
            }
            return fonts[0];
        } catch (PackageManager.NameNotFoundException e2) {
            throw new RuntimeException("provider not found", e2);
        }
    }
}
