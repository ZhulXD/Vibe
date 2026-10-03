package p064y1;

import M1.d;
import com.minhub.gamehub.hub.catalog.h;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p000a.a;
import p023i1.l;
import p023i1.m;
import p023i1.n;
import p023i1.o;
import p023i1.q;
import p023i1.r;
import p023i1.s;
import p028k1.j;
import p028k1.k;

/* JADX INFO: renamed from: y1.b1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0361b1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6196a = new Regex("open_encrypted_with_pass\\s*\\([^,]+,[^,]+,\\s*\"((?:[^\"\\\\]|\\\\.)*)\"\\s*\\)");
    public static final Regex b = new Regex("open_encrypted_with_pass\\s*\\([^,]+,[^,]+,\\s*([A-Za-z_][\\w.]*)\\s*\\)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set f6197c = SetsKt.setOf((Object[]) new String[]{"png", "jpg", "jpeg", "webp", "log", "import", "tmp", "ogg", "wav", "mp3"});

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List f6198d = CollectionsKt.listOf((Object[]) new String[]{".max", ".min", ".minx"});

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final l f6199e;

    static {
        m mVar = new m();
        mVar.f4450j = false;
        mVar.g = true;
        f6199e = mVar.a();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008f A[LOOP:1: B:6:0x0037->B:26:0x008f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:65:0x0091 A[EDGE_INSN: B:65:0x0091->B:27:0x0091 BREAK  A[LOOP:1: B:6:0x0037->B:26:0x008f], SYNTHETIC] */
    public static int a(C0358a1 opened, Map edits) {
        Integer intOrNull;
        o oVar;
        Integer intOrNull2;
        o oVarK;
        Intrinsics.checkNotNullParameter(opened, "opened");
        Intrinsics.checkNotNullParameter(edits, "edits");
        int i3 = 0;
        for (Map.Entry entry : edits.entrySet()) {
            X0 x2 = (X0) entry.getKey();
            o oVar2 = (s) entry.getValue();
            o oVar3 = opened.f6180c;
            for (Object obj : CollectionsKt___CollectionsKt.dropLast(x2.f6156a, 1)) {
                Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
                String str = (String) obj;
                if (oVar3 instanceof r) {
                    oVarK = oVar3.d().k(str);
                } else {
                    oVar = null;
                    if ((oVar3 instanceof n) && (intOrNull2 = StringsKt.toIntOrNull(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removePrefix(str, (CharSequence) "["), (CharSequence) "]"))) != null) {
                        int iIntValue = intOrNull2.intValue();
                        n nVarC = oVar3.c();
                        if (iIntValue < 0 || iIntValue >= nVarC.b.size()) {
                            nVarC = null;
                        }
                        if (nVarC != null) {
                            oVarK = (o) nVarC.b.get(iIntValue);
                        }
                    }
                    if (oVar == null) {
                        break;
                    }
                    oVar3 = oVar;
                }
                oVar = oVarK;
                if (oVar == null) {
                    break;
                    break;
                }
                oVar3 = oVar;
            }
            String str2 = (String) CollectionsKt.last(x2.f6156a);
            if (oVar3 instanceof r) {
                if (!Intrinsics.areEqual(oVar3.d().k(str2), oVar2)) {
                    oVar3.d().g(str2, oVar2);
                    i3++;
                }
            } else if ((oVar3 instanceof n) && (intOrNull = StringsKt.toIntOrNull(StringsKt__StringsKt.removeSuffix(StringsKt__StringsKt.removePrefix(str2, (CharSequence) "["), (CharSequence) "]"))) != null) {
                int iIntValue2 = intOrNull.intValue();
                ArrayList arrayList = oVar3.c().b;
                if (iIntValue2 >= 0 && iIntValue2 < arrayList.size() && !Intrinsics.areEqual((o) arrayList.get(iIntValue2), oVar2)) {
                    if (oVar2 == null) {
                        oVar2 = q.b;
                    }
                    i3++;
                }
            }
        }
        return i3;
    }

    public static final boolean b(boolean z2, s sVar) {
        Serializable serializable = sVar.b;
        if ((serializable instanceof Number) || (serializable instanceof Boolean)) {
            return true;
        }
        if (!z2 || !(serializable instanceof String)) {
            return false;
        }
        String strF = sVar.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getAsString(...)");
        Double doubleOrNull = StringsKt.toDoubleOrNull(StringsKt.trim((CharSequence) strF).toString());
        return doubleOrNull != null && Math.abs(doubleOrNull.doubleValue()) <= Double.MAX_VALUE;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:63:0x019f  */
    public static final void c(ArrayList arrayList, boolean z2, o oVar, List list) {
        String strF;
        List list2;
        if (!(oVar instanceof r)) {
            if (oVar instanceof n) {
                n nVarC = oVar.c();
                Intrinsics.checkNotNullExpressionValue(nVarC, "getAsJsonArray(...)");
                ArrayList arrayList2 = nVarC.b;
                int size = arrayList2.size();
                int i3 = 0;
                int i4 = 0;
                while (i4 < size) {
                    Object obj = arrayList2.get(i4);
                    i4++;
                    int i5 = i3 + 1;
                    if (i3 < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    o oVar2 = (o) obj;
                    oVar2.getClass();
                    boolean z3 = oVar2 instanceof s;
                    if (z3) {
                        s sVarE = oVar2.e();
                        Intrinsics.checkNotNullExpressionValue(sVarE, "getAsJsonPrimitive(...)");
                        if (b(z2, sVarE)) {
                            List listPlus = CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) list), "[" + i3 + "]");
                            String strF2 = oVar2.f();
                            Intrinsics.checkNotNullExpressionValue(strF2, "getAsString(...)");
                            arrayList.add(new X0(listPlus, strF2, oVar2.e().b instanceof Boolean, null, null, oVar2.e().b instanceof String));
                        } else if (z3 && !(oVar2 instanceof q)) {
                            Intrinsics.checkNotNull(oVar2);
                            c(arrayList, z2, oVar2, CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) list), "[" + i3 + "]"));
                        }
                    } else if (z3) {
                    }
                    i3 = i5;
                }
                return;
            }
            return;
        }
        r rVarD = oVar.d();
        p028k1.m mVar = rVarD.b;
        Iterator it = ((k) mVar.entrySet()).iterator();
        while (((j) it).hasNext()) {
            p028k1.l lVarB = ((j) it).b();
            Intrinsics.checkNotNull(lVarB);
            String str = (String) lVarB.getKey();
            o oVar3 = (o) lVarB.getValue();
            oVar3.getClass();
            boolean z4 = oVar3 instanceof s;
            if (z4 && ((list2 = f6198d) == null || !list2.isEmpty())) {
                Iterator it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        String str2 = (String) it2.next();
                        Intrinsics.checkNotNull(str);
                        if (!StringsKt__StringsJVMKt.endsWith$default(str, str2, false, 2, null) || !mVar.containsKey(StringsKt__StringsKt.removeSuffix(str, (CharSequence) str2))) {
                        }
                    }
                }
            }
            if (z4) {
                s sVarE2 = oVar3.e();
                Serializable serializable = sVarE2.b;
                Intrinsics.checkNotNull(sVarE2);
                if (b(z2, sVarE2)) {
                    List listPlus2 = CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) list), str);
                    String strF3 = sVarE2.f();
                    Intrinsics.checkNotNullExpressionValue(strF3, "getAsString(...)");
                    boolean z5 = serializable instanceof Boolean;
                    o oVarK = rVarD.k(str + ".min");
                    if (oVarK == null) {
                        oVarK = rVarD.k(str + ".minx");
                    }
                    String strF4 = null;
                    if (oVarK == null) {
                        strF = null;
                    } else {
                        if (!(oVarK instanceof s) || !(oVarK.e().b instanceof Number)) {
                            oVarK = null;
                        }
                        if (oVarK != null) {
                            strF = oVarK.f();
                        } else {
                            strF = null;
                        }
                    }
                    o oVarK2 = rVarD.k(str + ".max");
                    if (oVarK2 != null) {
                        if (!(oVarK2 instanceof s) || !(oVarK2.e().b instanceof Number)) {
                            oVarK2 = null;
                        }
                        if (oVarK2 != null) {
                            strF4 = oVarK2.f();
                        }
                    }
                    arrayList.add(new X0(listPlus2, strF3, z5, strF, strF4, serializable instanceof String));
                }
            } else {
                Intrinsics.checkNotNull(oVar3);
                c(arrayList, z2, oVar3, CollectionsKt___CollectionsKt.plus((Collection<? extends String>) ((Collection<? extends Object>) list), str));
            }
        }
    }

    public static List d(File pack) {
        Object objM9constructorimpl;
        int i3;
        Intrinsics.checkNotNullParameter(pack, "pack");
        try {
            Result.Companion companion = Result.INSTANCE;
            List listI = i(pack);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            Iterator it = listI.iterator();
            while (true) {
                i3 = 0;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                String str = (String) next;
                Iterator it2 = Regex.findAll$default(f6196a, str, 0, 2, null).iterator();
                while (it2.hasNext()) {
                    String str2 = ((MatchResult) it2.next()).getGroupValues().get(1);
                    Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
                    linkedHashSet.add(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str2, "\\\"", "\"", false, 4, (Object) null), "\\\\", "\\", false, 4, (Object) null));
                }
                Iterator it3 = Regex.findAll$default(b, str, 0, 2, null).iterator();
                while (it3.hasNext()) {
                    String str3 = ((MatchResult) it3.next()).getGroupValues().get(1);
                    Intrinsics.checkNotNullExpressionValue(str3, "get(...)");
                    linkedHashSet2.add(StringsKt__StringsKt.substringAfterLast$default(str3, '.', (String) null, 2, (Object) null));
                }
            }
            Iterator it4 = linkedHashSet2.iterator();
            Intrinsics.checkNotNullExpressionValue(it4, "iterator(...)");
            while (it4.hasNext()) {
                Regex regex = new Regex("(?:const|var)\\s+" + Regex.INSTANCE.escape((String) it4.next()) + "\\s*(?::\\s*\\w+\\s*)?:?=\\s*\"((?:[^\"\\\\]|\\\\.)*)\"");
                for (Object obj : listI) {
                    Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
                    Iterator it5 = Regex.findAll$default(regex, (String) obj, i3, 2, null).iterator();
                    while (it5.hasNext()) {
                        String str4 = ((MatchResult) it5.next()).getGroupValues().get(1);
                        Intrinsics.checkNotNullExpressionValue(str4, "get(...)");
                        linkedHashSet.add(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str4, "\\\"", "\"", false, 4, (Object) null), "\\\\", "\\", false, 4, (Object) null));
                        i3 = 0;
                    }
                }
            }
            objM9constructorimpl = Result.m9constructorimpl(CollectionsKt.toList(linkedHashSet));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        List listEmptyList = CollectionsKt.emptyList();
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = listEmptyList;
        }
        return (List) objM9constructorimpl;
    }

    public static long e(byte[] bArr) {
        int length = bArr.length - 1;
        long j2 = 0;
        if (length < 0) {
            return 0L;
        }
        while (true) {
            int i3 = length - 1;
            j2 = (j2 << 8) | (((long) bArr[length]) & 255);
            if (i3 < 0) {
                return j2;
            }
            length = i3;
        }
    }

    public static List f(File userDir) {
        Intrinsics.checkNotNullParameter(userDir, "userDir");
        return !userDir.isDirectory() ? CollectionsKt.emptyList() : CollectionsKt.sortedWith(SequencesKt.toList(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(userDir).onEnter(new d(userDir, 1)).maxDepth(4), new h(25))), new M(3));
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00d6  */
    public static C0358a1 g(File file, List passwords) {
        Object objM9constructorimpl;
        byte[] bArrCopyOf;
        Object objM9constructorimpl2;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(passwords, "passwords");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(FilesKt.readBytes(file));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        byte[] bytes = (byte[]) objM9constructorimpl;
        if (bytes != null) {
            byte[] bArr = Y0.f6162a;
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            if (bytes.length >= 44) {
                int i3 = 0;
                int i4 = 4;
                if (Arrays.equals(ArraysKt.copyOfRange(bytes, 0, 4), Y0.f6162a)) {
                    for (Object obj : passwords) {
                        Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
                        String password = (String) obj;
                        byte[] bArr2 = Y0.f6162a;
                        Intrinsics.checkNotNullParameter(bytes, "bytes");
                        Intrinsics.checkNotNullParameter(password, "password");
                        Intrinsics.checkNotNullParameter(bytes, "bytes");
                        if (bytes.length < 44 || !Arrays.equals(ArraysKt.copyOfRange(bytes, i3, i4), Y0.f6162a)) {
                            bArrCopyOf = null;
                        } else {
                            byte[] bArrCopyOfRange = ArraysKt.copyOfRange(bytes, i4, 20);
                            long j2 = 0;
                            for (int i5 = 7; -1 < i5; i5--) {
                                j2 = (j2 << 8) | (((long) bytes[i5 + 20]) & 255);
                            }
                            int length = bytes.length - 44;
                            if (j2 < 0 || j2 > length) {
                                bArrCopyOf = null;
                            } else {
                                byte[] bArrCopyOfRange2 = ArraysKt.copyOfRange(bytes, 28, 44);
                                try {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    objM9constructorimpl2 = Result.m9constructorimpl(Y0.a(2, password, bArrCopyOfRange2).doFinal(bytes, 44, length));
                                } catch (Throwable th2) {
                                    Result.Companion companion4 = Result.INSTANCE;
                                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                                }
                                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                                    objM9constructorimpl2 = null;
                                }
                                byte[] bArr3 = (byte[]) objM9constructorimpl2;
                                if (bArr3 == null) {
                                    bArrCopyOf = null;
                                } else {
                                    bArrCopyOf = Arrays.copyOf(bArr3, (int) j2);
                                    Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
                                    byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bArrCopyOf);
                                    Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
                                    if (!Arrays.equals(bArrDigest, bArrCopyOfRange)) {
                                        bArrCopyOf = null;
                                    }
                                }
                            }
                        }
                        if (bArrCopyOf != null) {
                            o oVarH = h(bArrCopyOf);
                            if (oVarH == null) {
                                break;
                            }
                            return new C0358a1(file, password, oVarH);
                        }
                        i3 = 0;
                        i4 = 4;
                    }
                }
            }
            o oVarH2 = h(bytes);
            if (oVarH2 != null) {
                return new C0358a1(file, null, oVarH2);
            }
            return null;
        }
        return null;
    }

    public static o h(byte[] bArr) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String strTrimEnd = StringsKt.trimEnd(StringsKt.trim((CharSequence) new String(bArr, Charsets.UTF_8)).toString(), 0);
            if (!StringsKt.N(strTrimEnd, "{") && !StringsKt.N(strTrimEnd, "[")) {
                return null;
            }
            o oVarE = a.E(strTrimEnd);
            if (!(oVarE instanceof r) && !(oVarE instanceof n)) {
                oVarE = null;
            }
            objM9constructorimpl = Result.m9constructorimpl(oVarE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        return (o) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
    }

    public static List i(File pack) {
        long jE;
        Intrinsics.checkNotNullParameter(pack, "pack");
        RandomAccessFile randomAccessFile = new RandomAccessFile(pack, "r");
        try {
            byte[] bArr = new byte[4];
            randomAccessFile.readFully(bArr);
            if (!Intrinsics.areEqual(new String(bArr, Charsets.US_ASCII), "GDPC")) {
                List listEmptyList = CollectionsKt.emptyList();
                CloseableKt.closeFinally(randomAccessFile, null);
                return listEmptyList;
            }
            byte[] bArr2 = new byte[4];
            randomAccessFile.readFully(bArr2);
            long jE2 = e(bArr2);
            j(randomAccessFile);
            j(randomAccessFile);
            j(randomAccessFile);
            Ref.LongRef longRef = new Ref.LongRef();
            long j2 = 0;
            long j3 = 1;
            if (jE2 >= 2) {
                byte[] bArr3 = new byte[4];
                randomAccessFile.readFully(bArr3);
                long jE3 = e(bArr3);
                byte[] bArr4 = new byte[8];
                randomAccessFile.readFully(bArr4);
                longRef.element = e(bArr4);
                if ((jE3 & 1) != 0) {
                    List listEmptyList2 = CollectionsKt.emptyList();
                    CloseableKt.closeFinally(randomAccessFile, null);
                    return listEmptyList2;
                }
            }
            randomAccessFile.skipBytes(64);
            byte[] bArr5 = new byte[4];
            randomAccessFile.readFully(bArr5);
            long jE4 = e(bArr5);
            ArrayList arrayList = new ArrayList();
            int i3 = (int) jE4;
            int i4 = 0;
            int i5 = 0;
            while (i5 < i3) {
                byte[] bArr6 = new byte[4];
                randomAccessFile.readFully(bArr6);
                byte[] bArr7 = new byte[(int) e(bArr6)];
                randomAccessFile.readFully(bArr7);
                long j4 = j2;
                String strTrimEnd = StringsKt.trimEnd(new String(bArr7, Charsets.UTF_8), 0);
                byte[] bArr8 = new byte[8];
                randomAccessFile.readFully(bArr8);
                long jE5 = e(bArr8);
                byte[] bArr9 = new byte[8];
                randomAccessFile.readFully(bArr9);
                long jE6 = e(bArr9);
                randomAccessFile.skipBytes(16);
                if (jE2 >= 2) {
                    byte[] bArr10 = new byte[4];
                    randomAccessFile.readFully(bArr10);
                    jE = e(bArr10);
                } else {
                    jE = j4;
                }
                if (StringsKt__StringsJVMKt.endsWith$default(strTrimEnd, ".gd", false, 2, null) && (jE & j3) == j4 && j3 <= jE6 && jE6 < 524289) {
                    arrayList.add(new Triple(strTrimEnd, Long.valueOf(jE5 + longRef.element), Long.valueOf(jE6)));
                }
                i5++;
                j2 = j4;
                j3 = 1;
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            int size = arrayList.size();
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                Triple triple = (Triple) obj;
                long jLongValue = ((Number) triple.component2()).longValue();
                long jLongValue2 = ((Number) triple.component3()).longValue();
                randomAccessFile.seek(jLongValue);
                byte[] bArr11 = new byte[(int) jLongValue2];
                randomAccessFile.readFully(bArr11);
                arrayList2.add(new String(bArr11, Charsets.UTF_8));
            }
            CloseableKt.closeFinally(randomAccessFile, null);
            return arrayList2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(randomAccessFile, th);
                throw th2;
            }
        }
    }

    public static final long j(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[4];
        randomAccessFile.readFully(bArr);
        return e(bArr);
    }

    public static void k(C0358a1 opened) throws BadPaddingException, IllegalBlockSizeException {
        Intrinsics.checkNotNullParameter(opened, "opened");
        File file = opened.f6179a;
        File file2 = new File(file.getParentFile(), kotlin.collections.unsigned.a.g(file.getName(), ".minhub.bak"));
        if (!file2.exists()) {
            FilesKt__UtilsKt.copyTo$default(file, file2, false, 0, 6, null);
        }
        String strF = f6199e.f(opened.f6180c);
        Intrinsics.checkNotNullExpressionValue(strF, "toJson(...)");
        byte[] plain = strF.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(plain, "getBytes(...)");
        String password = opened.b;
        if (password != null) {
            byte[] bArr = Y0.f6162a;
            SecureRandom random = new SecureRandom();
            Intrinsics.checkNotNullParameter(plain, "plain");
            Intrinsics.checkNotNullParameter(password, "password");
            Intrinsics.checkNotNullParameter(random, "random");
            byte[] bArrCopyOf = Arrays.copyOf(plain, ((plain.length + 15) / 16) * 16);
            Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
            byte[] bArr2 = new byte[16];
            random.nextBytes(bArr2);
            byte[] bArrDoFinal = Y0.a(1, password, bArr2).doFinal(bArrCopyOf);
            byte[] bArr3 = new byte[bArrDoFinal.length + 44];
            ArraysKt___ArraysJvmKt.copyInto$default(Y0.f6162a, bArr3, 0, 0, 0, 12, (Object) null);
            byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(plain);
            Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
            ArraysKt___ArraysJvmKt.copyInto$default(bArrDigest, bArr3, 4, 0, 0, 12, (Object) null);
            long length = plain.length;
            for (int i3 = 0; i3 < 8; i3++) {
                bArr3[i3 + 20] = (byte) (255 & length);
                length >>= 8;
            }
            ArraysKt___ArraysJvmKt.copyInto$default(bArr2, bArr3, 28, 0, 0, 12, (Object) null);
            Intrinsics.checkNotNull(bArrDoFinal);
            ArraysKt___ArraysJvmKt.copyInto$default(bArrDoFinal, bArr3, 44, 0, 0, 12, (Object) null);
            plain = bArr3;
        }
        File file3 = new File(file.getParentFile(), kotlin.collections.unsigned.a.g(file.getName(), ".minhub.tmp"));
        FilesKt.writeBytes(file3, plain);
        if (file3.renameTo(file)) {
            return;
        }
        FilesKt.writeBytes(file, plain);
        file3.delete();
    }
}
