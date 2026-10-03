package p019h0;

import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4370a;
    public final int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4371c;

    public g(f fVar) {
        Context context = fVar.f4367a;
        float f = fVar.f4369d;
        ActivityManager activityManager = fVar.b;
        int i3 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        this.f4371c = i3;
        int iRound = Math.round(activityManager.getMemoryClass() * 1048576 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = (DisplayMetrics) fVar.f4368c.b;
        float f3 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int iRound2 = Math.round(f3 * f);
        int iRound3 = Math.round(f3 * 2.0f);
        int i4 = iRound - i3;
        int i5 = iRound3 + iRound2;
        if (i5 <= i4) {
            this.b = iRound3;
            this.f4370a = iRound2;
        } else {
            float f4 = i4 / (f + 2.0f);
            this.b = Math.round(2.0f * f4);
            this.f4370a = Math.round(f4 * f);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(Formatter.formatFileSize(context, this.b));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context, this.f4370a));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context, i3));
            sb.append(", memory class limited? ");
            sb.append(i5 > iRound);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context, iRound));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }
}
