package p038o0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import java.util.List;
import p000a.a;
import p009d0.h;
import p009d0.i;
import p009d0.k;
import p014f0.F;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d implements k {
    public static final h b = new h("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, h.f3869e);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f5158a;

    public d(Context context) {
        this.f5158a = context.getApplicationContext();
    }

    @Override // p009d0.k
    public final boolean a(Object obj, i iVar) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    @Override // p009d0.k
    public final /* bridge */ /* synthetic */ F b(Object obj, int i3, int i4, i iVar) {
        return c((Uri) obj, iVar);
    }

    public final F c(Uri uri, i iVar) {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalStateException("Package name for " + uri + " is null or empty");
        }
        Context context = this.f5158a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e2) {
                if (!authority.contains(context.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e2);
                }
                contextCreatePackageContext = context;
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else {
            if (pathSegments.size() != 1) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e3) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e3);
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) iVar.c(b) : null;
        Drawable drawableJ = theme == null ? a.j(context, contextCreatePackageContext, identifier, null) : a.j(context, context, identifier, theme);
        if (drawableJ != null) {
            return new c(drawableJ, 0);
        }
        return null;
    }
}
