package p025j0;

import android.content.res.AssetManager;

/* JADX INFO: renamed from: j0.a, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0272a implements r {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetManager f4615c;

    public /* synthetic */ C0272a(AssetManager assetManager, int i3) {
        this.b = i3;
        this.f4615c = assetManager;
    }

    @Override // p025j0.r
    public final q l(y yVar) {
        switch (this.b) {
            case 0:
                break;
        }
        return new C0273b(this.f4615c, this);
    }
}
