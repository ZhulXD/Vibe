package com.bumptech.glide;

import A1.C0009b;
import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;
import p014f0.q;
import p014f0.r;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends ContextWrapper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f3206k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p016g0.g f3207a;
    public final q b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p043r.b f3208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Y0.e f3209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f3210e;
    public final p041q.e f;
    public final r g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0009b f3211h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3212i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p052u0.e f3213j;

    static {
        a aVar = new a();
        aVar.b = p057w0.b.f5611a;
        f3206k = aVar;
    }

    public e(Context context, p016g0.g gVar, com.bumptech.glide.manager.q qVar, p043r.b bVar, Y0.e eVar, p041q.e eVar2, List list, r rVar, C0009b c0009b) {
        super(context.getApplicationContext());
        this.f3207a = gVar;
        this.f3208c = bVar;
        this.f3209d = eVar;
        this.f3210e = list;
        this.f = eVar2;
        this.g = rVar;
        this.f3211h = c0009b;
        this.f3212i = 4;
        this.b = new q(qVar);
    }

    public final i a() {
        return (i) this.b.get();
    }
}
