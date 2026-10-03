package N1;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static final AtomicLong f = new AtomicLong();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f1434a;
    public final long b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f1435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f1436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1437e;

    public i(File root, long j2) {
        Intrinsics.checkNotNullParameter(root, "root");
        a io = a.f1411a;
        Intrinsics.checkNotNullParameter(io, "io");
        this.f1434a = root;
        this.b = j2;
        this.f1435c = new File(root, "ota-state.v2");
        this.f1436d = new File(root, ".ota-store.lock");
        this.f1437e = new Object();
        if (j2 < 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    public static boolean b(String str, String str2) {
        if (Intrinsics.areEqual(str2, "artifact_" + str + ".enc")) {
            return true;
        }
        if (!StringsKt.N(str2, "artifact_" + str + "_") || !StringsKt__StringsJVMKt.endsWith$default(str2, ".enc", false, 2, null)) {
            return false;
        }
        StringBuilder sb = new StringBuilder("artifact_");
        sb.append(str);
        sb.append("_");
        return p(StringsKt.X(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removePrefix(str2, (CharSequence) sb.toString()), (CharSequence) ".enc"), "_"));
    }

    public static String m(byte[] bArr) {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bArr);
        Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
        return ArraysKt___ArraysKt.joinToString$default(bArrDigest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new L1.d(5), 30, (Object) null);
    }

    public static Set n(String str) {
        if (str.length() == 0) {
            return SetsKt.emptySet();
        }
        List listSplit$default = StringsKt__StringsKt.split$default(str, new char[]{','}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listSplit$default) {
            if (p((String) obj)) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt.toSet(arrayList);
    }

    public static boolean p(String str) {
        return str.length() > 0 && str.length() <= 128 && new Regex("[A-Za-z0-9][A-Za-z0-9.+-]*").matches(str);
    }

    public final FileDescriptor a() throws ErrnoException {
        a aVar = a.f1411a;
        File file = this.f1436d;
        try {
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            FileDescriptor fileDescriptorC = aVar.c(absolutePath, d.f1421d, true);
            if (fileDescriptorC != null) {
                return fileDescriptorC;
            }
        } catch (ErrnoException e2) {
            if (e2.errno != OsConstants.EEXIST) {
                throw e2;
            }
        }
        String absolutePath2 = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
        FileDescriptor fileDescriptorC2 = aVar.c(absolutePath2, d.f1421d, false);
        if (fileDescriptorC2 != null) {
            return fileDescriptorC2;
        }
        throw new IllegalStateException("secure lock unavailable");
    }

    public final byte[] c(File file, long j2, long j3) {
        if (j2 < 0 || j2 > 2147483647L || j2 > j3) {
            throw new IllegalArgumentException();
        }
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        d dVar = d.b;
        a aVar = a.f1411a;
        int i3 = 0;
        FileDescriptor fileDescriptorC = aVar.c(absolutePath, dVar, false);
        if (fileDescriptorC == null) {
            throw new IllegalStateException("secure artifact unavailable");
        }
        FileInputStream fileInputStream = new FileInputStream(fileDescriptorC);
        try {
            String absolutePath2 = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
            e eVarE = aVar.e(absolutePath2);
            if (eVarE == null) {
                throw new IllegalStateException();
            }
            if (!eVarE.f1423a || eVarE.b || eVarE.f1424c != j2) {
                throw new IllegalStateException();
            }
            int i4 = (int) j2;
            byte[] bArr = new byte[i4];
            while (i3 < i4) {
                int i5 = fileInputStream.read(bArr, i3, i4 - i3);
                if (i5 < 0) {
                    throw new IllegalStateException();
                }
                i3 += i5;
            }
            if (fileInputStream.read() != -1) {
                throw new IllegalStateException();
            }
            CloseableKt.closeFinally(fileInputStream, null);
            return bArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(fileInputStream, th);
                throw th2;
            }
        }
    }

    public final void d() {
        q qVarG = g();
        if (qVarG.f1467d == null) {
            Collection collectionValues = qVarG.f1465a.f.values();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionValues, 10));
            Iterator it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.add(((f) it.next()).f1428e);
            }
            Set set = CollectionsKt.toSet(arrayList);
            File[] fileArrListFiles = this.f1434a.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            int i3 = 0;
            for (File file : fileArrListFiles) {
                i3++;
                if (i3 > 256) {
                    return;
                }
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.N(name, "artifact_")) {
                    String name2 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (StringsKt__StringsJVMKt.endsWith$default(name2, ".enc", false, 2, null) && !set.contains(file.getName())) {
                        Intrinsics.checkNotNull(file);
                        k(file);
                    }
                }
            }
        }
    }

    public final void e() {
        File file = this.f1434a;
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        a aVar = a.f1411a;
        if (aVar.e(absolutePath) == null && !file.mkdir()) {
            String absolutePath2 = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath2, "getAbsolutePath(...)");
            if (aVar.e(absolutePath2) == null) {
                throw new IllegalStateException("store root unavailable");
            }
        }
        String absolutePath3 = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath3, "getAbsolutePath(...)");
        e eVarE = aVar.e(absolutePath3);
        if (eVarE == null) {
            throw new IllegalStateException("store root unavailable");
        }
        if (eVarE.b || eVarE.f1423a) {
            throw new IllegalStateException("unsafe store root");
        }
    }

    public final boolean f(File file) {
        e eVar;
        try {
            String path = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(path, "getAbsolutePath(...)");
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                StructStat structStatLstat = Os.lstat(path);
                if (structStatLstat != null) {
                    int i3 = structStatLstat.st_mode & OsConstants.S_IFMT;
                    eVar = new e(i3 == OsConstants.S_IFREG, i3 == OsConstants.S_IFLNK, structStatLstat.st_size);
                } else {
                    eVar = null;
                }
            } catch (ErrnoException e2) {
                if (e2.errno != OsConstants.ENOENT) {
                    throw e2;
                }
            }
            if (eVar != null) {
                return eVar.b;
            }
            return !Intrinsics.areEqual(file.getCanonicalFile(), file.getAbsoluteFile());
        } catch (Exception unused) {
        }
    }

    public final q g() {
        try {
            a aVar = a.f1411a;
            String absolutePath = this.f1435c.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
            byte[] bArrD = aVar.d(absolutePath);
            if (bArrD == null) {
                return new q(new r().d(), null, null, null, 14);
            }
            int i3 = 0;
            List listSplit$default = StringsKt__StringsKt.split$default(StringsKt.trimEnd(new String(bArrD, Charsets.UTF_8), '\n'), new char[]{'\n'}, false, 0, 6, (Object) null);
            if (listSplit$default.size() <= 10000 && listSplit$default.size() >= 6 && Intrinsics.areEqual(listSplit$default.get(0), "V2")) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj : CollectionsKt___CollectionsKt.drop(listSplit$default, 6)) {
                    Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
                    char[] cArr = new char[1];
                    cArr[i3] = '\t';
                    List listSplit$default2 = StringsKt__StringsKt.split$default((String) obj, cArr, false, 0, 6, (Object) null);
                    if (listSplit$default2.size() == 6 && Intrinsics.areEqual(listSplit$default2.get(i3), "R")) {
                        Object obj2 = listSplit$default2.get(1);
                        Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                        if (p((String) obj2)) {
                            Object obj3 = listSplit$default2.get(1);
                            Intrinsics.checkNotNullExpressionValue(obj3, "get(...)");
                            String str = (String) obj3;
                            Object obj4 = listSplit$default2.get(2);
                            Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
                            long j2 = Long.parseLong((String) obj4);
                            Object obj5 = listSplit$default2.get(3);
                            Intrinsics.checkNotNullExpressionValue(obj5, "get(...)");
                            long j3 = Long.parseLong((String) obj5);
                            Object obj6 = listSplit$default2.get(4);
                            Intrinsics.checkNotNullExpressionValue(obj6, "get(...)");
                            String str2 = (String) obj6;
                            Object obj7 = listSplit$default2.get(5);
                            Intrinsics.checkNotNullExpressionValue(obj7, "get(...)");
                            String str3 = (String) obj7;
                            f fVar = new f(str, j2, j3, str2, str3);
                            if (b(str, str3) && j3 >= 0 && j3 <= this.b && new Regex("[0-9a-fA-F]{64}").matches(str2)) {
                                linkedHashMap.put(str, fVar);
                                i3 = 0;
                            }
                            r state = new r().d();
                            Intrinsics.checkNotNullParameter(state, "state");
                            Intrinsics.checkNotNullParameter("corrupt metadata", "message");
                            return new q(state, null, null, "corrupt metadata", 6);
                        }
                    }
                    r state2 = new r().d();
                    Intrinsics.checkNotNullParameter(state2, "state");
                    Intrinsics.checkNotNullParameter("corrupt metadata", "message");
                    return new q(state2, null, null, "corrupt metadata", 6);
                }
                CharSequence charSequence = (CharSequence) listSplit$default.get(1);
                CharSequence charSequence2 = null;
                if (charSequence.length() == 0) {
                    charSequence = null;
                }
                String str4 = (String) charSequence;
                CharSequence charSequence3 = (CharSequence) listSplit$default.get(2);
                if (charSequence3.length() != 0) {
                    charSequence2 = charSequence3;
                }
                Object obj8 = listSplit$default.get(3);
                Intrinsics.checkNotNullExpressionValue(obj8, "get(...)");
                long j4 = Long.parseLong((String) obj8);
                Object obj9 = listSplit$default.get(4);
                Intrinsics.checkNotNullExpressionValue(obj9, "get(...)");
                Set setN = n((String) obj9);
                Object obj10 = listSplit$default.get(5);
                Intrinsics.checkNotNullExpressionValue(obj10, "get(...)");
                return new q(new r(str4, (String) charSequence2, j4, setN, n((String) obj10), linkedHashMap).d(), null, null, null, 14);
            }
            r state3 = new r().d();
            Intrinsics.checkNotNullParameter(state3, "state");
            Intrinsics.checkNotNullParameter("corrupt metadata", "message");
            return new q(state3, null, null, "corrupt metadata", 6);
        } catch (Exception unused) {
            r state4 = new r().d();
            Intrinsics.checkNotNullParameter(state4, "state");
            Intrinsics.checkNotNullParameter("corrupt metadata", "message");
            return new q(state4, null, null, "corrupt metadata", 6);
        }
    }

    public final q h(final n manifest, final byte[] ciphertext, final p policy, final long j2) {
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        Intrinsics.checkNotNullParameter(ciphertext, "ciphertext");
        Intrinsics.checkNotNullParameter(policy, "policy");
        return q(new Function0() { // from class: N1.g
            /* JADX WARN: Code duplicated, block: B:114:0x03f5  */
            /* JADX WARN: Code duplicated, block: B:172:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:47:0x0141  */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r12v11 */
            /* JADX WARN: Type inference failed for: r12v2 */
            /* JADX WARN: Type inference failed for: r12v3, types: [N1.i] */
            /* JADX WARN: Type inference failed for: r13v14 */
            /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r13v16, types: [java.lang.StringBuilder] */
            /* JADX WARN: Type inference failed for: r13v17 */
            /* JADX WARN: Type inference failed for: r13v19 */
            /* JADX WARN: Type inference failed for: r13v20 */
            /* JADX WARN: Type inference failed for: r13v21 */
            /* JADX WARN: Type inference failed for: r13v23 */
            /* JADX WARN: Type inference failed for: r13v24, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r13v44 */
            /* JADX WARN: Type inference failed for: r13v45 */
            /* JADX WARN: Type inference failed for: r20v1, types: [byte[]] */
            /* JADX WARN: Type inference failed for: r20v2, types: [N1.r] */
            /* JADX WARN: Type inference failed for: r20v3 */
            /* JADX WARN: Type inference failed for: r20v5 */
            /* JADX WARN: Type inference failed for: r20v8 */
            /* JADX WARN: Type inference failed for: r20v9 */
            /* JADX WARN: Type inference failed for: r5v15, types: [long] */
            /* JADX WARN: Type inference failed for: r5v16 */
            /* JADX WARN: Type inference failed for: r5v17, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r5v18 */
            /* JADX WARN: Type inference failed for: r5v20 */
            /* JADX WARN: Type inference failed for: r5v22 */
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                c cVar;
                String str;
                s sVar;
                l lVar;
                s sVar2;
                String str2;
                ?? r5;
                f fVar;
                String str3;
                ?? r12;
                String str4;
                ?? sb;
                q qVar;
                String str5;
                i iVar;
                String str6;
                File file;
                int i3;
                i iVar2;
                n manifest2 = manifest;
                String str7 = manifest2.b;
                long j3 = manifest2.f1453e;
                byte[] bArr = ciphertext;
                long length = bArr.length;
                long j4 = manifest2.f1456j;
                String strM = i.m(bArr);
                c candidate = new c(str7, j3, length, j4, strM);
                String str8 = strM;
                i iVar3 = this;
                q qVarG = iVar3.g();
                r rVar = qVarG.f1465a;
                if (qVarG.f1467d != null) {
                    return qVarG;
                }
                String str9 = rVar.f1468a;
                String str10 = rVar.b;
                i iVar4 = iVar3;
                long j5 = rVar.f1469c;
                k state = new k(str9, str10, j5, rVar.f1470d, rVar.f1471e);
                Intrinsics.checkNotNullParameter(state, "state");
                Intrinsics.checkNotNullParameter(manifest2, "manifest");
                Intrinsics.checkNotNullParameter(candidate, "candidate");
                r state2 = rVar;
                p policy2 = policy;
                Intrinsics.checkNotNullParameter(policy2, "policy");
                u uVarA = manifest2.a(policy2, j2);
                long j6 = manifest2.f1453e;
                if (uVarA.f1492a.isEmpty()) {
                    Set setCreateSetBuilder = SetsKt.createSetBuilder();
                    setCreateSetBuilder.addAll(state.f1445d);
                    String str11 = manifest2.f1457k;
                    if (str11 != null) {
                        setCreateSetBuilder.add(str11);
                    }
                    o oVar = manifest2.f1458l;
                    if (oVar != null && (str2 = oVar.f1462a) != null) {
                        setCreateSetBuilder.add(str2);
                    }
                    Set set = CollectionsKt.toSet(SetsKt.build(setCreateSetBuilder));
                    k kVarA = k.a(state, null, null, 0L, set, null, 23);
                    if (set.contains(str7) || ((lVar = manifest2.f1459m) != null && lVar.f1447a)) {
                        cVar = candidate;
                        str8 = str8;
                        iVar4 = iVar4;
                        state2 = state2;
                        str = null;
                        sVar = new s(kVarA, j.f1440e);
                    } else {
                        if (Intrinsics.areEqual(str7, str7) && j3 == j6) {
                            cVar = candidate;
                            if (length == manifest2.f1455i && j4 == manifest2.f1456j) {
                                str = null;
                                if (StringsKt.equals(str8, manifest2.f1451c, false)) {
                                    Set set2 = state.f1446e;
                                    if (j6 > j5) {
                                        str8 = str8;
                                        iVar4 = iVar4;
                                        state2 = state2;
                                        sVar = new s(k.a(kVarA, str7, str7, Math.max(j5, j6), null, CollectionsKt.toSet(SetsKt.plus((Set<? extends String>) SetsKt___SetsKt.plus(set2, (Iterable) CollectionsKt.listOfNotNull((Object[]) new String[]{str9, str10})), str7)), 8), j.b);
                                    } else {
                                        if (j6 == j5) {
                                            sVar2 = new s(kVarA, j.f1439d);
                                        } else if (Intrinsics.areEqual(manifest2.f1460n, "AUTHORIZED_ROLLBACK_V2") && (set2.contains(str7) || Intrinsics.areEqual(str7, str9) || Intrinsics.areEqual(str7, str10))) {
                                            str8 = str8;
                                            iVar4 = iVar4;
                                            state2 = state2;
                                            sVar = new s(k.a(kVarA, str7, str7, Math.max(j5, j6), null, CollectionsKt.toSet(SetsKt.plus((Set<? extends String>) SetsKt___SetsKt.plus(set2, (Iterable) CollectionsKt.listOfNotNull((Object[]) new String[]{str9, str10})), str7)), 8), j.b);
                                        } else {
                                            sVar2 = new s(kVarA, j.g);
                                        }
                                        sVar = sVar2;
                                        str8 = str8;
                                        iVar4 = iVar4;
                                        state2 = state2;
                                    }
                                }
                            }
                            sVar = new s(kVarA, j.f1438c);
                        } else {
                            cVar = candidate;
                        }
                        str = null;
                        sVar = new s(kVarA, j.f1438c);
                    }
                } else {
                    sVar = new s(state, j.f);
                    cVar = candidate;
                    str8 = str8;
                    iVar4 = iVar4;
                    state2 = state2;
                    str = null;
                }
                j jVar = j.b;
                j jVar2 = sVar.b;
                if (jVar2 != jVar) {
                    String message = jVar2.name();
                    Intrinsics.checkNotNullParameter(state2, "state");
                    Intrinsics.checkNotNullParameter(message, "message");
                    return new q(state2, null, null, message, 6);
                }
                File file2 = iVar4.f1434a;
                q qVarG2 = iVar4.g();
                r state3 = qVarG2.f1465a;
                if (qVarG2.f1467d != null) {
                    return qVarG2;
                }
                k kVar = sVar.f1472a;
                r rVarA = r.a(state3, kVar.f1443a, kVar.b, kVar.f1444c, kVar.f1445d, kVar.f1446e, null, 32);
                if (!i.p(str7) || length < 0 || length > iVar4.b || bArr.length != length) {
                    Intrinsics.checkNotNullParameter(state3, "state");
                    Intrinsics.checkNotNullParameter("invalid candidate", "message");
                    return new q(state3, null, null, "invalid candidate", 6);
                }
                String strM2 = i.m(bArr);
                if (!StringsKt.equals(strM2, str8, true)) {
                    Intrinsics.checkNotNullParameter(state3, "state");
                    Intrinsics.checkNotNullParameter("hash mismatch", "message");
                    return new q(state3, null, null, "hash mismatch", 6);
                }
                Set set3 = rVarA.f1470d;
                Map map = rVarA.f;
                Set set4 = rVarA.f1471e;
                long j7 = rVarA.f1469c;
                if (set3.contains(str7)) {
                    Intrinsics.checkNotNullParameter(state3, "state");
                    Intrinsics.checkNotNullParameter("artifact revoked", "message");
                    return new q(state3, null, null, "artifact revoked", 6);
                }
                r state4 = state3;
                String strM3 = E.b.m("artifact_", str7, ".enc");
                String str12 = ".enc";
                Map map2 = map;
                ?? r20 = bArr;
                f fVar2 = new f(str7, r5, length, strM2, strM3);
                File destination = new File(file2, strM3);
                if (!iVar4.j(destination)) {
                    r5 = j3;
                    Intrinsics.checkNotNullParameter(state4, "state");
                    Intrinsics.checkNotNullParameter("unsafe artifact path", "message");
                    return new q(state4, null, null, "unsafe artifact path", 6);
                }
                if (destination.exists()) {
                    if (Intrinsics.areEqual(state4.f.get(str7), fVar2)) {
                        try {
                            r5 = j3;
                            if (iVar4.l(destination)) {
                                i iVar5 = iVar4;
                                file = file2;
                                i3 = 0;
                                try {
                                    if (StringsKt.equals(i.m(iVar5.c(destination, length, iVar4.b)), strM2, true)) {
                                        r rVarD = r.a(rVarA, str7, str7, Math.max(j7, (long) r5), null, SetsKt.plus((Set<? extends String>) set4, str7), MapsKt.plus(map2, TuplesKt.to(str7, fVar2)), 8).d();
                                        if (iVar5.i(rVarD)) {
                                            return new q(rVarD, fVar2, null, null, 12);
                                        }
                                        Intrinsics.checkNotNullParameter(state4, "state");
                                        Intrinsics.checkNotNullParameter("metadata publish failed", "message");
                                        return new q(state4, null, null, "metadata publish failed", 6);
                                    }
                                    str6 = "message";
                                    str5 = "state";
                                    iVar = iVar5;
                                } catch (Exception unused) {
                                    str6 = "message";
                                    state4 = state4;
                                    fVar2 = fVar2;
                                    str5 = "state";
                                    iVar2 = iVar5;
                                }
                            } else {
                                str5 = "state";
                                iVar = iVar4;
                                str6 = "message";
                                file = file2;
                                i3 = 0;
                            }
                            iVar2 = iVar;
                        } catch (Exception unused2) {
                            r5 = j3;
                            state4 = state4;
                            fVar2 = fVar2;
                            str5 = "state";
                            iVar2 = iVar4;
                            str6 = "message";
                            file = file2;
                            i3 = 0;
                        }
                    } else {
                        r5 = j3;
                        state4 = state4;
                        fVar2 = fVar2;
                        str5 = "state";
                        iVar2 = iVar4;
                        str6 = "message";
                        file = file2;
                        i3 = 0;
                    }
                    int i4 = i3;
                    while (true) {
                        if (i4 >= 20) {
                            throw new IllegalStateException("artifact unavailable");
                        }
                        str4 = str6;
                        long jIncrementAndGet = i.f.incrementAndGet();
                        str3 = str5;
                        StringBuilder sb2 = new StringBuilder("artifact_");
                        sb2.append(str7);
                        sb2.append("_");
                        sb2.append(jIncrementAndGet);
                        sb2.append("_");
                        sb2.append(i4);
                        String str13 = str12;
                        sb2.append(str13);
                        String fileName = sb2.toString();
                        if (!new File(file, fileName).exists()) {
                            String version = fVar2.f1425a;
                            Intrinsics.checkNotNullParameter(version, "version");
                            String sha256 = fVar2.f1427d;
                            Intrinsics.checkNotNullParameter(sha256, "sha256");
                            Intrinsics.checkNotNullParameter(fileName, "fileName");
                            f fVar3 = new f(version, fVar2.b, fVar2.f1426c, sha256, fileName);
                            destination = new File(file, fileName);
                            fVar = fVar3;
                            r12 = iVar2;
                            break;
                        }
                        i4++;
                        str12 = str13;
                        str6 = str4;
                        str5 = str3;
                    }
                } else {
                    r5 = j3;
                    state4 = state4;
                    fVar = fVar2;
                    str3 = "state";
                    r12 = iVar4;
                    str4 = "message";
                    map2 = map2;
                }
                File source = null;
                try {
                    try {
                        String str14 = fVar.f1428e;
                        sb = new StringBuilder();
                        sb.append(".");
                        sb.append(str14);
                        sb.append(".");
                        source = r12.o(sb.toString());
                        Intrinsics.checkNotNull(source);
                        r12.r(source, r20);
                        try {
                            try {
                                if (r12.l(source)) {
                                    Intrinsics.checkNotNullParameter(source, "source");
                                    Intrinsics.checkNotNullParameter(destination, "destination");
                                    if (source.renameTo(destination)) {
                                        try {
                                            String str15 = cVar.f1416a;
                                            r rVarD2 = r.a(rVarA, str15, str15, Math.max(j7, (long) r5), null, SetsKt.plus((Set<? extends String>) set4, str7), MapsKt.plus(map2, TuplesKt.to(str7, fVar)), 8).d();
                                            if (r12.i(rVarD2)) {
                                                q qVar2 = new q(rVarD2, fVar, null, null, 12);
                                                r12.k(source);
                                                return qVar2;
                                            }
                                            str = str3;
                                            try {
                                                Intrinsics.checkNotNullParameter(state4, str);
                                                sb = str4;
                                                try {
                                                    Intrinsics.checkNotNullParameter("metadata publish failed", sb);
                                                    r rVar2 = state4;
                                                    qVar = new q(rVar2, null, null, "metadata publish failed", 6);
                                                    sb = sb;
                                                    r20 = rVar2;
                                                } catch (Exception unused3) {
                                                    r5 = state4;
                                                    Intrinsics.checkNotNullParameter(r5, str);
                                                    Intrinsics.checkNotNullParameter("publish failed", sb);
                                                    qVar = new q(r5, null, null, "publish failed", 6);
                                                    if (source == null) {
                                                        return qVar;
                                                    }
                                                }
                                            } catch (Exception unused4) {
                                                r5 = state4;
                                                sb = str4;
                                                Intrinsics.checkNotNullParameter(r5, str);
                                                Intrinsics.checkNotNullParameter("publish failed", sb);
                                                qVar = new q(r5, null, null, "publish failed", 6);
                                                if (source == null) {
                                                    return qVar;
                                                }
                                            }
                                        } catch (Exception unused5) {
                                            sb = str4;
                                            str = str3;
                                        }
                                    } else {
                                        r rVar3 = state4;
                                        String str16 = str4;
                                        str = str3;
                                        Intrinsics.checkNotNullParameter(rVar3, str);
                                        Intrinsics.checkNotNullParameter("artifact publish failed", str16);
                                        r rVar4 = rVar3;
                                        qVar = new q(rVar4, null, null, "artifact publish failed", 6);
                                        sb = str16;
                                        r20 = rVar4;
                                    }
                                } else {
                                    r rVar5 = state4;
                                    String str17 = str4;
                                    str = str3;
                                    Intrinsics.checkNotNullParameter(rVar5, str);
                                    Intrinsics.checkNotNullParameter("artifact publish failed", str17);
                                    r rVar6 = rVar5;
                                    qVar = new q(rVar6, null, null, "artifact publish failed", 6);
                                    sb = str17;
                                    r20 = rVar6;
                                }
                            } catch (Exception unused6) {
                            }
                        } catch (Exception unused7) {
                            r5 = r20;
                        }
                    } catch (Exception unused8) {
                        r5 = state4;
                        sb = str4;
                        str = str3;
                    }
                    r12.k(source);
                    return qVar;
                } catch (Throwable th) {
                    if (0 != 0) {
                        r12.k(null);
                    }
                    throw th;
                }
            }
        });
    }

    public final boolean i(r rVar) {
        File destination = this.f1435c;
        boolean z2 = false;
        try {
            if (j(destination) && (!destination.exists() || l(destination))) {
                File source = null;
                try {
                    source = o(".ota-state.");
                    Intrinsics.checkNotNull(source);
                    String str = rVar.f1468a;
                    String str2 = "";
                    if (str == null) {
                        str = "";
                    }
                    String str3 = rVar.b;
                    if (str3 != null) {
                        str2 = str3;
                    }
                    byte[] bytes = ("V2\n" + str + "\n" + str2 + "\n" + rVar.f1469c + "\n" + CollectionsKt.o(rVar.f1470d, ",", null, null, null, 62) + "\n" + CollectionsKt.o(rVar.f1471e, ",", null, null, null, 62) + "\n" + CollectionsKt.o(rVar.f.values(), "", null, null, new L1.d(6), 30)).getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                    r(source, bytes);
                    if (l(source)) {
                        Intrinsics.checkNotNullParameter(source, "source");
                        Intrinsics.checkNotNullParameter(destination, "destination");
                        if (source.renameTo(destination)) {
                            z2 = true;
                        }
                    }
                    k(source);
                    return z2;
                } catch (Exception unused) {
                    if (source != null) {
                        k(source);
                    }
                } catch (Throwable th) {
                    if (source != null) {
                        k(source);
                    }
                    throw th;
                }
            }
        } catch (Exception unused2) {
        }
        return false;
    }

    public final boolean j(File file) {
        try {
            File absoluteFile = this.f1434a.getAbsoluteFile();
            if (Intrinsics.areEqual(file.getAbsoluteFile().getParentFile(), absoluteFile)) {
                Intrinsics.checkNotNull(absoluteFile);
                if (!f(absoluteFile) && (!file.exists() || !f(file))) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final void k(File file) {
        try {
            if (file.exists() && j(file) && !f(file)) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    public final boolean l(File file) {
        e eVar;
        try {
            if (j(file)) {
                String path = file.getAbsolutePath();
                Intrinsics.checkNotNullExpressionValue(path, "getAbsolutePath(...)");
                Intrinsics.checkNotNullParameter(path, "path");
                try {
                    StructStat structStatLstat = Os.lstat(path);
                    if (structStatLstat != null) {
                        int i3 = structStatLstat.st_mode & OsConstants.S_IFMT;
                        eVar = new e(i3 == OsConstants.S_IFREG, i3 == OsConstants.S_IFLNK, structStatLstat.st_size);
                    } else {
                        eVar = null;
                    }
                } catch (ErrnoException e2) {
                    if (e2.errno != OsConstants.ENOENT) {
                        throw e2;
                    }
                }
                if (eVar != null && eVar.f1423a) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public final File o(String str) {
        for (int i3 = 0; i3 < 20; i3++) {
            File file = new File(this.f1434a, str + System.nanoTime() + "_" + i3 + ".tmp");
            if (!file.exists()) {
                return file;
            }
        }
        throw new IllegalStateException("temp unavailable");
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0054  */
    /* JADX WARN: Code duplicated, block: B:20:0x0055 A[Catch: all -> 0x00a4, TryCatch #3 {all -> 0x00a4, blocks: (B:17:0x004c, B:32:0x008a, B:20:0x0055, B:22:0x005a, B:24:0x0062, B:26:0x0071, B:31:0x0087, B:28:0x0079, B:30:0x0081), top: B:60:0x004c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x005a A[Catch: all -> 0x00a4, TryCatch #3 {all -> 0x00a4, blocks: (B:17:0x004c, B:32:0x008a, B:20:0x0055, B:22:0x005a, B:24:0x0062, B:26:0x0071, B:31:0x0087, B:28:0x0079, B:30:0x0081), top: B:60:0x004c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x0062 A[Catch: all -> 0x00a4, TryCatch #3 {all -> 0x00a4, blocks: (B:17:0x004c, B:32:0x008a, B:20:0x0055, B:22:0x005a, B:24:0x0062, B:26:0x0071, B:31:0x0087, B:28:0x0079, B:30:0x0081), top: B:60:0x004c, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x008a A[EDGE_INSN: B:71:0x008a->B:32:0x008a BREAK  A[LOOP:0: B:21:0x0058->B:31:0x0087], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:20:0x0055, please report this as an issue */
    public final q q(Function0 function0) {
        FileLock fileLockTryLock;
        File[] fileArrListFiles;
        int i3;
        int i4;
        String name;
        q qVar;
        try {
            synchronized (this.f1437e) {
                e();
                FileOutputStream fileOutputStream = new FileOutputStream(a());
                try {
                    FileChannel channel = fileOutputStream.getChannel();
                    try {
                        fileLockTryLock = channel.tryLock();
                        if (fileLockTryLock == null) {
                            fileLockTryLock = channel.lock();
                            try {
                                fileArrListFiles = this.f1434a.listFiles();
                                if (fileArrListFiles == null) {
                                    i4 = 0;
                                    for (File file : fileArrListFiles) {
                                        i4++;
                                        if (i4 <= 256) {
                                            break;
                                        }
                                        name = file.getName();
                                        Intrinsics.checkNotNull(name);
                                        if ((StringsKt.N(name, ".ota-state.") || StringsKt.N(name, ".artifact_")) && StringsKt__StringsJVMKt.endsWith$default(name, ".tmp", false, 2, null)) {
                                            Intrinsics.checkNotNull(file);
                                            k(file);
                                        }
                                    }
                                }
                                d();
                                qVar = (q) function0.invoke();
                                if (fileLockTryLock != null) {
                                    try {
                                        fileLockTryLock.release();
                                    } catch (Exception unused) {
                                    }
                                }
                                CloseableKt.closeFinally(fileOutputStream, null);
                            } catch (Throwable th) {
                                if (fileLockTryLock == null) {
                                    throw th;
                                }
                                try {
                                    fileLockTryLock.release();
                                    throw th;
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                        } else {
                            fileArrListFiles = this.f1434a.listFiles();
                            if (fileArrListFiles == null) {
                                i4 = 0;
                                while (i3 < r1) {
                                    i4++;
                                    if (i4 <= 256) {
                                        break;
                                        break;
                                    }
                                    name = file.getName();
                                    Intrinsics.checkNotNull(name);
                                    if (StringsKt.N(name, ".ota-state.")) {
                                        Intrinsics.checkNotNull(file);
                                        k(file);
                                    } else {
                                        Intrinsics.checkNotNull(file);
                                        k(file);
                                    }
                                }
                            }
                            d();
                            qVar = (q) function0.invoke();
                            if (fileLockTryLock != null) {
                                fileLockTryLock.release();
                            }
                            CloseableKt.closeFinally(fileOutputStream, null);
                        }
                    } catch (Exception e2) {
                        Log.w("MinHub-OtaStore", "file lock unavailable: " + e2.getClass().getSimpleName() + ": " + e2.getMessage());
                        fileLockTryLock = null;
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(fileOutputStream, th2);
                        throw th3;
                    }
                }
                throw th;
            }
            return qVar;
        } catch (Exception e3) {
            Log.w("MinHub-OtaStore", "withLock failed: " + e3.getClass().getSimpleName() + ": " + e3.getMessage(), e3);
            r state = new r().d();
            String message = "store locked: " + e3.getClass().getSimpleName() + ": " + e3.getMessage();
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(message, "message");
            return new q(state, null, null, message, 6);
        }
    }

    public final void r(File file, byte[] bArr) {
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        FileDescriptor fileDescriptorC = a.f1411a.c(absolutePath, d.f1420c, true);
        if (fileDescriptorC == null) {
            throw new IllegalStateException("secure temp unavailable");
        }
        FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptorC);
        try {
            fileOutputStream.write(bArr);
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
}
