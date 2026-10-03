package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;", "", "cdnUrl", "", "cdnCookies", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getCdnUrl", "()Ljava/lang/String;", "getCdnCookies", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class BuzzHeavierWebResult {
    private final String cdnCookies;
    private final String cdnUrl;

    public BuzzHeavierWebResult(String cdnUrl, String cdnCookies) {
        Intrinsics.checkNotNullParameter(cdnUrl, "cdnUrl");
        Intrinsics.checkNotNullParameter(cdnCookies, "cdnCookies");
        this.cdnUrl = cdnUrl;
        this.cdnCookies = cdnCookies;
    }

    public static /* synthetic */ BuzzHeavierWebResult copy$default(BuzzHeavierWebResult buzzHeavierWebResult, String str, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = buzzHeavierWebResult.cdnUrl;
        }
        if ((i3 & 2) != 0) {
            str2 = buzzHeavierWebResult.cdnCookies;
        }
        return buzzHeavierWebResult.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCdnUrl() {
        return this.cdnUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCdnCookies() {
        return this.cdnCookies;
    }

    public final BuzzHeavierWebResult copy(String cdnUrl, String cdnCookies) {
        Intrinsics.checkNotNullParameter(cdnUrl, "cdnUrl");
        Intrinsics.checkNotNullParameter(cdnCookies, "cdnCookies");
        return new BuzzHeavierWebResult(cdnUrl, cdnCookies);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BuzzHeavierWebResult)) {
            return false;
        }
        BuzzHeavierWebResult buzzHeavierWebResult = (BuzzHeavierWebResult) other;
        return Intrinsics.areEqual(this.cdnUrl, buzzHeavierWebResult.cdnUrl) && Intrinsics.areEqual(this.cdnCookies, buzzHeavierWebResult.cdnCookies);
    }

    public final String getCdnCookies() {
        return this.cdnCookies;
    }

    public final String getCdnUrl() {
        return this.cdnUrl;
    }

    public int hashCode() {
        return this.cdnCookies.hashCode() + (this.cdnUrl.hashCode() * 31);
    }

    public String toString() {
        return E.b.n("BuzzHeavierWebResult(cdnUrl=", this.cdnUrl, ", cdnCookies=", this.cdnCookies, ")");
    }
}
