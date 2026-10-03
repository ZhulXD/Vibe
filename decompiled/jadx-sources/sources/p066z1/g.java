package p066z1;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p064y1.C0373f1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6441a = new Regex("patch(\\d+|_[a-z0-9]{2,8})?", RegexOption.IGNORE_CASE);
    public static final Regex b = new Regex("^(/\\*\\++\\*/)?Storages\\.addAutoPath\\(");

    public static boolean a(File gameDir) {
        int iNextIndex;
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        List<File> listB = b(gameDir);
        if (!listB.isEmpty()) {
            File file = new File(gameDir, "system/Boot.tjs");
            if (file.isFile() && file.length() <= 4194304) {
                try {
                    byte[] bytes = FilesKt.readBytes(file);
                    if (bytes.length >= 4) {
                        int i3 = bytes[0] & UByte.MAX_VALUE;
                        int i4 = i3 ^ 255;
                        int length = bytes.length;
                        byte[] bArr = new byte[length];
                        for (int i5 = 0; i5 < length; i5++) {
                            bArr[i5] = (byte) ((bytes[i5] & UByte.MAX_VALUE) ^ i4);
                        }
                        String str = new String(bArr, 2, length - 2, Charsets.UTF_16LE);
                        if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "MinHub:patch-autopath", false, 2, (Object) null)) {
                            List mutableList = CollectionsKt.toMutableList((Collection) StringsKt__StringsKt.split$default((CharSequence) str, new String[]{"\n"}, false, 0, 6, (Object) null));
                            ListIterator listIterator = mutableList.listIterator(mutableList.size());
                            while (true) {
                                if (!listIterator.hasPrevious()) {
                                    iNextIndex = -1;
                                    break;
                                }
                                if (b.containsMatchIn((String) listIterator.previous())) {
                                    iNextIndex = listIterator.nextIndex();
                                    break;
                                }
                            }
                            if (iNextIndex >= 0) {
                                StringBuilder sb = new StringBuilder("\t// [MinHub:patch-autopath] register extracted patch.xp3 folder(s)");
                                for (File file2 : listB) {
                                    sb.append("\n\tStorages.addAutoPath(\"");
                                    sb.append(file2.getName());
                                    sb.append("/\");");
                                }
                                String string = sb.toString();
                                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                mutableList.add(iNextIndex + 1, string);
                                byte[] bytes2 = CollectionsKt.o(mutableList, "\n", null, null, null, 62).getBytes(Charsets.UTF_16LE);
                                Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                                byte[] bArr2 = new byte[bytes2.length + 2];
                                bArr2[0] = (byte) i3;
                                bArr2[1] = (byte) (i3 ^ 1);
                                int length2 = bytes2.length;
                                for (int i6 = 0; i6 < length2; i6++) {
                                    bArr2[i6 + 2] = (byte) ((bytes2[i6] & UByte.MAX_VALUE) ^ i4);
                                }
                                FilesKt.writeBytes(file, bArr2);
                                return true;
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    public static List b(File gameDir) {
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        File[] fileArrListFiles = gameDir.listFiles();
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            if (file.isDirectory()) {
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (f6441a.matches(name)) {
                    arrayList.add(file);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            File file2 = (File) obj;
            Intrinsics.checkNotNull(file2);
            Iterator<File> it = FilesKt.walkTopDown(file2).iterator();
            while (it.hasNext()) {
                if (it.next().isFile()) {
                    arrayList2.add(obj);
                    break;
                }
            }
        }
        return CollectionsKt.sortedWith(arrayList2, ComparisonsKt.compareBy(new C0373f1(13), new C0373f1(14)));
    }

    public static Pair c(String str) {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String strRemovePrefix = StringsKt__StringsKt.removePrefix(lowerCase, (CharSequence) "patch");
        Integer intOrNull = StringsKt.toIntOrNull(strRemovePrefix);
        if (strRemovePrefix.length() == 0) {
            String str2 = String.format("%09d", Arrays.copyOf(new Object[]{1}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            return TuplesKt.to(0, str2);
        }
        if (intOrNull == null) {
            return TuplesKt.to(1, strRemovePrefix);
        }
        String str3 = String.format("%09d", Arrays.copyOf(new Object[]{intOrNull}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        return TuplesKt.to(0, str3);
    }
}
