package com.minhub.gamehub.hub.catalog;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/UncreatableFolderException;", "Ljava/io/IOException;", "folderName", "", "<init>", "(Ljava/lang/String;)V", "getFolderName", "()Ljava/lang/String;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class UncreatableFolderException extends IOException {
    private final String folderName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UncreatableFolderException(String folderName) {
        super("Cannot create folder: " + folderName);
        Intrinsics.checkNotNullParameter(folderName, "folderName");
        this.folderName = folderName;
    }

    public final String getFolderName() {
        return this.folderName;
    }
}
