package p064y1;

import com.minhub.gamehub.data.Save;
import java.io.File;
import java.util.Comparator;
import java.util.Locale;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class M implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6101a;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f6101a) {
            case 0:
                return ComparisonsKt.compareValues(Boolean.valueOf(((Save) obj2).getSlotNumber() == 999), Boolean.valueOf(((Save) obj).getSlotNumber() == 999));
            case 1:
                String name = ((File) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Locale locale = Locale.ROOT;
                String lowerCase = name.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String name2 = ((File) obj2).getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String lowerCase2 = name2.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase, lowerCase2);
            case 2:
                String name3 = ((File) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                Locale locale2 = Locale.ROOT;
                String lowerCase3 = name3.toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                String name4 = ((File) obj2).getName();
                Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                String lowerCase4 = name4.toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase3, lowerCase4);
            case 3:
                return ComparisonsKt.compareValues(Long.valueOf(((File) obj2).lastModified()), Long.valueOf(((File) obj).lastModified()));
            case 4:
                return ComparisonsKt.compareValues(((File) obj).getName(), ((File) obj2).getName());
            case 5:
                return ComparisonsKt.compareValues(((File) obj).getName(), ((File) obj2).getName());
            case 6:
                String name5 = ((File) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name5, "getName(...)");
                Locale locale3 = Locale.ROOT;
                String lowerCase5 = name5.toLowerCase(locale3);
                Intrinsics.checkNotNullExpressionValue(lowerCase5, "toLowerCase(...)");
                String name6 = ((File) obj2).getName();
                Intrinsics.checkNotNullExpressionValue(name6, "getName(...)");
                String lowerCase6 = name6.toLowerCase(locale3);
                Intrinsics.checkNotNullExpressionValue(lowerCase6, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase5, lowerCase6);
            case 7:
                return ComparisonsKt.compareValues(((File) obj).getName(), ((File) obj2).getName());
            case 8:
                return ComparisonsKt.compareValues(((File) obj).getName(), ((File) obj2).getName());
            default:
                return ComparisonsKt.compareValues(Long.valueOf(((Save) obj2).getLastModifiedMs()), Long.valueOf(((Save) obj).getLastModifiedMs()));
        }
    }
}
