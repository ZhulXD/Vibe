package P;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1759a;
    public int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1761d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1762e;
    public boolean f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1763h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1764i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1765j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1766k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1767l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f1768m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1769n;

    public final void a(int i3) {
        if ((this.f1761d & i3) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i3) + " but it is " + Integer.toBinaryString(this.f1761d));
    }

    public final int b() {
        return this.g ? this.b - this.f1760c : this.f1762e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f1759a + ", mData=null, mItemCount=" + this.f1762e + ", mIsMeasuring=" + this.f1764i + ", mPreviousLayoutItemCount=" + this.b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f1760c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.g + ", mRunSimpleAnimations=" + this.f1765j + ", mRunPredictiveAnimations=" + this.f1766k + '}';
    }
}
