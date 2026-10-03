package com.minhub.gamehub.data;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003¨\u0006\u0006"}, d2 = {"formatSaveTime", "", "ms", "", "formatFileSize", "bytes", "app_release"}, k = 2, mv = {2, 2, 0}, xi = 48)
public final class SaveKt {
    public static final String formatFileSize(long j2) {
        if (j2 < 1024) {
            return j2 + " B";
        }
        if (j2 < 1048576) {
            return (j2 / ((long) 1024)) + " KB";
        }
        return (j2 / ((long) 1048576)) + " MB";
    }

    public static final String formatSaveTime(long j2) {
        Date date = new Date(j2);
        long jCurrentTimeMillis = System.currentTimeMillis() - j2;
        if (jCurrentTimeMillis < 60000) {
            return "Vừa xong";
        }
        if (jCurrentTimeMillis < 3600000) {
            return (jCurrentTimeMillis / ((long) 60000)) + " phút trước";
        }
        if (jCurrentTimeMillis < 86400000) {
            String str = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(date);
            Intrinsics.checkNotNull(str);
            return str;
        }
        if (jCurrentTimeMillis < 604800000) {
            String str2 = new SimpleDateFormat("EEE HH:mm", Locale.getDefault()).format(date);
            Intrinsics.checkNotNull(str2);
            return str2;
        }
        String str3 = new SimpleDateFormat("dd/MM/yyyy", Locale.getDefault()).format(date);
        Intrinsics.checkNotNull(str3);
        return str3;
    }
}
