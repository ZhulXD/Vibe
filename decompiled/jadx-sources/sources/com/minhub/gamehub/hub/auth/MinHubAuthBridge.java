package com.minhub.gamehub.hub.auth;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;
import p026j1.b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge;", "", "<init>", "()V", "", "callbackUri", "", "useFallbackAddress", "buildPatreonStartUrl", "(Ljava/lang/String;Z)Ljava/lang/String;", "json", "Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;", "parseRedeemResponse", "(Ljava/lang/String;)Lcom/minhub/gamehub/hub/auth/MinHubPatreonSession;", "Li1/l;", "gson", "Li1/l;", "RedeemEnvelope", "RedeemData", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMinHubAuthBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MinHubAuthBridge.kt\ncom/minhub/gamehub/hub/auth/MinHubAuthBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
public final class MinHubAuthBridge {
    public static final MinHubAuthBridge INSTANCE = new MinHubAuthBridge();
    private static final l gson = new l();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B;\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J=\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;", "", "name", "", "patreonUserId", "loginType", "pledgeCents", "", "sessionToken", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getName", "()Ljava/lang/String;", "getPatreonUserId", "getLoginType", "getPledgeCents", "()I", "getSessionToken", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class RedeemData {

        @b("loginType")
        private final String loginType;
        private final String name;

        @b("patreonUserId")
        private final String patreonUserId;

        @b("pledgeCents")
        private final int pledgeCents;

        @b("sessionToken")
        private final String sessionToken;

        public RedeemData() {
            this(null, null, null, 0, null, 31, null);
        }

        public static /* synthetic */ RedeemData copy$default(RedeemData redeemData, String str, String str2, String str3, int i3, String str4, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = redeemData.name;
            }
            if ((i4 & 2) != 0) {
                str2 = redeemData.patreonUserId;
            }
            if ((i4 & 4) != 0) {
                str3 = redeemData.loginType;
            }
            if ((i4 & 8) != 0) {
                i3 = redeemData.pledgeCents;
            }
            if ((i4 & 16) != 0) {
                str4 = redeemData.sessionToken;
            }
            String str5 = str4;
            String str6 = str3;
            return redeemData.copy(str, str2, str6, i3, str5);
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
        public final String getLoginType() {
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

        public final RedeemData copy(String name, String patreonUserId, String loginType, int pledgeCents, String sessionToken) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(patreonUserId, "patreonUserId");
            Intrinsics.checkNotNullParameter(loginType, "loginType");
            return new RedeemData(name, patreonUserId, loginType, pledgeCents, sessionToken);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RedeemData)) {
                return false;
            }
            RedeemData redeemData = (RedeemData) other;
            return Intrinsics.areEqual(this.name, redeemData.name) && Intrinsics.areEqual(this.patreonUserId, redeemData.patreonUserId) && Intrinsics.areEqual(this.loginType, redeemData.loginType) && this.pledgeCents == redeemData.pledgeCents && Intrinsics.areEqual(this.sessionToken, redeemData.sessionToken);
        }

        public final String getLoginType() {
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
            int iA = E.b.a(this.pledgeCents, E.b.d(this.loginType, E.b.d(this.patreonUserId, this.name.hashCode() * 31, 31), 31), 31);
            String str = this.sessionToken;
            return iA + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            String str = this.name;
            String str2 = this.patreonUserId;
            String str3 = this.loginType;
            int i3 = this.pledgeCents;
            String str4 = this.sessionToken;
            StringBuilder sbJ = kotlin.collections.unsigned.a.j("RedeemData(name=", str, ", patreonUserId=", str2, ", loginType=");
            sbJ.append(str3);
            sbJ.append(", pledgeCents=");
            sbJ.append(i3);
            sbJ.append(", sessionToken=");
            return kotlin.collections.unsigned.a.i(sbJ, str4, ")");
        }

        public RedeemData(String name, String patreonUserId, String loginType, int i3, String str) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(patreonUserId, "patreonUserId");
            Intrinsics.checkNotNullParameter(loginType, "loginType");
            this.name = name;
            this.patreonUserId = patreonUserId;
            this.loginType = loginType;
            this.pledgeCents = i3;
            this.sessionToken = str;
        }

        public /* synthetic */ RedeemData(String str, String str2, String str3, int i3, String str4, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? "" : str, (i4 & 2) != 0 ? "" : str2, (i4 & 4) != 0 ? "" : str3, (i4 & 8) != 0 ? 0 : i3, (i4 & 16) != 0 ? null : str4);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B)\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J+\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemEnvelope;", "", "success", "", "message", "", "data", "Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;", "<init>", "(ZLjava/lang/String;Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;)V", "getSuccess", "()Z", "getMessage", "()Ljava/lang/String;", "getData", "()Lcom/minhub/gamehub/hub/auth/MinHubAuthBridge$RedeemData;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class RedeemEnvelope {
        private final RedeemData data;
        private final String message;
        private final boolean success;

        public RedeemEnvelope() {
            this(false, null, null, 7, null);
        }

        public static /* synthetic */ RedeemEnvelope copy$default(RedeemEnvelope redeemEnvelope, boolean z2, String str, RedeemData redeemData, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                z2 = redeemEnvelope.success;
            }
            if ((i3 & 2) != 0) {
                str = redeemEnvelope.message;
            }
            if ((i3 & 4) != 0) {
                redeemData = redeemEnvelope.data;
            }
            return redeemEnvelope.copy(z2, str, redeemData);
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
        public final RedeemData getData() {
            return this.data;
        }

        public final RedeemEnvelope copy(boolean success, String message, RedeemData data) {
            return new RedeemEnvelope(success, message, data);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RedeemEnvelope)) {
                return false;
            }
            RedeemEnvelope redeemEnvelope = (RedeemEnvelope) other;
            return this.success == redeemEnvelope.success && Intrinsics.areEqual(this.message, redeemEnvelope.message) && Intrinsics.areEqual(this.data, redeemEnvelope.data);
        }

        public final RedeemData getData() {
            return this.data;
        }

        public final String getMessage() {
            return this.message;
        }

        public final boolean getSuccess() {
            return this.success;
        }

        public int hashCode() {
            int iHashCode = Boolean.hashCode(this.success) * 31;
            String str = this.message;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            RedeemData redeemData = this.data;
            return iHashCode2 + (redeemData != null ? redeemData.hashCode() : 0);
        }

        public String toString() {
            return "RedeemEnvelope(success=" + this.success + ", message=" + this.message + ", data=" + this.data + ")";
        }

        public RedeemEnvelope(boolean z2, String str, RedeemData redeemData) {
            this.success = z2;
            this.message = str;
            this.data = redeemData;
        }

        public /* synthetic */ RedeemEnvelope(boolean z2, String str, RedeemData redeemData, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? false : z2, (i3 & 2) != 0 ? null : str, (i3 & 4) != 0 ? null : redeemData);
        }
    }

    private MinHubAuthBridge() {
    }

    public static /* synthetic */ String buildPatreonStartUrl$default(MinHubAuthBridge minHubAuthBridge, String str, boolean z2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = "yunbierdika://patreon-callback";
        }
        if ((i3 & 2) != 0) {
            z2 = false;
        }
        return minHubAuthBridge.buildPatreonStartUrl(str, z2);
    }

    public final String buildPatreonStartUrl(String callbackUri, boolean useFallbackAddress) throws UnsupportedEncodingException {
        Intrinsics.checkNotNullParameter(callbackUri, "callbackUri");
        String strEncode = URLEncoder.encode(callbackUri, StandardCharsets.UTF_8.name());
        String str = "https://auth.h-game18.xyz/patreon/start";
        if (useFallbackAddress) {
            Intrinsics.checkNotNullParameter("https://auth.h-game18.xyz/patreon/start", "url");
            String strO = StringsKt.N("https://auth.h-game18.xyz/patreon/start", "https://auth.h-game18.xyz/") ? kotlin.collections.unsigned.a.o("https://minhub-auth.blogluccisan.workers.dev", StringsKt__StringsKt.removePrefix("https://auth.h-game18.xyz/patreon/start", (CharSequence) "https://auth.h-game18.xyz")) : null;
            if (strO != null) {
                str = strO;
            }
        }
        return kotlin.collections.unsigned.a.h(str, "?redirect=", strEncode);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0099  */
    public final MinHubPatreonSession parseRedeemResponse(String json) {
        String str;
        int i3;
        Intrinsics.checkNotNullParameter(json, "json");
        RedeemEnvelope redeemEnvelope = (RedeemEnvelope) gson.c(json, RedeemEnvelope.class);
        if (redeemEnvelope == null) {
            throw new IllegalStateException("Invalid auth response");
        }
        if (!redeemEnvelope.getSuccess() || redeemEnvelope.getData() == null) {
            String message = redeemEnvelope.getMessage();
            if (message == null) {
                str = "Auth failed";
            } else {
                str = StringsKt.isBlank(message) ? null : message;
                if (str == null) {
                    str = "Auth failed";
                }
            }
            throw new IllegalStateException(str);
        }
        String lowerCase = redeemEnvelope.getData().getLoginType().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (Intrinsics.areEqual(lowerCase, "owner")) {
            i3 = 2;
        } else {
            if (!Intrinsics.areEqual(lowerCase, "patreon")) {
                throw new IllegalStateException("Unsupported login type");
            }
            i3 = 1;
        }
        int i4 = i3;
        String name = redeemEnvelope.getData().getName();
        if (StringsKt.isBlank(name)) {
            name = "VIP User";
        }
        String str2 = name;
        String patreonUserId = redeemEnvelope.getData().getPatreonUserId();
        int pledgeCents = redeemEnvelope.getData().getPledgeCents();
        String sessionToken = redeemEnvelope.getData().getSessionToken();
        return new MinHubPatreonSession(str2, patreonUserId, i4, pledgeCents, (sessionToken == null || StringsKt.isBlank(sessionToken)) ? null : sessionToken);
    }
}
