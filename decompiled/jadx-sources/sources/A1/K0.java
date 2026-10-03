package A1;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigDecimal;
import java.nio.channels.FileLock;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class K0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final List f69j = CollectionsKt.emptyList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Regex f70k = new Regex("[A-Za-z0-9._:-]{1,256}");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Set f71l = SetsKt.setOf((Object[]) new L0[]{L0.b, L0.f, L0.g});

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Set f72m = SetsKt.setOf((Object[]) new String[]{"schemaVersion", "revision", "activeSession", "pendingLaunch", "lastAppliedRequestIds"});

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Set f73n = SetsKt.setOf((Object[]) new String[]{"sessionId", "gameId", "engine", "processName", "pid", "state", "sessionTokenCiphertext", "sessionTokenIv", "requestId", "startedAt", "lastHeartbeatAt"});

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final Set f74o = SetsKt.setOf((Object[]) new String[]{"requestId", "gameId", "engine", "gamePath", "requestedAt", "attemptCount", "processName"});

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final ConcurrentHashMap f75p = new ConcurrentHashMap();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final H0 f76q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f77a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f78c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f79d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f80e;
    public final File f;
    public final File g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final File f81h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f82i;

    /* JADX WARN: Type inference failed for: r1v5, types: [A1.H0] */
    static {
        final F0 f3 = new F0();
        f76q = new ThreadLocal() { // from class: A1.H0
            @Override // java.lang.ThreadLocal
            public final Object initialValue() {
                f3.getClass();
                List list = K0.f69j;
                return Boolean.FALSE;
            }
        };
    }

    public K0(File primary, ArrayList allowedGameRoots) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(primary, "primary");
        Intrinsics.checkNotNullParameter(allowedGameRoots, "allowedGameRoots");
        this.f77a = allowedGameRoots;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(primary.getAbsoluteFile().getCanonicalPath());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        objM9constructorimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl) != null ? primary.getAbsoluteFile().getPath() : objM9constructorimpl;
        Intrinsics.checkNotNullExpressionValue(objM9constructorimpl, "getOrElse(...)");
        String str = (String) objM9constructorimpl;
        this.b = str;
        File file = new File(str);
        this.f78c = file;
        File parentFile = file.getParentFile();
        if (parentFile == null) {
            throw new IllegalArgumentException("registry file must have a parent");
        }
        this.f79d = parentFile;
        this.f80e = new File(parentFile, kotlin.collections.unsigned.a.g(file.getName(), ".bak"));
        this.f = new File(parentFile, kotlin.collections.unsigned.a.g(file.getName(), ".tmp"));
        this.g = new File(parentFile, kotlin.collections.unsigned.a.g(file.getName(), ".lock"));
        this.f81h = new File(parentFile, kotlin.collections.unsigned.a.g(file.getName(), ".init"));
        w0 w0Var = w0.b;
    }

    public static p023i1.r a(Z z2) {
        p023i1.r rVar = new p023i1.r();
        rVar.j("sessionId", z2.f152a);
        rVar.i("gameId", Integer.valueOf(z2.b));
        rVar.j("engine", z2.f153c);
        rVar.j("processName", z2.f154d);
        rVar.i("pid", Integer.valueOf(z2.f155e));
        rVar.j("state", z2.f.name());
        rVar.j("sessionTokenCiphertext", z2.g);
        rVar.j("sessionTokenIv", z2.f156h);
        rVar.j("requestId", z2.f157i);
        rVar.i("startedAt", Long.valueOf(z2.f158j));
        rVar.i("lastHeartbeatAt", Long.valueOf(z2.f159k));
        return rVar;
    }

    public static String c(C0008a0 c0008a0) {
        p023i1.r rVar = new p023i1.r();
        rVar.i("schemaVersion", 1);
        rVar.i("revision", Long.valueOf(c0008a0.b));
        Z z2 = c0008a0.f165c;
        rVar.g("activeSession", z2 != null ? a(z2) : null);
        o0 o0Var = c0008a0.f166d;
        rVar.g("pendingLaunch", o0Var != null ? k(o0Var) : null);
        p023i1.n nVar = new p023i1.n();
        for (String str : c0008a0.f167e) {
            nVar.b.add(str == null ? p023i1.q.b : new p023i1.s(str));
        }
        Unit unit = Unit.INSTANCE;
        rVar.g("lastAppliedRequestIds", nVar);
        String string = rVar.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public static void d(p023i1.r rVar, Set set) {
        Collection collectionKeySet = rVar.b.keySet();
        Intrinsics.checkNotNullExpressionValue(collectionKeySet, "keySet(...)");
        if (((AbstractCollection) collectionKeySet).isEmpty()) {
            return;
        }
        Iterator it = ((p028k1.k) collectionKeySet).iterator();
        while (it.hasNext()) {
            if (!set.contains((String) it.next())) {
                throw new I0();
            }
        }
    }

    public static String e(p023i1.r rVar, String str) {
        String strO = o(rVar, str);
        if (f70k.matches(strO)) {
            return strO;
        }
        throw new I0();
    }

    public static C0008a0 f(K0 k2, Function1 change) {
        k2.getClass();
        Intrinsics.checkNotNullParameter(change, "change");
        if (((Boolean) f76q.get()).booleanValue()) {
            throw new E0("nested registry mutation");
        }
        return (C0008a0) k2.t(new G0(0, k2, change));
    }

    public static Z h(p023i1.r rVar) {
        Object objM9constructorimpl;
        d(rVar, f73n);
        int iP = p(rVar, "pid");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(L0.valueOf(o(rVar, "state")));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            throw new I0();
        }
        L0 l2 = (L0) objM9constructorimpl;
        if (iP < 0) {
            throw new I0();
        }
        if (iP == 0 && !f71l.contains(l2)) {
            throw new I0();
        }
        String strE = e(rVar, "sessionId");
        int iP2 = p(rVar, "gameId");
        if (iP2 >= 0) {
            return new Z(strE, iP2, o(rVar, "engine"), o(rVar, "processName"), iP, l2, o(rVar, "sessionTokenCiphertext"), o(rVar, "sessionTokenIv"), e(rVar, "requestId"), q(rVar, "startedAt"), q(rVar, "lastHeartbeatAt"));
        }
        throw new I0();
    }

    public static p023i1.r k(o0 o0Var) {
        p023i1.r rVar = new p023i1.r();
        rVar.j("requestId", o0Var.f211a);
        rVar.i("gameId", Integer.valueOf(o0Var.b));
        rVar.j("engine", o0Var.f212c);
        rVar.j("gamePath", o0Var.f213d);
        rVar.i("requestedAt", Long.valueOf(o0Var.f214e));
        rVar.i("attemptCount", Integer.valueOf(o0Var.f));
        String str = o0Var.g;
        if (!StringsKt.isBlank(str)) {
            rVar.j("processName", str);
        }
        return rVar;
    }

    public static void n(File file, File file2) throws J0 {
        if (file.renameTo(file2)) {
            return;
        }
        file2.delete();
        if (!file.renameTo(file2)) {
            throw new J0(kotlin.collections.unsigned.a.o("failed to replace ", file2.getName()));
        }
    }

    public static String o(p023i1.r rVar, String str) {
        p023i1.o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof p023i1.q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if (!(oVarK instanceof p023i1.s) || !(oVarK.e().b instanceof String)) {
                    throw new I0();
                }
                String strF = oVarK.f();
                Intrinsics.checkNotNull(strF);
                String str2 = StringsKt.isBlank(strF) ? null : strF;
                if (str2 != null) {
                    return str2;
                }
                throw new I0();
            }
        }
        throw new I0();
    }

    public static int p(p023i1.r rVar, String str) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(Integer.valueOf(r(rVar, str).intValueExact()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
            return ((Number) objM9constructorimpl).intValue();
        }
        throw new I0();
    }

    public static long q(p023i1.r rVar, String str) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(Long.valueOf(r(rVar, str).longValueExact()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
            return ((Number) objM9constructorimpl).longValue();
        }
        throw new I0();
    }

    public static BigDecimal r(p023i1.r rVar, String str) {
        Object objM9constructorimpl;
        p023i1.o oVarK = rVar.k(str);
        if (oVarK != null) {
            if (oVarK instanceof p023i1.q) {
                oVarK = null;
            }
            if (oVarK != null) {
                if (!(oVarK instanceof p023i1.s) || !(oVarK.e().b instanceof Number)) {
                    throw new I0();
                }
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(oVarK.a());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
                    throw new I0();
                }
                Intrinsics.checkNotNullExpressionValue(objM9constructorimpl, "getOrElse(...)");
                return (BigDecimal) objM9constructorimpl;
            }
        }
        throw new I0();
    }

    public static void v(File file, byte[] bArr) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.flush();
            fileOutputStream.getFD().sync();
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(fileOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileOutputStream, th);
                throw th2;
            }
        }
    }

    public final void b(File file, File file2) {
        File file3 = new File(this.f79d, kotlin.collections.unsigned.a.g(file2.getName(), ".new"));
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file3);
                try {
                    ByteStreamsKt.copyTo$default(fileInputStream, fileOutputStream, 0, 2, null);
                    fileOutputStream.flush();
                    fileOutputStream.getFD().sync();
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(fileInputStream, null);
                    n(file3, file2);
                    if (file3.exists()) {
                        file3.delete();
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(fileInputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            if (file3.exists()) {
                file3.delete();
            }
            throw th5;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0045  */
    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    /* JADX WARN: Code duplicated, block: B:55:0x0107 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x0109  */
    /* JADX WARN: Code duplicated, block: B:59:0x010f  */
    public final Pair g(String str) {
        o0 o0VarJ;
        w0 w0Var;
        Z z2;
        Object objM9constructorimpl;
        p023i1.r rVarD = p000a.a.E(str).d();
        Intrinsics.checkNotNull(rVarD);
        d(rVarD, f72m);
        if (p(rVarD, "schemaVersion") != 1) {
            throw new I0();
        }
        long jQ = q(rVarD, "revision");
        if (jQ < 0) {
            throw new I0();
        }
        p023i1.o oVarK = rVarD.k("pendingLaunch");
        if (oVarK == null) {
            o0VarJ = null;
        } else {
            if (oVarK instanceof p023i1.q) {
                oVarK = null;
            }
            if (oVarK != null) {
                p023i1.r rVarD2 = oVarK.d();
                Intrinsics.checkNotNullExpressionValue(rVarD2, "getAsJsonObject(...)");
                o0VarJ = j(rVarD2);
            } else {
                o0VarJ = null;
            }
        }
        w0 w0Var2 = w0.b;
        p023i1.o oVarK2 = rVarD.k("activeSession");
        if (oVarK2 == null) {
            w0Var = w0Var2;
            z2 = null;
        } else {
            if (oVarK2 instanceof p023i1.q) {
                oVarK2 = null;
            }
            if (oVarK2 != null) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    p023i1.r rVarD3 = oVarK2.d();
                    Intrinsics.checkNotNullExpressionValue(rVarD3, "getAsJsonObject(...)");
                    objM9constructorimpl = Result.m9constructorimpl(h(rVarD3));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
                    w0Var2 = w0.f268c;
                    objM9constructorimpl = p000a.a.O(jQ);
                }
                w0 w0Var3 = w0Var2;
                z2 = (Z) objM9constructorimpl;
                w0Var = w0Var3;
            } else {
                w0Var = w0Var2;
                z2 = null;
            }
        }
        p023i1.n nVar = (p023i1.n) rVarD.b.get("lastAppliedRequestIds");
        if (nVar == null) {
            throw new I0();
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(nVar, 10));
        ArrayList arrayList2 = nVar.b;
        int size = arrayList2.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayList2.get(i4);
            i4++;
            p023i1.o oVar = (p023i1.o) obj;
            oVar.getClass();
            if (!(oVar instanceof p023i1.s) || !(oVar.e().b instanceof String)) {
                throw new I0();
            }
            arrayList.add(oVar.f());
        }
        if (arrayList.size() <= 256) {
            if (!arrayList.isEmpty()) {
                int size2 = arrayList.size();
                while (i3 < size2) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    String str2 = (String) obj2;
                    Intrinsics.checkNotNull(str2);
                    if (f70k.matches(str2)) {
                    }
                }
                if (CollectionsKt.toSet(arrayList).size() == arrayList.size()) {
                    if ((z2 != null ? z2.f : null) == L0.g) {
                        w0Var = w0.f268c;
                    }
                    w0 w0Var4 = w0Var;
                    return TuplesKt.to(new C0008a0(1, jQ, z2, o0VarJ, arrayList, w0Var4), w0Var4);
                }
            } else if (CollectionsKt.toSet(arrayList).size() == arrayList.size()) {
                if ((z2 != null ? z2.f : null) == L0.g) {
                    w0Var = w0.f268c;
                }
                w0 w0Var5 = w0Var;
                return TuplesKt.to(new C0008a0(1, jQ, z2, o0VarJ, arrayList, w0Var5), w0Var5);
            }
        }
        throw new I0();
    }

    public final Pair i(File file) throws J0 {
        Object objM9constructorimpl;
        if (!file.isFile() || file.length() > 1048576) {
            return null;
        }
        if (!file.canRead()) {
            throw new J0(kotlin.collections.unsigned.a.o("registry file not readable: ", file.getName()));
        }
        try {
            String text$default = FilesKt__FileReadWriteKt.readText$default(file, null, 1, null);
            try {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(g(text$default));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            return (Pair) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
        } catch (IOException e2) {
            throw new J0(kotlin.collections.unsigned.a.o("registry read failed: ", e2.getMessage()));
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:101:0x01cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:104:0x00f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x00e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x012b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:111:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0073  */
    /* JADX WARN: Code duplicated, block: B:27:0x0084  */
    /* JADX WARN: Code duplicated, block: B:30:0x008e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0094  */
    /* JADX WARN: Code duplicated, block: B:34:0x009b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:44:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:50:0x011e  */
    /* JADX WARN: Code duplicated, block: B:56:0x013b  */
    /* JADX WARN: Code duplicated, block: B:61:0x014d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0157  */
    /* JADX WARN: Code duplicated, block: B:69:0x0175  */
    /* JADX WARN: Code duplicated, block: B:79:0x0192  */
    /* JADX WARN: Code duplicated, block: B:82:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:86:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:97:0x01ce A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x016d A[EDGE_INSN: B:99:0x016d->B:67:0x016d BREAK  A[LOOP:0: B:33:0x0099->B:90:0x01cb, LOOP_LABEL: LOOP:0: B:33:0x0099->B:90:0x01cb], SYNTHETIC] */
    public final o0 j(p023i1.r rVar) {
        Object objM9constructorimpl;
        File file;
        ArrayList arrayList;
        p023i1.o oVarK;
        String strF;
        String str;
        String strE;
        int iP;
        String strO;
        long jQ;
        int iP2;
        int size;
        int i3;
        Object objM9constructorimpl2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Iterable indices;
        Iterator it;
        int iNextInt;
        d(rVar, f74o);
        String strO2 = o(rVar, "gamePath");
        if (!StringsKt.isBlank(strO2)) {
            File file2 = new File(strO2);
            if (file2.isAbsolute()) {
                List<String> listSplit$default = StringsKt__StringsKt.split$default(strO2, new char[]{'/', File.separatorChar}, false, 0, 6, (Object) null);
                if (listSplit$default == null || !listSplit$default.isEmpty()) {
                    for (String str2 : listSplit$default) {
                        if (Intrinsics.areEqual(str2, "..") || Intrinsics.areEqual(str2, ".")) {
                        }
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(file2.getCanonicalFile());
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                        file = (File) objM9constructorimpl;
                        if (Intrinsics.areEqual(file.getPath(), file2.getPath())) {
                            arrayList = this.f77a;
                            if (!arrayList.isEmpty()) {
                                if (!arrayList.isEmpty()) {
                                    size = arrayList.size();
                                    i3 = 0;
                                    loop0: while (true) {
                                        if (i3 < size) {
                                            int i4 = i3 + 1;
                                            File file3 = (File) arrayList.get(i3);
                                            try {
                                                Result.Companion companion3 = Result.INSTANCE;
                                                objM9constructorimpl2 = Result.m9constructorimpl(file3.getCanonicalFile());
                                            } catch (Throwable th2) {
                                                Result.Companion companion4 = Result.INSTANCE;
                                                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                                            }
                                            if (Result.m12exceptionOrNullimpl(objM9constructorimpl2) == null) {
                                                File file4 = (File) objM9constructorimpl2;
                                                Intrinsics.checkNotNull(file);
                                                Intrinsics.checkNotNull(file4);
                                                String path = file4.getPath();
                                                Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                                                List listSplit$default2 = StringsKt__StringsKt.split$default(path, new char[]{'/', File.separatorChar}, false, 0, 6, (Object) null);
                                                arrayList2 = new ArrayList();
                                                for (Object obj : listSplit$default2) {
                                                    if (((String) obj).length() > 0) {
                                                        arrayList2.add(obj);
                                                    }
                                                }
                                                String path2 = file.getPath();
                                                Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
                                                List listSplit$default3 = StringsKt__StringsKt.split$default(path2, new char[]{'/', File.separatorChar}, false, 0, 6, (Object) null);
                                                arrayList3 = new ArrayList();
                                                for (Object obj2 : listSplit$default3) {
                                                    if (((String) obj2).length() > 0) {
                                                        arrayList3.add(obj2);
                                                    }
                                                }
                                                if (arrayList3.size() < arrayList2.size()) {
                                                    indices = CollectionsKt.getIndices(arrayList2);
                                                    if ((indices instanceof Collection) && ((Collection) indices).isEmpty()) {
                                                        break;
                                                    }
                                                    it = indices.iterator();
                                                    do {
                                                        if (!it.hasNext()) {
                                                            break loop0;
                                                        }
                                                        iNextInt = ((IntIterator) it).nextInt();
                                                    } while (Intrinsics.areEqual(arrayList3.get(iNextInt), arrayList2.get(iNextInt)));
                                                } else {
                                                    continue;
                                                }
                                            }
                                            i3 = i4;
                                        }
                                    }
                                }
                            }
                            oVarK = rVar.k("processName");
                            if (oVarK != null) {
                                strF = "";
                            } else {
                                if ((oVarK instanceof p023i1.s) || !(oVarK.e().b instanceof String)) {
                                    throw new I0();
                                }
                                strF = oVarK.f();
                                if (strF == null) {
                                    strF = "";
                                }
                            }
                            str = strF;
                            strE = e(rVar, "requestId");
                            iP = p(rVar, "gameId");
                            if (iP >= 0) {
                                throw new I0();
                            }
                            strO = o(rVar, "engine");
                            jQ = q(rVar, "requestedAt");
                            iP2 = p(rVar, "attemptCount");
                            if (iP2 >= 0) {
                                throw new I0();
                            }
                            Unit unit = Unit.INSTANCE;
                            return new o0(strE, iP, strO, strO2, jQ, iP2, str);
                        }
                    }
                } else {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(file2.getCanonicalFile());
                    if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                        file = (File) objM9constructorimpl;
                        if (Intrinsics.areEqual(file.getPath(), file2.getPath())) {
                            arrayList = this.f77a;
                            if (!arrayList.isEmpty()) {
                                if (!arrayList.isEmpty()) {
                                    size = arrayList.size();
                                    i3 = 0;
                                    loop0: while (true) {
                                        if (i3 < size) {
                                            int i5 = i3 + 1;
                                            File file5 = (File) arrayList.get(i3);
                                            Result.Companion companion6 = Result.INSTANCE;
                                            objM9constructorimpl2 = Result.m9constructorimpl(file5.getCanonicalFile());
                                            if (Result.m12exceptionOrNullimpl(objM9constructorimpl2) == null) {
                                                File file6 = (File) objM9constructorimpl2;
                                                Intrinsics.checkNotNull(file);
                                                Intrinsics.checkNotNull(file6);
                                                String path3 = file6.getPath();
                                                Intrinsics.checkNotNullExpressionValue(path3, "getPath(...)");
                                                List listSplit$default4 = StringsKt__StringsKt.split$default(path3, new char[]{'/', File.separatorChar}, false, 0, 6, (Object) null);
                                                arrayList2 = new ArrayList();
                                                while (r0.hasNext()) {
                                                    if (((String) obj).length() > 0) {
                                                        arrayList2.add(obj);
                                                    }
                                                }
                                                String path4 = file.getPath();
                                                Intrinsics.checkNotNullExpressionValue(path4, "getPath(...)");
                                                List listSplit$default5 = StringsKt__StringsKt.split$default(path4, new char[]{'/', File.separatorChar}, false, 0, 6, (Object) null);
                                                arrayList3 = new ArrayList();
                                                while (r0.hasNext()) {
                                                    if (((String) obj2).length() > 0) {
                                                        arrayList3.add(obj2);
                                                    }
                                                }
                                                if (arrayList3.size() < arrayList2.size()) {
                                                    indices = CollectionsKt.getIndices(arrayList2);
                                                    if (indices instanceof Collection) {
                                                        it = indices.iterator();
                                                        do {
                                                            if (!it.hasNext()) {
                                                                break loop0;
                                                                break loop0;
                                                            }
                                                            iNextInt = ((IntIterator) it).nextInt();
                                                        } while (Intrinsics.areEqual(arrayList3.get(iNextInt), arrayList2.get(iNextInt)));
                                                    } else {
                                                        it = indices.iterator();
                                                        do {
                                                            if (!it.hasNext()) {
                                                                break loop0;
                                                                break loop0;
                                                            }
                                                            iNextInt = ((IntIterator) it).nextInt();
                                                        } while (Intrinsics.areEqual(arrayList3.get(iNextInt), arrayList2.get(iNextInt)));
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            }
                                            i3 = i5;
                                        }
                                    }
                                }
                            }
                            oVarK = rVar.k("processName");
                            if (oVarK != null) {
                                if (oVarK instanceof p023i1.s) {
                                }
                                throw new I0();
                            }
                            strF = "";
                            str = strF;
                            strE = e(rVar, "requestId");
                            iP = p(rVar, "gameId");
                            if (iP >= 0) {
                                throw new I0();
                            }
                            strO = o(rVar, "engine");
                            jQ = q(rVar, "requestedAt");
                            iP2 = p(rVar, "attemptCount");
                            if (iP2 >= 0) {
                                throw new I0();
                            }
                            Unit unit2 = Unit.INSTANCE;
                            return new o0(strE, iP, strO, strO2, jQ, iP2, str);
                        }
                    }
                }
            }
        }
        throw new I0();
    }

    public final C0008a0 l() {
        return (C0008a0) t(new C0033n(1, this));
    }

    public final C0008a0 m() throws J0 {
        if (!this.f78c.isFile() && !this.f80e.isFile()) {
            if (this.f81h.isFile()) {
                w0 w0Var = w0.b;
                this.f82i = true;
                return new C0008a0(p000a.a.O(0L), 27);
            }
            w0 w0Var2 = w0.b;
            this.f82i = false;
            return new C0008a0(null, 63);
        }
        Pair pairI = i(this.f78c);
        if (pairI != null) {
            C0008a0 c0008a0 = (C0008a0) pairI.component1();
            w0 w0Var3 = (w0) pairI.component2();
            this.f82i = false;
            return C0008a0.a(c0008a0, 0L, null, null, w0Var3, 31);
        }
        Pair pairI2 = i(this.f80e);
        if (pairI2 == null) {
            throw new I0();
        }
        C0008a0 c0008a1 = (C0008a0) pairI2.component1();
        w0 w0Var4 = w0.f268c;
        this.f82i = true;
        Z z2 = c0008a1.f165c;
        return C0008a0.a(c0008a1, 0L, z2 != null ? Z.a(z2, 0, L0.g, 0L, 2015) : p000a.a.O(c0008a1.b), null, w0Var4, 27);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    /* JADX WARN: Code duplicated, block: B:27:0x0069  */
    /* JADX WARN: Code duplicated, block: B:28:0x006d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0097  */
    /* JADX WARN: Code duplicated, block: B:39:0x009b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a1 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x0077 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final void s(C0008a0 c0008a0) {
        Z z2;
        Object objM9constructorimpl;
        o0 o0Var;
        Object objM9constructorimpl2;
        int i3 = c0008a0.f164a;
        List list = c0008a0.f167e;
        if (i3 == 1 && c0008a0.b >= 0 && list.size() <= 256) {
            if (!list.isEmpty()) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    if (f70k.matches((String) it.next())) {
                    }
                }
                if (CollectionsKt.toSet(list).size() == list.size()) {
                    z2 = c0008a0.f165c;
                    if (z2 != null) {
                        Result.Companion companion = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(h(a(z2)));
                        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                            throw new I0();
                        }
                        Result.m8boximpl(objM9constructorimpl);
                    }
                    o0Var = c0008a0.f166d;
                    if (o0Var != null) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(j(k(o0Var)));
                        if (Result.m12exceptionOrNullimpl(objM9constructorimpl2) == null) {
                            throw new I0();
                        }
                        Result.m8boximpl(objM9constructorimpl2);
                        return;
                    }
                    return;
                }
            } else if (CollectionsKt.toSet(list).size() == list.size()) {
                z2 = c0008a0.f165c;
                if (z2 != null) {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(h(a(z2)));
                    } catch (Throwable th) {
                        Result.Companion companion4 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m12exceptionOrNullimpl(objM9constructorimpl) == null) {
                        throw new I0();
                    }
                    Result.m8boximpl(objM9constructorimpl);
                }
                o0Var = c0008a0.f166d;
                if (o0Var != null) {
                    try {
                        Result.Companion companion5 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(j(k(o0Var)));
                    } catch (Throwable th2) {
                        Result.Companion companion6 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (Result.m12exceptionOrNullimpl(objM9constructorimpl2) == null) {
                        throw new I0();
                    }
                    Result.m8boximpl(objM9constructorimpl2);
                    return;
                }
                return;
            }
        }
        throw new I0();
    }

    public final Object t(Function0 function0) throws J0 {
        File file = this.f79d;
        if (!file.isDirectory() && !file.mkdirs() && !file.isDirectory()) {
            throw new J0(kotlin.collections.unsigned.a.o("cannot create registry directory ", file.getPath()));
        }
        Object objComputeIfAbsent = f75p.computeIfAbsent(this.b, new C0017f(new C0015e(13), 1));
        Intrinsics.checkNotNullExpressionValue(objComputeIfAbsent, "computeIfAbsent(...)");
        ReentrantLock reentrantLock = (ReentrantLock) objComputeIfAbsent;
        reentrantLock.lock();
        try {
            if (reentrantLock.getHoldCount() > 1) {
                Object objInvoke = function0.invoke();
                reentrantLock.unlock();
                return objInvoke;
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.g, "rw");
                try {
                    try {
                        FileLock fileLockLock = randomAccessFile.getChannel().lock();
                        try {
                            Object objInvoke2 = function0.invoke();
                            AutoCloseableKt.closeFinally(fileLockLock, null);
                            CloseableKt.closeFinally(randomAccessFile, null);
                            reentrantLock.unlock();
                            return objInvoke2;
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
                } catch (IOException e2) {
                    throw new J0("registry lock failed: " + e2.getMessage());
                }
            } catch (IOException e3) {
                throw new J0("registry lock failed: " + e3.getMessage());
            }
        } catch (Throwable th5) {
            reentrantLock.unlock();
            throw th5;
        }
    }

    public final void u(C0008a0 c0008a0) {
        File file = this.f81h;
        File file2 = this.f78c;
        File file3 = this.f;
        try {
            try {
                if (i(file2) != null) {
                    b(file2, this.f80e);
                }
                byte[] bytes = c(c0008a0).getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                v(file3, bytes);
                n(file3, file2);
                if (!file.isFile()) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        v(file, new byte[0]);
                        Result.m9constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                }
                if (file3.exists()) {
                    file3.delete();
                }
            } catch (IOException e2) {
                throw new J0("registry write failed: " + e2.getMessage());
            }
        } catch (Throwable th2) {
            if (file3.exists()) {
                file3.delete();
            }
            throw th2;
        }
    }
}
