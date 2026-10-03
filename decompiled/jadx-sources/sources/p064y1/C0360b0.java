package p064y1;

import A1.n0;
import android.app.Activity;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: renamed from: y1.b0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0360b0 extends ContinuationImpl {
    public Activity b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f6192c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public n0 f6193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f6194e;
    public /* synthetic */ Object f;
    public final /* synthetic */ C0363c0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6195h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0360b0(C0363c0 c0363c0, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = c0363c0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.f6195h |= Integer.MIN_VALUE;
        return this.g.c(null, null, null, this);
    }
}
