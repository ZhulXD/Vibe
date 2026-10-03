package com.minhub.gamehub.hub.catalog;

import com.minhub.gamehub.data.RpgMakerPluginConfig;
import com.minhub.gamehub.data.RpgMakerPluginConfigStore;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007J\"\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u0010\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0012H\u0002¨\u0006\u0018"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/PluginInstaller;", "", "<init>", "()V", "install", "Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;", "gameRoot", "Ljava/io/File;", "item", "Lcom/minhub/gamehub/hub/catalog/RemotePluginCatalogItem;", "workDir", "applyManifest", "", "extractDir", "manifest", "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallManifest;", "applyCopy", "action", "Lcom/minhub/gamehub/hub/catalog/RemotePluginInstallAction;", "applyAppendPluginEntry", "applySetPluginStatus", "applyReplaceMarker", "applyWrite", "InstallResult", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginInstaller.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginInstaller.kt\ncom/minhub/gamehub/hub/catalog/PluginInstaller\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1761#2,3:109\n1563#2:112\n1634#2,3:113\n*S KotlinDebug\n*F\n+ 1 PluginInstaller.kt\ncom/minhub/gamehub/hub/catalog/PluginInstaller\n*L\n66#1:109,3\n82#1:112\n82#1:113,3\n*E\n"})
public final class PluginInstaller {
    public static final PluginInstaller INSTANCE = new PluginInstaller();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/PluginInstaller$InstallResult;", "", "success", "", "message", "", "<init>", "(ZLjava/lang/String;)V", "getSuccess", "()Z", "getMessage", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class InstallResult {
        private final String message;
        private final boolean success;

        public InstallResult(boolean z2, String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            this.success = z2;
            this.message = message;
        }

        public static /* synthetic */ InstallResult copy$default(InstallResult installResult, boolean z2, String str, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                z2 = installResult.success;
            }
            if ((i3 & 2) != 0) {
                str = installResult.message;
            }
            return installResult.copy(z2, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getSuccess() {
            return this.success;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getMessage() {
            return this.message;
        }

        public final InstallResult copy(boolean success, String message) {
            Intrinsics.checkNotNullParameter(message, "message");
            return new InstallResult(success, message);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InstallResult)) {
                return false;
            }
            InstallResult installResult = (InstallResult) other;
            return this.success == installResult.success && Intrinsics.areEqual(this.message, installResult.message);
        }

        public final String getMessage() {
            return this.message;
        }

        public final boolean getSuccess() {
            return this.success;
        }

        public int hashCode() {
            return this.message.hashCode() + (Boolean.hashCode(this.success) * 31);
        }

        public String toString() {
            return "InstallResult(success=" + this.success + ", message=" + this.message + ")";
        }

