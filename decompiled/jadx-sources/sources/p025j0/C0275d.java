package p025j0;

import android.util.Log;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import p063y0.b;

/* JADX INFO: renamed from: j0.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0275d implements e {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4619c;

    public /* synthetic */ C0275d(int i3, Object obj) {
        this.b = i3;
        this.f4619c = obj;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.b) {
            case 0:
                return ByteBuffer.class;
            default:
                return this.f4619c.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        int i3 = this.b;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i3 = this.b;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int d() {
        switch (this.b) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(g gVar, d dVar) {
        switch (this.b) {
            case 0:
                try {
                    dVar.e(b.a((File) this.f4619c));
                } catch (IOException e2) {
                    if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                        Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e2);
                    }
                    dVar.c(e2);
                    return;
                }
                break;
            default:
                dVar.e(this.f4619c);
                break;
        }
    }

    private final void c() {
    }

    private final void e() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
