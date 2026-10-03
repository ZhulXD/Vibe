package p064y1;

import E.b;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.game.VxAceGameActivity;
import com.minhub.gamehub.hub.catalog.PluginInstaller;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogParser;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.unsigned.a;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class r2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VxAceGameActivity f6342a;

    public r2(VxAceGameActivity context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f6342a = context;
    }

    public final void a(File file, String str) throws IOException {
        VxAceGameActivity vxAceGameActivity = this.f6342a;
        String[] list = vxAceGameActivity.getAssets().list(str);
        if (list == null) {
            list = new String[0];
        }
        if (list.length != 0) {
            if (!file.exists()) {
                file.mkdirs();
            }
            for (String str2 : list) {
                a(new File(file, str2), a.h(str, "/", str2));
            }
            return;
        }
        if ((StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "/cheats/", false, 2, (Object) null) && StringsKt__StringsJVMKt.endsWith$default(str, ".rb", false, 2, null)) || StringsKt__StringsJVMKt.endsWith$default(str, "mkxp.json", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(str, "mkxp-patches.json", false, 2, null) || !file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            InputStream inputStreamOpen = vxAceGameActivity.getAssets().open(str);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    Intrinsics.checkNotNull(inputStreamOpen);
                    ByteStreamsKt.copyTo$default(inputStreamOpen, fileOutputStream, 0, 2, null);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    CloseableKt.closeFinally(inputStreamOpen, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(inputStreamOpen, th3);
                    throw th4;
                }
            }
        }
    }

    public final void b(File gameRoot) {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        a(gameRoot, "vxace-support");
        VxAceGameActivity context = this.f6342a;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        X1 x2 = null;
        try {
            File file = new File(context.getFilesDir(), "vxace_autofix_cache.json");
            if (file.exists()) {
                x2 = (X1) new l().c(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null), X1.class);
            }
        } catch (Exception unused) {
        }
        if (x2 == null) {
            return;
        }
        try {
            List<RemotePluginCatalogItem> items = RemotePluginCatalogParser.INSTANCE.parse(x2.b).getItems();
            ArrayList arrayList = new ArrayList();
            for (Object obj : items) {
                RemotePluginCatalogItem remotePluginCatalogItem = (RemotePluginCatalogItem) obj;
                if (remotePluginCatalogItem.isFixPlugin() && remotePluginCatalogItem.isRecommendedByDefault() && remotePluginCatalogItem.getSupportedEngines().contains(GameEngine.VXACE) && StringsKt.isBlank(remotePluginCatalogItem.getPackageUrl())) {
                    arrayList.add(obj);
                }
            }
            File file2 = new File(context.getCacheDir(), "autofix_work");
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj2 = arrayList.get(i3);
                i3++;
                PluginInstaller.INSTANCE.install(gameRoot, (RemotePluginCatalogItem) obj2, file2);
            }
        } catch (Exception e2) {
            b.x("applyToGame failed: ", e2.getMessage(), "VxAceAutoFixCache");
        }
    }
}
