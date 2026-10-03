package androidx.emoji2.text;

import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends com.bumptech.glide.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f2872c;

    public e(f fVar) {
        this.f2872c = fVar;
    }

    @Override // com.bumptech.glide.c
    public final void B(Throwable th) {
        this.f2872c.f2873a.d(th);
    }

    @Override // com.bumptech.glide.c
    public final void C(N1.w wVar) {
        f fVar = this.f2872c;
        fVar.f2874c = wVar;
        N1.w wVar2 = fVar.f2874c;
        j jVar = fVar.f2873a;
        fVar.b = new F.b(wVar2, jVar.g, jVar.f2882i, Build.VERSION.SDK_INT >= 34 ? m.a() : com.bumptech.glide.d.x());
        j jVar2 = fVar.f2873a;
        jVar2.getClass();
        ArrayList arrayList = new ArrayList();
        jVar2.f2877a.writeLock().lock();
        try {
            jVar2.f2878c = 1;
            arrayList.addAll(jVar2.b);
            jVar2.b.clear();
            jVar2.f2877a.writeLock().unlock();
            jVar2.f2879d.post(new T0.a(arrayList, jVar2.f2878c, (Throwable) null));
        } catch (Throwable th) {
            jVar2.f2877a.writeLock().unlock();
            throw th;
        }
    }
}
