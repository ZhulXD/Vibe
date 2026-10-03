package L1;

import N1.f;
import T1.l;
import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.data.EngineCache;
import com.minhub.gamehub.data.EngineDetector;
import com.minhub.gamehub.data.GameStorage;
import com.minhub.gamehub.data.RenpyTagFixer;
import com.minhub.gamehub.data.RpgMakerSaveStore;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.data.TranslationOverlayInstaller;
import com.minhub.gamehub.hub.auth.AuthHttp;
import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt;
import com.minhub.gamehub.hub.catalog.OnlineCatalogParser;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int b;

    public /* synthetic */ d(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String strSubstring;
        boolean z2 = false;
        int i3 = 0;
        z2 = false;
        switch (this.b) {
            case 0:
                MatchResult it = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return StringsKt.toIntOrNull(it.getValue());
            case 1:
                Byte b = (Byte) obj;
                b.byteValue();
                String str = String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                return str;
            case 2:
                Byte b3 = (Byte) obj;
                b3.byteValue();
                String str2 = String.format("%02x", Arrays.copyOf(new Object[]{b3}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                return str2;
            case 3:
                Byte b4 = (Byte) obj;
                b4.byteValue();
                String str3 = String.format("%02x", Arrays.copyOf(new Object[]{b4}, 1));
                Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                return str3;
            case 4:
                File it2 = (File) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                if (it2.isFile() && !M1.e.f1358a.contains(it2.getName())) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 5:
                Byte b5 = (Byte) obj;
                b5.byteValue();
                String str4 = String.format("%02x", Arrays.copyOf(new Object[]{b5}, 1));
                Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                return str4;
            case 6:
                f it3 = (f) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                return "R\t" + it3.f1425a + "\t" + it3.b + "\t" + it3.f1426c + "\t" + it3.f1427d + "\t" + it3.f1428e + "\n";
            case 7:
                String id = (String) obj;
                Intrinsics.checkNotNullParameter(id, "id");
                return StringsKt.take(new Regex("[^A-Za-z0-9_.-]").replace(id, "_"), 64);
            case 8:
                String reason = (String) obj;
                Intrinsics.checkNotNullParameter(reason, "reason");
                return StringsKt.take(new Regex("[^A-Za-z0-9_.-]").replace(reason, "_"), 180);
            case 9:
                String it4 = (String) obj;
                Intrinsics.checkNotNullParameter(it4, "it");
                Charset charset = Charsets.UTF_8;
                byte[] bytes = it4.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                if (bytes.length <= 220) {
                    return it4;
                }
                byte[] bytes2 = it4.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                long j2 = 2166136261L;
                for (byte b6 : bytes2) {
                    j2 = ((j2 ^ (((long) b6) & 255)) * 16777619) & 4294967295L;
                }
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String str5 = String.format(Locale.US, "%08x", Arrays.copyOf(new Object[]{Long.valueOf(j2)}, 1));
                Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
                String strTake = StringsKt.take(str5, 8);
                int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) it4, '.', 0, false, 6, (Object) null);
                String string = "";
                if (iLastIndexOf$default > 0) {
                    strSubstring = it4.substring(iLastIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                } else {
                    strSubstring = "";
                }
                Charset charset2 = Charsets.UTF_8;
                byte[] bytes3 = strSubstring.getBytes(charset2);
                Intrinsics.checkNotNullExpressionValue(bytes3, "getBytes(...)");
                if (bytes3.length > 16) {
                    strSubstring = "";
                }
                String strM = E.b.m("~", strTake, strSubstring);
                byte[] bytes4 = strM.getBytes(charset2);
                Intrinsics.checkNotNullExpressionValue(bytes4, "getBytes(...)");
                int length = 220 - bytes4.length;
                if (iLastIndexOf$default > 0) {
                    it4 = it4.substring(0, iLastIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(it4, "substring(...)");
                }
                if (length > 0) {
                    StringBuilder sb = new StringBuilder();
                    int length2 = 0;
                    while (i3 < it4.length()) {
                        int iCharCount = Character.charCount(it4.codePointAt(i3)) + i3;
                        String strSubstring2 = it4.substring(i3, iCharCount);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        byte[] bytes5 = strSubstring2.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes5, "getBytes(...)");
                        length2 += bytes5.length;
                        if (length2 <= length) {
                            sb.append(strSubstring2);
                            i3 = iCharCount;
                        } else {
                            string = sb.toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                        }
                    }
                    string = sb.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                }
                return kotlin.collections.unsigned.a.g(string, strM);
            case 10:
                ((Long) obj).getClass();
                List list = l.f2222a;
                return 0;
            case MotionEventCompat.AXIS_Z /* 11 */:
                return Integer.valueOf((int) ((((Long) obj).longValue() >>> 3) & 255));
            case 12:
                return Integer.valueOf((int) (((Long) obj).longValue() & 255));
            case 13:
                return Boolean.valueOf(EngineCache.loadEntries$lambda$1((Map.Entry) obj));
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return EngineDetector.SIGNALS$lambda$1((File) obj);
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                return EngineDetector.SIGNALS$lambda$3((File) obj);
            case 16:
                return EngineDetector.SIGNALS$lambda$5((File) obj);
            case 17:
                return GameStorage._init_$lambda$0(((Integer) obj).intValue());
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                return RenpyTagFixer.fixRpyContent$lambda$1$lambda$0((MatchResult) obj);
            case 19:
                return Boolean.valueOf(RenpyTagFixer.fixTlFolder$lambda$4$lambda$3((File) obj));
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                return RenpyTagFixer.fixRpyContent$lambda$1((String) obj);
            case 21:
                return RpgMakerSaveStore.saveFileRegex$lambda$0((String) obj);
            case 22:
                return SaveRepository.scanRPGMakerSaves$lambda$5((File) obj);
            case 23:
                return Boolean.valueOf(TranslationOverlayInstaller.installOverlayFromDirectory$lambda$6((File) obj));
            case 24:
                return AuthHttp.postOnce$lambda$0((Map.Entry) obj);
            case 25:
                return CatalogDownloadQueue._init_$lambda$1((Function0) obj);
            case 26:
                return CatalogDownloadQueue.runJob$lambda$11((CatalogDownloadJob) obj);
            case 27:
                return OnlineCatalogImportSupportKt.verifyChecksum$lambda$41(((Byte) obj).byteValue());
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                return OnlineCatalogImportSupportKt.importOnlineCatalogItem$lambda$27(((Integer) obj).intValue());
            default:
                return OnlineCatalogParser.decodeHtmlEntities$lambda$8((MatchResult) obj);
        }
    }
}
