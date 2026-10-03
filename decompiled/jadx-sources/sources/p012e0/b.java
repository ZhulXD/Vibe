package p012e0;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.g;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.data.j;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p000a.a;
import p025j0.B;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Comparable f4171c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4172d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f4173e;

    public /* synthetic */ b(int i3, Comparable comparable, Object obj) {
        this.b = i3;
        this.f4171c = comparable;
        this.f4172d = obj;
    }

    public static b c(Context context, Uri uri, c cVar) {
        return new b(0, uri, new d(com.bumptech.glide.b.a(context).f3201d.a().e(), cVar, com.bumptech.glide.b.a(context).f3202e, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (this.b) {
            case 0:
                return InputStream.class;
            case 1:
                ((B) this.f4172d).getClass();
                return InputStream.class;
            default:
                return ((B) this.f4172d).b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        switch (this.b) {
            case 0:
                InputStream inputStream = (InputStream) this.f4173e;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            case 1:
                try {
                    ((ByteArrayInputStream) this.f4173e).close();
                } catch (IOException unused2) {
                    return;
                }
                break;
            default:
                Object obj = this.f4173e;
                if (obj != null) {
                    try {
                        switch (((B) this.f4172d).b) {
                            case 8:
                                ((ParcelFileDescriptor) obj).close();
                                break;
                            default:
                                ((InputStream) obj).close();
                                break;
                        }
                    } catch (IOException unused3) {
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
    public final void f(g gVar, d dVar) throws Throwable {
        Object objOpen;
        switch (this.b) {
            case 0:
                try {
                    InputStream inputStreamI = i();
                    this.f4173e = inputStreamI;
                    dVar.e(inputStreamI);
                } catch (FileNotFoundException e2) {
                    if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                        Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e2);
                    }
                    dVar.c(e2);
                    return;
                }
                break;
            case 1:
                try {
                    ByteArrayInputStream byteArrayInputStreamA = B.a((String) this.f4171c);
                    this.f4173e = byteArrayInputStreamA;
                    dVar.e(byteArrayInputStreamA);
                } catch (IllegalArgumentException e3) {
                    dVar.c(e3);
                }
                break;
            default:
                try {
                    B b = (B) this.f4172d;
                    File file = (File) this.f4171c;
                    switch (b.b) {
                        case 8:
                            objOpen = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            objOpen = new FileInputStream(file);
                            break;
                    }
                    this.f4173e = objOpen;
                    dVar.e(objOpen);
                } catch (FileNotFoundException e4) {
                    if (Log.isLoggable("FileLoader", 3)) {
                        Log.d("FileLoader", "Failed to open file", e4);
                    }
                    dVar.c(e4);
                    return;
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0057  */
    /* JADX WARN: Code duplicated, block: B:28:0x0059  */
    /* JADX WARN: Code duplicated, block: B:30:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x009d  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00da  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x0028: MOVE (r6 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]) (LINE:41), block:B:10:0x0028 */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.io.IOException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v1 */
    public InputStream i() throws Throwable {
        Cursor cursorA;
        ?? r7;
        String string;
        File file;
        InputStream inputStreamOpenInputStream;
        int iK;
        d dVar = (d) this.f4172d;
        ContentResolver contentResolver = dVar.f4175c;
        Uri uri = (Uri) this.f4171c;
        ?? r6 = 0;
        InputStream inputStreamOpenInputStream2 = null;
        try {
            try {
                cursorA = dVar.f4174a.a(uri);
                if (cursorA != null) {
                    try {
                        if (cursorA.moveToFirst()) {
                            string = cursorA.getString(0);
                            cursorA.close();
                        }
                    } catch (SecurityException e2) {
                        e = e2;
                        if (Log.isLoggable("ThumbStreamOpener", 3)) {
                            Log.d("ThumbStreamOpener", "Failed to query for thumbnail for Uri: " + uri, e);
                        }
                        if (cursorA != null) {
                        }
                        string = null;
                        if (TextUtils.isEmpty(string)) {
                            inputStreamOpenInputStream = null;
                        } else {
                            file = new File(string);
                            if (file.exists()) {
                                inputStreamOpenInputStream = null;
                            } else {
                                inputStreamOpenInputStream = null;
                            }
                        }
                        if (inputStreamOpenInputStream != null) {
                            try {
                                try {
                                    inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                                    iK = a.k(dVar.f4176d, inputStreamOpenInputStream2, dVar.b);
                                    if (inputStreamOpenInputStream2 != null) {
                                        try {
                                            inputStreamOpenInputStream2.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                } catch (Throwable th) {
                                    if (0 != 0) {
                                        try {
                                            r6.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException | NullPointerException e3) {
                                if (Log.isLoggable("ThumbStreamOpener", 3)) {
                                    Log.d("ThumbStreamOpener", "Failed to open uri: " + uri, e3);
                                }
                                if (inputStreamOpenInputStream2 != null) {
                                    try {
                                        inputStreamOpenInputStream2.close();
                                    } catch (IOException unused3) {
                                    }
                                }
                                iK = -1;
                            }
                        } else {
                            iK = -1;
                        }
                        if (iK != -1) {
                            return new j(inputStreamOpenInputStream, iK);
                        }
                        return inputStreamOpenInputStream;
                    }
                    if (TextUtils.isEmpty(string)) {
                        inputStreamOpenInputStream = null;
                    } else {
                        file = new File(string);
                        if (file.exists() || 0 >= file.length()) {
                            inputStreamOpenInputStream = null;
                        } else {
                            Uri uriFromFile = Uri.fromFile(file);
                            try {
                                inputStreamOpenInputStream = contentResolver.openInputStream(uriFromFile);
                            } catch (NullPointerException e4) {
                                throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + uriFromFile).initCause(e4));
                            }
                        }
                    }
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
                        iK = a.k(dVar.f4176d, inputStreamOpenInputStream2, dVar.b);
                        if (inputStreamOpenInputStream2 != null) {
                            inputStreamOpenInputStream2.close();
                        }
                    } else {
                        iK = -1;
                    }
                    if (iK != -1) {
                        return new j(inputStreamOpenInputStream, iK);
                    }
                    return inputStreamOpenInputStream;
                }
                if (cursorA != null) {
                    cursorA.close();
                }
            } catch (Throwable th2) {
                th = th2;
                r6 = r7;
                if (r6 != 0) {
                    r6.close();
                }
                throw th;
            }
        } catch (SecurityException e5) {
            e = e5;
            cursorA = null;
        } catch (Throwable th3) {
            th = th3;
            if (r6 != 0) {
                r6.close();
            }
            throw th;
        }
        string = null;
        if (TextUtils.isEmpty(string)) {
            inputStreamOpenInputStream = null;
        } else {
            file = new File(string);
            if (file.exists()) {
                inputStreamOpenInputStream = null;
            } else {
                inputStreamOpenInputStream = null;
            }
        }
        if (inputStreamOpenInputStream != null) {
            inputStreamOpenInputStream2 = contentResolver.openInputStream(uri);
            iK = a.k(dVar.f4176d, inputStreamOpenInputStream2, dVar.b);
            if (inputStreamOpenInputStream2 != null) {
                inputStreamOpenInputStream2.close();
            }
        } else {
            iK = -1;
        }
        if (iK != -1) {
            return new j(inputStreamOpenInputStream, iK);
        }
        return inputStreamOpenInputStream;
    }

    private final void e() {
    }

    private final void g() {
    }

    private final void h() {
    }
}
