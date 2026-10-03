package p064y1;

import android.content.Context;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import java.io.File;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class p2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f6324a = CollectionsKt.listOf((Object[]) new String[]{"libSDL2.so", "libSDL2_image.so", "libSDL2_ttf.so", "libSDL2_sound.so", "libopenal.so", "libjpeg.so", "libpng16d.so", "libruby.so", "libmkxp-z.so"});

    public static void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        EnumC0420v1 enumC0420v1 = EnumC0420v1.VXACE;
        String strA = enumC0420v1.a();
        if (strA == null) {
            throw new UnsatisfiedLinkError("Thiết bị không hỗ trợ ABI cho VX Ace");
        }
        String str = context.getApplicationInfo().nativeLibraryDir;
        C0429y1 c0429y1 = C0429y1.f6409a;
        File file = new File(C0429y1.o(null, context, enumC0420v1), strA);
        File file2 = new File(str, "libc++_shared.so");
        Log.d("VxAceLibs", "Loading libc++_shared.so from " + str);
        try {
            System.load(file2.getAbsolutePath());
            for (Object obj : f6324a) {
                Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
                String str2 = (String) obj;
                File file3 = new File(file, str2);
                Log.d("VxAceLibs", "Loading " + str2 + " from plugin dir");
                try {
                    System.load(file3.getAbsolutePath());
                    Log.d("VxAceLibs", "Loaded " + str2 + " OK");
                } catch (UnsatisfiedLinkError e2) {
                    String property = System.getProperty("os.arch");
                    if (property == null) {
                        property = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                    String message = e2.getMessage();
                    StringBuilder sbJ = a.j("Không thể load ", str2, " (arch=", property, "): ");
                    sbJ.append(message);
                    throw new UnsatisfiedLinkError(sbJ.toString());
                }
            }
        } catch (UnsatisfiedLinkError e3) {
            throw new UnsatisfiedLinkError(a.o("Không thể load libc++_shared.so: ", e3.getMessage()));
        }
    }
}
