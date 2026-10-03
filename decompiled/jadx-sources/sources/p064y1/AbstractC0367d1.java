package p064y1;

import E.b;
import android.util.Log;
import com.minhub.gamehub.data.EngineCache;
import com.minhub.gamehub.data.GameStorage;
import com.minhub.gamehub.hub.catalog.h;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.unsigned.a;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: y1.d1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0367d1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f6210a = SetsKt.setOf((Object[]) new String[]{"godot-user", "engine-plugins", "translation-overlays", "runtime-locks", "runtime_patch", "runtime_patch_v2", "catalog_full_v1.json", "vxace_autofix_cache.json", "dump", EngineCache.FILE_NAME, "lib", "renpy", "main.py", "private.version", "profileInstalled", "phenotype_storage_info", ".nomedia"});
    public static final List b = CollectionsKt.listOf((Object[]) new String[]{GameStorage.FILE_NAME, "game-session.json", "renpy7", "profileinstaller_"});

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set f6211c = SetsKt.setOf((Object[]) new String[]{"shader_cache", "vulkan", "logs"});

    public static void a(File oldGameDir, File newGameDir) {
        Intrinsics.checkNotNullParameter(oldGameDir, "oldGameDir");
        Intrinsics.checkNotNullParameter(newGameDir, "newGameDir");
        File fileB = b(oldGameDir);
        if (!fileB.isDirectory() || Intrinsics.areEqual(fileB.getCanonicalPath(), b(newGameDir).getCanonicalPath())) {
            return;
        }
        File fileB2 = b(newGameDir);
        fileB2.mkdirs();
        File[] fileArrListFiles = fileB.listFiles();
        int i3 = 0;
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            if (!f6211c.contains(file.getName())) {
                arrayList.add(file);
            }
        }
        int size = arrayList.size();
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            File file2 = (File) obj;
            Intrinsics.checkNotNull(file2);
            FilesKt__UtilsKt.copyRecursively$default(file2, new File(fileB2, file2.getName()), true, null, 4, null);
        }
        FilesKt__FileReadWriteKt.writeText$default(new File(newGameDir, ".minhub-godot-user"), "carried-over\n", null, 2, null);
    }

    public static File b(File gameDir) {
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        return new File(gameDir, "godot-user");
    }

    public static File c(File filesDir, int i3) {
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        return new File(filesDir, b.i(i3, "godot-user/"));
    }

    public static C0364c1 d(File filesDir, File gameDir, boolean z2, int i3) {
        long length;
        Object objM9constructorimpl;
        int i4;
        Iterator it;
        Object objM9constructorimpl2;
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        File fileB = b(gameDir);
        File file = new File(gameDir, ".minhub-godot-user");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        fileB.mkdirs();
        if (!fileB.isDirectory()) {
            throw new IllegalStateException(a.o("cannot create ", fileB.getAbsolutePath()).toString());
        }
        if (file.exists()) {
            return new C0364c1(fileB, arrayList, arrayList2);
        }
        File fileC = c(filesDir, i3);
        boolean zIsDirectory = fileC.isDirectory();
        Set set = f6211c;
        if (zIsDirectory) {
            File[] fileArrListFiles = fileC.listFiles();
            if (fileArrListFiles == null) {
                fileArrListFiles = new File[0];
            }
            Iterator it2 = ArraysKt.sortedWith(fileArrListFiles, new M(4)).iterator();
            boolean z3 = true;
            while (it2.hasNext()) {
                File file2 = (File) it2.next();
                if (set.contains(file2.getName())) {
                    it = it2;
                    fileC = fileC;
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Intrinsics.checkNotNull(file2);
                        it = it2;
                        try {
                            objM9constructorimpl2 = Result.m9constructorimpl(Boolean.valueOf(FilesKt__UtilsKt.copyRecursively$default(file2, new File(fileB, file2.getName()), false, null, 4, null)));
                        } catch (Throwable th) {
                            th = th;
                            Result.Companion companion2 = Result.INSTANCE;
                            objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        it = it2;
                    }
                    Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl2);
                    Object obj = objM9constructorimpl2;
                    if (thM12exceptionOrNullimpl != null) {
                        Log.w("GodotUserData", "could not move " + file2.getName() + ": " + thM12exceptionOrNullimpl.getMessage());
                    }
                    Object obj2 = Boolean.FALSE;
                    if (!Result.m15isFailureimpl(obj)) {
                        obj2 = obj;
                    }
                    if (((Boolean) obj2).booleanValue()) {
                        arrayList.add(file2.getName());
                    } else {
                        arrayList2.add(file2.getName());
                        it2 = it;
                        fileC = fileC;
                        z3 = false;
                    }
                }
                it2 = it;
                fileC = fileC;
            }
            File file3 = fileC;
            if (z3) {
                FilesKt.deleteRecursively(file3);
                new File(filesDir, b.i(i3, "godot-user/.prepared/")).delete();
            }
            Log.i("GodotUserData", "game " + i3 + ": moved " + arrayList + " from " + file3.getAbsolutePath() + ", skipped " + arrayList2);
        } else if (z2) {
            Intrinsics.checkNotNullParameter(filesDir, "filesDir");
            File[] fileArrListFiles2 = filesDir.listFiles();
            if (fileArrListFiles2 == null) {
                fileArrListFiles2 = new File[0];
            }
            ArrayList arrayList3 = new ArrayList();
            int length2 = fileArrListFiles2.length;
            int i5 = 0;
            while (i5 < length2) {
                File file4 = fileArrListFiles2[i5];
                File[] fileArr = fileArrListFiles2;
                if (f6210a.contains(file4.getName()) || set.contains(file4.getName())) {
                    i4 = length2;
                } else {
                    List list = b;
                    if (list == null || !list.isEmpty()) {
                        Iterator it3 = list.iterator();
                        while (true) {
                            if (it3.hasNext()) {
                                String str = (String) it3.next();
                                Iterator it4 = it3;
                                String name = file4.getName();
                                i4 = length2;
                                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                                if (!StringsKt.N(name, str)) {
                                    it3 = it4;
                                    length2 = i4;
                                }
                            } else {
                                i4 = length2;
                                arrayList3.add(file4);
                            }
                        }
                    } else {
                        i4 = length2;
                        arrayList3.add(file4);
                    }
                }
                i5++;
                fileArrListFiles2 = fileArr;
                length2 = i4;
            }
            for (File file5 : CollectionsKt.sortedWith(arrayList3, new M(5))) {
                if (file5.isDirectory()) {
                    Iterator it5 = SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file5), new h(27)).iterator();
                    length = 0;
                    while (it5.hasNext()) {
                        length += ((File) it5.next()).length();
                    }
                } else {
                    length = file5.length();
                }
                if (length > 67108864) {
                    arrayList2.add(file5.getName());
                } else {
                    try {
                        Result.Companion companion3 = Result.INSTANCE;
                        try {
                            objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(FilesKt__UtilsKt.copyRecursively$default(file5, new File(fileB, file5.getName()), false, null, 4, null)));
                        } catch (Throwable th3) {
                            th = th3;
                            Result.Companion companion4 = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                    Throwable thM12exceptionOrNullimpl2 = Result.m12exceptionOrNullimpl(objM9constructorimpl);
                    if (thM12exceptionOrNullimpl2 != null) {
                        Log.w("GodotUserData", "could not copy " + file5.getName() + ": " + thM12exceptionOrNullimpl2.getMessage());
                    }
                    Boolean bool = Boolean.FALSE;
                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                        objM9constructorimpl = bool;
                    }
                    if (((Boolean) objM9constructorimpl).booleanValue()) {
                        arrayList.add(file5.getName());
                    } else {
                        arrayList2.add(file5.getName());
                    }
                }
            }
            Log.i("GodotUserData", "game " + i3 + ": copied shared user data " + arrayList + ", skipped " + arrayList2);
        }
        FilesKt__FileReadWriteKt.writeText$default(file, "copied=" + CollectionsKt.o(arrayList, ",", null, null, null, 62) + "\n", null, 2, null);
        return new C0364c1(fileB, arrayList, arrayList2);
    }
}
