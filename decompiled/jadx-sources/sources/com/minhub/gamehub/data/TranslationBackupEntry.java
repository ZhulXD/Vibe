package com.minhub.gamehub.data;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/data/TranslationBackupEntry;", "", "relativePath", "", "backupPath", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getRelativePath", "()Ljava/lang/String;", "getBackupPath", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class TranslationBackupEntry {
    private final String backupPath;
    private final String relativePath;

    public TranslationBackupEntry(String relativePath, String backupPath) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        Intrinsics.checkNotNullParameter(backupPath, "backupPath");
        this.relativePath = relativePath;
        this.backupPath = backupPath;
    }

    public static /* synthetic */ TranslationBackupEntry copy$default(TranslationBackupEntry translationBackupEntry, String str, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = translationBackupEntry.relativePath;
        }
        if ((i3 & 2) != 0) {
            str2 = translationBackupEntry.backupPath;
        }
        return translationBackupEntry.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getRelativePath() {
        return this.relativePath;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getBackupPath() {
        return this.backupPath;
    }

    public final TranslationBackupEntry copy(String relativePath, String backupPath) {
        Intrinsics.checkNotNullParameter(relativePath, "relativePath");
        Intrinsics.checkNotNullParameter(backupPath, "backupPath");
        return new TranslationBackupEntry(relativePath, backupPath);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TranslationBackupEntry)) {
            return false;
        }
        TranslationBackupEntry translationBackupEntry = (TranslationBackupEntry) other;
        return Intrinsics.areEqual(this.relativePath, translationBackupEntry.relativePath) && Intrinsics.areEqual(this.backupPath, translationBackupEntry.backupPath);
    }

    public final String getBackupPath() {
        return this.backupPath;
    }

    public final String getRelativePath() {
        return this.relativePath;
    }

    public int hashCode() {
        return this.backupPath.hashCode() + (this.relativePath.hashCode() * 31);
    }

    public String toString() {
        return E.b.n("TranslationBackupEntry(relativePath=", this.relativePath, ", backupPath=", this.backupPath, ")");
    }
}
