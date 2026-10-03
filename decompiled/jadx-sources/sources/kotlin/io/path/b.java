package kotlin.io.path;

import java.nio.file.FileSystemException;
import java.nio.file.SecureDirectoryStream;
import java.nio.file.attribute.BasicFileAttributes;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ FileSystemException e() {
        return new FileSystemException("Failed to delete one or more files. See suppressed exceptions for details.");
    }

    public static /* bridge */ /* synthetic */ SecureDirectoryStream n(Object obj) {
        return (SecureDirectoryStream) obj;
    }

    public static /* bridge */ /* synthetic */ BasicFileAttributes o(Object obj) {
        return (BasicFileAttributes) obj;
    }

    public static /* bridge */ /* synthetic */ boolean t(Object obj) {
        return obj instanceof SecureDirectoryStream;
    }
}
