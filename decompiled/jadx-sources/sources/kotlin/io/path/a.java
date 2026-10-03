package kotlin.io.path;

import java.nio.file.DirectoryStream;
import java.nio.file.FileSystemException;
import java.nio.file.FileSystemLoopException;
import java.nio.file.FileVisitor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ void D() {
    }

    public static /* bridge */ /* synthetic */ DirectoryStream e(Object obj) {
        return (DirectoryStream) obj;
    }

    public static /* synthetic */ FileSystemException h(String str) {
        return new FileSystemException(str);
    }

    public static /* bridge */ /* synthetic */ FileSystemException i(Throwable th) {
        return (FileSystemException) th;
    }

    public static /* synthetic */ FileSystemLoopException j(String str) {
        return new FileSystemLoopException(str);
    }

    public static /* bridge */ /* synthetic */ FileVisitor l(Object obj) {
        return (FileVisitor) obj;
    }

    public static /* synthetic */ void v() {
    }
}
