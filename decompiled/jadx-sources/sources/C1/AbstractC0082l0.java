package C1;

import java.io.File;
import java.util.Locale;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: C1.l0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0082l0 {
    public static String a(String str) {
        String strTrimStart = StringsKt.trimStart(StringsKt.trim((CharSequence) str).toString(), '\\', '/');
        char c3 = File.separatorChar;
        return StringsKt.F(StringsKt.F(strTrimStart, '\\', c3), '/', c3);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static C0079k0 b(File configFile) {
        Intrinsics.checkNotNullParameter(configFile, "configFile");
        if (!configFile.exists() || !configFile.isFile()) {
            return new C0079k0();
        }
        String str = null;
        String str2 = null;
        String str3 = null;
        String strA = null;
        String strA2 = null;
        String str4 = null;
        String strA3 = null;
        String strA4 = null;
        Long lValueOf = null;
        for (String str5 : FilesKt__FileReadWriteKt.readLines$default(configFile, null, 1, null)) {
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str5, ':', 0, false, 6, (Object) null);
            if (iIndexOf$default > 0) {
                String strSubstring = str5.substring(0, iIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String lowerCase = StringsKt.trim((CharSequence) strSubstring).toString().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String strSubstring2 = str5.substring(iIndexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                String string = StringsKt.trim((CharSequence) strSubstring2).toString();
                if (string.length() != 0) {
                    switch (lowerCase.hashCode()) {
                        case -1298662846:
                            if (lowerCase.equals("engine")) {
                                str2 = string;
                            } else {
                                continue;
                            }
                            break;
                        case -982450757:
                            if (lowerCase.equals("postid")) {
                            }
                            break;
                        case -391211750:
                            if (lowerCase.equals("post_id")) {
                            }
                            break;
                        case 3141:
                            if (lowerCase.equals("bg")) {
                                strA2 = a(string);
                            } else {
                                continue;
                            }
                            break;
                        case 3355:
                            if (lowerCase.equals("id")) {
                            }
                            break;
                        case 3226745:
                            if (lowerCase.equals("icon")) {
                                strA = a(string);
                            } else {
                                continue;
                            }
                            break;
                        case 3373707:
                            if (lowerCase.equals("name")) {
                                str3 = string;
                            } else {
                                continue;
                            }
                            break;
                        case 3575610:
                            if (lowerCase.equals("type")) {
                                str = string;
                            } else {
                                continue;
                            }
                            break;
                        case 351608024:
                            if (lowerCase.equals("version")) {
                                str4 = string;
                            } else {
                                continue;
                            }
                            break;
                        case 755737786:
                            if (lowerCase.equals("runtimeroot")) {
                                strA3 = a(string);
                            } else {
                                continue;
                            }
                            break;
                        case 1872819696:
                            if (lowerCase.equals("savedir")) {
                                strA4 = a(string);
                            } else {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                    Long longOrNull = StringsKt.toLongOrNull(string);
                    if (longOrNull != null) {
                        lValueOf = Long.valueOf(longOrNull.longValue());
                    }
                }
            }
        }
        return new C0079k0(str3, strA, strA2, str == null ? str2 : str, str4, strA3, strA4, lValueOf);
    }
}
