package com.minhub.gamehub.data;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0002\u0010\u000bJ\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00122\u0006\u0010\u0013\u001a\u00020\u000fJ\u000e\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\bJ\u000e\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/minhub/gamehub/data/KiriKiriSaveNaming;", "", "<init>", "()V", "PREFIX", "", "EXT", "MAX_DEPTH", "", "slotOf", "fileName", "(Ljava/lang/String;)Ljava/lang/Integer;", "isPlayableSave", "", "thumbnailFor", "Ljava/io/File;", "saveFile", "findSaveDirs", "", "gameDir", "label", "slot", "badge", "RESUME_SLOT", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nKiriKiriSaveNaming.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KiriKiriSaveNaming.kt\ncom/minhub/gamehub/data/KiriKiriSaveNaming\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,108:1\n1069#2,2:109\n1#3:111\n12637#4,2:112\n*S KotlinDebug\n*F\n+ 1 KiriKiriSaveNaming.kt\ncom/minhub/gamehub/data/KiriKiriSaveNaming\n*L\n50#1:109,2\n77#1:112,2\n*E\n"})
public final class KiriKiriSaveNaming {
    private static final String EXT = ".ksd";
    public static final KiriKiriSaveNaming INSTANCE = new KiriKiriSaveNaming();
    private static final int MAX_DEPTH = 3;
    private static final String PREFIX = "data";
    public static final int RESUME_SLOT = 999;

    private KiriKiriSaveNaming() {
    }

    private static final void findSaveDirs$walk(List<File> list, File file, int i3) {
        File[] fileArrListFiles;
        if (i3 <= 3 && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile()) {
                    KiriKiriSaveNaming kiriKiriSaveNaming = INSTANCE;
                    String name = file2.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (kiriKiriSaveNaming.isPlayableSave(name)) {
                        list.add(file);
                        break;
                    }
                }
            }
            for (File file3 : fileArrListFiles) {
                if (file3.isDirectory()) {
                    Intrinsics.checkNotNull(file3);
                    findSaveDirs$walk(list, file3, i3 + 1);
                }
            }
        }
    }

    public final String badge(int slot) {
        return slot == 999 ? "R" : String.valueOf(slot);
    }

    public final List<File> findSaveDirs(File gameDir) {
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        ArrayList arrayList = new ArrayList();
        findSaveDirs$walk(arrayList, gameDir, 0);
        return arrayList;
    }

    public final boolean isPlayableSave(String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return slotOf(fileName) != null;
    }

    public final String label(int slot) {
        return slot == 999 ? "Resume" : E.b.i(slot, "Slot ");
    }

    public final Integer slotOf(String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        if (!StringsKt.N(fileName, PREFIX) || !StringsKt__StringsJVMKt.endsWith$default(fileName, EXT, false, 2, null)) {
            return null;
        }
        String strSubstring = fileName.substring(4, fileName.length() - 4);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        if (strSubstring.length() == 0) {
            return null;
        }
        for (int i3 = 0; i3 < strSubstring.length(); i3++) {
            if (!Character.isDigit(strSubstring.charAt(i3))) {
                return null;
            }
        }
        return StringsKt.toIntOrNull(strSubstring);
    }

    public final File thumbnailFor(File saveFile) {
        Intrinsics.checkNotNullParameter(saveFile, "saveFile");
        String name = saveFile.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        Integer numSlotOf = slotOf(name);
        if (numSlotOf != null) {
            File file = new File(saveFile.getParentFile(), E.b.j(numSlotOf.intValue(), PREFIX, ".bmp"));
            if (file.isFile()) {
                return file;
            }
        }
        return null;
    }
}
