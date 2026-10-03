package com.minhub.gamehub.data;

import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010 \n\u0002\bB\b\u0086\b\u0018\u00002\u00020\u0001B\u009d\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050!¢\u0006\u0004\b\"\u0010#J\t\u0010C\u001a\u00020\u0003HÆ\u0003J\t\u0010D\u001a\u00020\u0005HÆ\u0003J\t\u0010E\u001a\u00020\u0005HÆ\u0003J\t\u0010F\u001a\u00020\u0005HÆ\u0003J\t\u0010G\u001a\u00020\u0005HÆ\u0003J\t\u0010H\u001a\u00020\u0005HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010K\u001a\u00020\u0005HÆ\u0003J\t\u0010L\u001a\u00020\u0005HÆ\u0003J\t\u0010M\u001a\u00020\u0005HÆ\u0003J\t\u0010N\u001a\u00020\u0010HÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\t\u0010P\u001a\u00020\u0013HÆ\u0003J\t\u0010Q\u001a\u00020\u0003HÆ\u0003J\t\u0010R\u001a\u00020\u0005HÆ\u0003J\t\u0010S\u001a\u00020\u0003HÆ\u0003J\t\u0010T\u001a\u00020\u0005HÆ\u0003J\t\u0010U\u001a\u00020\u0005HÆ\u0003J\t\u0010V\u001a\u00020\u0005HÆ\u0003J\t\u0010W\u001a\u00020\u0005HÆ\u0003J\t\u0010X\u001a\u00020\u0005HÆ\u0003J\t\u0010Y\u001a\u00020\u0010HÆ\u0003J\t\u0010Z\u001a\u00020\u0013HÆ\u0003J\t\u0010[\u001a\u00020\u0005HÆ\u0003J\t\u0010\\\u001a\u00020\u0005HÆ\u0003J\u000f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00050!HÆ\u0003J¡\u0002\u0010^\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00032\b\b\u0002\u0010\u0017\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u00052\b\b\u0002\u0010\u0019\u001a\u00020\u00052\b\b\u0002\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00052\b\b\u0002\u0010\u001c\u001a\u00020\u00102\b\b\u0002\u0010\u001d\u001a\u00020\u00132\b\b\u0002\u0010\u001e\u001a\u00020\u00052\b\b\u0002\u0010\u001f\u001a\u00020\u00052\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050!HÆ\u0001J\u0013\u0010_\u001a\u00020\u00102\b\u0010`\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010a\u001a\u00020\u0003HÖ\u0001J\t\u0010b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b(\u0010'R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010'R\u0011\u0010\b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b*\u0010'R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b+\u0010'R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b,\u0010'R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010'R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b.\u0010'R\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010'R\u0011\u0010\u000e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b0\u0010'R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b3\u0010%R\u0011\u0010\u0012\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b6\u0010%R\u0011\u0010\u0015\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b7\u0010'R\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b8\u0010%R\u0011\u0010\u0017\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b9\u0010'R\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b:\u0010'R\u0011\u0010\u0019\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b;\u0010'R\u0011\u0010\u001a\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b<\u0010'R\u0011\u0010\u001b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b=\u0010'R\u0011\u0010\u001c\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u00102R\u0011\u0010\u001d\u001a\u00020\u0013¢\u0006\b\n\u0000\u001a\u0004\b>\u00105R\u0011\u0010\u001e\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b?\u0010'R\u0011\u0010\u001f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b@\u0010'R\u0017\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00050!¢\u0006\b\n\u0000\u001a\u0004\bA\u0010B¨\u0006c"}, d2 = {"Lcom/minhub/gamehub/data/Game;", "", "id", "", "title", "", "engine", "version", "sizeLabel", "gamePath", "iconPath", "bgPath", "coverColor1", "coverColor2", "description", "favorite", "", "playtimeMinutes", "lastPlayedMs", "", "saveCount", NotificationCompat.CATEGORY_STATUS, "downloadProgress", "pluginsJson", "accentColor", "translationPackagesJson", "activeTranslationLabel", "activeTranslationCode", "isPortraitGame", "catalogPostId", "streamUrl", "thumbnailUrl", "tags", "", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getId", "()I", "getTitle", "()Ljava/lang/String;", "getEngine", "getVersion", "getSizeLabel", "getGamePath", "getIconPath", "getBgPath", "getCoverColor1", "getCoverColor2", "getDescription", "getFavorite", "()Z", "getPlaytimeMinutes", "getLastPlayedMs", "()J", "getSaveCount", "getStatus", "getDownloadProgress", "getPluginsJson", "getAccentColor", "getTranslationPackagesJson", "getActiveTranslationLabel", "getActiveTranslationCode", "getCatalogPostId", "getStreamUrl", "getThumbnailUrl", "getTags", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Game {
    private final String accentColor;
    private final String activeTranslationCode;
    private final String activeTranslationLabel;
    private final String bgPath;
    private final long catalogPostId;
    private final String coverColor1;
    private final String coverColor2;
    private final String description;
    private final int downloadProgress;
    private final String engine;
    private final boolean favorite;
    private final String gamePath;
    private final String iconPath;
    private final int id;
    private final boolean isPortraitGame;
    private final long lastPlayedMs;
    private final int playtimeMinutes;
    private final String pluginsJson;
    private final int saveCount;
    private final String sizeLabel;
    private final String status;
    private final String streamUrl;
    private final List<String> tags;
    private final String thumbnailUrl;
    private final String title;
    private final String translationPackagesJson;
    private final String version;

    public Game(int i3, String title, String engine, String version, String sizeLabel, String gamePath, String str, String str2, String coverColor1, String coverColor2, String description, boolean z2, int i4, long j2, int i5, String status, int i6, String pluginsJson, String accentColor, String translationPackagesJson, String activeTranslationLabel, String activeTranslationCode, boolean z3, long j3, String streamUrl, String thumbnailUrl, List<String> tags) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sizeLabel, "sizeLabel");
        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
        Intrinsics.checkNotNullParameter(coverColor1, "coverColor1");
        Intrinsics.checkNotNullParameter(coverColor2, "coverColor2");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(pluginsJson, "pluginsJson");
        Intrinsics.checkNotNullParameter(accentColor, "accentColor");
        Intrinsics.checkNotNullParameter(translationPackagesJson, "translationPackagesJson");
        Intrinsics.checkNotNullParameter(activeTranslationLabel, "activeTranslationLabel");
        Intrinsics.checkNotNullParameter(activeTranslationCode, "activeTranslationCode");
        Intrinsics.checkNotNullParameter(streamUrl, "streamUrl");
        Intrinsics.checkNotNullParameter(thumbnailUrl, "thumbnailUrl");
        Intrinsics.checkNotNullParameter(tags, "tags");
        this.id = i3;
        this.title = title;
        this.engine = engine;
        this.version = version;
        this.sizeLabel = sizeLabel;
        this.gamePath = gamePath;
        this.iconPath = str;
        this.bgPath = str2;
        this.coverColor1 = coverColor1;
        this.coverColor2 = coverColor2;
        this.description = description;
        this.favorite = z2;
        this.playtimeMinutes = i4;
        this.lastPlayedMs = j2;
        this.saveCount = i5;
        this.status = status;
        this.downloadProgress = i6;
        this.pluginsJson = pluginsJson;
        this.accentColor = accentColor;
        this.translationPackagesJson = translationPackagesJson;
        this.activeTranslationLabel = activeTranslationLabel;
        this.activeTranslationCode = activeTranslationCode;
        this.isPortraitGame = z3;
        this.catalogPostId = j3;
        this.streamUrl = streamUrl;
        this.thumbnailUrl = thumbnailUrl;
        this.tags = tags;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Game copy$default(Game game, int i3, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z2, int i4, long j2, int i5, String str11, int i6, String str12, String str13, String str14, String str15, String str16, boolean z3, long j3, String str17, String str18, List list, int i7, Object obj) {
        int i8 = (i7 & 1) != 0 ? game.id : i3;
        String str19 = (i7 & 2) != 0 ? game.title : str;
        String str20 = (i7 & 4) != 0 ? game.engine : str2;
        String str21 = (i7 & 8) != 0 ? game.version : str3;
        String str22 = (i7 & 16) != 0 ? game.sizeLabel : str4;
        String str23 = (i7 & 32) != 0 ? game.gamePath : str5;
        String str24 = (i7 & 64) != 0 ? game.iconPath : str6;
        String str25 = (i7 & 128) != 0 ? game.bgPath : str7;
        String str26 = (i7 & 256) != 0 ? game.coverColor1 : str8;
        String str27 = (i7 & 512) != 0 ? game.coverColor2 : str9;
        String str28 = (i7 & 1024) != 0 ? game.description : str10;
        boolean z4 = (i7 & 2048) != 0 ? game.favorite : z2;
        int i9 = (i7 & 4096) != 0 ? game.playtimeMinutes : i4;
        int i10 = i8;
        String str29 = str19;
        long j4 = (i7 & 8192) != 0 ? game.lastPlayedMs : j2;
        return game.copy(i10, str29, str20, str21, str22, str23, str24, str25, str26, str27, str28, z4, i9, j4, (i7 & 16384) != 0 ? game.saveCount : i5, (i7 & 32768) != 0 ? game.status : str11, (i7 & 65536) != 0 ? game.downloadProgress : i6, (i7 & 131072) != 0 ? game.pluginsJson : str12, (i7 & 262144) != 0 ? game.accentColor : str13, (i7 & 524288) != 0 ? game.translationPackagesJson : str14, (i7 & 1048576) != 0 ? game.activeTranslationLabel : str15, (i7 & 2097152) != 0 ? game.activeTranslationCode : str16, (i7 & 4194304) != 0 ? game.isPortraitGame : z3, (i7 & 8388608) != 0 ? game.catalogPostId : j3, (i7 & 16777216) != 0 ? game.streamUrl : str17, (i7 & 33554432) != 0 ? game.thumbnailUrl : str18, (i7 & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? game.tags : list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCoverColor2() {
        return this.coverColor2;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getFavorite() {
        return this.favorite;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final int getPlaytimeMinutes() {
        return this.playtimeMinutes;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final long getLastPlayedMs() {
        return this.lastPlayedMs;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final int getSaveCount() {
        return this.saveCount;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final int getDownloadProgress() {
        return this.downloadProgress;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getPluginsJson() {
        return this.pluginsJson;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getAccentColor() {
        return this.accentColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getTranslationPackagesJson() {
        return this.translationPackagesJson;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getActiveTranslationLabel() {
        return this.activeTranslationLabel;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getActiveTranslationCode() {
        return this.activeTranslationCode;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final boolean getIsPortraitGame() {
        return this.isPortraitGame;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final long getCatalogPostId() {
        return this.catalogPostId;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getStreamUrl() {
        return this.streamUrl;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public final List<String> component27() {
        return this.tags;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getEngine() {
        return this.engine;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSizeLabel() {
        return this.sizeLabel;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getGamePath() {
        return this.gamePath;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getIconPath() {
        return this.iconPath;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getBgPath() {
        return this.bgPath;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCoverColor1() {
        return this.coverColor1;
    }

    public final Game copy(int id, String title, String engine, String version, String sizeLabel, String gamePath, String iconPath, String bgPath, String coverColor1, String coverColor2, String description, boolean favorite, int playtimeMinutes, long lastPlayedMs, int saveCount, String status, int downloadProgress, String pluginsJson, String accentColor, String translationPackagesJson, String activeTranslationLabel, String activeTranslationCode, boolean isPortraitGame, long catalogPostId, String streamUrl, String thumbnailUrl, List<String> tags) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(sizeLabel, "sizeLabel");
        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
        Intrinsics.checkNotNullParameter(coverColor1, "coverColor1");
        Intrinsics.checkNotNullParameter(coverColor2, "coverColor2");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(pluginsJson, "pluginsJson");
        Intrinsics.checkNotNullParameter(accentColor, "accentColor");
        Intrinsics.checkNotNullParameter(translationPackagesJson, "translationPackagesJson");
        Intrinsics.checkNotNullParameter(activeTranslationLabel, "activeTranslationLabel");
        Intrinsics.checkNotNullParameter(activeTranslationCode, "activeTranslationCode");
        Intrinsics.checkNotNullParameter(streamUrl, "streamUrl");
        Intrinsics.checkNotNullParameter(thumbnailUrl, "thumbnailUrl");
        Intrinsics.checkNotNullParameter(tags, "tags");
        return new Game(id, title, engine, version, sizeLabel, gamePath, iconPath, bgPath, coverColor1, coverColor2, description, favorite, playtimeMinutes, lastPlayedMs, saveCount, status, downloadProgress, pluginsJson, accentColor, translationPackagesJson, activeTranslationLabel, activeTranslationCode, isPortraitGame, catalogPostId, streamUrl, thumbnailUrl, tags);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Game)) {
            return false;
        }
        Game game = (Game) other;
        return this.id == game.id && Intrinsics.areEqual(this.title, game.title) && Intrinsics.areEqual(this.engine, game.engine) && Intrinsics.areEqual(this.version, game.version) && Intrinsics.areEqual(this.sizeLabel, game.sizeLabel) && Intrinsics.areEqual(this.gamePath, game.gamePath) && Intrinsics.areEqual(this.iconPath, game.iconPath) && Intrinsics.areEqual(this.bgPath, game.bgPath) && Intrinsics.areEqual(this.coverColor1, game.coverColor1) && Intrinsics.areEqual(this.coverColor2, game.coverColor2) && Intrinsics.areEqual(this.description, game.description) && this.favorite == game.favorite && this.playtimeMinutes == game.playtimeMinutes && this.lastPlayedMs == game.lastPlayedMs && this.saveCount == game.saveCount && Intrinsics.areEqual(this.status, game.status) && this.downloadProgress == game.downloadProgress && Intrinsics.areEqual(this.pluginsJson, game.pluginsJson) && Intrinsics.areEqual(this.accentColor, game.accentColor) && Intrinsics.areEqual(this.translationPackagesJson, game.translationPackagesJson) && Intrinsics.areEqual(this.activeTranslationLabel, game.activeTranslationLabel) && Intrinsics.areEqual(this.activeTranslationCode, game.activeTranslationCode) && this.isPortraitGame == game.isPortraitGame && this.catalogPostId == game.catalogPostId && Intrinsics.areEqual(this.streamUrl, game.streamUrl) && Intrinsics.areEqual(this.thumbnailUrl, game.thumbnailUrl) && Intrinsics.areEqual(this.tags, game.tags);
    }

    public final String getAccentColor() {
        return this.accentColor;
    }

    public final String getActiveTranslationCode() {
        return this.activeTranslationCode;
    }

    public final String getActiveTranslationLabel() {
        return this.activeTranslationLabel;
    }

    public final String getBgPath() {
        return this.bgPath;
    }

    public final long getCatalogPostId() {
        return this.catalogPostId;
    }

    public final String getCoverColor1() {
        return this.coverColor1;
    }

    public final String getCoverColor2() {
        return this.coverColor2;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getDownloadProgress() {
        return this.downloadProgress;
    }

    public final String getEngine() {
        return this.engine;
    }

    public final boolean getFavorite() {
        return this.favorite;
    }

    public final String getGamePath() {
        return this.gamePath;
    }

    public final String getIconPath() {
        return this.iconPath;
    }

    public final int getId() {
        return this.id;
    }

    public final long getLastPlayedMs() {
        return this.lastPlayedMs;
    }

    public final int getPlaytimeMinutes() {
        return this.playtimeMinutes;
    }

    public final String getPluginsJson() {
        return this.pluginsJson;
    }

    public final int getSaveCount() {
        return this.saveCount;
    }

    public final String getSizeLabel() {
        return this.sizeLabel;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getStreamUrl() {
        return this.streamUrl;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTranslationPackagesJson() {
        return this.translationPackagesJson;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int iD = E.b.d(this.gamePath, E.b.d(this.sizeLabel, E.b.d(this.version, E.b.d(this.engine, E.b.d(this.title, Integer.hashCode(this.id) * 31, 31), 31), 31), 31), 31);
        String str = this.iconPath;
        int iHashCode = (iD + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.bgPath;
        return this.tags.hashCode() + E.b.d(this.thumbnailUrl, E.b.d(this.streamUrl, E.b.c(this.catalogPostId, E.b.b(E.b.d(this.activeTranslationCode, E.b.d(this.activeTranslationLabel, E.b.d(this.translationPackagesJson, E.b.d(this.accentColor, E.b.d(this.pluginsJson, E.b.a(this.downloadProgress, E.b.d(this.status, E.b.a(this.saveCount, E.b.c(this.lastPlayedMs, E.b.a(this.playtimeMinutes, E.b.b(E.b.d(this.description, E.b.d(this.coverColor2, E.b.d(this.coverColor1, (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31, 31), 31), 31), 31, this.favorite), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31, this.isPortraitGame), 31), 31), 31);
    }

    public final boolean isPortraitGame() {
        return this.isPortraitGame;
    }

    public String toString() {
        int i3 = this.id;
        String str = this.title;
        String str2 = this.engine;
        String str3 = this.version;
        String str4 = this.sizeLabel;
        String str5 = this.gamePath;
        String str6 = this.iconPath;
        String str7 = this.bgPath;
        String str8 = this.coverColor1;
        String str9 = this.coverColor2;
        String str10 = this.description;
        boolean z2 = this.favorite;
        int i4 = this.playtimeMinutes;
        long j2 = this.lastPlayedMs;
        int i5 = this.saveCount;
        String str11 = this.status;
        int i6 = this.downloadProgress;
        String str12 = this.pluginsJson;
        String str13 = this.accentColor;
        String str14 = this.translationPackagesJson;
        String str15 = this.activeTranslationLabel;
        String str16 = this.activeTranslationCode;
        boolean z3 = this.isPortraitGame;
        long j3 = this.catalogPostId;
        String str17 = this.streamUrl;
        String str18 = this.thumbnailUrl;
        List<String> list = this.tags;
        StringBuilder sb = new StringBuilder("Game(id=");
        sb.append(i3);
        sb.append(", title=");
        sb.append(str);
        sb.append(", engine=");
        kotlin.collections.unsigned.a.n(sb, str2, ", version=", str3, ", sizeLabel=");
        kotlin.collections.unsigned.a.n(sb, str4, ", gamePath=", str5, ", iconPath=");
        kotlin.collections.unsigned.a.n(sb, str6, ", bgPath=", str7, ", coverColor1=");
        kotlin.collections.unsigned.a.n(sb, str8, ", coverColor2=", str9, ", description=");
        sb.append(str10);
        sb.append(", favorite=");
        sb.append(z2);
        sb.append(", playtimeMinutes=");
        sb.append(i4);
        sb.append(", lastPlayedMs=");
        sb.append(j2);
        sb.append(", saveCount=");
        sb.append(i5);
        sb.append(", status=");
        sb.append(str11);
        sb.append(", downloadProgress=");
        sb.append(i6);
        sb.append(", pluginsJson=");
        sb.append(str12);
        kotlin.collections.unsigned.a.n(sb, ", accentColor=", str13, ", translationPackagesJson=", str14);
        kotlin.collections.unsigned.a.n(sb, ", activeTranslationLabel=", str15, ", activeTranslationCode=", str16);
        sb.append(", isPortraitGame=");
        sb.append(z3);
        sb.append(", catalogPostId=");
        sb.append(j3);
        sb.append(", streamUrl=");
        sb.append(str17);
        sb.append(", thumbnailUrl=");
        sb.append(str18);
        sb.append(", tags=");
        sb.append(list);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ Game(int i3, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, boolean z2, int i4, long j2, int i5, String str11, int i6, String str12, String str13, String str14, String str15, String str16, boolean z3, long j3, String str17, String str18, List list, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this((i7 & 1) != 0 ? 0 : i3, str, (i7 & 4) != 0 ? "MV" : str2, (i7 & 8) != 0 ? "1.0.0" : str3, (i7 & 16) != 0 ? "0 MB" : str4, (i7 & 32) != 0 ? "" : str5, (i7 & 64) != 0 ? null : str6, (i7 & 128) != 0 ? null : str7, (i7 & 256) != 0 ? "#1e1b4b" : str8, (i7 & 512) != 0 ? "#060b18" : str9, (i7 & 1024) != 0 ? "" : str10, (i7 & 2048) != 0 ? false : z2, (i7 & 4096) != 0 ? 0 : i4, (i7 & 8192) != 0 ? 0L : j2, (i7 & 16384) != 0 ? 0 : i5, (32768 & i7) != 0 ? "INSTALLED" : str11, (i7 & 65536) != 0 ? 0 : i6, (i7 & 131072) != 0 ? "[]" : str12, (i7 & 262144) != 0 ? "#EF4444" : str13, (i7 & 524288) == 0 ? str14 : "[]", (i7 & 1048576) != 0 ? "" : str15, (i7 & 2097152) != 0 ? "" : str16, (i7 & 4194304) != 0 ? false : z3, (8388608 & i7) != 0 ? 0L : j3, (16777216 & i7) != 0 ? "" : str17, (33554432 & i7) != 0 ? "" : str18, (i7 & AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL) != 0 ? CollectionsKt.emptyList() : list);
    }
}
