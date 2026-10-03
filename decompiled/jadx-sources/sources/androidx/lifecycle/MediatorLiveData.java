package androidx.lifecycle;

import java.util.Iterator;
import java.util.Map;
import p032m.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MediatorLiveData<T> extends MutableLiveData<T> {
    private f mSources;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class Source<V> implements Observer<V> {
        final LiveData<V> mLiveData;
        final Observer<? super V> mObserver;
        int mVersion = -1;

        public Source(LiveData<V> liveData, Observer<? super V> observer) {
            this.mLiveData = liveData;
            this.mObserver = observer;
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(V v2) {
            if (this.mVersion != this.mLiveData.getVersion()) {
                this.mVersion = this.mLiveData.getVersion();
                this.mObserver.onChanged(v2);
            }
        }

        public void plug() {
            this.mLiveData.observeForever(this);
        }

        public void unplug() {
            this.mLiveData.removeObserver(this);
        }
    }

    public MediatorLiveData() {
        this.mSources = new f();
    }

    public <S> void addSource(LiveData<S> liveData, Observer<? super S> observer) {
        if (liveData == null) {
            throw new NullPointerException("source cannot be null");
        }
        Source source = new Source(liveData, observer);
        Source source2 = (Source) this.mSources.b(liveData, source);
        if (source2 != null && source2.mObserver != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        }
        if (source2 == null && hasActiveObservers()) {
            source.plug();
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        Iterator it = this.mSources.iterator();
        while (true) {
            p032m.b bVar = (p032m.b) it;
            if (!bVar.hasNext()) {
                return;
            } else {
                ((Source) ((Map.Entry) bVar.next()).getValue()).plug();
            }
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void onInactive() {
        Iterator it = this.mSources.iterator();
        while (true) {
            p032m.b bVar = (p032m.b) it;
            if (!bVar.hasNext()) {
                return;
            } else {
                ((Source) ((Map.Entry) bVar.next()).getValue()).unplug();
            }
        }
    }

    public <S> void removeSource(LiveData<S> liveData) {
        Source source = (Source) this.mSources.c(liveData);
        if (source != null) {
            source.unplug();
        }
    }

    public MediatorLiveData(T t2) {
        super(t2);
        this.mSources = new f();
    }
}
