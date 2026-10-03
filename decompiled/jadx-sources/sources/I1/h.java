package I1;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Regex f1181c = new Regex("-?(0|[1-9][0-9]*)(\\.[0-9]+)?([eE][+-]?[0-9]+)?");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Object f1182d = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f1183a;
    public final File b;

    public h(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        d publish = new d(0);
        Intrinsics.checkNotNullParameter(root, "root");
        Intrinsics.checkNotNullParameter(publish, "publish");
        this.f1183a = publish;
        this.b = root.getCanonicalFile();
    }

    public static final b b(Object obj) {
        if (obj == null) {
            return null;
        }
        Map map = obj instanceof Map ? (Map) obj : null;
        if (map == null) {
            throw new IllegalStateException("Expected artifact");
        }
        if (!Intrinsics.areEqual(map.keySet(), SetsKt.setOf((Object[]) new String[]{"id", "version", "sha256"}))) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        Object obj2 = map.get("id");
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
        Object obj3 = map.get("version");
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
        Object obj4 = map.get("sha256");
        Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.String");
        return new b((String) obj2, (String) obj3, (String) obj4);
    }

    public static final Map c(b bVar) {
        if (bVar != null) {
            return MapsKt.mapOf(TuplesKt.to("id", bVar.f1173a), TuplesKt.to("version", bVar.b), TuplesKt.to("sha256", bVar.f1174c));
        }
        return null;
    }

    public static Object d(p1.a aVar, int i3) {
        if (i3 > 8) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        switch (g.f1180a[p051u.h.a(aVar.v())]) {
            case 1:
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                aVar.b();
                while (aVar.i()) {
                    String strP = aVar.p();
                    if (linkedHashMap.containsKey(strP) || linkedHashMap.size() >= 32) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    linkedHashMap.put(strP, d(aVar, i3 + 1));
                }
                aVar.f();
                return linkedHashMap;
            case 2:
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.i()) {
                    if (arrayList.size() >= 128) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    arrayList.add(d(aVar, i3 + 1));
                }
                aVar.e();
                return arrayList;
            case 3:
                return aVar.t();
            case 4:
                String strT = aVar.t();
                Intrinsics.checkNotNullExpressionValue(strT, "nextString(...)");
                return new f(strT);
            case 5:
                return Boolean.valueOf(aVar.l());
            case 6:
                aVar.r();
                return null;
            default:
                throw new IllegalStateException("Unexpected JSON token");
        }
    }

    public final File a(String str) {
        if (!Intrinsics.areEqual(str, "store.guard") && !new Regex("[0-9a-f]{64}\\.json").matches(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        File file = this.b;
        File file2 = new File(file, str);
        if (!Intrinsics.areEqual(file.getCanonicalFile(), file)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (Files.isSymbolicLink(file2.toPath())) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (!Intrinsics.areEqual(file2.getCanonicalFile(), file2.getAbsoluteFile())) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (Intrinsics.areEqual(file2.getCanonicalFile().getParentFile(), file)) {
            return file2;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final Object e(e eVar) {
        Object objInvoke;
        synchronized (f1182d) {
            try {
                if (!this.b.isDirectory() && !this.b.mkdirs() && !this.b.isDirectory()) {
                    throw new IOException("Cannot create lock root");
                }
                RandomAccessFile randomAccessFile = new RandomAccessFile(a("store.guard"), "rw");
                try {
                    FileLock fileLockLock = randomAccessFile.getChannel().lock();
                    try {
                        objInvoke = eVar.invoke();
                        AutoCloseableKt.closeFinally(fileLockLock, null);
                        CloseableKt.closeFinally(randomAccessFile, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            AutoCloseableKt.closeFinally(fileLockLock, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(randomAccessFile, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        }
        return objInvoke;
    }
}
