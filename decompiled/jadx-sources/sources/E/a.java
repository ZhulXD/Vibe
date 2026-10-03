package E;

import android.content.Context;
import android.net.Uri;
import androidx.core.provider.DocumentsContractCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static e g(Context context, Uri uri) {
        String treeDocumentId = DocumentsContractCompat.getTreeDocumentId(uri);
        if (DocumentsContractCompat.isDocumentUri(context, uri)) {
            treeDocumentId = DocumentsContractCompat.getDocumentId(uri);
        }
        if (treeDocumentId == null) {
            throw new IllegalArgumentException("Could not get document ID from Uri: " + uri);
        }
        Uri uriBuildDocumentUriUsingTree = DocumentsContractCompat.buildDocumentUriUsingTree(uri, treeDocumentId);
        if (uriBuildDocumentUriUsingTree != null) {
            return new e(context, uriBuildDocumentUriUsingTree);
        }
        throw new NullPointerException("Failed to build documentUri from a tree: " + uri);
    }

    public abstract boolean a();

    public abstract a b(String str);

    public abstract a c(String str, String str2);

    public abstract boolean d();

    public abstract boolean e();

    public final a f(String str) {
        for (a aVar : k()) {
            if (str.equals(aVar.h())) {
                return aVar;
            }
        }
        return null;
    }

    public abstract String h();

    public abstract Uri i();

    public abstract boolean j();

    public abstract a[] k();

    public abstract boolean l(String str);
}