        public /* synthetic */ InstallResult(boolean z2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(z2, (i3 & 2) != 0 ? "" : str);
        }
    }

    private PluginInstaller() {
    }

    private final void applyAppendPluginEntry(File gameRoot, RemotePluginInstallAction action) {
        RpgMakerPluginConfigStore rpgMakerPluginConfigStore;
        File fileResolvePluginFile;
        Object objM9constructorimpl;
        if (StringsKt.isBlank(action.getPluginName()) || (fileResolvePluginFile = (rpgMakerPluginConfigStore = RpgMakerPluginConfigStore.INSTANCE).resolvePluginFile(gameRoot)) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(rpgMakerPluginConfigStore.parse(FilesKt__FileReadWriteKt.readText$default(fileResolvePluginFile, null, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        List listEmptyList = CollectionsKt.emptyList();
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = listEmptyList;
        }
        List list = (List) objM9constructorimpl;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((RpgMakerPluginConfig) it.next()).getName(), action.getPluginName())) {
                    return;
                }
            }
        }
        RpgMakerPluginConfigStore.save$default(RpgMakerPluginConfigStore.INSTANCE, fileResolvePluginFile, CollectionsKt___CollectionsKt.plus((Collection<? extends RpgMakerPluginConfig>) ((Collection<? extends Object>) list), new RpgMakerPluginConfig(action.getPluginName(), action.getPluginStatus(), "", new LinkedHashMap(), null, 16, null)), null, 4, null);
    }

    private final void applyCopy(File gameRoot, File extractDir, RemotePluginInstallAction action) throws IOException {
        String strTrimStart = StringsKt.trimStart(action.getFrom(), '/', '\\');
        String strTrimStart2 = StringsKt.trimStart(action.getTo(), '/', '\\');
        if (StringsKt.isBlank(strTrimStart) || StringsKt.isBlank(strTrimStart2)) {
            return;
        }
        File canonicalFile = FilesKt.resolve(extractDir, strTrimStart).getCanonicalFile();
        File canonicalFile2 = FilesKt.resolve(gameRoot, strTrimStart2).getCanonicalFile();
        if (canonicalFile.exists()) {
            String canonicalPath = gameRoot.getCanonicalPath();
            String path = canonicalFile2.getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            if (StringsKt.N(path, canonicalPath + File.separator) || Intrinsics.areEqual(canonicalFile2.getPath(), canonicalPath)) {
                File parentFile = canonicalFile2.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                Intrinsics.checkNotNull(canonicalFile);
                Intrinsics.checkNotNull(canonicalFile2);
                FilesKt__UtilsKt.copyTo$default(canonicalFile, canonicalFile2, true, 0, 4, null);
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void applyManifest(File gameRoot, File extractDir, RemotePluginInstallManifest manifest) throws IOException {
        for (RemotePluginInstallAction remotePluginInstallAction : manifest.getActions()) {
            String type = remotePluginInstallAction.getType();
            switch (type.hashCode()) {
                case -1862489759:
                    if (type.equals("set_plugin_status")) {
                        applySetPluginStatus(gameRoot, remotePluginInstallAction);
                    }
                    break;
                case 3059573:
                    if (type.equals("copy") && extractDir != null) {
                        applyCopy(gameRoot, extractDir, remotePluginInstallAction);
                    }
                    break;
                case 113399775:
                    if (type.equals("write")) {
                        applyWrite(gameRoot, remotePluginInstallAction);
                    }
                    break;
                case 155114859:
                    if (type.equals("append_plugin_entry")) {
                        applyAppendPluginEntry(gameRoot, remotePluginInstallAction);
                    }
                    break;
                case 533146661:
                    if (type.equals("replace_marker")) {
                        applyReplaceMarker(gameRoot, remotePluginInstallAction);
                    }
                    break;
            }
        }
    }

    private final void applyReplaceMarker(File gameRoot, RemotePluginInstallAction action) throws IOException {
        String strTrimStart = StringsKt.trimStart(action.getPath(), '/', '\\');
        if (StringsKt.isBlank(strTrimStart) || StringsKt.isBlank(action.getMarker())) {
            return;
        }
        File canonicalFile = FilesKt.resolve(gameRoot, strTrimStart).getCanonicalFile();
        String canonicalPath = gameRoot.getCanonicalPath();
        if (canonicalFile.exists()) {
            String path = canonicalFile.getPath();
            Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
            if (StringsKt.N(path, canonicalPath + File.separator)) {
                Intrinsics.checkNotNull(canonicalFile);
                String text$default = FilesKt__FileReadWriteKt.readText$default(canonicalFile, null, 1, null);
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(text$default, action.getMarker(), action.getContent(), false, 4, (Object) null);
                if (Intrinsics.areEqual(strReplace$default, text$default)) {
                    return;
                }
                FilesKt__FileReadWriteKt.writeText$default(canonicalFile, strReplace$default, null, 2, null);
            }
        }
    }

    private final void applySetPluginStatus(File gameRoot, RemotePluginInstallAction action) {
        RpgMakerPluginConfigStore rpgMakerPluginConfigStore;
        File fileResolvePluginFile;
        Object objM9constructorimpl;
        if (StringsKt.isBlank(action.getPluginName()) || (fileResolvePluginFile = (rpgMakerPluginConfigStore = RpgMakerPluginConfigStore.INSTANCE).resolvePluginFile(gameRoot)) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(rpgMakerPluginConfigStore.parse(FilesKt__FileReadWriteKt.readText$default(fileResolvePluginFile, null, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        List listEmptyList = CollectionsKt.emptyList();
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = listEmptyList;
        }
        List<RpgMakerPluginConfig> list = (List) objM9constructorimpl;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        for (RpgMakerPluginConfig rpgMakerPluginConfigCopy$default : list) {
            if (Intrinsics.areEqual(rpgMakerPluginConfigCopy$default.getName(), action.getPluginName())) {
                rpgMakerPluginConfigCopy$default = RpgMakerPluginConfig.copy$default(rpgMakerPluginConfigCopy$default, null, action.getPluginStatus(), null, null, null, 29, null);
            }
            arrayList.add(rpgMakerPluginConfigCopy$default);
        }
        if (Intrinsics.areEqual(arrayList, list)) {
            return;
        }
        RpgMakerPluginConfigStore.save$default(RpgMakerPluginConfigStore.INSTANCE, fileResolvePluginFile, arrayList, null, 4, null);
    }

    private final void applyWrite(File gameRoot, RemotePluginInstallAction action) throws IOException {
        String strTrimStart = StringsKt.trimStart(action.getPath(), '/', '\\');
        if (StringsKt.isBlank(strTrimStart)) {
            return;
        }
        File canonicalFile = FilesKt.resolve(gameRoot, strTrimStart).getCanonicalFile();
        String canonicalPath = gameRoot.getCanonicalPath();
        String path = canonicalFile.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        if (StringsKt.N(path, canonicalPath + File.separator) || Intrinsics.areEqual(canonicalFile.getPath(), canonicalPath)) {
            File parentFile = canonicalFile.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            Intrinsics.checkNotNull(canonicalFile);
            FilesKt__FileReadWriteKt.writeText$default(canonicalFile, action.getContent(), null, 2, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InstallResult install(File gameRoot, RemotePluginCatalogItem item, File workDir) {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(workDir, "workDir");
        try {
            String str = null;
            Object[] objArr = 0;
            if (StringsKt.isBlank(item.getPackageUrl())) {
                applyManifest(gameRoot, null, item.getManifest());
            } else {
                File fileResolve = FilesKt.resolve(workDir, item.getSlug() + ".zip");
                File fileResolve2 = FilesKt.resolve(workDir, "extracted");
                workDir.mkdirs();
                RemoteZipImporter remoteZipImporter = RemoteZipImporter.INSTANCE;
                RemoteZipImporter.downloadZip$default(remoteZipImporter, item.getPackageUrl(), fileResolve, null, null, 12, null);
                RemoteZipImporterExtractKt.extractZip$default(remoteZipImporter, fileResolve, fileResolve2, null, 4, null);
                applyManifest(gameRoot, fileResolve2, item.getManifest());
                fileResolve.delete();
                FilesKt.deleteRecursively(fileResolve2);
            }
            return new InstallResult(true, str, 2, objArr == true ? 1 : 0);
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            return new InstallResult(false, message);
        }
    }
}
