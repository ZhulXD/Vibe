package A1;

import C1.X0;
import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import java.io.File;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: A1.e, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0015e implements Function1 {
    public final /* synthetic */ int b;

    public /* synthetic */ C0015e(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Integer num = null;
        boolean z2 = false;
        z = false;
        boolean z3 = false;
        z2 = false;
        switch (this.b) {
            case 0:
                Intrinsics.checkNotNullParameter((String) obj, "it");
                return new Object();
            case 1:
                C0008a0 it = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return it;
            case 2:
                C0008a0 it2 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            case 3:
                C0008a0 it3 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            case 4:
                C0008a0 it4 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it4, "it");
                return it4;
            case 5:
                C0008a0 it5 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it5, "it");
                return it5;
            case 6:
                C0008a0 it6 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it6, "it");
                return it6;
            case 7:
                C0008a0 it7 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it7, "it");
                return C0008a0.a(it7, 0L, null, null, null, 51);
            case 8:
                C0008a0 it8 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it8, "it");
                return C0008a0.a(it8, 0L, null, null, null, 59);
            case 9:
                C0008a0 it9 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it9, "it");
                return C0008a0.a(it9, 0L, null, null, null, 51);
            case 10:
                C0008a0 it10 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it10, "it");
                return C0008a0.a(it10, 0L, null, null, null, 59);
            case MotionEventCompat.AXIS_Z /* 11 */:
                C0008a0 it11 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it11, "it");
                return C0008a0.a(it11, 0L, null, null, null, 51);
            case 12:
                Intrinsics.checkNotNullParameter((Throwable) obj, "it");
                return Unit.INSTANCE;
            case 13:
                Intrinsics.checkNotNullParameter((String) obj, "it");
                return new ReentrantLock();
            case MotionEventCompat.AXIS_RZ /* 14 */:
                Map.Entry entry = (Map.Entry) obj;
                Intrinsics.checkNotNullParameter(entry, "<destruct>");
                return E.b.n("\"", B1.z.b((String) entry.getKey()), "\":\"", B1.z.b((String) entry.getValue()), "\"");
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                Byte b = (Byte) obj;
                b.byteValue();
                String str = String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                return str;
            case 16:
                OnlineTranslationPackage it12 = (OnlineTranslationPackage) obj;
                Intrinsics.checkNotNullParameter(it12, "it");
                return X0.b(it12);
            case 17:
                File it13 = (File) obj;
                Intrinsics.checkNotNullParameter(it13, "it");
                if (it13.isFile()) {
                    String name = it13.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (StringsKt__StringsJVMKt.endsWith(name, ".ks", true)) {
                        z2 = true;
                    }
                }
                return Boolean.valueOf(z2);
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                int i3 = HubActivity.f3779j;
                Intrinsics.checkNotNullParameter((String) obj, "it");
                return Unit.INSTANCE;
            case 19:
                File it14 = (File) obj;
                int i4 = KiriKiriInstallActivity.f3784o;
                Intrinsics.checkNotNullParameter(it14, "it");
                if (it14.isFile() && StringsKt.equals(FilesKt.getExtension(it14), "xp3", true)) {
                    z3 = true;
                }
                return Boolean.valueOf(z3);
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                MatchResult mr = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(mr, "mr");
                String str2 = mr.getGroupValues().get(1);
                Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
                Integer intOrNull = StringsKt.toIntOrNull(str2);
                if (intOrNull != null) {
                    int iIntValue = intOrNull.intValue();
                    if (1 <= iIntValue && iIntValue < 1114112) {
                        num = intOrNull;
                    }
                    if (num != null) {
                        char[] chars = Character.toChars(num.intValue());
                        Intrinsics.checkNotNullExpressionValue(chars, "toChars(...)");
                        return new String(chars);
                    }
                }
                return mr.getValue();
            case 21:
                MatchResult mr2 = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(mr2, "mr");
                String str3 = mr2.getGroupValues().get(1);
                Intrinsics.checkNotNullExpressionValue(str3, "get(...)");
                Integer intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(str3, 16);
                if (intOrNull2 != null) {
                    int iIntValue2 = intOrNull2.intValue();
                    if (1 <= iIntValue2 && iIntValue2 < 1114112) {
                        num = intOrNull2;
                    }
                    if (num != null) {
                        char[] chars2 = Character.toChars(num.intValue());
                        Intrinsics.checkNotNullExpressionValue(chars2, "toChars(...)");
                        return new String(chars2);
                    }
                }
                return mr2.getValue();
            case 22:
                D1.l it15 = (D1.l) obj;
                Intrinsics.checkNotNullParameter(it15, "it");
                return Integer.valueOf(it15.f837d.ordinal());
            case 23:
                D1.l it16 = (D1.l) obj;
                Intrinsics.checkNotNullParameter(it16, "it");
                String str4 = it16.f838e;
                int i5 = 0;
                for (int i6 = 0; i6 < str4.length(); i6++) {
                    if (str4.charAt(i6) == '/') {
                        i5++;
                    }
                }
                return Integer.valueOf(i5);
            case 24:
                D1.l it17 = (D1.l) obj;
                Intrinsics.checkNotNullParameter(it17, "it");
                return it17.f838e;
            case 25:
                D1.l it18 = (D1.l) obj;
                Intrinsics.checkNotNullParameter(it18, "it");
                return Integer.valueOf(it18.f837d.ordinal());
            case 26:
                D1.l it19 = (D1.l) obj;
                Intrinsics.checkNotNullParameter(it19, "it");
                return Integer.valueOf(it19.b.getAbsolutePath().length());
            case 27:
                Intrinsics.checkNotNullParameter((String) obj, "it");
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                Byte b3 = (Byte) obj;
                b3.byteValue();
                String str5 = String.format("%02x", Arrays.copyOf(new Object[]{b3}, 1));
                Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
                return str5;
            default:
                String str6 = String.format("%02x", Arrays.copyOf(new Object[]{Integer.valueOf(((Byte) obj).byteValue() & UByte.MAX_VALUE)}, 1));
                Intrinsics.checkNotNullExpressionValue(str6, "format(...)");
                return str6;
        }
    }
}
