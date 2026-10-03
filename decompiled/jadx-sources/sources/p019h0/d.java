package p019h0;

import A1.C0009b;
import A1.C0013d;
import F.b;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import p003b0.c;
import p003b0.e;
import p009d0.f;
import p009d0.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f4362c;
    public e f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0013d f4364e = new C0013d(15);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f4363d = 262144000;
    public final i b = new i();

    public d(File file) {
        this.f4362c = file;
    }

    public final synchronized e a() {
        try {
            if (this.f == null) {
                this.f = e.h(this.f4362c, this.f4363d);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f;
    }

    @Override // p019h0.a
    public final File h(f fVar) {
        String strA = this.b.a(fVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strA + " for for Key: " + fVar);
        }
        try {
            C0009b c0009bF = a().f(strA);
            if (c0009bF != null) {
                return ((File[]) c0009bF.b)[0];
            }
            return null;
        } catch (IOException e2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e2);
            return null;
        }
    }

    @Override // p019h0.a
    public final void j(f fVar, b bVar) {
        b bVar2;
        String strA = this.b.a(fVar);
        C0013d c0013d = this.f4364e;
        synchronized (c0013d) {
            bVar2 = (b) ((HashMap) c0013d.f177c).get(strA);
            if (bVar2 == null) {
                c cVar = (c) c0013d.f178d;
                synchronized (cVar.f4361a) {
                    bVar2 = (b) cVar.f4361a.poll();
                }
                if (bVar2 == null) {
                    bVar2 = new b();
                }
                ((HashMap) c0013d.f177c).put(strA, bVar2);
            }
            bVar2.b++;
        }
        bVar2.f4360a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strA + " for for Key: " + fVar);
            }
            try {
                e eVarA = a();
                if (eVarA.f(strA) == null) {
                    c cVarD = eVarA.d(strA);
                    if (cVarD == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(strA));
                    }
                    try {
                        if (((p009d0.b) bVar.f943c).p(bVar.f944d, cVarD.b(), (i) bVar.f945e)) {
                            e.a((e) cVarD.f3079d, cVarD, true);
                            cVarD.f3077a = true;
                        }
                        if (!cVarD.f3077a) {
                            try {
                                cVarD.a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!cVarD.f3077a) {
                            try {
                                cVarD.a();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e2) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e2);
                }
            }
            this.f4364e.B(strA);
        } catch (Throwable th2) {
            this.f4364e.B(strA);
            throw th2;
        }
    }
}
