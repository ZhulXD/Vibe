package V0;

import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends ResourcesCompat.FontCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p000a.a f2238a;
    public final /* synthetic */ d b;

    public b(d dVar, p000a.a aVar) {
        this.b = dVar;
        this.f2238a = aVar;
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    /* JADX INFO: renamed from: onFontRetrievalFailed */
    public final void lambda$callbackFailAsync$1(int i3) {
        this.b.f2252m = true;
        this.f2238a.w(i3);
    }

    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
    /* JADX INFO: renamed from: onFontRetrieved */
    public final void lambda$callbackSuccessAsync$0(Typeface typeface) {
        d dVar = this.b;
        dVar.f2253n = Typeface.create(typeface, dVar.f2244c);
        dVar.f2252m = true;
        this.f2238a.x(dVar.f2253n, false);
    }
}
