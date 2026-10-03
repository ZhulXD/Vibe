package p025j0;

import A1.C0021h;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import java.io.IOException;
import java.io.InputStream;
import p000a.a;

/* JADX INFO: renamed from: j0.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0276e implements e {
    public final Resources.Theme b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Resources f4620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0021h f4621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4622e;
    public Object f;

    public C0276e(Resources.Theme theme, Resources resources, C0021h c0021h, int i3) {
        this.b = theme;
        this.f4620c = resources;
        this.f4621d = c0021h;
        this.f4622e = i3;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.f4621d.b) {
            case 5:
                return AssetFileDescriptor.class;
            case 6:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        Object obj = this.f;
        if (obj != null) {
            try {
                switch (this.f4621d.b) {
                    case 5:
                        ((AssetFileDescriptor) obj).close();
                        break;
                    case 6:
                        break;
                    default:
                        ((InputStream) obj).close();
                        break;
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int d() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(g gVar, d dVar) {
        Object objOpenRawResourceFd;
        try {
            C0021h c0021h = this.f4621d;
            Resources.Theme theme = this.b;
            Resources resources = this.f4620c;
            int i3 = this.f4622e;
            switch (c0021h.b) {
                case 5:
                    objOpenRawResourceFd = resources.openRawResourceFd(i3);
                    break;
                case 6:
                    Context context = c0021h.f192c;
                    objOpenRawResourceFd = a.j(context, context, i3, theme);
                    break;
                default:
                    objOpenRawResourceFd = resources.openRawResource(i3);
                    break;
            }
            this.f = objOpenRawResourceFd;
            dVar.e(objOpenRawResourceFd);
        } catch (Resources.NotFoundException e2) {
            dVar.c(e2);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
