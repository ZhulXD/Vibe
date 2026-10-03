package com.minhub.gamehub.hub;

import A1.C0033n;
import A1.C0035p;
import C1.AbstractC0112v1;
import C1.T;
import C1.ViewOnClickListenerC0106t1;
import D1.b;
import D1.d;
import D1.f;
import D1.g;
import D1.j;
import S1.c;
import T1.a;
import T1.e;
import T1.h;
import T1.l;
import T1.m;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nKiriKiriInstallActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KiriKiriInstallActivity.kt\ncom/minhub/gamehub/hub/KiriKiriInstallActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,413:1\n1#2:414\n1878#3,3:415\n1056#3:418\n1878#3,3:419\n*S KotlinDebug\n*F\n+ 1 KiriKiriInstallActivity.kt\ncom/minhub/gamehub/hub/KiriKiriInstallActivity\n*L\n104#1:415,3\n179#1:418\n251#1:419,3\n*E\n"})
public final class KiriKiriInstallActivity extends c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f3784o = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f3785e = new Handler(Looper.getMainLooper());
    public List f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ProgressBar f3786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TextView f3787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TextView f3788j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public TextView f3789k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public j f3790l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0035p f3791m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public g f3792n;

    public static void n(j jVar, File file, d outcome, boolean z2) {
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        if (z2) {
            return;
        }
        if (outcome == d.b || outcome == d.f811d) {
            FilesKt.deleteRecursively(file);
            f fVar = f.f814a;
            String sourcePath = jVar.f825a;
            synchronized (fVar) {
                Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
                f.b.remove(sourcePath);
            }
        }
    }

    public final Intent m() {
        Intent intentAddFlags = new Intent(this, (Class<?>) AddGameActivity.class).addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        Intrinsics.checkNotNullExpressionValue(intentAddFlags, "addFlags(...)");
        return intentAddFlags;
    }

    /* JADX WARN: Code duplicated, block: B:141:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:144:0x03d7 A[Catch: all -> 0x01cb, Exception -> 0x0418, TRY_LEAVE, TryCatch #4 {Exception -> 0x0418, blocks: (B:142:0x03cd, B:144:0x03d7, B:150:0x03f3, B:153:0x03fd, B:154:0x0417, B:167:0x0427, B:168:0x042a, B:169:0x042b, B:171:0x043d, B:174:0x0466, B:175:0x0472), top: B:216:0x03cd }] */
    /* JADX WARN: Code duplicated, block: B:152:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:171:0x043d A[Catch: all -> 0x01cb, Exception -> 0x0418, TRY_LEAVE, TryCatch #4 {Exception -> 0x0418, blocks: (B:142:0x03cd, B:144:0x03d7, B:150:0x03f3, B:153:0x03fd, B:154:0x0417, B:167:0x0427, B:168:0x042a, B:169:0x042b, B:171:0x043d, B:174:0x0466, B:175:0x0472), top: B:216:0x03cd }] */
    /* JADX WARN: Code duplicated, block: B:238:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:239:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:240:0x008d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:241:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:243:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:244:0x000f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0466 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:251:0x03fd A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public final void o(final j jVar, List list, File gameDir) throws Exception {
        String str;
        String str2;
        long j2;
        Integer num;
        File file;
        String str3;
        int i3;
        e eVar;
        int i4;
        long jK;
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        byte[] bArr;
        Integer numValueOf;
        int iIntValue;
        Object obj;
        final List archives = list;
        Intrinsics.checkNotNullParameter(archives, "archives");
        Iterator it = archives.iterator();
        Integer num2 = null;
        while (true) {
            str = "getChannel(...)";
            str2 = "r";
            if (!it.hasNext()) {
                j2 = 0;
                num = num2;
                break;
            }
            File file2 = (File) it.next();
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "r");
                try {
                    T1.j jVarC = a.c(file2);
                    FileChannel channel = randomAccessFile.getChannel();
                    Intrinsics.checkNotNullExpressionValue(channel, "getChannel(...)");
                    Function1 function1E = h.e(channel, jVarC.b);
                    try {
                        if (function1E != null) {
                            ArrayList arrayList = jVarC.b;
                            int size = arrayList.size();
                            int i5 = 0;
                            do {
                                if (i5 >= size) {
                                    j2 = 0;
                                    obj = null;
                                    break;
                                }
                                obj = arrayList.get(i5);
                                i5++;
                                j2 = 0;
                                try {
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    try {
                                        throw th2;
                                    } catch (Throwable th3) {
                                        CloseableKt.closeFinally(randomAccessFile, th2);
                                        throw th3;
                                    }
                                }
                            } while (((T1.c) obj).f2209d == 0);
                            T1.c cVar = (T1.c) obj;
                            numValueOf = cVar != null ? Integer.valueOf(((Number) function1E.invoke(Long.valueOf(cVar.f2209d))).intValue()) : null;
                            CloseableKt.closeFinally(randomAccessFile, null);
                            if (numValueOf != null) {
                                iIntValue = numValueOf.intValue();
                                if (num2 == null) {
                                    if (num2.intValue() != iIntValue) {
                                        num = null;
                                        break;
                                    }
                                } else {
                                    num2 = numValueOf;
                                }
                            }
                        } else {
                            j2 = 0;
                        }
                        CloseableKt.closeFinally(randomAccessFile, null);
                    } catch (Exception unused) {
                        numValueOf = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    j2 = 0;
                }
            } catch (Exception unused2) {
                j2 = 0;
            }
            if (numValueOf != null) {
                iIntValue = numValueOf.intValue();
                if (num2 == null) {
                    if (num2.intValue() != iIntValue) {
                        num = null;
                        break;
                    }
                } else {
                    num2 = numValueOf;
                }
            }
        }
        Iterator it2 = archives.iterator();
        final int i6 = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            int i7 = i6 + 1;
            if (i6 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            final File archive = (File) next;
            p000a.a.a(jVar);
            Regex regex = p066z1.e.f6439a;
            Intrinsics.checkNotNullParameter(gameDir, "gameDir");
            Intrinsics.checkNotNullParameter(archive, "archive");
            String name = archive.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            String strSubstringBeforeLast$default = StringsKt__StringsKt.substringBeforeLast$default(name, '.', (String) null, 2, (Object) null);
            File destDir = p066z1.e.f6439a.matches(strSubstringBeforeLast$default) ? new File(gameDir, strSubstringBeforeLast$default) : gameDir;
            Function3 onProgress = new Function3() { // from class: C1.u1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    int iIntValue2 = ((Integer) obj2).intValue();
                    int iIntValue3 = ((Integer) obj3).intValue();
                    String name2 = (String) obj4;
                    int i8 = KiriKiriInstallActivity.f3784o;
                    Intrinsics.checkNotNullParameter(name2, "name");
                    int i9 = iIntValue3 == 0 ? 0 : (iIntValue2 * 60) / iIntValue3;
                    int i10 = i6 * 60;
                    List list2 = archives;
                    int size2 = (i9 / list2.size()) + (i10 / list2.size());
                    String string = this.getString(R.string.kiri_install_extracting, archive.getName(), name2);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    jVar.c(size2, string);
                    return Unit.INSTANCE;
                }
            };
            C0033n isCancelled = new C0033n(5, jVar);
            String str4 = ".";
            Intrinsics.checkNotNullParameter(archive, "archive");
            Intrinsics.checkNotNullParameter(destDir, "destDir");
            Intrinsics.checkNotNullParameter(onProgress, "onProgress");
            Intrinsics.checkNotNullParameter(isCancelled, "isCancelled");
            boolean zExists = destDir.exists();
            ArrayList arrayList2 = new ArrayList();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            try {
                h.c(isCancelled);
                char c3 = 0;
                T1.j jVarC2 = a.c(archive);
                Integer num3 = num;
                ArrayList arrayList3 = jVarC2.b;
                h.j(arrayList3);
                File canonicalFile = destDir.getCanonicalFile();
                C0033n c0033n = isCancelled;
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10));
                int size2 = arrayList3.size();
                Iterator it3 = it2;
                int i8 = 0;
                while (i8 < size2) {
                    try {
                        Object obj2 = arrayList3.get(i8);
                        int i9 = i8 + 1;
                        Intrinsics.checkNotNull(canonicalFile);
                        String path = ((T1.c) obj2).f2207a;
                        int i10 = size2;
                        Intrinsics.checkNotNullParameter(path, "path");
                        byte[] bytes = path.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                        if (bytes.length > 220) {
                            path = CollectionsKt.o(StringsKt__StringsKt.split$default(path, new char[]{'/'}, false, 0, 6, (Object) null), "/", null, null, new L1.d(9), 30);
                        }
                        arrayList4.add(p000a.a.H(canonicalFile, path));
                        size2 = i10;
                        i8 = i9;
                    } catch (Exception e2) {
                        e = e2;
                        if (zExists) {
                            Iterator it4 = CollectionsKt__ReversedViewsKt.asReversedMutable(arrayList2).iterator();
                            while (it4.hasNext()) {
                                ((File) it4.next()).delete();
                            }
                            Iterator it5 = CollectionsKt.sortedWith(linkedHashSet, new T(8)).iterator();
                            while (it5.hasNext()) {
                                ((File) it5.next()).delete();
                            }
                            Unit unit = Unit.INSTANCE;
                        } else {
                            FilesKt.deleteRecursively(destDir);
                        }
                        throw e;
                    }
                }
                h.c(c0033n);
                canonicalFile.mkdirs();
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(archive, str2);
                try {
                    FileChannel channel2 = randomAccessFile2.getChannel();
                    Intrinsics.checkNotNullExpressionValue(channel2, str);
                    Function1 function1E2 = h.e(channel2, arrayList3);
                    int size3 = arrayList3.size();
                    String str5 = str2;
                    long jA = j2;
                    int i11 = 0;
                    int i12 = 0;
                    int i13 = 0;
                    while (i12 < size3) {
                        Object obj3 = arrayList3.get(i12);
                        int i14 = i12 + 1;
                        int i15 = i11 + 1;
                        if (i11 < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        ArrayList arrayList5 = arrayList3;
                        T1.c cVar2 = (T1.c) obj3;
                        h.c(c0033n);
                        File file3 = (File) arrayList4.get(i11);
                        if (file3.exists()) {
                            i13++;
                            onProgress.invoke(Integer.valueOf(i15), Integer.valueOf(arrayList5.size()), cVar2.f2207a);
                            str4 = str4;
                            i3 = i14;
                            str3 = str;
                        } else {
                            Intrinsics.checkNotNull(canonicalFile);
                            for (File parentFile = file3.getParentFile(); parentFile != null && !Intrinsics.areEqual(parentFile, canonicalFile) && !parentFile.exists(); parentFile = parentFile.getParentFile()) {
                                linkedHashSet.add(parentFile);
                            }
                            File parentFile2 = file3.getParentFile();
                            if (parentFile2 != null) {
                                parentFile2.mkdirs();
                            }
                            File file4 = new File(file3.getParentFile(), str4 + file3.getName() + ".xp3-part");
                            File file5 = new File(file3.getParentFile(), str4 + file3.getName() + ".xp3-decoded-part");
                            File file6 = new File(file3.getParentFile(), str4 + file3.getName() + ".xp3-publish-part");
                            file4.delete();
                            file5.delete();
                            file6.delete();
                            try {
                                FileChannel channel3 = randomAccessFile2.getChannel();
                                Intrinsics.checkNotNullExpressionValue(channel3, str);
                                long j3 = 8589934592L - jA;
                                h.b(channel3, cVar2, file4, c0033n, j3);
                                long j4 = cVar2.f2209d;
                                str3 = str;
                                byte[] bArrG = h.g(file4);
                                Integer numB = l.b(bArrG);
                                try {
                                    if (numB != null) {
                                        if (numB.intValue() == 0) {
                                            numB = null;
                                        }
                                        if (numB != null) {
                                            bArr = new byte[1];
                                            bArr[c3] = (byte) numB.intValue();
                                        } else {
                                            bArr = null;
                                        }
                                        i3 = i14;
                                        eVar = new e(bArr, c3, true);
                                    } else {
                                        str4 = str4;
                                        i3 = i14;
                                        Integer num4 = jVarC2.f2220c;
                                        if (num4 != null) {
                                            eVar = new e(new byte[]{(byte) num4.intValue()}, false, false);
                                        } else if (function1E2 == null || j4 == j2) {
                                            if (num3 != null) {
                                                Integer num5 = num3.intValue() != 0 ? num3 : null;
                                                eVar = new e(num5 != null ? new byte[]{(byte) num5.intValue()} : null, false, false);
                                            } else if (j4 != j2) {
                                                int iA = l.a(bArrG, j4);
                                                Integer numValueOf2 = Integer.valueOf(iA);
                                                if (iA == 0) {
                                                    numValueOf2 = null;
                                                }
                                                eVar = new e(numValueOf2 != null ? new byte[]{(byte) numValueOf2.intValue()} : null, true, true);
                                            } else {
                                                eVar = new e(null, false, false);
                                            }
                                            byte[] bArrCopyOf = Arrays.copyOf(bArrG, bArrG.length);
                                            Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "copyOf(...)");
                                            i4 = i13;
                                            h.l(bArrCopyOf, eVar.f2213a, j2, bArrCopyOf.length);
                                            C0033n c0033n2 = c0033n;
                                            jK = h.k(file4, file5, eVar.f2213a, bArrCopyOf, c0033n2, j3);
                                            file4 = file4;
                                            file = file5;
                                            c0033n = c0033n2;
                                            if (jK <= 2147483648L) {
                                                Intrinsics.checkNotNullParameter("Decoded entry exceeds size limit", "message");
                                                throw new m("Decoded entry exceeds size limit");
                                            }
                                            try {
                                                jA = h.a(jA, jK, 8589934592L);
                                                if (!file.renameTo(file3)) {
                                                    fileInputStream = new FileInputStream(file);
                                                    try {
                                                        fileOutputStream = new FileOutputStream(file6);
                                                        try {
                                                            ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, 262144);
                                                            fileOutputStream.getFD().sync();
                                                            Unit unit2 = Unit.INSTANCE;
                                                            CloseableKt.closeFinally(fileOutputStream, null);
                                                            CloseableKt.closeFinally(fileInputStream, null);
                                                            if (file6.renameTo(file3)) {
                                                                throw new IOException("Cannot finalize " + file3.getAbsolutePath());
                                                            }
                                                        } catch (Throwable th5) {
                                                            try {
                                                                throw th5;
                                                            } catch (Throwable th6) {
                                                                CloseableKt.closeFinally(fileOutputStream, th5);
                                                                throw th6;
                                                            }
                                                        }
                                                    } catch (Throwable th7) {
                                                        try {
                                                            throw th7;
                                                        } catch (Throwable th8) {
                                                            CloseableKt.closeFinally(fileInputStream, th7);
                                                            throw th8;
                                                        }
                                                    }
                                                }
                                                arrayList2.add(file3);
                                                file4.delete();
                                                file.delete();
                                                file6.delete();
                                                i13 = i4 + 1;
                                                if (!eVar.b) {
                                                    boolean z2 = eVar.f2214c;
                                                }
                                                onProgress.invoke(Integer.valueOf(i15), Integer.valueOf(arrayList5.size()), cVar2.f2207a);
                                            } catch (Exception e3) {
                                                e = e3;
                                                file4.delete();
                                                file.delete();
                                                file6.delete();
                                                throw e;
                                            }
                                        } else {
                                            Object objInvoke = function1E2.invoke(Long.valueOf(j4));
                                            if (((Number) objInvoke).intValue() == 0) {
                                                objInvoke = null;
                                            }
                                            Integer num6 = (Integer) objInvoke;
                                            eVar = new e(num6 != null ? new byte[]{(byte) num6.intValue()} : null, false, false);
                                        }
                                    }
                                    jK = h.k(file4, file5, eVar.f2213a, bArrCopyOf, c0033n2, j3);
                                    file4 = file4;
                                    file = file5;
                                    c0033n = c0033n2;
                                    if (jK <= 2147483648L) {
                                        Intrinsics.checkNotNullParameter("Decoded entry exceeds size limit", "message");
                                        throw new m("Decoded entry exceeds size limit");
                                    }
                                    jA = h.a(jA, jK, 8589934592L);
                                    if (!file.renameTo(file3)) {
                                        fileInputStream = new FileInputStream(file);
                                        fileOutputStream = new FileOutputStream(file6);
                                        ByteStreamsKt.copyTo(fileInputStream, fileOutputStream, 262144);
                                        fileOutputStream.getFD().sync();
                                        Unit unit3 = Unit.INSTANCE;
                                        CloseableKt.closeFinally(fileOutputStream, null);
                                        CloseableKt.closeFinally(fileInputStream, null);
                                        if (file6.renameTo(file3)) {
                                            throw new IOException("Cannot finalize " + file3.getAbsolutePath());
                                        }
                                    }
                                    arrayList2.add(file3);
                                    file4.delete();
                                    file.delete();
                                    file6.delete();
                                    i13 = i4 + 1;
                                    if (!eVar.b) {
                                        boolean z3 = eVar.f2214c;
                                    }
                                    onProgress.invoke(Integer.valueOf(i15), Integer.valueOf(arrayList5.size()), cVar2.f2207a);
                                } catch (Exception e4) {
                                    e = e4;
                                    file4 = file4;
                                    file = file5;
                                }
                                byte[] bArrCopyOf2 = Arrays.copyOf(bArrG, bArrG.length);
                                Intrinsics.checkNotNullExpressionValue(bArrCopyOf2, "copyOf(...)");
                                i4 = i13;
                                h.l(bArrCopyOf2, eVar.f2213a, j2, bArrCopyOf2.length);
                                C0033n c0033n3 = c0033n;
                            } catch (Exception e5) {
                                e = e5;
                                file = file5;
                            }
                        }
                        i11 = i15;
                        arrayList3 = arrayList5;
                        arrayList4 = arrayList4;
                        canonicalFile = canonicalFile;
                        size3 = size3;
                        str = str3;
                        str4 = str4;
                        i12 = i3;
                        j2 = 0;
                        c3 = 0;
                    }
                    ArrayList arrayList6 = arrayList3;
                    String str6 = str;
                    int i16 = i13;
                    Unit unit4 = Unit.INSTANCE;
                    CloseableKt.closeFinally(randomAccessFile2, null);
                    int size4 = arrayList6.size();
                    if (i16 != size4) {
                        throw new IOException("Incomplete XP3 extraction: " + i16 + "/" + size4);
                    }
                    archives = list;
                    num = num3;
                    it2 = it3;
                    i6 = i7;
                    str2 = str5;
                    str = str6;
                    j2 = 0;
                } catch (Throwable th9) {
                    try {
                        throw th9;
                    } catch (Throwable th10) {
                        CloseableKt.closeFinally(randomAccessFile2, th9);
                        throw th10;
                    }
                }
            } catch (Exception e6) {
                e = e6;
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        j jVar = this.f3790l;
        D1.h hVarE = jVar != null ? jVar.e() : null;
        g gVar = hVarE != null ? hVarE.f818a : null;
        int i3 = gVar == null ? -1 : AbstractC0112v1.f701a[gVar.ordinal()];
        if (i3 == 2) {
            Integer num = hVarE.f821e;
            Intent intentPutExtra = new Intent(this, (Class<?>) GameDetailActivity.class).putExtra("game_id", num != null ? num.intValue() : -1);
            Intrinsics.checkNotNullExpressionValue(intentPutExtra, "putExtra(...)");
            p(intentPutExtra);
            return;
        }
        if (i3 == 3) {
            p(m());
        } else {
            startActivity(m());
            finish();
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0166 */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.minhub.gamehub.hub.KiriKiriInstallActivity.onCreate(android.os.Bundle):void");
    }

    @Override // p011e.AbstractActivityC0248j, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        j jVar;
        C0035p observer = this.f3791m;
        if (observer != null && (jVar = this.f3790l) != null) {
            Intrinsics.checkNotNullParameter(observer, "observer");
            List observers = jVar.f831j;
            Intrinsics.checkNotNullExpressionValue(observers, "observers");
            observers.remove(observer);
        }
        this.f3791m = null;
        getWindow().clearFlags(128);
        super.onDestroy();
    }

    public final void p(Intent intent) {
        b bVar;
        j jVar = this.f3790l;
        if (jVar != null) {
            f fVar = f.f814a;
            String sourcePath = jVar.f825a;
            synchronized (fVar) {
                Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
                f.b.remove(sourcePath);
            }
        }
        j jVar2 = this.f3790l;
        int iOrdinal = ((jVar2 == null || (bVar = jVar2.b) == null) ? true : bVar.b.compareAndSet(false, true) ? D1.c.b : D1.c.f807c).ordinal();
        if (iOrdinal == 0) {
            startActivity(intent);
            finish();
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            finish();
        }
    }

    public final void q(int i3, Function0 function0) {
        TextView textView = this.f3789k;
        TextView textView2 = null;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("action");
            textView = null;
        }
        textView.setEnabled(true);
        TextView textView3 = this.f3789k;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("action");
            textView3 = null;
        }
        textView3.setVisibility(0);
        TextView textView4 = this.f3789k;
        if (textView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("action");
            textView4 = null;
        }
        textView4.setText(i3);
        TextView textView5 = this.f3789k;
        if (textView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("action");
        } else {
            textView2 = textView5;
        }
        textView2.setOnClickListener(new ViewOnClickListenerC0106t1(0, function0));
        getWindow().clearFlags(128);
    }

    public final Game r(Game game, File file, String str, String str2) {
        String strC;
        String iconPath;
        try {
            File file2 = new File(file, "system/Status.tjs");
            if (file2.isFile()) {
                Regex regex = p066z1.d.f6437a;
                strC = p066z1.d.c(FilesKt.readBytes(file2));
            } else {
                strC = null;
            }
            Regex regex2 = p066z1.d.f6437a;
            try {
                String string = getString(R.string.kiri_install_default_name);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                String strB = p066z1.d.b(str, string, str2, strC);
                if (strC == null) {
                    strC = "<none>";
                }
                Log.i("KiriKiriMetadata", "Title decision: current='" + str + "', folder='" + str2 + "', declared='" + strC + "'");
                File fileA = p066z1.d.a(file);
                if (!Intrinsics.areEqual(strB, game.getTitle())) {
                    Log.i("KiriKiriMetadata", "Using the game's declared title: " + strB);
                }
                if (fileA != null) {
                    Log.i("KiriKiriMetadata", "Cover art: " + fileA.getName());
                }
                if (fileA == null || (iconPath = fileA.getAbsolutePath()) == null) {
                    iconPath = game.getIconPath();
                }
                return Game.copy$default(game, 0, strB, null, null, null, null, iconPath, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134217661, null);
            } catch (Exception e2) {
                e = e2;
                E.b.x("Could not read game metadata: ", e.getMessage(), "KiriKiriMetadata");
                return game;
            }
        } catch (Exception e3) {
            e = e3;
        }
    }
}
