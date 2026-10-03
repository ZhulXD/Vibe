package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b implements e {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f3239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Comparable f3240d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f3241e;

    public /* synthetic */ b(int i3, Comparable comparable, Object obj) {
        this.b = i3;
        this.f3241e = obj;
        this.f3240d = comparable;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        switch (this.b) {
            case 0:
                Object obj = this.f3239c;
                if (obj != null) {
                    try {
                        g(obj);
                    } catch (IOException unused) {
                        return;
                    }
                    break;
                }
                break;
            default:
                Object obj2 = this.f3239c;
                if (obj2 != null) {
                    try {
                        g(obj2);
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        int i3 = this.b;
    }

    @Override // com.bumptech.glide.load.data.e
    public final int d() {
        switch (this.b) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(com.bumptech.glide.g gVar, d dVar) {
        switch (this.b) {
            case 0:
                try {
                    Object objH = h((AssetManager) this.f3241e, (String) this.f3240d);
                    this.f3239c = objH;
                    dVar.e(objH);
                } catch (IOException e2) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                        Log.d("AssetPathFetcher", "Failed to load data from asset manager", e2);
                    }
                    dVar.c(e2);
                    return;
                }
                break;
            default:
                try {
                    Object objI = i((Uri) this.f3240d, (ContentResolver) this.f3241e);
                    this.f3239c = objI;
                    dVar.e(objI);
                } catch (FileNotFoundException e3) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                        Log.d("LocalUriFetcher", "Failed to open Uri", e3);
                    }
                    dVar.c(e3);
                }
                break;
        }
    }

    public abstract void g(Object obj);

    public abstract Object h(AssetManager assetManager, String str);

    public abstract Object i(Uri uri, ContentResolver contentResolver);

    private final void c() {
    }

    private final void e() {
    }
}
