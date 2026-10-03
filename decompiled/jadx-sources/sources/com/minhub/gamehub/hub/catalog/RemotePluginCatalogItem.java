package com.minhub.gamehub.hub.catalog;

import com.minhub.gamehub.data.GameEngine;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b'\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\n\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u000f\u0010.\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\u000f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0003J\t\u00100\u001a\u00020\u0003HÆ\u0003J\u000f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00030\nHÆ\u0003J\t\u00102\u001a\u00020\u0003HÆ\u0003J\t\u00103\u001a\u00020\u000fHÆ\u0003J\t\u00104\u001a\u00020\u000fHÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0016HÆ\u0003J±\u0001\u0010:\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\n2\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u0016HÆ\u0001J\u0013\u0010;\u001a\u00020\u000f2\b\u0010<\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010=\u001a\u00020>HÖ\u0001J\t\u0010?\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001aR\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010 R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010$R\u0011\u0010\u0010\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010$R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001aR\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001aR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001aR\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*¨\u0006@"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;", "", "slug", "", "title", "description", "supportedEngines", "", "Lcom/minhub/gamehub/data/GameEngine;", "problemTags", "", "targetScope", "supportedGames", "changelog", "isFixPlugin", "", "isRecommendedByDefault", "version", "packageUrl", "packageChecksum", "installMode", "manifest", "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;)V", "getSlug", "()Ljava/lang/String;", "getTitle", "getDescription", "getSupportedEngines", "()Ljava/util/Set;", "getProblemTags", "()Ljava/util/List;", "getTargetScope", "getSupportedGames", "getChangelog", "()Z", "getVersion", "getPackageUrl", "getPackageChecksum", "getInstallMode", "getManifest", "()Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RemotePluginCatalogItem {
    private final String changelog;
    private final String description;
    private final String installMode;
    private final boolean isFixPlugin;
    private final boolean isRecommendedByDefault;
    private final RemotePluginInstallManifest manifest;
    private final String packageChecksum;
    private final String packageUrl;
    private final List<String> problemTags;
    private final String slug;
    private final Set<GameEngine> supportedEngines;
    private final List<String> supportedGames;
    private final String targetScope;
    private final String title;
    private final String version;

    /* JADX WARN: Multi-variable type inference failed */
    public RemotePluginCatalogItem(String slug, String title, String description, Set<? extends GameEngine> supportedEngines, List<String> problemTags, String targetScope, List<String> supportedGames, String changelog, boolean z2, boolean z3, String version, String packageUrl, String packageChecksum, String installMode, RemotePluginInstallManifest manifest) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(supportedEngines, "supportedEngines");
        Intrinsics.checkNotNullParameter(problemTags, "problemTags");
        Intrinsics.checkNotNullParameter(targetScope, "targetScope");
        Intrinsics.checkNotNullParameter(supportedGames, "supportedGames");
        Intrinsics.checkNotNullParameter(changelog, "changelog");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(packageUrl, "packageUrl");
        Intrinsics.checkNotNullParameter(packageChecksum, "packageChecksum");
        Intrinsics.checkNotNullParameter(installMode, "installMode");
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        this.slug = slug;
        this.title = title;
        this.description = description;
        this.supportedEngines = supportedEngines;
        this.problemTags = problemTags;
        this.targetScope = targetScope;
        this.supportedGames = supportedGames;
        this.changelog = changelog;
        this.isFixPlugin = z2;
        this.isRecommendedByDefault = z3;
        this.version = version;
        this.packageUrl = packageUrl;
        this.packageChecksum = packageChecksum;
        this.installMode = installMode;
        this.manifest = manifest;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSlug() {
        return this.slug;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getIsRecommendedByDefault() {
        return this.isRecommendedByDefault;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getPackageUrl() {
        return this.packageUrl;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getPackageChecksum() {
        return this.packageChecksum;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getInstallMode() {
        return this.installMode;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final RemotePluginInstallManifest getManifest() {
        return this.manifest;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final Set<GameEngine> component4() {
        return this.supportedEngines;
    }

    public final List<String> component5() {
        return this.problemTags;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTargetScope() {
        return this.targetScope;
    }

    public final List<String> component7() {
        return this.supportedGames;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getChangelog() {
        return this.changelog;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsFixPlugin() {
        return this.isFixPlugin;
    }

    public final RemotePluginCatalogItem copy(String slug, String title, String description, Set<? extends GameEngine> supportedEngines, List<String> problemTags, String targetScope, List<String> supportedGames, String changelog, boolean isFixPlugin, boolean isRecommendedByDefault, String version, String packageUrl, String packageChecksum, String installMode, RemotePluginInstallManifest manifest) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(supportedEngines, "supportedEngines");
        Intrinsics.checkNotNullParameter(problemTags, "problemTags");
        Intrinsics.checkNotNullParameter(targetScope, "targetScope");
        Intrinsics.checkNotNullParameter(supportedGames, "supportedGames");
        Intrinsics.checkNotNullParameter(changelog, "changelog");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(packageUrl, "packageUrl");
        Intrinsics.checkNotNullParameter(packageChecksum, "packageChecksum");
        Intrinsics.checkNotNullParameter(installMode, "installMode");
        Intrinsics.checkNotNullParameter(manifest, "manifest");
        return new RemotePluginCatalogItem(slug, title, description, supportedEngines, problemTags, targetScope, supportedGames, changelog, isFixPlugin, isRecommendedByDefault, version, packageUrl, packageChecksum, installMode, manifest);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RemotePluginCatalogItem)) {
            return false;
        }
        RemotePluginCatalogItem remotePluginCatalogItem = (RemotePluginCatalogItem) other;
        return Intrinsics.areEqual(this.slug, remotePluginCatalogItem.slug) && Intrinsics.areEqual(this.title, remotePluginCatalogItem.title) && Intrinsics.areEqual(this.description, remotePluginCatalogItem.description) && Intrinsics.areEqual(this.supportedEngines, remotePluginCatalogItem.supportedEngines) && Intrinsics.areEqual(this.problemTags, remotePluginCatalogItem.problemTags) && Intrinsics.areEqual(this.targetScope, remotePluginCatalogItem.targetScope) && Intrinsics.areEqual(this.supportedGames, remotePluginCatalogItem.supportedGames) && Intrinsics.areEqual(this.changelog, remotePluginCatalogItem.changelog) && this.isFixPlugin == remotePluginCatalogItem.isFixPlugin && this.isRecommendedByDefault == remotePluginCatalogItem.isRecommendedByDefault && Intrinsics.areEqual(this.version, remotePluginCatalogItem.version) && Intrinsics.areEqual(this.packageUrl, remotePluginCatalogItem.packageUrl) && Intrinsics.areEqual(this.packageChecksum, remotePluginCatalogItem.packageChecksum) && Intrinsics.areEqual(this.installMode, remotePluginCatalogItem.installMode) && Intrinsics.areEqual(this.manifest, remotePluginCatalogItem.manifest);
    }

    public final String getChangelog() {
        return this.changelog;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getInstallMode() {
        return this.installMode;
    }

    public final RemotePluginInstallManifest getManifest() {
        return this.manifest;
    }

    public final String getPackageChecksum() {
        return this.packageChecksum;
    }

    public final String getPackageUrl() {
        return this.packageUrl;
    }

    public final List<String> getProblemTags() {
        return this.problemTags;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final Set<GameEngine> getSupportedEngines() {
        return this.supportedEngines;
    }

    public final List<String> getSupportedGames() {
        return this.supportedGames;
    }

    public final String getTargetScope() {
        return this.targetScope;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return this.manifest.hashCode() + E.b.d(this.installMode, E.b.d(this.packageChecksum, E.b.d(this.packageUrl, E.b.d(this.version, E.b.b(E.b.b(E.b.d(this.changelog, (this.supportedGames.hashCode() + E.b.d(this.targetScope, (this.problemTags.hashCode() + ((this.supportedEngines.hashCode() + E.b.d(this.description, E.b.d(this.title, this.slug.hashCode() * 31, 31), 31)) * 31)) * 31, 31)) * 31, 31), 31, this.isFixPlugin), 31, this.isRecommendedByDefault), 31), 31), 31), 31);
    }

    public final boolean isFixPlugin() {
        return this.isFixPlugin;
    }

    public final boolean isRecommendedByDefault() {
        return this.isRecommendedByDefault;
    }

    public String toString() {
        String str = this.slug;
        String str2 = this.title;
        String str3 = this.description;
        Set<GameEngine> set = this.supportedEngines;
        List<String> list = this.problemTags;
        String str4 = this.targetScope;
        List<String> list2 = this.supportedGames;
        String str5 = this.changelog;
        boolean z2 = this.isFixPlugin;
        boolean z3 = this.isRecommendedByDefault;
        String str6 = this.version;
        String str7 = this.packageUrl;
        String str8 = this.packageChecksum;
        String str9 = this.installMode;
        RemotePluginInstallManifest remotePluginInstallManifest = this.manifest;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("RemotePluginCatalogItem(slug=", str, ", title=", str2, ", description=");
        sbJ.append(str3);
        sbJ.append(", supportedEngines=");
        sbJ.append(set);
        sbJ.append(", problemTags=");
        sbJ.append(list);
        sbJ.append(", targetScope=");
        sbJ.append(str4);
        sbJ.append(", supportedGames=");
        sbJ.append(list2);
        sbJ.append(", changelog=");
        sbJ.append(str5);
        sbJ.append(", isFixPlugin=");
        sbJ.append(z2);
        sbJ.append(", isRecommendedByDefault=");
        sbJ.append(z3);
        sbJ.append(", version=");
        kotlin.collections.unsigned.a.n(sbJ, str6, ", packageUrl=", str7, ", packageChecksum=");
        kotlin.collections.unsigned.a.n(sbJ, str8, ", installMode=", str9, ", manifest=");
        sbJ.append(remotePluginInstallManifest);
        sbJ.append(")");
        return sbJ.toString();
    }
}
