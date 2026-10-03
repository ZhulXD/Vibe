package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/UnsupportedGameImportException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "reason", "Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;", "<init>", "(Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;)V", "getReason", "()Lcom/minhub/gamehub/hub/catalog/UnsupportedImportReason;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class UnsupportedGameImportException extends Exception {
    private final UnsupportedImportReason reason;

    public UnsupportedGameImportException(UnsupportedImportReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.reason = reason;
    }

    public final UnsupportedImportReason getReason() {
        return this.reason;
    }
}
