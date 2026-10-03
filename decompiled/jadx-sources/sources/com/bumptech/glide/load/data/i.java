package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.HashMap;
import p033m0.x;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i implements g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f3246d = new h(0);
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f3247c;

    public i() {
        this.b = 0;
        this.f3247c = new HashMap();
    }

    @Override // com.bumptech.glide.load.data.g
    public Object a() {
        switch (this.b) {
            case 1:
                return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f3247c).rewind();
            case 2:
                return this.f3247c;
            default:
                x xVar = (x) this.f3247c;
                xVar.reset();
                return xVar;
        }
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
        switch (this.b) {
            case 1:
            case 2:
                break;
            default:
                ((x) this.f3247c).b();
                break;
        }
    }

    public ParcelFileDescriptor e() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f3247c).rewind();
    }

    public i(InputStream inputStream, p016g0.g gVar) {
        this.b = 3;
        x xVar = new x(inputStream, gVar);
        this.f3247c = xVar;
        xVar.mark(5242880);
    }

    public i(ParcelFileDescriptor parcelFileDescriptor) {
        this.b = 1;
        this.f3247c = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public i(Object obj) {
        this.b = 2;
        this.f3247c = obj;
    }

    private final void c() {
    }

    private final void d() {
    }
}
