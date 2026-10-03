package p064y1;

import android.system.Os;
import java.io.File;
import java.io.FileDescriptor;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class s2 {
    public static final boolean a(File root, File child) {
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(child, "child");
        try {
            String canonicalPath = root.getCanonicalPath();
            String canonicalPath2 = child.getCanonicalPath();
            if (Intrinsics.areEqual(canonicalPath2, canonicalPath)) {
                return true;
            }
            Intrinsics.checkNotNull(canonicalPath2);
            Intrinsics.checkNotNull(canonicalPath);
            String separator = File.separator;
            Intrinsics.checkNotNullExpressionValue(separator, "separator");
            if (!StringsKt__StringsJVMKt.endsWith$default(canonicalPath, separator, false, 2, null)) {
                canonicalPath = canonicalPath + separator;
            }
            Intrinsics.checkNotNull(canonicalPath);
            return StringsKt.N(canonicalPath2, canonicalPath);
        } catch (Exception unused) {
            return false;
        }
    }

    public static final FileDescriptor b(FileDescriptor fileDescriptor, String str, int i3) throws IllegalAccessException, InvocationTargetException {
        Class cls = Integer.TYPE;
        Object objInvoke = Os.class.getMethod("openat", FileDescriptor.class, String.class, cls, cls).invoke(null, fileDescriptor, str, Integer.valueOf(i3), 0);
        Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type java.io.FileDescriptor");
        return (FileDescriptor) objInvoke;
    }
}
