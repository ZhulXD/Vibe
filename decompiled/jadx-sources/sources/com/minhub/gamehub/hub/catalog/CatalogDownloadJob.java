package com.minhub.gamehub.hub.catalog;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\bHÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jb\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010*\u001a\u00020\bHÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011¨\u0006,"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;", "", "id", "", "title", "zipUrl", "selectedUrl", NotificationCompat.CATEGORY_PROGRESS, "", "state", "Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;", "importedGameId", "", "errorMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getTitle", "getZipUrl", "getSelectedUrl", "getProgress", "()I", "getState", "()Lcom/minhub/gamehub/hub/catalog/CatalogDownloadState;", "getImportedGameId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getErrorMessage", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/minhub/gamehub/hub/catalog/CatalogDownloadState;Ljava/lang/Long;Ljava/lang/String;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CatalogDownloadJob {
    private final String errorMessage;
    private final String id;
    private final Long importedGameId;
    private final int progress;
    private final String selectedUrl;
    private final CatalogDownloadState state;
    private final String title;
    private final String zipUrl;

    public CatalogDownloadJob(String id, String title, String zipUrl, String selectedUrl, int i3, CatalogDownloadState state, Long l2, String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(selectedUrl, "selectedUrl");
        Intrinsics.checkNotNullParameter(state, "state");
        this.id = id;
        this.title = title;
        this.zipUrl = zipUrl;
        this.selectedUrl = selectedUrl;
        this.progress = i3;
        this.state = state;
        this.importedGameId = l2;
        this.errorMessage = str;
    }

    public static /* synthetic */ CatalogDownloadJob copy$default(CatalogDownloadJob catalogDownloadJob, String str, String str2, String str3, String str4, int i3, CatalogDownloadState catalogDownloadState, Long l2, String str5, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = catalogDownloadJob.id;
        }
        if ((i4 & 2) != 0) {
            str2 = catalogDownloadJob.title;
        }
        if ((i4 & 4) != 0) {
            str3 = catalogDownloadJob.zipUrl;
        }
        if ((i4 & 8) != 0) {
            str4 = catalogDownloadJob.selectedUrl;
        }
        if ((i4 & 16) != 0) {
            i3 = catalogDownloadJob.progress;
        }
        if ((i4 & 32) != 0) {
            catalogDownloadState = catalogDownloadJob.state;
        }
        if ((i4 & 64) != 0) {
            l2 = catalogDownloadJob.importedGameId;
        }
        if ((i4 & 128) != 0) {
            str5 = catalogDownloadJob.errorMessage;
        }
        Long l3 = l2;
        String str6 = str5;
        int i5 = i3;
        CatalogDownloadState catalogDownloadState2 = catalogDownloadState;
        return catalogDownloadJob.copy(str, str2, str3, str4, i5, catalogDownloadState2, l3, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getZipUrl() {
        return this.zipUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSelectedUrl() {
        return this.selectedUrl;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getProgress() {
        return this.progress;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final CatalogDownloadState getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getImportedGameId() {
        return this.importedGameId;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final CatalogDownloadJob copy(String id, String title, String zipUrl, String selectedUrl, int progress, CatalogDownloadState state, Long importedGameId, String errorMessage) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(selectedUrl, "selectedUrl");
        Intrinsics.checkNotNullParameter(state, "state");
        return new CatalogDownloadJob(id, title, zipUrl, selectedUrl, progress, state, importedGameId, errorMessage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CatalogDownloadJob)) {
            return false;
        }
        CatalogDownloadJob catalogDownloadJob = (CatalogDownloadJob) other;
        return Intrinsics.areEqual(this.id, catalogDownloadJob.id) && Intrinsics.areEqual(this.title, catalogDownloadJob.title) && Intrinsics.areEqual(this.zipUrl, catalogDownloadJob.zipUrl) && Intrinsics.areEqual(this.selectedUrl, catalogDownloadJob.selectedUrl) && this.progress == catalogDownloadJob.progress && this.state == catalogDownloadJob.state && Intrinsics.areEqual(this.importedGameId, catalogDownloadJob.importedGameId) && Intrinsics.areEqual(this.errorMessage, catalogDownloadJob.errorMessage);
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public final String getId() {
        return this.id;
    }

    public final Long getImportedGameId() {
        return this.importedGameId;
    }

    public final int getProgress() {
        return this.progress;
    }

    public final String getSelectedUrl() {
        return this.selectedUrl;
    }

    public final CatalogDownloadState getState() {
        return this.state;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getZipUrl() {
        return this.zipUrl;
    }

    public int hashCode() {
        int iHashCode = (this.state.hashCode() + E.b.a(this.progress, E.b.d(this.selectedUrl, E.b.d(this.zipUrl, E.b.d(this.title, this.id.hashCode() * 31, 31), 31), 31), 31)) * 31;
        Long l2 = this.importedGameId;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        String str = this.errorMessage;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        String str = this.id;
        String str2 = this.title;
        String str3 = this.zipUrl;
        String str4 = this.selectedUrl;
        int i3 = this.progress;
        CatalogDownloadState catalogDownloadState = this.state;
        Long l2 = this.importedGameId;
        String str5 = this.errorMessage;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("CatalogDownloadJob(id=", str, ", title=", str2, ", zipUrl=");
        kotlin.collections.unsigned.a.n(sbJ, str3, ", selectedUrl=", str4, ", progress=");
        sbJ.append(i3);
        sbJ.append(", state=");
        sbJ.append(catalogDownloadState);
        sbJ.append(", importedGameId=");
        sbJ.append(l2);
        sbJ.append(", errorMessage=");
        sbJ.append(str5);
        sbJ.append(")");
        return sbJ.toString();
    }

    public /* synthetic */ CatalogDownloadJob(String str, String str2, String str3, String str4, int i3, CatalogDownloadState catalogDownloadState, Long l2, String str5, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, i3, catalogDownloadState, (i4 & 64) != 0 ? null : l2, (i4 & 128) != 0 ? null : str5);
    }
}
