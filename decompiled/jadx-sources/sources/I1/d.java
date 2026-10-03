package I1;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.libsdl.app.SDLActivity;
import p064y1.o2;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function2 {
    public final /* synthetic */ int b;

    public /* synthetic */ d(int i3) {
        this.b = i3;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0066  */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) throws IOException {
        Integer numValueOf;
        switch (this.b) {
            case 0:
                File temporary = (File) obj;
                File target = (File) obj2;
                Intrinsics.checkNotNullParameter(temporary, "temporary");
                Intrinsics.checkNotNullParameter(target, "target");
                Files.move(temporary.toPath(), target.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
                return Unit.INSTANCE;
            case 1:
                return CombinedContext.toString$lambda$2((String) obj, (CoroutineContext.Element) obj2);
            case 2:
                return CoroutineContext.DefaultImpls.plus$lambda$0((CoroutineContext) obj, (CoroutineContext.Element) obj2);
            default:
                String webKey = (String) obj;
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                Intrinsics.checkNotNullParameter(webKey, "keyCode");
                Map map = o2.f6314a;
                Intrinsics.checkNotNullParameter(webKey, "webKey");
                Integer num = (Integer) o2.f6314a.get(webKey);
                if (num != null) {
                    numValueOf = Integer.valueOf(num.intValue());
                } else if (webKey.length() != 1) {
                    numValueOf = null;
                } else {
                    char cCharAt = webKey.charAt(0);
                    if ('a' <= cCharAt && cCharAt < '{') {
                        numValueOf = Integer.valueOf(cCharAt - 'D');
                    } else if ('A' <= cCharAt && cCharAt < '[') {
                        numValueOf = Integer.valueOf(cCharAt - '$');
                    } else if ('0' > cCharAt || cCharAt >= ':') {
                        numValueOf = null;
                    } else {
                        numValueOf = Integer.valueOf(cCharAt - ')');
                    }
                }
                if (numValueOf != null) {
                    int iIntValue = numValueOf.intValue();
                    if (zBooleanValue) {
                        SDLActivity.onNativeKeyDown(iIntValue);
                    } else {
                        SDLActivity.onNativeKeyUp(iIntValue);
                    }
                }
                return Unit.INSTANCE;
        }
    }
}
