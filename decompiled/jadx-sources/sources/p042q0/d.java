package p042q0;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import p052u0.c;
import p054v0.f;
import p063y0.n;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements f {
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f5273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f5274e;
    public final int f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Bitmap f5275h;

    public d(Handler handler, int i3, long j2) {
        if (!n.i(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.b = Integer.MIN_VALUE;
        this.f5272c = Integer.MIN_VALUE;
        this.f5274e = handler;
        this.f = i3;
        this.g = j2;
    }

    @Override // p054v0.f
    public final void a(p052u0.f fVar) throws Throwable {
        fVar.l(this.b, this.f5272c);
    }

    @Override // p054v0.f
    public final c f() {
        return this.f5273d;
    }

    @Override // p054v0.f
    public final void g(Drawable drawable) {
        this.f5275h = null;
    }

    @Override // p054v0.f
    public final void h(Object obj) {
        this.f5275h = (Bitmap) obj;
        Handler handler = this.f5274e;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.g);
    }

    @Override // p054v0.f
    public final void i(c cVar) {
        this.f5273d = cVar;
    }

    @Override // com.bumptech.glide.manager.i
    public final void c() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.i
    public final void onStart() {
    }

    @Override // p054v0.f
    public final void b(Drawable drawable) {
    }

    @Override // p054v0.f
    public final void d(p052u0.f fVar) {
    }

    @Override // p054v0.f
    public final void e(Drawable drawable) {
    }
}
