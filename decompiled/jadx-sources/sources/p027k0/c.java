package p027k0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import java.io.File;
import java.io.FileNotFoundException;
import p009d0.i;
import p025j0.p;
import p025j0.q;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c implements e {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String[] f4949l = {"_data"};
    public final Context b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f4950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q f4951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Uri f4952e;
    public final int f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i f4953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Class f4954i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f4955j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile e f4956k;

    public c(Context context, q qVar, q qVar2, Uri uri, int i3, int i4, i iVar, Class cls) {
        this.b = context.getApplicationContext();
        this.f4950c = qVar;
        this.f4951d = qVar2;
        this.f4952e = uri;
        this.f = i3;
        this.g = i4;
        this.f4953h = iVar;
        this.f4954i = cls;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return this.f4954i;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        e eVar = this.f4956k;
        if (eVar != null) {
            eVar.b();
        }
    }

    public final e c() throws Throwable {
        p pVarA;
        boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.b;
        i iVar = this.f4953h;
        int i3 = this.g;
        int i4 = this.f;
        if (zIsExternalStorageLegacy) {
            Uri uri = this.f4952e;
            try {
                Cursor cursorQuery = context.getContentResolver().query(uri, f4949l, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            cursorQuery.close();
                            pVarA = this.f4950c.a(file, i4, i3, iVar);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            Uri requireOriginal = this.f4952e;
            boolean zU = com.bumptech.glide.c.u(requireOriginal);
            q qVar = this.f4951d;
            if (zU && requireOriginal.getPathSegments().contains("picker")) {
                pVarA = qVar.a(requireOriginal, i4, i3, iVar);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                pVarA = qVar.a(requireOriginal, i4, i3, iVar);
            }
        }
        if (pVarA != null) {
            return pVarA.f4638c;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f4955j = true;
        e eVar = this.f4956k;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final int d() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void f(g gVar, d dVar) throws Throwable {
        try {
            e eVarC = c();
            if (eVarC == null) {
                dVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f4952e));
            } else {
                this.f4956k = eVarC;
                if (this.f4955j) {
                    cancel();
                } else {
                    eVarC.f(gVar, dVar);
                }
            }
        } catch (FileNotFoundException e2) {
            dVar.c(e2);
        }
    }
}
