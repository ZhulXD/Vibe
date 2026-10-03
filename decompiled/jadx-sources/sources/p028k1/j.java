package p028k1;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Iterator {
    public l b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f4972c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ m f4974e;
    public final /* synthetic */ int f;

    public j(m mVar, int i3) {
        this.f = i3;
        this.f4974e = mVar;
        this.b = mVar.g.f4978e;
        this.f4973d = mVar.f;
    }

    public final Object a() {
        return b();
    }

    public final l b() {
        l lVar = this.b;
        m mVar = this.f4974e;
        if (lVar == mVar.g) {
            throw new NoSuchElementException();
        }
        if (mVar.f != this.f4973d) {
            throw new ConcurrentModificationException();
        }
        this.b = lVar.f4978e;
        this.f4972c = lVar;
        return lVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b != this.f4974e.g;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f) {
            case 1:
                return b().g;
            default:
                return a();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        l lVar = this.f4972c;
        if (lVar == null) {
            throw new IllegalStateException();
        }
        m mVar = this.f4974e;
        mVar.c(lVar, true);
        this.f4972c = null;
        this.f4973d = mVar.f;
    }
}
