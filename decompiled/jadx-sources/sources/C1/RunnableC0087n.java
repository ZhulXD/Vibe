package C1;

import A1.C0015e;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.webkit.WebView;
import android.widget.EditText;
import androidx.core.widget.NestedScrollView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import com.minhub.gamehub.hub.catalog.BuzzHeavierWebDownloaderKt;
import com.minhub.gamehub.hub.catalog.BuzzHeavierWebResult;
import com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt;
import com.minhub.gamehub.hub.catalog.RanozWebDownloaderKt;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Regex;
import kotlin.time.DurationKt;
import org.godotengine.godot.Godot;
import org.godotengine.godot.utils.DialogUtils;
import p064y1.C0402p0;

/* JADX INFO: renamed from: C1.n, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0087n implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f655e;
    public final /* synthetic */ Object f;

    public /* synthetic */ RunnableC0087n(int i3, Object obj, Object obj2, Object obj3, Object obj4) {
        this.b = i3;
        this.f653c = obj;
        this.f654d = obj2;
        this.f655e = obj3;
        this.f = obj4;
    }

    /* JADX WARN: Code duplicated, block: B:120:0x02cc A[Catch: all -> 0x02c9, TRY_ENTER, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:122:0x02e3 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02f2 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0309 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:132:0x0312  */
    /* JADX WARN: Code duplicated, block: B:134:0x0316  */
    /* JADX WARN: Code duplicated, block: B:137:0x0323  */
    /* JADX WARN: Code duplicated, block: B:144:0x0349  */
    /* JADX WARN: Code duplicated, block: B:149:0x0361  */
    /* JADX WARN: Code duplicated, block: B:150:0x0362 A[Catch: all -> 0x0380, TRY_LEAVE, TryCatch #0 {, blocks: (B:147:0x035b, B:150:0x0362), top: B:164:0x035b }] */
    /* JADX WARN: Code duplicated, block: B:154:0x0377  */
    /* JADX WARN: Code duplicated, block: B:157:0x037e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:158:0x037f  */
    /* JADX WARN: Code duplicated, block: B:164:0x035b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:183:0x0139 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x013c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0115 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x00d5 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:29:0x010d A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0120 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0130  */
    /* JADX WARN: Code duplicated, block: B:35:0x0133 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0145  */
    /* JADX WARN: Code duplicated, block: B:42:0x0148 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0154  */
    /* JADX WARN: Code duplicated, block: B:46:0x0155 A[Catch: all -> 0x02c9, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Code duplicated, block: B:49:0x015f A[Catch: all -> 0x02c9, TRY_LEAVE, TryCatch #7 {all -> 0x02c9, blocks: (B:19:0x00ad, B:25:0x00be, B:27:0x00d5, B:29:0x010d, B:30:0x0115, B:32:0x0120, B:35:0x0133, B:43:0x014a, B:47:0x0157, B:49:0x015f, B:120:0x02cc, B:121:0x02e2, B:46:0x0155, B:42:0x0148, B:122:0x02e3, B:123:0x02f1, B:124:0x02f2, B:125:0x0300), top: B:176:0x00ad }] */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x015f, please report this as an issue */
    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i3;
        String status;
        File canonicalFile;
        List listSortedWith;
        Iterator it;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long usableSpace;
        File canonicalFile2;
        File file;
        File file2;
        String name;
        boolean z2;
        File parentFile;
        long length;
        int i4 = 0;
        switch (this.b) {
            case 0:
                List list = (List) this.f653c;
                Ref.ObjectRef objectRef = (Ref.ObjectRef) this.f654d;
                NestedScrollView nestedScrollView = (NestedScrollView) this.f655e;
                AddGameActivity addGameActivity = (AddGameActivity) this.f;
                int i5 = AddGameActivity.f3740y;
                nestedScrollView.scrollTo(0, addGameActivity.getResources().getDimensionPixelSize(R.dimen.filter_dropdown_item_height) * RangesKt.coerceAtLeast(list.indexOf(objectRef.element), 0));
                return;
            case 1:
                KiriKiriInstallActivity kiriKiriInstallActivity = (KiriKiriInstallActivity) this.f653c;
                D1.j jVar = (D1.j) this.f654d;
                String str = (String) this.f655e;
                File file3 = (File) this.f;
                int i6 = KiriKiriInstallActivity.f3784o;
                Intrinsics.checkNotNull(file3);
                D1.d dVar = D1.d.f810c;
                File file4 = null;
                try {
                    File externalFilesDir = kiriKiriInstallActivity.getExternalFilesDir(null);
                    if (externalFilesDir == null) {
                        try {
                            externalFilesDir = kiriKiriInstallActivity.getFilesDir();
                            canonicalFile = new File(externalFilesDir, "games").getCanonicalFile();
                            canonicalFile.mkdirs();
                            Regex regex = p066z1.e.f6439a;
                            Intrinsics.checkNotNull(canonicalFile);
                            if (p066z1.e.f(canonicalFile, file3)) {
                                D1.d dVar2 = D1.d.f811d;
                                throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_source));
                            }
                            List archives = CollectionsKt.sortedWith(SequencesKt.toList(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file3), new C0015e(19))), new C0115w1(i4, file3));
                            Intrinsics.checkNotNullParameter(archives, "archives");
                            listSortedWith = CollectionsKt.sortedWith(archives, new C0115w1(6, new T(14)));
                            if (!listSortedWith.isEmpty()) {
                                D1.d dVar3 = D1.d.f811d;
                                throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_no_xp3));
                            }
                            it = listSortedWith.iterator();
                            j2 = 0;
                            j3 = 0;
                            while (true) {
                                j4 = Long.MAX_VALUE;
                                if (!it.hasNext()) {
                                    length = ((File) it.next()).length();
                                    if (j2 > Long.MAX_VALUE - length) {
                                        j2 = Long.MAX_VALUE;
                                    } else {
                                        j2 += length;
                                    }
                                    if (length > j3) {
                                        j3 = length;
                                    }
                                } else {
                                    if (j2 > DurationKt.MAX_MILLIS) {
                                        j5 = Long.MAX_VALUE;
                                    } else {
                                        j5 = j2 * ((long) 2);
                                    }
                                    j6 = j3 * ((long) 3);
                                    if (j5 > Long.MAX_VALUE - j6) {
                                        j4 = j5 + j6;
                                    }
                                    usableSpace = canonicalFile.getUsableSpace();
                                    if (usableSpace >= j4) {
                                        throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_space, O.e(j4 - usableSpace)));
                                    }
                                    canonicalFile2 = new File(canonicalFile, O.l(str) + "_installed_" + System.currentTimeMillis()).getCanonicalFile();
                                    try {
                                        try {
                                            if (!Intrinsics.areEqual(canonicalFile2, file3) || !Intrinsics.areEqual(canonicalFile2.getParentFile(), canonicalFile)) {
                                                throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_source));
                                            }
                                            if (!canonicalFile2.mkdirs()) {
                                                throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_source));
                                            }
                                            jVar.b(0);
                                            Intrinsics.checkNotNull(canonicalFile2);
                                            kiriKiriInstallActivity.o(jVar, listSortedWith, canonicalFile2);
                                            jVar.a(0);
                                            try {
                                                jVar.b(1);
                                                p000a.a.a(jVar);
                                                Regex regex2 = p066z1.e.f6439a;
                                                Intrinsics.checkNotNull(canonicalFile2);
                                                p066z1.e.e(canonicalFile2);
                                                p000a.a.a(jVar);
                                                File fileB = p066z1.e.b(file3, listSortedWith);
                                                Intrinsics.checkNotNull(canonicalFile2);
                                                p066z1.e.c(fileB, canonicalFile2);
                                                p000a.a.a(jVar);
                                                Regex regex3 = p066z1.g.f6441a;
                                                Intrinsics.checkNotNull(canonicalFile2);
                                                p066z1.g.a(canonicalFile2);
                                                if (new File(canonicalFile2, "startup.tjs").isFile()) {
                                                    String string = kiriKiriInstallActivity.getString(R.string.kiri_install_preparing);
                                                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                                    jVar.c(80, string);
                                                    jVar.a(1);
                                                    try {
                                                        jVar.b(2);
                                                        p000a.a.a(jVar);
                                                        Intrinsics.checkNotNull(canonicalFile2);
                                                        file2 = canonicalFile2;
                                                        try {
                                                            Game gameBuildImportedGameFromDirectory$default = OnlineCatalogImportSupportKt.buildImportedGameFromDirectory$default(str, file2, null, true, 4, null);
                                                            Intrinsics.checkNotNull(file2);
                                                            File file5 = (File) CollectionsKt.firstOrNull(listSortedWith);
                                                            if (file5 == null || (parentFile = file5.getParentFile()) == null || (name = parentFile.getName()) == null) {
                                                                name = file3.getName();
                                                            }
                                                            Intrinsics.checkNotNull(name);
                                                            Game gameR = kiriKiriInstallActivity.r(gameBuildImportedGameFromDirectory$default, file2, str, name);
                                                            p000a.a.a(jVar);
                                                            AtomicReference atomicReference = jVar.b.f806a;
                                                            D1.a aVar = D1.a.b;
                                                            D1.a aVar2 = D1.a.f804d;
                                                            while (true) {
                                                                if (atomicReference.compareAndSet(aVar, aVar2)) {
                                                                    z2 = true;
                                                                } else if (atomicReference.get() != aVar) {
                                                                    z2 = false;
                                                                }
                                                            }
                                                            if (!z2) {
                                                                throw new T1.b();
                                                            }
                                                            try {
                                                                Context applicationContext = kiriKiriInstallActivity.getApplicationContext();
                                                                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                                                                int iCommitImportedGame = (int) OnlineCatalogImportSupportKt.commitImportedGame(applicationContext, gameR);
                                                                dVar = D1.d.b;
                                                                try {
                                                                    KiriKiriInstallActivity.n(jVar, file3, dVar, false);
                                                                    jVar.a(2);
                                                                    String string2 = kiriKiriInstallActivity.getString(R.string.kiri_install_success);
                                                                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                                                                    jVar.f(iCommitImportedGame, string2);
                                                                    return;
                                                                } catch (Throwable th) {
                                                                    th = th;
                                                                    i3 = 2;
                                                                    file4 = null;
                                                                    if (jVar.b.a()) {
                                                                        FilesKt.deleteRecursively(file4);
                                                                    }
                                                                    if (th instanceof T1.i) {
                                                                        dVar = D1.d.f811d;
                                                                    } else {
                                                                        dVar = D1.d.f811d;
                                                                    }
                                                                    KiriKiriInstallActivity.n(jVar, file3, dVar, Intrinsics.areEqual(file3, file4));
                                                                    if (th instanceof T1.b) {
                                                                        status = kiriKiriInstallActivity.getString(R.string.kiri_install_cancelled);
                                                                        Intrinsics.checkNotNull(status);
                                                                    } else {
                                                                        status = kiriKiriInstallActivity.getString(R.string.kiri_install_cancelled);
                                                                        Intrinsics.checkNotNull(status);
                                                                    }
                                                                    Intrinsics.checkNotNullParameter(status, "status");
                                                                    synchronized (jVar.f826c) {
                                                                        if (jVar.f828e == D1.g.b) {
                                                                            jVar.f828e = D1.g.f816d;
                                                                            jVar.f827d.set(RangesKt.coerceIn(i3, 0, 2), D1.i.f824e);
                                                                            jVar.g = status;
                                                                            i4 = 1;
                                                                        }
                                                                        if (i4 != 0) {
                                                                            jVar.d();
                                                                        }
                                                                        if (th instanceof Error) {
                                                                            throw th;
                                                                        }
                                                                        return;
                                                                    }
                                                                }
                                                            } catch (Throwable th2) {
                                                                AtomicReference atomicReference2 = jVar.b.f806a;
                                                                D1.a aVar3 = D1.a.f804d;
                                                                D1.a aVar4 = D1.a.f803c;
                                                                while (!atomicReference2.compareAndSet(aVar3, aVar4) && atomicReference2.get() == aVar3) {
                                                                }
                                                                throw th2;
                                                            }
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            file4 = file2;
                                                            i3 = 2;
                                                            if (jVar.b.a()) {
                                                                FilesKt.deleteRecursively(file4);
                                                            }
                                                            if (th instanceof T1.i) {
                                                                dVar = D1.d.f811d;
                                                            } else {
                                                                dVar = D1.d.f811d;
                                                            }
                                                            KiriKiriInstallActivity.n(jVar, file3, dVar, Intrinsics.areEqual(file3, file4));
                                                            if (th instanceof T1.b) {
                                                                status = kiriKiriInstallActivity.getString(R.string.kiri_install_cancelled);
                                                                Intrinsics.checkNotNull(status);
                                                            } else {
                                                                status = kiriKiriInstallActivity.getString(R.string.kiri_install_cancelled);
                                                                Intrinsics.checkNotNull(status);
                                                            }
                                                            Intrinsics.checkNotNullParameter(status, "status");
                                                            synchronized (jVar.f826c) {
                                                                if (jVar.f828e == D1.g.b) {
                                                                    jVar.f828e = D1.g.f816d;
                                                                    jVar.f827d.set(RangesKt.coerceIn(i3, 0, 2), D1.i.f824e);
                                                                    jVar.g = status;
                                                                    i4 = 1;
                                                                }
                                                                if (i4 != 0) {
                                                                    jVar.d();
                                                                }
                                                                if (th instanceof Error) {
                                                                    throw th;
                                                                }
                                                                return;
                                                            }
                                                        }
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        file2 = canonicalFile2;
                                                    }
                                                } else {
                                                    try {
                                                        throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_startup));
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                    }
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                            }
                                            file4 = canonicalFile2;
                                            i3 = 1;
                                        } catch (Throwable th7) {
                                            th = th7;
                                            file = listSortedWith;
                                            i3 = 0;
                                            file4 = file;
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        file = canonicalFile2;
                                    }
                                    i3 = 0;
                                    file4 = file;
                                }
                            }
                        } catch (Throwable th9) {
                            th = th9;
                            i3 = 0;
                        }
                    } else {
                        canonicalFile = new File(externalFilesDir, "games").getCanonicalFile();
                        canonicalFile.mkdirs();
                        Regex regex4 = p066z1.e.f6439a;
                        Intrinsics.checkNotNull(canonicalFile);
                        if (p066z1.e.f(canonicalFile, file3)) {
                            D1.d dVar4 = D1.d.f811d;
                            throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_source));
                        }
                        List archives2 = CollectionsKt.sortedWith(SequencesKt.toList(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file3), new C0015e(19))), new C0115w1(i4, file3));
                        Intrinsics.checkNotNullParameter(archives2, "archives");
                        listSortedWith = CollectionsKt.sortedWith(archives2, new C0115w1(6, new T(14)));
                        if (!listSortedWith.isEmpty()) {
                            D1.d dVar5 = D1.d.f811d;
                            throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_no_xp3));
                        }
                        it = listSortedWith.iterator();
                        j2 = 0;
                        j3 = 0;
                        while (true) {
                            j4 = Long.MAX_VALUE;
                            if (!it.hasNext()) {
                                if (j2 > DurationKt.MAX_MILLIS) {
                                    j5 = Long.MAX_VALUE;
                                } else {
                                    j5 = j2 * ((long) 2);
                                }
                                j6 = j3 * ((long) 3);
                                if (j5 > Long.MAX_VALUE - j6) {
                                    j4 = j5 + j6;
                                }
                                usableSpace = canonicalFile.getUsableSpace();
                                if (usableSpace >= j4) {
                                    throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_space, O.e(j4 - usableSpace)));
                                }
                                canonicalFile2 = new File(canonicalFile, O.l(str) + "_installed_" + System.currentTimeMillis()).getCanonicalFile();
                                if (!Intrinsics.areEqual(canonicalFile2, file3)) {
                                }
                                throw new IOException(kiriKiriInstallActivity.getString(R.string.kiri_install_error_source));
                            }
                            length = ((File) it.next()).length();
                            if (j2 > Long.MAX_VALUE - length) {
                                j2 = Long.MAX_VALUE;
                            } else {
                                j2 += length;
                            }
                            if (length > j3) {
                                j3 = length;
                            }
                        }
                    }
                } catch (Throwable th10) {
                    th = th10;
                    i3 = 0;
                }
                if (jVar.b.a() && file4 != null) {
                    FilesKt.deleteRecursively(file4);
                }
                if ((th instanceof T1.i) || (th instanceof T1.m)) {
                    dVar = D1.d.f811d;
                }
                KiriKiriInstallActivity.n(jVar, file3, dVar, Intrinsics.areEqual(file3, file4));
                if ((th instanceof T1.b) || jVar.f830i.get()) {
                    status = kiriKiriInstallActivity.getString(R.string.kiri_install_cancelled);
                    Intrinsics.checkNotNull(status);
                } else {
                    String message = th.getMessage();
                    if (message == null) {
                        message = th.getClass().getSimpleName();
                    }
                    status = kiriKiriInstallActivity.getString(R.string.kiri_install_failed, message);
                    Intrinsics.checkNotNull(status);
                }
                Intrinsics.checkNotNullParameter(status, "status");
                synchronized (jVar.f826c) {
                    if (jVar.f828e == D1.g.b) {
                        jVar.f828e = D1.g.f816d;
                        jVar.f827d.set(RangesKt.coerceIn(i3, 0, 2), D1.i.f824e);
                        jVar.g = status;
                        i4 = 1;
                    }
                }
                if (i4 != 0) {
                    jVar.d();
                }
                if (th instanceof Error) {
                    throw th;
                }
                return;
            case 2:
                BuzzHeavierWebDownloaderKt.resolveBuzzHeavierViaWebView$lambda$2((Context) this.f653c, (String) this.f654d, (BuzzHeavierWebResult[]) this.f655e, (CountDownLatch) this.f);
                return;
            case 3:
                RanozWebDownloaderKt.resolveRanozViaWebView$lambda$2((Context) this.f653c, (String) this.f654d, (String[]) this.f655e, (CountDownLatch) this.f);
                return;
            case 4:
                Godot.alert$lambda$24((Activity) this.f653c, (String) this.f654d, (String) this.f655e, (Runnable) this.f);
                return;
            case 5:
                DialogUtils.Companion.showInputDialog$lambda$6((Activity) this.f653c, (String) this.f654d, (String) this.f655e, (EditText) this.f);
                return;
            case 6:
                GameActivity gameActivity = (GameActivity) this.f653c;
                Q1.d dVar6 = (Q1.d) this.f654d;
                WebView webView = (WebView) this.f655e;
                String str2 = (String) this.f;
                int i7 = GameActivity.f3676L;
                if (gameActivity.y(dVar6)) {
                    gameActivity.runOnUiThread(new A1(gameActivity, str2, webView, 12));
                    return;
                }
                return;
            default:
                GameActivity.r(0, (Handler) this.f, (GameActivity) this.f653c, (String) this.f654d, (C0402p0) this.f655e);
                return;
        }
    }
}
