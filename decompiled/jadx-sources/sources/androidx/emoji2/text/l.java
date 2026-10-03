package androidx.emoji2.text;

import androidx.core.os.TraceCompat;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            TraceCompat.beginSection("EmojiCompat.EmojiCompatInitializer.run");
            if (j.f2876k != null) {
                j.a().c();
            }
        } finally {
            TraceCompat.endSection();
        }
    }
}
