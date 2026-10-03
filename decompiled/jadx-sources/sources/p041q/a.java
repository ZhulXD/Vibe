package p041q;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMutableIterator;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Iterator, KMutableIterator {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5240c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5241d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5242e;
    public final /* synthetic */ Object f;

    public a(int i3) {
        this.b = i3;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5240c < this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object objF;
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i3 = this.f5240c;
        switch (this.f5242e) {
            case 0:
                objF = ((e) this.f).f(i3);
                break;
            case 1:
                objF = ((e) this.f).j(i3);
                break;
            default:
                objF = ((f) this.f).f5247c[i3];
                break;
        }
        this.f5240c++;
        this.f5241d = true;
        return objF;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f5241d) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i3 = this.f5240c - 1;
        this.f5240c = i3;
        switch (this.f5242e) {
            case 0:
                ((e) this.f).h(i3);
                break;
            case 1:
                ((e) this.f).h(i3);
                break;
            default:
                ((f) this.f).a(i3);
                break;
        }
        this.b--;
        this.f5241d = false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(f fVar) {
        this(fVar.f5248d);
        this.f5242e = 2;
        this.f = fVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(e eVar, int i3) {
        this(eVar.f5258d);
        this.f5242e = i3;
        switch (i3) {
            case 1:
                this.f = eVar;
                this(eVar.f5258d);
                break;
            default:
                this.f = eVar;
                break;
        }
    }
}
