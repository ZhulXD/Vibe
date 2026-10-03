package p059x;

import android.view.ViewGroup;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5904a;
    public final k b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final j f5905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f5906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l f5907e;
    public HashMap f;

    public h() {
        k kVar = new k();
        kVar.f5969a = 0;
        kVar.b = 0;
        kVar.f5970c = 1.0f;
        kVar.f5971d = Float.NaN;
        this.b = kVar;
        j jVar = new j();
        jVar.f5966a = -1;
        jVar.b = -1;
        jVar.f5967c = Float.NaN;
        jVar.f5968d = Float.NaN;
        this.f5905c = jVar;
        i iVar = new i();
        iVar.f5933a = false;
        iVar.f5938d = -1;
        iVar.f5940e = -1;
        iVar.f = -1.0f;
        iVar.g = -1;
        iVar.f5944h = -1;
        iVar.f5946i = -1;
        iVar.f5948j = -1;
        iVar.f5949k = -1;
        iVar.f5950l = -1;
        iVar.f5951m = -1;
        iVar.f5952n = -1;
        iVar.f5953o = -1;
        iVar.f5954p = -1;
        iVar.f5955q = -1;
        iVar.f5956r = -1;
        iVar.f5957s = -1;
        iVar.f5958t = 0.5f;
        iVar.f5959u = 0.5f;
        iVar.f5960v = null;
        iVar.f5961w = -1;
        iVar.f5962x = 0;
        iVar.f5963y = 0.0f;
        iVar.f5964z = -1;
        iVar.f5909A = -1;
        iVar.f5910B = -1;
        iVar.f5911C = -1;
        iVar.f5912D = -1;
        iVar.f5913E = -1;
        iVar.f5914F = -1;
        iVar.f5915G = -1;
        iVar.f5916H = -1;
        iVar.f5917I = -1;
        iVar.f5918J = -1;
        iVar.K = -1;
        iVar.f5919L = -1;
        iVar.f5920M = -1;
        iVar.f5921N = -1;
        iVar.f5922O = -1.0f;
        iVar.f5923P = -1.0f;
        iVar.f5924Q = 0;
        iVar.f5925R = 0;
        iVar.f5926S = 0;
        iVar.f5927T = 0;
        iVar.f5928U = -1;
        iVar.f5929V = -1;
        iVar.f5930W = -1;
        iVar.f5931X = -1;
        iVar.f5932Y = 1.0f;
        iVar.Z = 1.0f;
        iVar.f5934a0 = -1;
        iVar.f5935b0 = 0;
        iVar.f5937c0 = -1;
        iVar.f5943g0 = false;
        iVar.f5945h0 = false;
        iVar.f5947i0 = true;
        this.f5906d = iVar;
        l lVar = new l();
        lVar.f5973a = 0.0f;
        lVar.b = 0.0f;
        lVar.f5974c = 0.0f;
        lVar.f5975d = 1.0f;
        lVar.f5976e = 1.0f;
        lVar.f = Float.NaN;
        lVar.g = Float.NaN;
        lVar.f5977h = 0.0f;
        lVar.f5978i = 0.0f;
        lVar.f5979j = 0.0f;
        lVar.f5980k = false;
        lVar.f5981l = 0.0f;
        this.f5907e = lVar;
        this.f = new HashMap();
    }

    public final void a(e eVar) {
        i iVar = this.f5906d;
        eVar.f5867d = iVar.g;
        eVar.f5869e = iVar.f5944h;
        eVar.f = iVar.f5946i;
        eVar.g = iVar.f5948j;
        eVar.f5873h = iVar.f5949k;
        eVar.f5875i = iVar.f5950l;
        eVar.f5877j = iVar.f5951m;
        eVar.f5879k = iVar.f5952n;
        eVar.f5881l = iVar.f5953o;
        eVar.f5885p = iVar.f5954p;
        eVar.f5886q = iVar.f5955q;
        eVar.f5887r = iVar.f5956r;
        eVar.f5888s = iVar.f5957s;
        ((ViewGroup.MarginLayoutParams) eVar).leftMargin = iVar.f5911C;
        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = iVar.f5912D;
        ((ViewGroup.MarginLayoutParams) eVar).topMargin = iVar.f5913E;
        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = iVar.f5914F;
        eVar.f5893x = iVar.f5921N;
        eVar.f5894y = iVar.f5920M;
        eVar.f5890u = iVar.f5918J;
        eVar.f5892w = iVar.f5919L;
        eVar.f5895z = iVar.f5958t;
        eVar.f5838A = iVar.f5959u;
        eVar.f5882m = iVar.f5961w;
        eVar.f5883n = iVar.f5962x;
        eVar.f5884o = iVar.f5963y;
        eVar.f5839B = iVar.f5960v;
        eVar.f5852P = iVar.f5964z;
        eVar.f5853Q = iVar.f5909A;
        eVar.f5842E = iVar.f5922O;
        eVar.f5841D = iVar.f5923P;
        eVar.f5844G = iVar.f5925R;
        eVar.f5843F = iVar.f5924Q;
        eVar.f5855S = iVar.f5943g0;
        eVar.f5856T = iVar.f5945h0;
        eVar.f5845H = iVar.f5926S;
        eVar.f5846I = iVar.f5927T;
        eVar.f5848L = iVar.f5928U;
        eVar.f5849M = iVar.f5929V;
        eVar.f5847J = iVar.f5930W;
        eVar.K = iVar.f5931X;
        eVar.f5850N = iVar.f5932Y;
        eVar.f5851O = iVar.Z;
        eVar.f5854R = iVar.f5910B;
        eVar.f5865c = iVar.f;
        eVar.f5862a = iVar.f5938d;
        eVar.b = iVar.f5940e;
        ((ViewGroup.MarginLayoutParams) eVar).width = iVar.b;
        ((ViewGroup.MarginLayoutParams) eVar).height = iVar.f5936c;
        String str = iVar.f5942f0;
        if (str != null) {
            eVar.f5857U = str;
        }
        eVar.setMarginStart(iVar.f5916H);
        eVar.setMarginEnd(iVar.f5915G);
        eVar.a();
    }

    public final Object clone() {
        h hVar = new h();
        i iVar = hVar.f5906d;
        iVar.getClass();
        i iVar2 = this.f5906d;
        iVar.f5933a = iVar2.f5933a;
        iVar.b = iVar2.b;
        iVar.f5936c = iVar2.f5936c;
        iVar.f5938d = iVar2.f5938d;
        iVar.f5940e = iVar2.f5940e;
        iVar.f = iVar2.f;
        iVar.g = iVar2.g;
        iVar.f5944h = iVar2.f5944h;
        iVar.f5946i = iVar2.f5946i;
        iVar.f5948j = iVar2.f5948j;
        iVar.f5949k = iVar2.f5949k;
        iVar.f5950l = iVar2.f5950l;
        iVar.f5951m = iVar2.f5951m;
        iVar.f5952n = iVar2.f5952n;
        iVar.f5953o = iVar2.f5953o;
        iVar.f5954p = iVar2.f5954p;
        iVar.f5955q = iVar2.f5955q;
        iVar.f5956r = iVar2.f5956r;
        iVar.f5957s = iVar2.f5957s;
        iVar.f5958t = iVar2.f5958t;
        iVar.f5959u = iVar2.f5959u;
        iVar.f5960v = iVar2.f5960v;
        iVar.f5961w = iVar2.f5961w;
        iVar.f5962x = iVar2.f5962x;
        iVar.f5963y = iVar2.f5963y;
        iVar.f5964z = iVar2.f5964z;
        iVar.f5909A = iVar2.f5909A;
        iVar.f5910B = iVar2.f5910B;
        iVar.f5911C = iVar2.f5911C;
        iVar.f5912D = iVar2.f5912D;
        iVar.f5913E = iVar2.f5913E;
        iVar.f5914F = iVar2.f5914F;
        iVar.f5915G = iVar2.f5915G;
        iVar.f5916H = iVar2.f5916H;
        iVar.f5917I = iVar2.f5917I;
        iVar.f5918J = iVar2.f5918J;
        iVar.K = iVar2.K;
        iVar.f5919L = iVar2.f5919L;
        iVar.f5920M = iVar2.f5920M;
        iVar.f5921N = iVar2.f5921N;
        iVar.f5922O = iVar2.f5922O;
        iVar.f5923P = iVar2.f5923P;
        iVar.f5924Q = iVar2.f5924Q;
        iVar.f5925R = iVar2.f5925R;
        iVar.f5926S = iVar2.f5926S;
        iVar.f5927T = iVar2.f5927T;
        iVar.f5928U = iVar2.f5928U;
        iVar.f5929V = iVar2.f5929V;
        iVar.f5930W = iVar2.f5930W;
        iVar.f5931X = iVar2.f5931X;
        iVar.f5932Y = iVar2.f5932Y;
        iVar.Z = iVar2.Z;
        iVar.f5934a0 = iVar2.f5934a0;
        iVar.f5935b0 = iVar2.f5935b0;
        iVar.f5937c0 = iVar2.f5937c0;
        iVar.f5942f0 = iVar2.f5942f0;
        int[] iArr = iVar2.f5939d0;
        if (iArr != null) {
            iVar.f5939d0 = Arrays.copyOf(iArr, iArr.length);
        } else {
            iVar.f5939d0 = null;
        }
        iVar.f5941e0 = iVar2.f5941e0;
        iVar.f5943g0 = iVar2.f5943g0;
        iVar.f5945h0 = iVar2.f5945h0;
        iVar.f5947i0 = iVar2.f5947i0;
        j jVar = hVar.f5905c;
        jVar.getClass();
        j jVar2 = this.f5905c;
        jVar2.getClass();
        jVar.f5966a = jVar2.f5966a;
        jVar.b = jVar2.b;
        jVar.f5968d = jVar2.f5968d;
        jVar.f5967c = jVar2.f5967c;
        k kVar = this.b;
        int i3 = kVar.f5969a;
        k kVar2 = hVar.b;
        kVar2.f5969a = i3;
        kVar2.f5970c = kVar.f5970c;
        kVar2.f5971d = kVar.f5971d;
        kVar2.b = kVar.b;
        l lVar = hVar.f5907e;
        lVar.getClass();
        l lVar2 = this.f5907e;
        lVar2.getClass();
        lVar.f5973a = lVar2.f5973a;
        lVar.b = lVar2.b;
        lVar.f5974c = lVar2.f5974c;
        lVar.f5975d = lVar2.f5975d;
        lVar.f5976e = lVar2.f5976e;
        lVar.f = lVar2.f;
        lVar.g = lVar2.g;
        lVar.f5977h = lVar2.f5977h;
        lVar.f5978i = lVar2.f5978i;
        lVar.f5979j = lVar2.f5979j;
        lVar.f5980k = lVar2.f5980k;
        lVar.f5981l = lVar2.f5981l;
        hVar.f5904a = this.f5904a;
        return hVar;
    }
}
