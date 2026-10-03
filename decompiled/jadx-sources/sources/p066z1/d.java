package p066z1;

import S.F;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p000a.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6437a = new Regex("GAME_TITLE\\s*=\\s*\"([^\"]*)\"");
    public static final List b = CollectionsKt.listOf((Object[]) new String[]{"icon", "bg", "bgimage", "image", "thumb"});

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f6438c = CollectionsKt.listOf((Object[]) new String[]{".png", ".jpg", ".jpeg", ".webp"});

    public static File a(File gameDir) {
        File file;
        Object next;
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        Object next2 = null;
        if (!gameDir.isDirectory()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = b.iterator();
        while (it.hasNext()) {
            File[] fileArrListFiles = new File(gameDir, (String) it.next()).listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList2 = new ArrayList();
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile()) {
                        Intrinsics.checkNotNull(file2);
                        String name = file2.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        String lowerCase = name.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                        List list = f6438c;
                        if (list == null || !list.isEmpty()) {
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, (String) it2.next(), false, 2, null)) {
                                    arrayList2.add(file2);
                                    break;
                                }
                            }
                        }
                    }
                }
                Iterator it3 = arrayList2.iterator();
                if (it3.hasNext()) {
                    next = it3.next();
                    if (it3.hasNext()) {
                        long length = ((File) next).length();
                        do {
                            Object next3 = it3.next();
                            long length2 = ((File) next3).length();
                            if (length < length2) {
                                next = next3;
                                length = length2;
                            }
                        } while (it3.hasNext());
                    }
                } else {
                    next = null;
                }
                file = (File) next;
            } else {
                file = null;
            }
            if (file != null) {
                arrayList.add(file);
            }
        }
        Iterator it4 = arrayList.iterator();
        if (it4.hasNext()) {
            next2 = it4.next();
            if (it4.hasNext()) {
                long length3 = ((File) next2).length();
                do {
                    Object next4 = it4.next();
                    long length4 = ((File) next4).length();
                    if (length3 < length4) {
                        next2 = next4;
                        length3 = length4;
                    }
                } while (it4.hasNext());
            }
        }
        return (File) next2;
    }

    public static String b(String currentTitle, String defaultTitle, String sourceFolderName, String str) {
        String string;
        Intrinsics.checkNotNullParameter(currentTitle, "currentTitle");
        Intrinsics.checkNotNullParameter(defaultTitle, "defaultTitle");
        Intrinsics.checkNotNullParameter(sourceFolderName, "sourceFolderName");
        if (str != null && (string = StringsKt.trim((CharSequence) str).toString()) != null) {
            if (string.length() <= 0) {
                string = null;
            }
            if (string != null) {
                if (!Intrinsics.areEqual(currentTitle, defaultTitle)) {
                    String strTake = StringsKt.take(new Regex("[^a-zA-Z0-9_\\-]").replace(currentTitle, "_"), 50);
                    String strTake2 = StringsKt.take(new Regex("[^a-zA-Z0-9_\\-]").replace(sourceFolderName, "_"), 50);
                    if (Intrinsics.areEqual(strTake, strTake2) ? true : Intrinsics.areEqual(strTake, new Regex("_\\d{10,}$").replace(strTake2, ""))) {
                    }
                }
                return string;
            }
        }
        return currentTitle;
    }

    public static String c(byte[] statusTjs) {
        List<String> groupValues;
        String str;
        String str2;
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(statusTjs, "statusTjs");
        F fG = a.G(statusTjs);
        if (fG != null) {
            MatchResult matchResultFind$default = Regex.find$default(f6437a, (String) fG.b, 0, 2, null);
            if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && (str = groupValues.get(1)) != null) {
                if (StringsKt.isBlank(str)) {
                    str2 = str;
                    str2 = null;
                }
                if (str2 != null) {
                    if (((l) fG.f1958c) != l.f6455d) {
                        return str2;
                    }
                    int length = str2.length();
                    byte[] bArr = new byte[length];
                    for (int i3 = 0; i3 < length; i3++) {
                        bArr[i3] = (byte) str2.charAt(i3);
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        Charset charsetForName = Charset.forName("Shift_JIS");
                        Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
                        objM9constructorimpl = Result.m9constructorimpl(new String(bArr, charsetForName));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    Object obj = str2;
                    if (!Result.m15isFailureimpl(objM9constructorimpl)) {
                        obj = objM9constructorimpl;
                    }
                    return (String) (StringsKt.isBlank((String) obj) ? null : obj);
                }
            }
        }
        return null;
    }
}
