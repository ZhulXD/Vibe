package R1;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import androidx.core.content.FileProvider;
import com.minhub.gamehub.R;
import java.io.File;
import java.io.FileInputStream;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f1946a;
    public final /* synthetic */ DownloadManager b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f1947c;

    public b(long j2, DownloadManager downloadManager, File file) {
        this.f1946a = j2;
        this.b = downloadManager;
        this.f1947c = file;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context c3, Intent intent) {
        Intrinsics.checkNotNullParameter(c3, "c");
        Intrinsics.checkNotNullParameter(intent, "intent");
        long longExtra = intent.getLongExtra("extra_download_id", -1L);
        long j2 = this.f1946a;
        if (longExtra != j2) {
            return;
        }
        try {
            c3.unregisterReceiver(this);
        } catch (Exception unused) {
        }
        boolean z2 = false;
        Cursor cursorQuery = this.b.query(new DownloadManager.Query().setFilterById(j2));
        if (cursorQuery.moveToFirst()) {
            int i3 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(NotificationCompat.CATEGORY_STATUS));
            if (i3 == 8) {
                File file = this.f1947c;
                Intrinsics.checkNotNullParameter(file, "file");
                if (file.exists() && file.length() >= 4) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            byte[] bArr = new byte[4];
                            boolean z3 = fileInputStream.read(bArr) >= 4 && bArr[0] == 80 && bArr[1] == 75;
                            CloseableKt.closeFinally(fileInputStream, null);
                            z2 = z3;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(fileInputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (z2) {
                    Uri uriForFile = FileProvider.getUriForFile(c3, c3.getPackageName() + ".fileprovider", file);
                    Intent intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setDataAndType(uriForFile, "application/vnd.android.package-archive");
                    intent2.setFlags(268435457);
                    c3.startActivity(intent2);
                } else {
                    Log.e("MinHub-Update", "Invalid APK after download: " + file.length() + " bytes at " + file.getPath());
                    Toast.makeText(c3, c3.getString(R.string.toast_update_install_failed), 1).show();
                }
            } else {
                Log.e("MinHub-Update", "Download failed: status=" + i3 + " reason=" + cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("reason")));
                Toast.makeText(c3, c3.getString(R.string.toast_update_download_failed), 1).show();
            }
        }
        cursorQuery.close();
    }
}
