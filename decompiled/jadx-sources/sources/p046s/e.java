package p046s;

import com.bumptech.glide.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends d {
    @Override // com.bumptech.glide.d
    public final void U(f fVar, f fVar2) {
        fVar.b = fVar2;
    }

    @Override // com.bumptech.glide.d
    public final void V(f fVar, Thread thread) {
        fVar.f5311a = thread;
    }

    @Override // com.bumptech.glide.d
    public final boolean g(g gVar, c cVar, c cVar2) {
        synchronized (gVar) {
            try {
                if (gVar.f5314c != cVar) {
                    return false;
                }
                gVar.f5314c = cVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean h(g gVar, Object obj, Object obj2) {
        synchronized (gVar) {
            try {
                if (gVar.b != obj) {
                    return false;
                }
                gVar.b = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean i(g gVar, f fVar, f fVar2) {
        synchronized (gVar) {
            try {
                if (gVar.f5315d != fVar) {
                    return false;
                }
                gVar.f5315d = fVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
