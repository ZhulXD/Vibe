package p064y1;

import dalvik.system.DexClassLoader;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class Q0 extends DexClassLoader {
    @Override // java.lang.ClassLoader
    public final Class loadClass(String name, boolean z2) throws ClassNotFoundException {
        Intrinsics.checkNotNullParameter(name, "name");
        if (StringsKt.N(name, "org.godotengine.")) {
            Class<?> clsFindLoadedClass = findLoadedClass(name);
            if (clsFindLoadedClass != null) {
                return clsFindLoadedClass;
            }
            try {
                Class<?> clsFindClass = findClass(name);
                if (z2) {
                    resolveClass(clsFindClass);
                }
                Intrinsics.checkNotNull(clsFindClass);
                return clsFindClass;
            } catch (ClassNotFoundException unused) {
            }
        }
        Class<?> clsLoadClass = super.loadClass(name, z2);
        Intrinsics.checkNotNullExpressionValue(clsLoadClass, "loadClass(...)");
        return clsLoadClass;
    }
}
