package com.minhub.gamehub.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/minhub/gamehub/data/SaveExportNamingPolicy;", "", "<init>", "()V", "fileNameFor", "", "save", "Lcom/minhub/gamehub/data/Save;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SaveExportNamingPolicy {
    public static final SaveExportNamingPolicy INSTANCE = new SaveExportNamingPolicy();

    private SaveExportNamingPolicy() {
    }

    public final String fileNameFor(Save save) {
        Intrinsics.checkNotNullParameter(save, "save");
        return save.getFileName();
    }
}
