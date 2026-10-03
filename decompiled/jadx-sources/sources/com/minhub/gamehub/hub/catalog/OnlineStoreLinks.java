package com.minhub.gamehub.hub.catalog;

import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00120\u0011J\u0006\u0010\u0013\u001a\u00020\u0014J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00142\b\u0010\u0007\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;", "", "steam", "", "dlsite", "dmm", "itchio", "other", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getSteam", "()Ljava/lang/String;", "getDlsite", "getDmm", "getItchio", "getOther", "toEntries", "", "Lkotlin/Pair;", "hasAny", "", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class OnlineStoreLinks {
    private final String dlsite;
    private final String dmm;
    private final String itchio;
    private final String other;
    private final String steam;

    public OnlineStoreLinks() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ OnlineStoreLinks copy$default(OnlineStoreLinks onlineStoreLinks, String str, String str2, String str3, String str4, String str5, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = onlineStoreLinks.steam;
        }
        if ((i3 & 2) != 0) {
            str2 = onlineStoreLinks.dlsite;
        }
        if ((i3 & 4) != 0) {
            str3 = onlineStoreLinks.dmm;
        }
        if ((i3 & 8) != 0) {
            str4 = onlineStoreLinks.itchio;
        }
        if ((i3 & 16) != 0) {
            str5 = onlineStoreLinks.other;
        }
        String str6 = str5;
        String str7 = str3;
        return onlineStoreLinks.copy(str, str2, str7, str4, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSteam() {
        return this.steam;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDlsite() {
        return this.dlsite;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDmm() {
        return this.dmm;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getItchio() {
        return this.itchio;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOther() {
        return this.other;
    }

    public final OnlineStoreLinks copy(String steam, String dlsite, String dmm, String itchio, String other) {
        Intrinsics.checkNotNullParameter(steam, "steam");
        Intrinsics.checkNotNullParameter(dlsite, "dlsite");
        Intrinsics.checkNotNullParameter(dmm, "dmm");
        Intrinsics.checkNotNullParameter(itchio, "itchio");
        Intrinsics.checkNotNullParameter(other, "other");
        return new OnlineStoreLinks(steam, dlsite, dmm, itchio, other);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnlineStoreLinks)) {
            return false;
        }
        OnlineStoreLinks onlineStoreLinks = (OnlineStoreLinks) other;
        return Intrinsics.areEqual(this.steam, onlineStoreLinks.steam) && Intrinsics.areEqual(this.dlsite, onlineStoreLinks.dlsite) && Intrinsics.areEqual(this.dmm, onlineStoreLinks.dmm) && Intrinsics.areEqual(this.itchio, onlineStoreLinks.itchio) && Intrinsics.areEqual(this.other, onlineStoreLinks.other);
    }

    public final String getDlsite() {
        return this.dlsite;
    }

    public final String getDmm() {
        return this.dmm;
    }

    public final String getItchio() {
        return this.itchio;
    }

    public final String getOther() {
        return this.other;
    }

    public final String getSteam() {
        return this.steam;
    }

    public final boolean hasAny() {
        return !toEntries().isEmpty();
    }

    public int hashCode() {
        return this.other.hashCode() + E.b.d(this.itchio, E.b.d(this.dmm, E.b.d(this.dlsite, this.steam.hashCode() * 31, 31), 31), 31);
    }

    public final List<Pair<String, String>> toEntries() {
        return CollectionsKt.listOfNotNull((Object[]) new Pair[]{!StringsKt.isBlank(this.steam) ? TuplesKt.to("Steam", this.steam) : null, !StringsKt.isBlank(this.dlsite) ? TuplesKt.to("DLsite", this.dlsite) : null, !StringsKt.isBlank(this.dmm) ? TuplesKt.to("DMM", this.dmm) : null, !StringsKt.isBlank(this.itchio) ? TuplesKt.to("itch.io", this.itchio) : null, StringsKt.isBlank(this.other) ? null : TuplesKt.to("Store", this.other)});
    }

    public String toString() {
        String str = this.steam;
        String str2 = this.dlsite;
        String str3 = this.dmm;
        String str4 = this.itchio;
        String str5 = this.other;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("OnlineStoreLinks(steam=", str, ", dlsite=", str2, ", dmm=");
        kotlin.collections.unsigned.a.n(sbJ, str3, ", itchio=", str4, ", other=");
        return kotlin.collections.unsigned.a.i(sbJ, str5, ")");
    }

    public OnlineStoreLinks(String steam, String dlsite, String dmm, String itchio, String other) {
        Intrinsics.checkNotNullParameter(steam, "steam");
        Intrinsics.checkNotNullParameter(dlsite, "dlsite");
        Intrinsics.checkNotNullParameter(dmm, "dmm");
        Intrinsics.checkNotNullParameter(itchio, "itchio");
        Intrinsics.checkNotNullParameter(other, "other");
        this.steam = steam;
        this.dlsite = dlsite;
        this.dmm = dmm;
        this.itchio = itchio;
        this.other = other;
    }

    public /* synthetic */ OnlineStoreLinks(String str, String str2, String str3, String str4, String str5, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? "" : str2, (i3 & 4) != 0 ? "" : str3, (i3 & 8) != 0 ? "" : str4, (i3 & 16) != 0 ? "" : str5);
    }
}
