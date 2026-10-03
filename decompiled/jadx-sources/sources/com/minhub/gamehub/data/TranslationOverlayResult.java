package com.minhub.gamehub.data;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J1\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/minhub/gamehub/data/TranslationOverlayResult;", "", "success", "", "message", "", "overwrittenFiles", "", "addedFiles", "<init>", "(ZLjava/lang/String;II)V", "getSuccess", "()Z", "getMessage", "()Ljava/lang/String;", "getOverwrittenFiles", "()I", "getAddedFiles", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class TranslationOverlayResult {
    private final int addedFiles;
    private final String message;
    private final int overwrittenFiles;
    private final boolean success;

    public TranslationOverlayResult(boolean z2, String message, int i3, int i4) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.success = z2;
        this.message = message;
        this.overwrittenFiles = i3;
        this.addedFiles = i4;
    }

    public static /* synthetic */ TranslationOverlayResult copy$default(TranslationOverlayResult translationOverlayResult, boolean z2, String str, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            z2 = translationOverlayResult.success;
        }
        if ((i5 & 2) != 0) {
            str = translationOverlayResult.message;
        }
        if ((i5 & 4) != 0) {
            i3 = translationOverlayResult.overwrittenFiles;
        }
        if ((i5 & 8) != 0) {
            i4 = translationOverlayResult.addedFiles;
        }
        return translationOverlayResult.copy(z2, str, i3, i4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getSuccess() {
        return this.success;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getOverwrittenFiles() {
        return this.overwrittenFiles;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getAddedFiles() {
        return this.addedFiles;
    }

    public final TranslationOverlayResult copy(boolean success, String message, int overwrittenFiles, int addedFiles) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new TranslationOverlayResult(success, message, overwrittenFiles, addedFiles);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TranslationOverlayResult)) {
            return false;
        }
        TranslationOverlayResult translationOverlayResult = (TranslationOverlayResult) other;
        return this.success == translationOverlayResult.success && Intrinsics.areEqual(this.message, translationOverlayResult.message) && this.overwrittenFiles == translationOverlayResult.overwrittenFiles && this.addedFiles == translationOverlayResult.addedFiles;
    }

    public final int getAddedFiles() {
        return this.addedFiles;
    }

    public final String getMessage() {
        return this.message;
    }

    public final int getOverwrittenFiles() {
        return this.overwrittenFiles;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public int hashCode() {
        return Integer.hashCode(this.addedFiles) + E.b.a(this.overwrittenFiles, E.b.d(this.message, Boolean.hashCode(this.success) * 31, 31), 31);
    }

    public String toString() {
        return "TranslationOverlayResult(success=" + this.success + ", message=" + this.message + ", overwrittenFiles=" + this.overwrittenFiles + ", addedFiles=" + this.addedFiles + ")";
    }

    public /* synthetic */ TranslationOverlayResult(boolean z2, String str, int i3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(z2, (i5 & 2) != 0 ? "" : str, (i5 & 4) != 0 ? 0 : i3, (i5 & 8) != 0 ? 0 : i4);
    }
}
