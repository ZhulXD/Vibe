package A1;

import C1.A1;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.ConnectivityManager;
import androidx.core.view.MotionEventCompat;
import java.io.InputStream;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import p025j0.C0273b;

/* JADX INFO: renamed from: A1.h, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0021h implements androidx.emoji2.text.i, p063y0.g, p025j0.r {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f192c;

    public /* synthetic */ C0021h(Context context, int i3, boolean z2) {
        this.b = i3;
        this.f192c = context;
    }

    @Override // androidx.emoji2.text.i
    public void a(com.bumptech.glide.c cVar) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new androidx.emoji2.text.a("EmojiCompatInitializer"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new A1(this, cVar, threadPoolExecutor, 5));
    }

    @Override // p063y0.g
    public Object get() {
        return (ConnectivityManager) this.f192c.getSystemService("connectivity");
    }

    @Override // p025j0.r
    public p025j0.q l(p025j0.y yVar) {
        switch (this.b) {
            case 5:
                return new C0273b(this.f192c, this);
            case 6:
                return new C0273b(this.f192c, this);
            case 7:
                return new C0273b(this.f192c, this);
            case 8:
                return new p025j0.m(this.f192c, 0);
            case 9:
                return new C0273b(this.f192c, yVar.a(Integer.class, AssetFileDescriptor.class));
            case 10:
                return new C0273b(this.f192c, yVar.a(Integer.class, InputStream.class));
            case MotionEventCompat.AXIS_Z /* 11 */:
                return new p025j0.m(this.f192c, 1);
            default:
                return new p025j0.m(this.f192c, 2);
        }
    }

    public C0021h(Context context, int i3) {
        this.b = i3;
        switch (i3) {
            case 1:
                this.f192c = context.getApplicationContext();
                break;
            case 2:
                this.f192c = context.getApplicationContext();
                break;
            default:
                Intrinsics.checkNotNullParameter(context, "context");
                this.f192c = context;
                break;
        }
    }
}
