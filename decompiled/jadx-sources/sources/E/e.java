package E;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f854a;
    public Uri b;

    public e(Context context, Uri uri) {
        this.f854a = context;
        this.b = uri;
    }

    @Override // E.a
    public final boolean a() {
        Uri uri = this.b;
        Context context = this.f854a;
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String strB = c.b(context, uri, "mime_type");
        long j2 = 0;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{"flags"}, null, null, null);
                if (cursorQuery.moveToFirst() && !cursorQuery.isNull(0)) {
                    j2 = cursorQuery.getLong(0);
                }
            } catch (Exception e2) {
                Log.w("DocumentFile", "Failed query: " + e2);
            }
            c.a(cursorQuery);
            int i3 = (int) j2;
            if (TextUtils.isEmpty(strB)) {
                return false;
            }
            return (i3 & 4) != 0 || ("vnd.android.document/directory".equals(strB) && (i3 & 8) != 0) || !(TextUtils.isEmpty(strB) || (i3 & 2) == 0);
        } catch (Throwable th) {
            c.a(cursorQuery);
            throw th;
        }
    }

    @Override // E.a
    public final a b(String str) {
        Uri uriCreateDocument;
        Context context = this.f854a;
        try {
            uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), this.b, "vnd.android.document/directory", str);
        } catch (Exception unused) {
            uriCreateDocument = null;
        }
        if (uriCreateDocument != null) {
            return new e(context, uriCreateDocument);
        }
        return null;
    }

    @Override // E.a
    public final a c(String str, String str2) {
        Uri uriCreateDocument;
        Context context = this.f854a;
        try {
            uriCreateDocument = DocumentsContract.createDocument(context.getContentResolver(), this.b, str, str2);
        } catch (Exception unused) {
            uriCreateDocument = null;
        }
        if (uriCreateDocument != null) {
            return new e(context, uriCreateDocument);
        }
        return null;
    }

    @Override // E.a
    public final boolean d() {
        try {
            return DocumentsContract.deleteDocument(this.f854a.getContentResolver(), this.b);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // E.a
    public final boolean e() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f854a.getContentResolver().query(this.b, new String[]{"document_id"}, null, null, null);
            return cursorQuery.getCount() > 0;
        } catch (Exception e2) {
            Log.w("DocumentFile", "Failed query: " + e2);
            return false;
        } finally {
            c.a(cursorQuery);
        }
    }

    @Override // E.a
    public final String h() {
        return c.b(this.f854a, this.b, "_display_name");
    }

    @Override // E.a
    public final Uri i() {
        return this.b;
    }

    @Override // E.a
    public final boolean j() {
        return "vnd.android.document/directory".equals(c.b(this.f854a, this.b, "mime_type"));
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006e A[LOOP:1: B:23:0x006b->B:25:0x006e, LOOP_END] */
    @Override // E.a
    public final a[] k() {
        Uri[] uriArr;
        a[] aVarArr;
        Context context = this.f854a;
        ContentResolver contentResolver = context.getContentResolver();
        Uri uri = this.b;
        Uri uriBuildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                try {
                    cursorQuery = contentResolver.query(uriBuildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
                    while (cursorQuery.moveToNext()) {
                        arrayList.add(DocumentsContract.buildDocumentUriUsingTree(this.b, cursorQuery.getString(0)));
                    }
                    try {
                        b.v(cursorQuery);
                        uriArr = (Uri[]) arrayList.toArray(new Uri[0]);
                        aVarArr = new a[uriArr.length];
                        for (int i3 = 0; i3 < uriArr.length; i3++) {
                            aVarArr[i3] = new e(context, uriArr[i3]);
                        }
                        return aVarArr;
                    } catch (RuntimeException e2) {
                        throw e2;
                    }
                } catch (Exception unused) {
                }
            } catch (Exception e3) {
                Log.w("DocumentFile", "Failed query: " + e3);
                if (cursorQuery != null) {
                    try {
                        b.v(cursorQuery);
                    } catch (RuntimeException e4) {
                        throw e4;
                    }
                }
                uriArr = (Uri[]) arrayList.toArray(new Uri[0]);
                aVarArr = new a[uriArr.length];
                while (i3 < uriArr.length) {
                    aVarArr[i3] = new e(context, uriArr[i3]);
                }
                return aVarArr;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                try {
                    b.v(cursorQuery);
                } catch (RuntimeException e5) {
                    throw e5;
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    @Override // E.a
    public final boolean l(String str) {
        try {
            Uri uriRenameDocument = DocumentsContract.renameDocument(this.f854a.getContentResolver(), this.b, str);
            if (uriRenameDocument != null) {
                this.b = uriRenameDocument;
                return true;
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
