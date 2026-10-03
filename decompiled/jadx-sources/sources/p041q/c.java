package p041q;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Iterator, Map.Entry {
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5243c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e f5245e;

    public c(e eVar) {
        this.f5245e = eVar;
        this.b = eVar.f5258d - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f5244d) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i3 = this.f5243c;
        e eVar = this.f5245e;
        return Intrinsics.areEqual(key, eVar.f(i3)) && Intrinsics.areEqual(entry.getValue(), eVar.j(this.f5243c));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f5244d) {
            return this.f5245e.f(this.f5243c);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f5244d) {
            return this.f5245e.j(this.f5243c);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5243c < this.b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f5244d) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i3 = this.f5243c;
        e eVar = this.f5245e;
        Object objF = eVar.f(i3);
        Object objJ = eVar.j(this.f5243c);
        return (objF == null ? 0 : objF.hashCode()) ^ (objJ != null ? objJ.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f5243c++;
        this.f5244d = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f5244d) {
            throw new IllegalStateException();
        }
        this.f5245e.h(this.f5243c);
        this.f5243c--;
        this.b--;
        this.f5244d = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f5244d) {
            return this.f5245e.i(this.f5243c, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
