package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;", "", "label", "", "url", "code", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "getUrl", "getCode", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class OnlineTranslationPackage {
    private final String code;
    private final String label;
    private final String url;

    public OnlineTranslationPackage(String label, String url, String code) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(code, "code");
        this.label = label;
        this.url = url;
        this.code = code;
    }

    public static /* synthetic */ OnlineTranslationPackage copy$default(OnlineTranslationPackage onlineTranslationPackage, String str, String str2, String str3, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = onlineTranslationPackage.label;
        }
        if ((i3 & 2) != 0) {
            str2 = onlineTranslationPackage.url;
        }
        if ((i3 & 4) != 0) {
            str3 = onlineTranslationPackage.code;
        }
        return onlineTranslationPackage.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    public final OnlineTranslationPackage copy(String label, String url, String code) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(code, "code");
        return new OnlineTranslationPackage(label, url, code);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnlineTranslationPackage)) {
            return false;
        }
        OnlineTranslationPackage onlineTranslationPackage = (OnlineTranslationPackage) other;
        return Intrinsics.areEqual(this.label, onlineTranslationPackage.label) && Intrinsics.areEqual(this.url, onlineTranslationPackage.url) && Intrinsics.areEqual(this.code, onlineTranslationPackage.code);
    }

    public final String getCode() {
        return this.code;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return this.code.hashCode() + E.b.d(this.url, this.label.hashCode() * 31, 31);
    }

    public String toString() {
        String str = this.label;
        String str2 = this.url;
        return kotlin.collections.unsigned.a.i(kotlin.collections.unsigned.a.j("OnlineTranslationPackage(label=", str, ", url=", str2, ", code="), this.code, ")");
    }

    public /* synthetic */ OnlineTranslationPackage(String str, String str2, String str3, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i3 & 4) != 0 ? "" : str3);
    }
}
