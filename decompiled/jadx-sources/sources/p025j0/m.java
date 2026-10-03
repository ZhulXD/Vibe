package p025j0;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.c;
import p009d0.i;
import p012e0.a;
import p033m0.E;
import p060x0.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4635a;
    public final Context b;

    public m(Context context, int i3) {
        this.f4635a = i3;
        switch (i3) {
            case 1:
                this.b = context.getApplicationContext();
                break;
            case 2:
                this.b = context.getApplicationContext();
                break;
            default:
                this.b = context;
                break;
        }
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        Long l2;
        switch (this.f4635a) {
            case 0:
                Uri uri = (Uri) obj;
                return new p(new b(uri), new l(0, this.b, uri));
            case 1:
                Uri uri2 = (Uri) obj;
                if (i3 == Integer.MIN_VALUE || i4 == Integer.MIN_VALUE || i3 > 512 || i4 > 384) {
                    return null;
                }
                b bVar = new b(uri2);
                Context context = this.b;
                return new p(bVar, p012e0.b.c(context, uri2, new a(context.getContentResolver(), 0)));
            default:
                Uri uri3 = (Uri) obj;
                if (i3 == Integer.MIN_VALUE || i4 == Integer.MIN_VALUE || i3 > 512 || i4 > 384 || (l2 = (Long) iVar.c(E.f5111d)) == null || l2.longValue() != -1) {
                    return null;
                }
                b bVar2 = new b(uri3);
                Context context2 = this.b;
                return new p(bVar2, p012e0.b.c(context2, uri3, new a(context2.getContentResolver(), 1)));
        }
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        switch (this.f4635a) {
            case 0:
                return c.u((Uri) obj);
            case 1:
                Uri uri = (Uri) obj;
                return c.u(uri) && !uri.getPathSegments().contains("video");
            default:
                Uri uri2 = (Uri) obj;
                return c.u(uri2) && uri2.getPathSegments().contains("video");
        }
    }
}
