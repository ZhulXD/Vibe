package p025j0;

import A1.C0021h;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.load.data.k;
import java.util.List;
import p009d0.i;
import p038o0.d;
import p060x0.b;

/* JADX INFO: renamed from: j0.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0273b implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4616a = 1;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4617c;

    public C0273b(AssetManager assetManager, C0272a c0272a) {
        this.f4617c = assetManager;
        this.b = c0272a;
    }

    @Override // p025j0.q
    public final p a(Object obj, int i3, int i4, i iVar) {
        k kVar;
        Uri uri;
        switch (this.f4616a) {
            case 0:
                Uri uri2 = (Uri) obj;
                String strSubstring = uri2.toString().substring(22);
                b bVar = new b(uri2);
                AssetManager assetManager = (AssetManager) this.f4617c;
                switch (((C0272a) this.b).b) {
                    case 0:
                        kVar = new k(assetManager, strSubstring, 0);
                        break;
                    default:
                        kVar = new k(assetManager, strSubstring, 1);
                        break;
                }
                return new p(bVar, kVar);
            case 1:
                Integer num = (Integer) obj;
                Resources.Theme theme = (Resources.Theme) iVar.c(d.b);
                return new p(new b(num), new C0276e(theme, theme != null ? theme.getResources() : ((Context) this.f4617c).getResources(), (C0021h) this.b, num.intValue()));
            case 2:
                Integer num2 = (Integer) obj;
                Resources resources = (Resources) this.b;
                try {
                    uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + '/' + resources.getResourceTypeName(num2.intValue()) + '/' + resources.getResourceEntryName(num2.intValue()));
                    break;
                } catch (Resources.NotFoundException e2) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        Log.w("ResourceLoader", "Received invalid resource id: " + num2, e2);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((q) this.f4617c).a(uri, i3, i4, iVar);
            default:
                Uri uri3 = (Uri) obj;
                q qVar = (q) this.b;
                List<String> pathSegments = uri3.getPathSegments();
                p pVarA = null;
                if (pathSegments.size() == 1) {
                    try {
                        int i5 = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (i5 != 0) {
                            pVarA = qVar.a(Integer.valueOf(i5), i3, i4, iVar);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri3);
                        }
                        return pVarA;
                    } catch (NumberFormatException e3) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return pVarA;
                        }
                        Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri3, e3);
                        return pVarA;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri3);
                    return null;
                }
                List<String> pathSegments2 = uri3.getPathSegments();
                String str = pathSegments2.get(0);
                String str2 = pathSegments2.get(1);
                Context context = (Context) this.f4617c;
                int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
                if (identifier != 0) {
                    return qVar.a(Integer.valueOf(identifier), i3, i4, iVar);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri3);
                return null;
        }
    }

    @Override // p025j0.q
    public final boolean b(Object obj) {
        switch (this.f4616a) {
            case 0:
                Uri uri = (Uri) obj;
                return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
            case 1:
                return true;
            case 2:
                return true;
            default:
                Uri uri2 = (Uri) obj;
                return "android.resource".equals(uri2.getScheme()) && ((Context) this.f4617c).getPackageName().equals(uri2.getAuthority());
        }
    }

    public C0273b(Resources resources, q qVar) {
        this.b = resources;
        this.f4617c = qVar;
    }

    public C0273b(Context context, C0021h c0021h) {
        this.f4617c = context.getApplicationContext();
        this.b = c0021h;
    }

    public C0273b(Context context, q qVar) {
        this.f4617c = context.getApplicationContext();
        this.b = qVar;
    }
}
