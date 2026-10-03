package C1;

import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.minhub.gamehub.data.Save;
import java.io.File;
import java.util.Comparator;
import java.util.Locale;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.w1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0115w1 implements Comparator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f708a;
    public final /* synthetic */ Object b;

    public /* synthetic */ C0115w1(int i3, Object obj) {
        this.f708a = i3;
        this.b = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f708a) {
            case 0:
                File file = (File) this.b;
                String invariantSeparatorsPath = FilesKt.getInvariantSeparatorsPath(FilesKt.relativeTo((File) obj, file));
                Locale locale = Locale.ROOT;
                String lowerCase = invariantSeparatorsPath.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String lowerCase2 = FilesKt.getInvariantSeparatorsPath(FilesKt.relativeTo((File) obj2, file)).toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase, lowerCase2);
            case 1:
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.b;
                int iCompareTo = Boolean.valueOf(materialButton.f3362p).compareTo(Boolean.valueOf(materialButton2.f3362p));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return iCompareTo2 != 0 ? iCompareTo2 : Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton2)));
            case 2:
                int iCompare = ((C0115w1) this.b).compare(obj, obj2);
                return iCompare != 0 ? iCompare : ComparisonsKt.compareValues(((K1.f) obj).f1229a, ((K1.f) obj2).f1229a);
            case 3:
                int iCompare2 = ((K1.c) this.b).compare(obj, obj2);
                return iCompare2 != 0 ? iCompare2 : ComparisonsKt.compareValues(Integer.valueOf(((K1.f) obj2).f1230c), Integer.valueOf(((K1.f) obj).f1230c));
            case 4:
                int iCompare3 = ((K1.c) this.b).compare(obj, obj2);
                return iCompare3 != 0 ? iCompare3 : ComparisonsKt.compareValues(((K1.h) obj).f1239a, ((K1.h) obj2).f1239a);
            case 5:
                int iCompare4 = ((p064y1.M) this.b).compare(obj, obj2);
                return iCompare4 != 0 ? iCompare4 : ComparisonsKt.compareValues(Long.valueOf(((Save) obj2).getLastModifiedMs()), Long.valueOf(((Save) obj).getLastModifiedMs()));
            default:
                int iCompare5 = ((T) this.b).compare(obj, obj2);
                if (iCompare5 != 0) {
                    return iCompare5;
                }
                String name = ((File) obj).getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                Locale locale2 = Locale.ROOT;
                String lowerCase3 = name.toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                String name2 = ((File) obj2).getName();
                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                String lowerCase4 = name2.toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                return ComparisonsKt.compareValues(lowerCase3, lowerCase4);
        }
    }
}
