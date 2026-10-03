package p028k1;

import com.google.gson.reflect.TypeToken;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import p023i1.l;
import p023i1.y;
import p023i1.z;
import p1.a;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class f extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public y f4965a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f4966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l f4967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TypeToken f4968e;
    public final /* synthetic */ g f;

    public f(g gVar, boolean z2, boolean z3, l lVar, TypeToken typeToken) {
        this.f = gVar;
        this.b = z2;
        this.f4966c = z3;
        this.f4967d = lVar;
        this.f4968e = typeToken;
    }

    @Override // p023i1.y
    public final Object a(a aVar) throws IOException {
        if (this.b) {
            aVar.B();
            return null;
        }
        y yVar = this.f4965a;
        if (yVar == null) {
            l lVar = this.f4967d;
            List list = lVar.f4439e;
            z zVar = this.f;
            if (!list.contains(zVar)) {
                zVar = lVar.f4438d;
            }
            Iterator it = list.iterator();
            boolean z2 = false;
            while (true) {
                boolean zHasNext = it.hasNext();
                TypeToken typeToken = this.f4968e;
                if (!zHasNext) {
                    throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
                }
                z zVar2 = (z) it.next();
                if (z2) {
                    y yVarA = zVar2.a(lVar, typeToken);
                    if (yVarA != null) {
                        this.f4965a = yVarA;
                        yVar = yVarA;
                    }
                } else if (zVar2 == zVar) {
                    z2 = true;
                }
            }
        }
        return yVar.a(aVar);
    }

    @Override // p023i1.y
    public final void b(b bVar, Object obj) throws IOException {
        if (this.f4966c) {
            bVar.i();
            return;
        }
        y yVar = this.f4965a;
        if (yVar == null) {
            l lVar = this.f4967d;
            List list = lVar.f4439e;
            z zVar = this.f;
            if (!list.contains(zVar)) {
                zVar = lVar.f4438d;
            }
            Iterator it = list.iterator();
            boolean z2 = false;
            while (true) {
                boolean zHasNext = it.hasNext();
                TypeToken typeToken = this.f4968e;
                if (!zHasNext) {
                    throw new IllegalArgumentException("GSON cannot serialize " + typeToken);
                }
                z zVar2 = (z) it.next();
                if (z2) {
                    y yVarA = zVar2.a(lVar, typeToken);
                    if (yVarA != null) {
                        this.f4965a = yVarA;
                        yVar = yVarA;
                    }
                } else if (zVar2 == zVar) {
                    z2 = true;
                }
            }
        }
        yVar.b(bVar, obj);
    }
}
