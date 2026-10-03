package N;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.AppLocalesStorageHelper;
import androidx.core.os.LocaleListCompat;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.lang.ref.WeakReference;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p011e.AbstractC0250l;
import p011e.AbstractC0251m;
import p011e.B;
import p011e.p;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f1402c;

    public /* synthetic */ f(Context context, int i3) {
        this.b = i3;
        this.f1402c = context;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005d  */
    @Override // java.lang.Runnable
    public final void run() {
        LocaleListCompat emptyLocaleList;
        Object systemService;
        Context context;
        switch (this.b) {
            case 0:
                (Build.VERSION.SDK_INT >= 28 ? i.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new f(this.f1402c, 1), new Random().nextInt(Math.max(1000, 1)) + 5000);
                break;
            case 1:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new f(this.f1402c, 2));
                break;
            case 2:
                e.s(this.f1402c, new c(0), e.f1395a, false);
                break;
            default:
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 33) {
                    Context context2 = this.f1402c;
                    ComponentName componentName = new ComponentName(context2, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                    if (context2.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                        if (i3 >= 33) {
                            p041q.f fVar = p.f4155h;
                            fVar.getClass();
                            p041q.a aVar = new p041q.a(fVar);
                            while (true) {
                                if (aVar.hasNext()) {
                                    p pVar = (p) ((WeakReference) aVar.next()).get();
                                    if (pVar != null && (context = ((B) pVar).f4040l) != null) {
                                        systemService = context.getSystemService("locale");
                                    }
                                } else {
                                    systemService = null;
                                }
                            }
                            if (systemService != null) {
                                emptyLocaleList = LocaleListCompat.wrap(AbstractC0251m.a(systemService));
                            } else {
                                emptyLocaleList = LocaleListCompat.getEmptyLocaleList();
                            }
                        } else {
                            emptyLocaleList = p.f4153d;
                            if (emptyLocaleList == null) {
                                emptyLocaleList = LocaleListCompat.getEmptyLocaleList();
                            }
                        }
                        if (emptyLocaleList.isEmpty()) {
                            String locales = AppLocalesStorageHelper.readLocales(context2);
                            Object systemService2 = context2.getSystemService("locale");
                            if (systemService2 != null) {
                                AbstractC0251m.b(systemService2, AbstractC0250l.a(locales));
                            }
                        }
                        context2.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                    }
                }
                p.g = true;
                break;
        }
    }

    public /* synthetic */ f(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.b = 0;
        this.f1402c = context;
    }
}
