package com.minhub.gamehub.hub.auth;

import E.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J=\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;", "", "name", "", "patreonUserId", "loginType", "", "pledgeCents", "sessionToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V", "getName", "()Ljava/lang/String;", "getPatreonUserId", "getLoginType", "()I", "getPledgeCents", "getSessionToken", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class MinHubPatreonSession {
    private final int loginType;
    private final String name;
    private final String patreonUserId;
    private final int pledgeCents;
    private final String sessionToken;

    public MinHubPatreonSession(String name, String patreonUserId, int i3, int i4, String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(patreonUserId, "patreonUserId");
        this.name = name;
        this.patreonUserId = patreonUserId;
        this.loginType = i3;
        this.pledgeCents = i4;
        this.sessionToken = str;
    }

    public static /* synthetic */ MinHubPatreonSession copy$default(MinHubPatreonSession minHubPatreonSession, String str, String str2, int i3, int i4, String str3, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            str = minHubPatreonSession.name;
        }
        if ((i5 & 2) != 0) {
            str2 = minHubPatreonSession.patreonUserId;
        }
        if ((i5 & 4) != 0) {
            i3 = minHubPatreonSession.loginType;
        }
        if ((i5 & 8) != 0) {
            i4 = minHubPatreonSession.pledgeCents;
        }
        if ((i5 & 16) != 0) {
            str3 = minHubPatreonSession.sessionToken;
        }
        String str4 = str3;
        int i6 = i3;
        return minHubPatreonSession.copy(str, str2, i6, i4, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPatreonUserId() {
        return this.patreonUserId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getLoginType() {
        return this.loginType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getPledgeCents() {
        return this.pledgeCents;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSessionToken() {
        return this.sessionToken;
    }

    public final MinHubPatreonSession copy(String name, String patreonUserId, int loginType, int pledgeCents, String sessionToken) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(patreonUserId, "patreonUserId");
        return new MinHubPatreonSession(name, patreonUserId, loginType, pledgeCents, sessionToken);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MinHubPatreonSession)) {
            return false;
        }
        MinHubPatreonSession minHubPatreonSession = (MinHubPatreonSession) other;
        return Intrinsics.areEqual(this.name, minHubPatreonSession.name) && Intrinsics.areEqual(this.patreonUserId, minHubPatreonSession.patreonUserId) && this.loginType == minHubPatreonSession.loginType && this.pledgeCents == minHubPatreonSession.pledgeCents && Intrinsics.areEqual(this.sessionToken, minHubPatreonSession.sessionToken);
    }

    public final int getLoginType() {
        return this.loginType;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPatreonUserId() {
        return this.patreonUserId;
    }

    public final int getPledgeCents() {
        return this.pledgeCents;
    }

    public final String getSessionToken() {
        return this.sessionToken;
    }

    public int hashCode() {
        int iA = b.a(this.pledgeCents, b.a(this.loginType, b.d(this.patreonUserId, this.name.hashCode() * 31, 31), 31), 31);
        String str = this.sessionToken;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        String str = this.name;
        String str2 = this.patreonUserId;
        int i3 = this.loginType;
        int i4 = this.pledgeCents;
        String str3 = this.sessionToken;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("MinHubPatreonSession(name=", str, ", patreonUserId=", str2, ", loginType=");
        sbJ.append(i3);
        sbJ.append(", pledgeCents=");
        sbJ.append(i4);
        sbJ.append(", sessionToken=");
        return kotlin.collections.unsigned.a.i(sbJ, str3, ")");
    }

    public /* synthetic */ MinHubPatreonSession(String str, String str2, int i3, int i4, String str3, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i3, i4, (i5 & 16) != 0 ? null : str3);
    }
}
