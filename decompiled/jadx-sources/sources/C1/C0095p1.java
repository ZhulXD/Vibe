package C1;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.p1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0095p1 extends P.W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f669e;

    public C0095p1(ArrayList urls, boolean z2) {
        Intrinsics.checkNotNullParameter(urls, "urls");
        this.f668d = urls;
        this.f669e = z2;
    }

    @Override // P.W
    public final int a() {
        return this.f668d.size();
    }

    @Override // P.W
    public final void e(P.y0 y0Var, int i3) {
        C0092o1 holder = (C0092o1) y0Var;
        l2 l2Var = holder.f665u;
        Intrinsics.checkNotNullParameter(holder, "holder");
        Object obj = this.f668d.get(i3);
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        String str = (String) obj;
        Object objG = str;
        if (!this.f669e) {
            objG = com.bumptech.glide.c.g(str);
        }
        com.bumptech.glide.n nVarC = com.bumptech.glide.b.c(l2Var);
        nVarC.getClass();
        new com.bumptech.glide.k(nVarC.b, nVarC, Drawable.class, nVarC.f3274c).x(objG).v(l2Var);
    }

    @Override // P.W
    public final P.y0 f(ViewGroup parent) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        l2 l2Var = new l2(context);
        l2Var.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        return new C0092o1(l2Var);
    }
}
