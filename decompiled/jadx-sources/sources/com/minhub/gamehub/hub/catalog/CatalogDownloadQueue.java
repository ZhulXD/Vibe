package com.minhub.gamehub.hub.catalog;

import A1.C0035p;
import A1.H;
import A1.RunnableC0034o;
import C1.K;
import T1.k;
import android.content.Context;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 $2\u00020\u0001:\u0001$B[\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012*\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0004\u0012\u00020\u000b0\u0005\u0012\u001a\b\u0002\u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\r\u0012\u0004\u0012\u00020\n0\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0018\u001a\u00020\u0007J\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013J \u0010\u001a\u001a\u00020\n2\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0004\u0012\u00020\n0\bJ\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0006J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001e\u001a\u00020\u0007J \u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J$\u0010!\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00072\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\bH\u0002J(\u0010#\u001a\u00020\n2\u001e\u0010\"\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\bH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b\u0012\u0004\u0012\u00020\u000b0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\f\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\r\u0012\u0004\u0012\u00020\n0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0011\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0004\u0012\u00020\n0\b0\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;", "", "appContext", "Landroid/content/Context;", "runDownload", "Lkotlin/Function3;", "Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "", "Lkotlin/Function1;", "", "", "", "launch", "Lkotlin/Function0;", "<init>", "(Landroid/content/Context;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;)V", "lock", "listeners", "", "", "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;", "jobs", "enqueue", "item", "selectedUrl", "getJobs", "observe", "listener", "jobForItem", "jobForUrl", "url", "runJob", "jobId", "updateJob", "transform", "updateJobs", "Companion", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCatalogDownloadQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogDownloadQueue.kt\ncom/minhub/gamehub/hub/catalog/CatalogDownloadQueue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,122:1\n1#2:123\n295#3:124\n1761#3,3:125\n296#3:128\n295#3,2:129\n1869#3,2:131\n827#3:133\n855#3,2:134\n1563#3:136\n1634#3,3:137\n*S KotlinDebug\n*F\n+ 1 CatalogDownloadQueue.kt\ncom/minhub/gamehub/hub/catalog/CatalogDownloadQueue\n*L\n46#1:124\n46#1:125,3\n46#1:128\n49#1:129,2\n105#1:131,2\n25#1:133\n25#1:134,2\n95#1:136\n95#1:137,3\n*E\n"})
public final class CatalogDownloadQueue {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile CatalogDownloadQueue INSTANCE;
    private final Context appContext;
    private List<CatalogDownloadJob> jobs;
    private final Function1<Function0<Unit>, Unit> launch;
    private final List<Function1<List<CatalogDownloadJob>, Unit>> listeners;
    private final Object lock;
    private final Function3<OnlineCatalogItem, String, Function1<? super Integer, Unit>, Long> runDownload;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;", "getInstance", "context", "Landroid/content/Context;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCatalogDownloadQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogDownloadQueue.kt\ncom/minhub/gamehub/hub/catalog/CatalogDownloadQueue$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,122:1\n1#2:123\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final long getInstance$lambda$2$lambda$0(Context context, OnlineCatalogItem item, String selectedUrl, Function1 onProgress) {
            Intrinsics.checkNotNullParameter(item, "item");
            Intrinsics.checkNotNullParameter(selectedUrl, "selectedUrl");
            Intrinsics.checkNotNullParameter(onProgress, "onProgress");
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            return OnlineCatalogImportSupportKt.importOnlineCatalogItem(applicationContext, item, selectedUrl, onProgress);
        }

        public final CatalogDownloadQueue getInstance(final Context context) {
            CatalogDownloadQueue catalogDownloadQueue;
            Intrinsics.checkNotNullParameter(context, "context");
            CatalogDownloadQueue catalogDownloadQueue2 = CatalogDownloadQueue.INSTANCE;
            if (catalogDownloadQueue2 != null) {
                return catalogDownloadQueue2;
            }
            synchronized (this) {
                catalogDownloadQueue = CatalogDownloadQueue.INSTANCE;
                if (catalogDownloadQueue == null) {
                    CatalogDownloadQueue catalogDownloadQueue3 = new CatalogDownloadQueue(context.getApplicationContext(), new Function3() { // from class: com.minhub.gamehub.hub.catalog.f
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj, Object obj2, Object obj3) {
                            return Long.valueOf(CatalogDownloadQueue.Companion.getInstance$lambda$2$lambda$0(context, (OnlineCatalogItem) obj, (String) obj2, (Function1) obj3));
                        }
                    }, null, 4, null);
                    CatalogDownloadQueue.INSTANCE = catalogDownloadQueue3;
                    catalogDownloadQueue = catalogDownloadQueue3;
                }
            }
            return catalogDownloadQueue;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CatalogDownloadQueue(Context context, Function3<? super OnlineCatalogItem, ? super String, ? super Function1<? super Integer, Unit>, Long> runDownload, Function1<? super Function0<Unit>, Unit> launch) {
        Intrinsics.checkNotNullParameter(runDownload, "runDownload");
        Intrinsics.checkNotNullParameter(launch, "launch");
        this.appContext = context;
        this.runDownload = runDownload;
        this.launch = launch;
        this.lock = new Object();
        this.listeners = new ArrayList();
        this.jobs = CollectionsKt.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        new Thread(new RunnableC0034o(3, block), "catalog-download").start();
        return Unit.INSTANCE;
    }

    public static /* synthetic */ CatalogDownloadJob enqueue$default(CatalogDownloadQueue catalogDownloadQueue, OnlineCatalogItem onlineCatalogItem, String str, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            str = onlineCatalogItem.getZipUrl();
        }
        return catalogDownloadQueue.enqueue(onlineCatalogItem, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List enqueue$lambda$3(CatalogDownloadJob catalogDownloadJob, List current) {
        Intrinsics.checkNotNullParameter(current, "current");
        List listListOf = CollectionsKt.listOf(catalogDownloadJob);
        ArrayList arrayList = new ArrayList();
        for (Object obj : current) {
            CatalogDownloadJob catalogDownloadJob2 = (CatalogDownloadJob) obj;
            if (!Intrinsics.areEqual(catalogDownloadJob2.getSelectedUrl(), catalogDownloadJob.getSelectedUrl()) || catalogDownloadJob2.getState() == CatalogDownloadState.FAILED) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.plus((Collection) listListOf, (Iterable) arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enqueue$lambda$5(CatalogDownloadQueue catalogDownloadQueue, CatalogDownloadJob catalogDownloadJob, OnlineCatalogItem onlineCatalogItem, String str) {
        catalogDownloadQueue.runJob(catalogDownloadJob.getId(), onlineCatalogItem, str);
        return Unit.INSTANCE;
    }

    private final void runJob(String jobId, OnlineCatalogItem item, String selectedUrl) {
        HostLimitTracker hostLimitTracker;
        HostLimitTracker.Host hostDetectLimit;
        updateJob(jobId, new L1.d(26));
        try {
            final long jLongValue = this.runDownload.invoke(item, selectedUrl, new H(4, this, jobId)).longValue();
            updateJob(jobId, new Function1() { // from class: com.minhub.gamehub.hub.catalog.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CatalogDownloadQueue.runJob$lambda$14(jLongValue, (CatalogDownloadJob) obj);
                }
            });
        } catch (Throwable th) {
            String simpleName = th.getClass().getSimpleName();
            String message = th.getMessage();
            StringBuilder sbJ = kotlin.collections.unsigned.a.j("Job ", jobId, " FAILED: ", simpleName, ": ");
            sbJ.append(message);
            Log.e("MinHub-Job", sbJ.toString(), th);
            Context context = this.appContext;
            if (context != null && (hostDetectLimit = (hostLimitTracker = HostLimitTracker.INSTANCE).detectLimit(selectedUrl, th.getMessage())) != null) {
                hostLimitTracker.markLimited(context, hostDetectLimit);
            }
            updateJob(jobId, new C0035p(14, th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CatalogDownloadJob runJob$lambda$11(CatalogDownloadJob current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return CatalogDownloadJob.copy$default(current, null, null, null, null, RangesKt.coerceAtLeast(current.getProgress(), 1), CatalogDownloadState.RUNNING, null, null, 79, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runJob$lambda$13(CatalogDownloadQueue catalogDownloadQueue, String str, int i3) {
        catalogDownloadQueue.updateJob(str, new k(i3, 1));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CatalogDownloadJob runJob$lambda$13$lambda$12(int i3, CatalogDownloadJob current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return CatalogDownloadJob.copy$default(current, null, null, null, null, RangesKt.coerceIn(i3, current.getProgress(), 99), CatalogDownloadState.RUNNING, null, null, 207, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CatalogDownloadJob runJob$lambda$14(long j2, CatalogDownloadJob current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return CatalogDownloadJob.copy$default(current, null, null, null, null, 100, CatalogDownloadState.COMPLETED, Long.valueOf(j2), null, 15, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CatalogDownloadJob runJob$lambda$17(Throwable th, CatalogDownloadJob current) {
        Intrinsics.checkNotNullParameter(current, "current");
        return CatalogDownloadJob.copy$default(current, null, null, null, null, 0, CatalogDownloadState.FAILED, null, kotlin.collections.unsigned.a.h(th.getClass().getSimpleName(), ": ", th.getMessage()), 95, null);
    }

    private final void updateJob(String jobId, Function1<? super CatalogDownloadJob, CatalogDownloadJob> transform) {
        updateJobs(new H(5, jobId, transform));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List updateJob$lambda$19(String str, Function1 function1, List current) {
        Intrinsics.checkNotNullParameter(current, "current");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(current, 10));
        Iterator it = current.iterator();
        while (it.hasNext()) {
            CatalogDownloadJob catalogDownloadJob = (CatalogDownloadJob) it.next();
            if (Intrinsics.areEqual(catalogDownloadJob.getId(), str)) {
                catalogDownloadJob = (CatalogDownloadJob) function1.invoke(catalogDownloadJob);
            }
            arrayList.add(catalogDownloadJob);
        }
        return arrayList;
    }

    private final void updateJobs(Function1<? super List<CatalogDownloadJob>, ? extends List<CatalogDownloadJob>> transform) {
        Pair pair;
        synchronized (this.lock) {
            List<CatalogDownloadJob> listInvoke = transform.invoke(this.jobs);
            this.jobs = listInvoke;
            pair = TuplesKt.to(CollectionsKt.toList(this.listeners), listInvoke);
        }
        Iterator it = ((Iterable) pair.getFirst()).iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(pair.getSecond());
        }
    }

    public final CatalogDownloadJob enqueue(OnlineCatalogItem item, String selectedUrl) {
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(selectedUrl, "selectedUrl");
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        CatalogDownloadJob catalogDownloadJob = new CatalogDownloadJob(string, item.getTitle(), item.getZipUrl(), selectedUrl, 0, CatalogDownloadState.QUEUED, null, null, 192, null);
        updateJobs(new C0035p(13, catalogDownloadJob));
        Context context = this.appContext;
        if (context != null) {
            DownloadForegroundService.INSTANCE.start(context);
        }
        this.launch.invoke(new K(1, this, catalogDownloadJob, item, selectedUrl));
        return catalogDownloadJob;
    }

    public final List<CatalogDownloadJob> getJobs() {
        List<CatalogDownloadJob> list;
        synchronized (this.lock) {
            list = this.jobs;
        }
        return list;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0056 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:? A[LOOP:0: B:3:0x000d->B:25:?, LOOP_END, SYNTHETIC] */
    public final CatalogDownloadJob jobForItem(OnlineCatalogItem item) {
        Object next;
        Intrinsics.checkNotNullParameter(item, "item");
        Iterator<T> it = getJobs().iterator();
        while (it.hasNext()) {
            next = it.next();
            CatalogDownloadJob catalogDownloadJob = (CatalogDownloadJob) next;
            List<DownloadLink> listEffectiveDownloadLinks = item.effectiveDownloadLinks();
            if (listEffectiveDownloadLinks == null || !listEffectiveDownloadLinks.isEmpty()) {
                Iterator<T> it2 = listEffectiveDownloadLinks.iterator();
                while (it2.hasNext()) {
                    if (Intrinsics.areEqual(((DownloadLink) it2.next()).getUrl(), catalogDownloadJob.getSelectedUrl())) {
                    }
                }
                if (Intrinsics.areEqual(catalogDownloadJob.getZipUrl(), item.getZipUrl())) {
                }
            } else if (Intrinsics.areEqual(catalogDownloadJob.getZipUrl(), item.getZipUrl())) {
            }
            return (CatalogDownloadJob) next;
        }
        next = null;
        return (CatalogDownloadJob) next;
    }

    public final CatalogDownloadJob jobForUrl(String url) {
        Object next;
        Intrinsics.checkNotNullParameter(url, "url");
        Iterator<T> it = getJobs().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((CatalogDownloadJob) next).getSelectedUrl(), url)) {
                return (CatalogDownloadJob) next;
            }
        }
        next = null;
        return (CatalogDownloadJob) next;
    }

    public final void observe(Function1<? super List<CatalogDownloadJob>, Unit> listener) {
        List<CatalogDownloadJob> list;
        Intrinsics.checkNotNullParameter(listener, "listener");
        synchronized (this.lock) {
            this.listeners.add(listener);
            list = this.jobs;
        }
        listener.invoke(list);
    }

    public /* synthetic */ CatalogDownloadQueue(Context context, Function3 function3, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : context, function3, (i3 & 4) != 0 ? new L1.d(25) : function1);
    }
}
