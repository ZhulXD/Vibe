package p064y1;

import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.game.KiriKiriGameActivity;
import java.io.File;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p061x1.a;
import p066z1.g;
import p066z1.i;

/* JADX INFO: renamed from: y1.f1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0373f1 implements Function1 {
    public final /* synthetic */ int b;

    /* JADX WARN: Code duplicated, block: B:33:0x015e  */
    /* JADX WARN: Code duplicated, block: B:56:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:72:0x0225  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z2 = false;
        switch (this.b) {
            case 0:
                a it = (a) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return a.a(it, null, 0.0f, 0.0f, 0, 0, "CIRCLE", null, 0.0f, false, 1919);
            case 1:
                File it2 = (File) obj;
                int i3 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2.isFile() && StringsKt.equals(FilesKt.getExtension(it2), "tjs", true)) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 2:
                File file = (File) obj;
                int i4 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(file, "it");
                Intrinsics.checkNotNullParameter(file, "file");
                String name = file.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (!StringsKt__StringsJVMKt.endsWith$default(name, ".minhub-tmp", false, 2, null)) {
                    String name2 = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                    if (!StringsKt__StringsJVMKt.endsWith$default(name2, ".minhub-orig", false, 2, null)) {
                        String name3 = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                        z2 = StringsKt.N(name3, "MinHub");
                    }
                }
                return Boolean.valueOf(z2);
            case 3:
                File it3 = (File) obj;
                int i5 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(it3, "it");
                if (it3.isFile() && StringsKt.equals(FilesKt.getExtension(it3), "tjs", true)) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 4:
                File file2 = (File) obj;
                int i6 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(file2, "it");
                Intrinsics.checkNotNullParameter(file2, "file");
                String name4 = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                if (!StringsKt__StringsJVMKt.endsWith$default(name4, ".minhub-tmp", false, 2, null)) {
                    String name5 = file2.getName();
                    Intrinsics.checkNotNullExpressionValue(name5, "getName(...)");
                    if (!StringsKt__StringsJVMKt.endsWith$default(name5, ".minhub-orig", false, 2, null)) {
                        String name6 = file2.getName();
                        Intrinsics.checkNotNullExpressionValue(name6, "getName(...)");
                        z2 = StringsKt.N(name6, "MinHub");
                    }
                }
                return Boolean.valueOf(z2);
            case 5:
                File it4 = (File) obj;
                int i7 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(it4, "it");
                if (it4.isFile() && StringsKt.equals(FilesKt.getExtension(it4), "json", true)) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 6:
                File it5 = (File) obj;
                int i8 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(it5, "it");
                if (it5.isFile() && StringsKt.equals(FilesKt.getExtension(it5), "tjs", true)) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 7:
                File file3 = (File) obj;
                int i9 = KiriKiriGameActivity.f3720e;
                Intrinsics.checkNotNullParameter(file3, "it");
                Intrinsics.checkNotNullParameter(file3, "file");
                String name7 = file3.getName();
                Intrinsics.checkNotNullExpressionValue(name7, "getName(...)");
                if (!StringsKt__StringsJVMKt.endsWith$default(name7, ".minhub-tmp", false, 2, null)) {
                    String name8 = file3.getName();
                    Intrinsics.checkNotNullExpressionValue(name8, "getName(...)");
                    if (!StringsKt__StringsJVMKt.endsWith$default(name8, ".minhub-orig", false, 2, null)) {
                        String name9 = file3.getName();
                        Intrinsics.checkNotNullExpressionValue(name9, "getName(...)");
                        z2 = StringsKt.N(name9, "MinHub");
                    }
                }
                return Boolean.valueOf(z2);
            case 8:
                Byte b = (Byte) obj;
                b.byteValue();
                String str = String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                return str;
            case 9:
                Intrinsics.checkNotNullParameter((Save) obj, "it");
                return Unit.INSTANCE;
            case 10:
                Intrinsics.checkNotNullParameter((Save) obj, "it");
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_Z /* 11 */:
                MatchResult m2 = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(m2, "m");
                String str2 = m2.getGroupValues().get(3);
                Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
                String str3 = str2;
                if (str3.length() == 0) {
                    return "";
                }
                return ((Object) m2.getGroupValues().get(1)) + ((Object) m2.getGroupValues().get(2)) + str3 + ((Object) m2.getGroupValues().get(4)) + ((Object) m2.getGroupValues().get(5));
            case 12:
                File it6 = (File) obj;
                Intrinsics.checkNotNullParameter(it6, "it");
                return it6.getParentFile();
            case 13:
                Regex regex = g.f6441a;
                String name10 = ((File) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name10, "getName(...)");
                return (Comparable) g.c(name10).getFirst();
            case MotionEventCompat.AXIS_RZ /* 14 */:
                Regex regex2 = g.f6441a;
                String name11 = ((File) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name11, "getName(...)");
                return (Comparable) g.c(name11).getSecond();
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                File it7 = (File) obj;
                Intrinsics.checkNotNullParameter(it7, "it");
                return kotlin.collections.unsigned.a.g(it7.getName(), "/");
            case 16:
                MatchResult m3 = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(m3, "m");
                return "try{" + ((Object) m3.getGroupValues().get(1)) + ((Object) m3.getGroupValues().get(2)) + "}catch(e){}";
            default:
                i it8 = (i) obj;
                Intrinsics.checkNotNullParameter(it8, "it");
                String str4 = String.format("  +%4dms %-18s [%s]", Arrays.copyOf(new Object[]{Long.valueOf(it8.f6444c), it8.f6443a, it8.b}, 3));
                Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                return str4;
        }
    }
}
