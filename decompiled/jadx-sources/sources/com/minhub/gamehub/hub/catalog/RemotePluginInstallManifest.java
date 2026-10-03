package com.minhub.gamehub.hub.catalog;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;", "", "actions", "", "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;", "<init>", "(Ljava/util/List;)V", "getActions", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RemotePluginInstallManifest {
    private final List<RemotePluginInstallAction> actions;

    /* JADX WARN: Multi-variable type inference failed */
    public RemotePluginInstallManifest() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RemotePluginInstallManifest copy$default(RemotePluginInstallManifest remotePluginInstallManifest, List list, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            list = remotePluginInstallManifest.actions;
        }
        return remotePluginInstallManifest.copy(list);
    }

    public final List<RemotePluginInstallAction> component1() {
        return this.actions;
    }

    public final RemotePluginInstallManifest copy(List<RemotePluginInstallAction> actions) {
        Intrinsics.checkNotNullParameter(actions, "actions");
        return new RemotePluginInstallManifest(actions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RemotePluginInstallManifest) && Intrinsics.areEqual(this.actions, ((RemotePluginInstallManifest) other).actions);
    }

    public final List<RemotePluginInstallAction> getActions() {
        return this.actions;
    }

    public int hashCode() {
        return this.actions.hashCode();
    }

    public String toString() {
        return "RemotePluginInstallManifest(actions=" + this.actions + ")";
    }

    public RemotePluginInstallManifest(List<RemotePluginInstallAction> actions) {
        Intrinsics.checkNotNullParameter(actions, "actions");
        this.actions = actions;
    }

    public /* synthetic */ RemotePluginInstallManifest(List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? CollectionsKt.emptyList() : list);
    }
}
