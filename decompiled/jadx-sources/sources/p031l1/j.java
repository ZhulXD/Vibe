package p031l1;

import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p023i1.l;
import p023i1.p;
import p023i1.y;
import p036n1.c;
import p1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5052a;
    public final Field b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f5053c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f5054d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f5055e;
    public final /* synthetic */ Method f;
    public final /* synthetic */ boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ y f5056h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ l f5057i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ TypeToken f5058j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ boolean f5059k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ boolean f5060l;

    public j(String str, Field field, boolean z2, boolean z3, Method method, boolean z4, y yVar, l lVar, TypeToken typeToken, boolean z5, boolean z6) {
        this.f = method;
        this.g = z4;
        this.f5056h = yVar;
        this.f5057i = lVar;
        this.f5058j = typeToken;
        this.f5059k = z5;
        this.f5060l = z6;
        this.f5052a = str;
        this.b = field;
        this.f5053c = field.getName();
        this.f5054d = z2;
        this.f5055e = z3;
    }

    public final void a(b bVar, Object obj) throws IllegalAccessException {
        Object objInvoke;
        if (this.f5054d) {
            Method method = this.f;
            if (method != null) {
                try {
                    objInvoke = method.invoke(obj, null);
                } catch (InvocationTargetException e2) {
                    throw new p(E.b.m("Accessor ", c.d(method, false), " threw exception"), e2.getCause());
                }
            } else {
                objInvoke = this.b.get(obj);
            }
            if (objInvoke == obj) {
                return;
            }
            bVar.g(this.f5052a);
            boolean z2 = this.g;
            y gVar = this.f5056h;
            if (!z2) {
                gVar = new g(this.f5057i, gVar, this.f5058j.getType());
            }
            gVar.b(bVar, objInvoke);
        }
    }
}
