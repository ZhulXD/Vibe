package p059x;

import p053v.d;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f5827h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5828i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p053v.a f5829j;

    @Override // p059x.c
    public final void f(d dVar, boolean z2) {
        int i3 = this.f5827h;
        this.f5828i = i3;
        if (z2) {
            if (i3 == 5) {
                this.f5828i = 1;
            } else if (i3 == 6) {
                this.f5828i = 0;
            }
        } else if (i3 == 5) {
            this.f5828i = 0;
        } else if (i3 == 6) {
            this.f5828i = 1;
        }
        if (dVar instanceof p053v.a) {
            ((p053v.a) dVar).f5425f0 = this.f5828i;
        }
    }

    public int getMargin() {
        return this.f5829j.f5427h0;
    }

    public int getType() {
        return this.f5827h;
    }

    public void setAllowsGoneWidget(boolean z2) {
        this.f5829j.f5426g0 = z2;
    }

    public void setDpMargin(int i3) {
        this.f5829j.f5427h0 = (int) ((i3 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i3) {
        this.f5829j.f5427h0 = i3;
    }

    public void setType(int i3) {
        this.f5827h = i3;
    }
}
