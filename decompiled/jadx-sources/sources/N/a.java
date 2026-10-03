package N;

import C1.H;
import android.content.res.AssetManager;
import android.os.Build;
import androidx.core.view.MotionEventCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f1384a;
    public final d b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f1385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f1386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1387e;
    public boolean f = false;
    public b[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f1388h;

    public a(AssetManager assetManager, Executor executor, d dVar, String str, File file) {
        this.f1384a = executor;
        this.b = dVar;
        this.f1387e = str;
        this.f1386d = file;
        int i3 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i3 <= 34) {
            switch (i3) {
                case 24:
                case 25:
                    bArr = e.f1399h;
                    break;
                case 26:
                    bArr = e.g;
                    break;
                case 27:
                    bArr = e.f;
                    break;
                case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                case 29:
                case 30:
                    bArr = e.f1398e;
                    break;
                case 31:
                case 32:
                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    bArr = e.f1397d;
                    break;
            }
        }
        this.f1385c = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e2) {
            String message = e2.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            this.b.d();
            return null;
        }
    }

    public final void b(int i3, Serializable serializable) {
        this.f1384a.execute(new H(this, i3, serializable, 1));
    }
}
