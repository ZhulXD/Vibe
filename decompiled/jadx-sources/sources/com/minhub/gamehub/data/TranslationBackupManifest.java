package com.minhub.gamehub.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/minhub/gamehub/data/TranslationBackupManifest;", "", "entries", "", "Lcom/minhub/gamehub/data/TranslationBackupEntry;", "<init>", "(Ljava/util/List;)V", "getEntries", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class TranslationBackupManifest {
    private final List<TranslationBackupEntry> entries;

    /* JADX WARN: Multi-variable type inference failed */
    public TranslationBackupManifest() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TranslationBackupManifest copy$default(TranslationBackupManifest translationBackupManifest, List list, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            list = translationBackupManifest.entries;
        }
        return translationBackupManifest.copy(list);
    }

    public final List<TranslationBackupEntry> component1() {
        return this.entries;
    }

    public final TranslationBackupManifest copy(List<TranslationBackupEntry> entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        return new TranslationBackupManifest(entries);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof TranslationBackupManifest) && Intrinsics.areEqual(this.entries, ((TranslationBackupManifest) other).entries);
    }

    public final List<TranslationBackupEntry> getEntries() {
        return this.entries;
    }

    public int hashCode() {
        return this.entries.hashCode();
    }

    public String toString() {
        return "TranslationBackupManifest(entries=" + this.entries + ")";
    }

    public TranslationBackupManifest(List<TranslationBackupEntry> entries) {
        Intrinsics.checkNotNullParameter(entries, "entries");
        this.entries = entries;
    }

    public /* synthetic */ TranslationBackupManifest(List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? CollectionsKt.emptyList() : list);
    }
}
