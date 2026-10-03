package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u001a\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003JY\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020$HÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006&"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;", "", "type", "", "from", "to", "path", "pluginName", "pluginStatus", "", "marker", "content", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "getFrom", "getTo", "getPath", "getPluginName", "getPluginStatus", "()Z", "getMarker", "getContent", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RemotePluginInstallAction {
    private final String content;
    private final String from;
    private final String marker;
    private final String path;
    private final String pluginName;
    private final boolean pluginStatus;
    private final String to;
    private final String type;

    public RemotePluginInstallAction(String type, String from, String to, String path, String pluginName, boolean z2, String marker, String content) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pluginName, "pluginName");
        Intrinsics.checkNotNullParameter(marker, "marker");
        Intrinsics.checkNotNullParameter(content, "content");
        this.type = type;
        this.from = from;
        this.to = to;
        this.path = path;
        this.pluginName = pluginName;
        this.pluginStatus = z2;
        this.marker = marker;
        this.content = content;
    }

    public static /* synthetic */ RemotePluginInstallAction copy$default(RemotePluginInstallAction remotePluginInstallAction, String str, String str2, String str3, String str4, String str5, boolean z2, String str6, String str7, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = remotePluginInstallAction.type;
        }
        if ((i3 & 2) != 0) {
            str2 = remotePluginInstallAction.from;
        }
        if ((i3 & 4) != 0) {
            str3 = remotePluginInstallAction.to;
        }
        if ((i3 & 8) != 0) {
            str4 = remotePluginInstallAction.path;
        }
        if ((i3 & 16) != 0) {
            str5 = remotePluginInstallAction.pluginName;
        }
        if ((i3 & 32) != 0) {
            z2 = remotePluginInstallAction.pluginStatus;
        }
        if ((i3 & 64) != 0) {
            str6 = remotePluginInstallAction.marker;
        }
        if ((i3 & 128) != 0) {
            str7 = remotePluginInstallAction.content;
        }
        String str8 = str6;
        String str9 = str7;
        String str10 = str5;
        boolean z3 = z2;
        return remotePluginInstallAction.copy(str, str2, str3, str4, str10, z3, str8, str9);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFrom() {
        return this.from;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTo() {
        return this.to;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPath() {
        return this.path;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPluginName() {
        return this.pluginName;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getPluginStatus() {
        return this.pluginStatus;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMarker() {
        return this.marker;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getContent() {
        return this.content;
    }

    public final RemotePluginInstallAction copy(String type, String from, String to, String path, String pluginName, boolean pluginStatus, String marker, String content) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(pluginName, "pluginName");
        Intrinsics.checkNotNullParameter(marker, "marker");
        Intrinsics.checkNotNullParameter(content, "content");
        return new RemotePluginInstallAction(type, from, to, path, pluginName, pluginStatus, marker, content);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RemotePluginInstallAction)) {
            return false;
        }
        RemotePluginInstallAction remotePluginInstallAction = (RemotePluginInstallAction) other;
        return Intrinsics.areEqual(this.type, remotePluginInstallAction.type) && Intrinsics.areEqual(this.from, remotePluginInstallAction.from) && Intrinsics.areEqual(this.to, remotePluginInstallAction.to) && Intrinsics.areEqual(this.path, remotePluginInstallAction.path) && Intrinsics.areEqual(this.pluginName, remotePluginInstallAction.pluginName) && this.pluginStatus == remotePluginInstallAction.pluginStatus && Intrinsics.areEqual(this.marker, remotePluginInstallAction.marker) && Intrinsics.areEqual(this.content, remotePluginInstallAction.content);
    }

    public final String getContent() {
        return this.content;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getMarker() {
        return this.marker;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getPluginName() {
        return this.pluginName;
    }

    public final boolean getPluginStatus() {
        return this.pluginStatus;
    }

    public final String getTo() {
        return this.to;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.content.hashCode() + E.b.d(this.marker, E.b.b(E.b.d(this.pluginName, E.b.d(this.path, E.b.d(this.to, E.b.d(this.from, this.type.hashCode() * 31, 31), 31), 31), 31), 31, this.pluginStatus), 31);
    }

    public String toString() {
        String str = this.type;
        String str2 = this.from;
        String str3 = this.to;
        String str4 = this.path;
        String str5 = this.pluginName;
        boolean z2 = this.pluginStatus;
        String str6 = this.marker;
        String str7 = this.content;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("RemotePluginInstallAction(type=", str, ", from=", str2, ", to=");
        kotlin.collections.unsigned.a.n(sbJ, str3, ", path=", str4, ", pluginName=");
        sbJ.append(str5);
        sbJ.append(", pluginStatus=");
        sbJ.append(z2);
        sbJ.append(", marker=");
        sbJ.append(str6);
        sbJ.append(", content=");
        sbJ.append(str7);
        sbJ.append(")");
        return sbJ.toString();
    }

    public /* synthetic */ RemotePluginInstallAction(String str, String str2, String str3, String str4, String str5, boolean z2, String str6, String str7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i3 & 2) != 0 ? "" : str2, (i3 & 4) != 0 ? "" : str3, (i3 & 8) != 0 ? "" : str4, (i3 & 16) != 0 ? "" : str5, (i3 & 32) != 0 ? false : z2, (i3 & 64) != 0 ? "" : str6, (i3 & 128) != 0 ? "" : str7);
    }
}
