package V1;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.Volatile;

/* JADX INFO: renamed from: V1.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0190f extends C0195k {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f2281c = AtomicIntegerFieldUpdater.newUpdater(C0190f.class, "_resumed");

    @Volatile
    private volatile int _resumed;

    public C0190f(C0189e c0189e, Throwable th, boolean z2) {
        super(th, z2);
        this._resumed = 0;
    }
}
