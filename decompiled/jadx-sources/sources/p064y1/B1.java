package p064y1;

import S1.c;
import android.app.Activity;
import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class B1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f6038a = CollectionsKt.listOf((Object[]) new String[]{"log.txt", "traceback.txt", "errors.txt", "renpy_boot.log"});

    public static void a(File file) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (file == null) {
            CollectionsKt.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : f6038a) {
            File file2 = new File(file, str);
            if (!file2.isFile() || jCurrentTimeMillis - file2.lastModified() <= 604800000 || !file2.delete()) {
                str = null;
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Log.i("MinHub-RenpyBoot", "Removed old root logs " + arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x005b  */
    public static final String b(File gameRoot) {
        Object objM9constructorimpl;
        String string;
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Iterator it = CollectionsKt.listOf((Object[]) new File[]{new File(gameRoot, "script_version.txt"), new File(new File(gameRoot, "game"), "script_version.txt")}).iterator();
        while (true) {
            if (!it.hasNext()) {
                return null;
            }
            File file = (File) it.next();
            try {
                Result.Companion companion = Result.INSTANCE;
                if (!file.isFile() || file.length() > 64) {
                    string = null;
                } else {
                    string = StringsKt.trim((CharSequence) FilesKt.readText(file, Charsets.UTF_8)).toString();
                    if (string.length() <= 0) {
                        string = null;
                    }
                }
                objM9constructorimpl = Result.m9constructorimpl(string);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            String str = (String) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
            if (str != null) {
                for (int i3 = 0; i3 < str.length(); i3++) {
                    if (Character.isDigit(str.charAt(i3))) {
                        return str;
                    }
                }
            }
        }
    }

    public static File c(Activity activity) {
        File externalFilesDir = activity.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            return new File(externalFilesDir, "renpy_boot_state");
        }
        return null;
    }

    public static String d(File file, long j2, int i3) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (file.isFile() && file.lastModified() >= j2) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    int iMin = (int) Math.min(randomAccessFile.length(), i3);
                    randomAccessFile.seek(randomAccessFile.length() - ((long) iMin));
                    byte[] bArr = new byte[iMin];
                    randomAccessFile.readFully(bArr);
                    String string = StringsKt.trim((CharSequence) StringsKt__StringsJVMKt.replace$default(new String(bArr, Charsets.UTF_8), "\ufeff", "", false, 4, (Object) null)).toString();
                    CloseableKt.closeFinally(randomAccessFile, null);
                    objM9constructorimpl = Result.m9constructorimpl(string);
                    return (String) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(randomAccessFile, th);
                        throw th2;
                    }
                }
            }
            return null;
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th3));
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00aa  */
    public static A1 e(c context) {
        Object objM9constructorimpl;
        Object next;
        File file;
        Object next2;
        String string;
        String str;
        String string2;
        Long longOrNull;
        String strRemovePrefix;
        String strRemovePrefix2;
        String string3;
        String text$default;
        String string4;
        Intrinsics.checkNotNullParameter(context, "context");
        File fileC = c(context);
        String str2 = null;
        if (fileC == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            File file2 = fileC.isFile() ? fileC : null;
            objM9constructorimpl = Result.m9constructorimpl((file2 == null || (text$default = FilesKt__FileReadWriteKt.readText$default(file2, null, 1, null)) == null || (string4 = StringsKt.trim((CharSequence) text$default).toString()) == null) ? null : StringsKt__StringsKt.lines(string4));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        List list = (List) objM9constructorimpl;
        if (list == null) {
            return null;
        }
        String str3 = (String) CollectionsKt.firstOrNull(list);
        String string5 = str3 != null ? StringsKt.trim((CharSequence) str3).toString() : null;
        if (string5 == null) {
            string5 = "";
        }
        Iterator it = CollectionsKt___CollectionsKt.drop(list, 1).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!StringsKt.N((String) next, "logdir="));
        String str4 = (String) next;
        if (str4 == null || (strRemovePrefix2 = StringsKt__StringsKt.removePrefix(str4, (CharSequence) "logdir=")) == null || (string3 = StringsKt.trim((CharSequence) strRemovePrefix2).toString()) == null) {
            file = null;
        } else {
            if (string3.length() <= 0) {
                string3 = null;
            }
            if (string3 != null) {
                file = new File(string3);
            } else {
                file = null;
            }
        }
        Iterator it2 = CollectionsKt___CollectionsKt.drop(list, 1).iterator();
        do {
            if (!it2.hasNext()) {
                next2 = null;
                break;
            }
            next2 = it2.next();
        } while (!StringsKt.N((String) next2, "detail="));
        String str5 = (String) next2;
        if (str5 == null || (strRemovePrefix = StringsKt__StringsKt.removePrefix(str5, (CharSequence) "detail=")) == null || (string = StringsKt.trim((CharSequence) strRemovePrefix).toString()) == null || string.length() <= 0) {
            string = null;
        }
        if (!StringsKt.N(string5, "started:")) {
            fileC.delete();
            return null;
        }
        List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) StringsKt__StringsKt.removePrefix(string5, (CharSequence) "started:"), new String[]{":"}, false, 2, 2, (Object) null);
        String str6 = (String) CollectionsKt.getOrNull(listSplit$default, 0);
        long jLongValue = (str6 == null || (longOrNull = StringsKt.toLongOrNull(str6)) == null) ? 0L : longOrNull.longValue();
        String str7 = (String) CollectionsKt.getOrNull(listSplit$default, 1);
        String str8 = (str7 == null || (string2 = StringsKt.trim((CharSequence) str7).toString()) == null || string2.length() <= 0) ? null : string2;
        fileC.delete();
        if (jLongValue <= 0 || System.currentTimeMillis() - jLongValue > 600000) {
            return null;
        }
        if (string == null) {
            Intrinsics.checkNotNullParameter(context, "context");
            List dirs = CollectionsKt.distinct(CollectionsKt.listOfNotNull((Object[]) new File[]{file, context.getExternalFilesDir(null)}));
            Intrinsics.checkNotNullParameter(dirs, "dirs");
            Iterator it3 = dirs.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    Iterator it4 = dirs.iterator();
                    while (it4.hasNext()) {
                        String strD = d(new File((File) it4.next(), "log.txt"), jLongValue, 2500);
                        if (strD != null) {
                            if (StringsKt.isBlank(strD)) {
                                strD = null;
                            }
                            if (strD != null) {
                                str2 = strD;
                                break;
                            }
                        }
                    }
                    break;
                }
                String strD2 = d(new File((File) it3.next(), "traceback.txt"), jLongValue, 4000);
                if (strD2 != null) {
                    if (StringsKt.isBlank(strD2)) {
                        strD2 = null;
                    }
                    if (strD2 != null) {
                        str2 = strD2;
                        break;
                    }
                }
            }
            str = str2;
        } else {
            str = string;
        }
        return new A1(jLongValue, str, str8, string != null);
    }
}
