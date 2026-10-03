package p014f0;

import com.bumptech.glide.load.data.d;
import java.io.File;
import java.util.List;
import p009d0.f;
import p025j0.p;
import p025j0.q;

/* JADX INFO: renamed from: f0.d, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0255d implements InterfaceC0258g, d {
    public final List b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0259h f4206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC0257f f4207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4208e = -1;
    public f f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4209h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile p f4210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f4211j;

    public C0255d(List list, C0259h c0259h, InterfaceC0257f interfaceC0257f) {
        this.b = list;
        this.f4206c = c0259h;
        this.f4207d = interfaceC0257f;
    }

    @Override // p014f0.InterfaceC0258g
    public final boolean b() {
        while (true) {
            List list = this.g;
            boolean z2 = false;
            if (list != null && this.f4209h < list.size()) {
                this.f4210i = null;
                while (!z2 && this.f4209h < this.g.size()) {
                    List list2 = this.g;
                    int i3 = this.f4209h;
                    this.f4209h = i3 + 1;
                    q qVar = (q) list2.get(i3);
                    File file = this.f4211j;
                    C0259h c0259h = this.f4206c;
                    this.f4210i = qVar.a(file, c0259h.f4216e, c0259h.f, c0259h.f4218i);
                    if (this.f4210i != null && this.f4206c.c(this.f4210i.f4638c.a()) != null) {
                        this.f4210i.f4638c.f(this.f4206c.f4224o, this);
                        z2 = true;
                    }
                }
                return z2;
            }
            int i4 = this.f4208e + 1;
            this.f4208e = i4;
            if (i4 >= this.b.size()) {
                return false;
            }
            f fVar = (f) this.b.get(this.f4208e);
            C0259h c0259h2 = this.f4206c;
            File fileH = c0259h2.f4217h.a().h(new C0256e(fVar, c0259h2.f4223n));
            this.f4211j = fileH;
            if (fileH != null) {
                this.f = fVar;
                this.g = this.f4206c.f4214c.a().f(fileH);
                this.f4209h = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void c(Exception exc) {
        this.f4207d.a(this.f, exc, this.f4210i.f4638c, 3);
    }

    @Override // p014f0.InterfaceC0258g
    public final void cancel() {
        p pVar = this.f4210i;
        if (pVar != null) {
            pVar.f4638c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void e(Object obj) {
        this.f4207d.c(this.f, obj, this.f4210i.f4638c, 3, this.f);
    }
}
