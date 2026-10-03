package p025j0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f4632e = {"_data"};
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4634d;

    public /* synthetic */ l(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f4633c = obj;
        this.f4634d = obj2;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.b) {
            case 0:
                return File.class;
            default:
                return ((B) this.f4634d).b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        int i3 = this.b;
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
    public final void f(g gVar, d dVar) {
        Object objWrap;
        switch (this.b) {
            case 0:
                Cursor cursorQuery = ((Context) this.f4633c).getContentResolver().query((Uri) this.f4634d, f4632e, null, null, null);
                String string = null;
                if (cursorQuery != null) {
                    try {
                        string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                        cursorQuery.close();
                    } catch (Throwable th) {
                        cursorQuery.close();
                        throw th;
                    }
                    break;
                }
                if (!TextUtils.isEmpty(string)) {
                    dVar.e(new File(string));
                    return;
                }
                dVar.c(new FileNotFoundException("Failed to find file path for: " + ((Uri) this.f4634d)));
                return;
            default:
                B b = (B) this.f4634d;
                byte[] bArr = (byte[]) this.f4633c;
                switch (b.b) {
                    case 1:
                        objWrap = ByteBuffer.wrap(bArr);
                        break;
                    default:
                        objWrap = new ByteArrayInputStream(bArr);
                        break;
                }
                dVar.e(objWrap);
                return;
        }
    }

    private final void c() {
    }

    private final void e() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
