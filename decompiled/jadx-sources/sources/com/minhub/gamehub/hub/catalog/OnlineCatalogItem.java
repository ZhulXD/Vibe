package com.minhub.gamehub.hub.catalog;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BË\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u0005\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\f\u00100\u001a\b\u0012\u0004\u0012\u00020\n0\tJ\t\u00101\u001a\u00020\u0003HÆ\u0003J\t\u00102\u001a\u00020\u0005HÆ\u0003J\t\u00103\u001a\u00020\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\u000f\u00105\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u00106\u001a\u00020\u0005HÆ\u0003J\t\u00107\u001a\u00020\u0005HÆ\u0003J\t\u00108\u001a\u00020\u0005HÆ\u0003J\u000f\u00109\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\u000f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\u000f\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00050\tHÆ\u0003J\u000f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00120\tHÆ\u0003J\t\u0010=\u001a\u00020\u0005HÆ\u0003J\t\u0010>\u001a\u00020\u0005HÆ\u0003J\t\u0010?\u001a\u00020\u0016HÆ\u0003J\t\u0010@\u001a\u00020\u0005HÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003JÑ\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\u00052\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\t2\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00052\b\b\u0002\u0010\u0018\u001a\u00020\u0005HÆ\u0001J\u0013\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020GHÖ\u0001J\t\u0010H\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001eR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001eR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001eR\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001eR\u0011\u0010\r\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001eR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\"R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\"R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\"R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\t¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\"R\u0011\u0010\u0013\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001eR\u0011\u0010\u0014\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001eR\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0011\u0010\u0017\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001eR\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001e¨\u0006I"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;", "", "postId", "", "title", "", "slug", "zipUrl", "downloadLinks", "", "Lcom/minhub/gamehub/hub/catalog/DownloadLink;", "thumbnailUrl", "contentHtml", "excerpt", "categories", "tags", "galleryImages", "translations", "Lcom/minhub/gamehub/hub/catalog/OnlineTranslationPackage;", "translator", "gameSize", "storeLinks", "Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;", "engine", "streamUrl", "<init>", "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;Ljava/lang/String;Ljava/lang/String;)V", "getPostId", "()J", "getTitle", "()Ljava/lang/String;", "getSlug", "getZipUrl", "getDownloadLinks", "()Ljava/util/List;", "getThumbnailUrl", "getContentHtml", "getExcerpt", "getCategories", "getTags", "getGalleryImages", "getTranslations", "getTranslator", "getGameSize", "getStoreLinks", "()Lcom/minhub/gamehub/hub/catalog/OnlineStoreLinks;", "getEngine", "getStreamUrl", "effectiveDownloadLinks", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class OnlineCatalogItem {
    private final List<String> categories;
    private final String contentHtml;
    private final List<DownloadLink> downloadLinks;
    private final String engine;
    private final String excerpt;
    private final List<String> galleryImages;
    private final String gameSize;
    private final long postId;
    private final String slug;
    private final OnlineStoreLinks storeLinks;
    private final String streamUrl;
    private final List<String> tags;
    private final String thumbnailUrl;
    private final String title;
    private final List<OnlineTranslationPackage> translations;
    private final String translator;
    private final String zipUrl;

    public OnlineCatalogItem(long j2, String title, String slug, String zipUrl, List<DownloadLink> downloadLinks, String thumbnailUrl, String contentHtml, String excerpt, List<String> categories, List<String> tags, List<String> galleryImages, List<OnlineTranslationPackage> translations, String translator, String gameSize, OnlineStoreLinks storeLinks, String engine, String streamUrl) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(downloadLinks, "downloadLinks");
        Intrinsics.checkNotNullParameter(thumbnailUrl, "thumbnailUrl");
        Intrinsics.checkNotNullParameter(contentHtml, "contentHtml");
        Intrinsics.checkNotNullParameter(excerpt, "excerpt");
        Intrinsics.checkNotNullParameter(categories, "categories");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(galleryImages, "galleryImages");
        Intrinsics.checkNotNullParameter(translations, "translations");
        Intrinsics.checkNotNullParameter(translator, "translator");
        Intrinsics.checkNotNullParameter(gameSize, "gameSize");
        Intrinsics.checkNotNullParameter(storeLinks, "storeLinks");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(streamUrl, "streamUrl");
        this.postId = j2;
        this.title = title;
        this.slug = slug;
        this.zipUrl = zipUrl;
        this.downloadLinks = downloadLinks;
        this.thumbnailUrl = thumbnailUrl;
        this.contentHtml = contentHtml;
        this.excerpt = excerpt;
        this.categories = categories;
        this.tags = tags;
        this.galleryImages = galleryImages;
        this.translations = translations;
        this.translator = translator;
        this.gameSize = gameSize;
        this.storeLinks = storeLinks;
        this.engine = engine;
        this.streamUrl = streamUrl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OnlineCatalogItem copy$default(OnlineCatalogItem onlineCatalogItem, long j2, String str, String str2, String str3, List list, String str4, String str5, String str6, List list2, List list3, List list4, List list5, String str7, String str8, OnlineStoreLinks onlineStoreLinks, String str9, String str10, int i3, Object obj) {
        String str11;
        String str12;
        long j3 = (i3 & 1) != 0 ? onlineCatalogItem.postId : j2;
        String str13 = (i3 & 2) != 0 ? onlineCatalogItem.title : str;
        String str14 = (i3 & 4) != 0 ? onlineCatalogItem.slug : str2;
        String str15 = (i3 & 8) != 0 ? onlineCatalogItem.zipUrl : str3;
        List list6 = (i3 & 16) != 0 ? onlineCatalogItem.downloadLinks : list;
        String str16 = (i3 & 32) != 0 ? onlineCatalogItem.thumbnailUrl : str4;
        String str17 = (i3 & 64) != 0 ? onlineCatalogItem.contentHtml : str5;
        String str18 = (i3 & 128) != 0 ? onlineCatalogItem.excerpt : str6;
        List list7 = (i3 & 256) != 0 ? onlineCatalogItem.categories : list2;
        List list8 = (i3 & 512) != 0 ? onlineCatalogItem.tags : list3;
        List list9 = (i3 & 1024) != 0 ? onlineCatalogItem.galleryImages : list4;
        List list10 = (i3 & 2048) != 0 ? onlineCatalogItem.translations : list5;
        String str19 = (i3 & 4096) != 0 ? onlineCatalogItem.translator : str7;
        long j4 = j3;
        String str20 = (i3 & 8192) != 0 ? onlineCatalogItem.gameSize : str8;
        OnlineStoreLinks onlineStoreLinks2 = (i3 & 16384) != 0 ? onlineCatalogItem.storeLinks : onlineStoreLinks;
        String str21 = (i3 & 32768) != 0 ? onlineCatalogItem.engine : str9;
        if ((i3 & 65536) != 0) {
            str12 = str21;
            str11 = onlineCatalogItem.streamUrl;
        } else {
            str11 = str10;
            str12 = str21;
        }
        return onlineCatalogItem.copy(j4, str13, str14, str15, list6, str16, str17, str18, list7, list8, list9, list10, str19, str20, onlineStoreLinks2, str12, str11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final long getPostId() {
        return this.postId;
    }

    public final List<String> component10() {
        return this.tags;
    }

    public final List<String> component11() {
        return this.galleryImages;
    }

    public final List<OnlineTranslationPackage> component12() {
        return this.translations;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getTranslator() {
        return this.translator;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getGameSize() {
        return this.gameSize;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final OnlineStoreLinks getStoreLinks() {
        return this.storeLinks;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getEngine() {
        return this.engine;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getStreamUrl() {
        return this.streamUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSlug() {
        return this.slug;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getZipUrl() {
        return this.zipUrl;
    }

    public final List<DownloadLink> component5() {
        return this.downloadLinks;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getThumbnailUrl() {
        return this.thumbnailUrl;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getContentHtml() {
        return this.contentHtml;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getExcerpt() {
        return this.excerpt;
    }

    public final List<String> component9() {
        return this.categories;
    }

    public final OnlineCatalogItem copy(long postId, String title, String slug, String zipUrl, List<DownloadLink> downloadLinks, String thumbnailUrl, String contentHtml, String excerpt, List<String> categories, List<String> tags, List<String> galleryImages, List<OnlineTranslationPackage> translations, String translator, String gameSize, OnlineStoreLinks storeLinks, String engine, String streamUrl) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(zipUrl, "zipUrl");
        Intrinsics.checkNotNullParameter(downloadLinks, "downloadLinks");
        Intrinsics.checkNotNullParameter(thumbnailUrl, "thumbnailUrl");
        Intrinsics.checkNotNullParameter(contentHtml, "contentHtml");
        Intrinsics.checkNotNullParameter(excerpt, "excerpt");
        Intrinsics.checkNotNullParameter(categories, "categories");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(galleryImages, "galleryImages");
        Intrinsics.checkNotNullParameter(translations, "translations");
        Intrinsics.checkNotNullParameter(translator, "translator");
        Intrinsics.checkNotNullParameter(gameSize, "gameSize");
        Intrinsics.checkNotNullParameter(storeLinks, "storeLinks");
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(streamUrl, "streamUrl");
        return new OnlineCatalogItem(postId, title, slug, zipUrl, downloadLinks, thumbnailUrl, contentHtml, excerpt, categories, tags, galleryImages, translations, translator, gameSize, storeLinks, engine, streamUrl);
    }

    public final List<DownloadLink> effectiveDownloadLinks() {
        if (!this.downloadLinks.isEmpty()) {
            return this.downloadLinks;
        }
        if (StringsKt.isBlank(this.zipUrl)) {
            return CollectionsKt.emptyList();
        }
        return CollectionsKt.listOf(new DownloadLink("Download", this.zipUrl, null, 4, null));
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OnlineCatalogItem)) {
            return false;
        }
        OnlineCatalogItem onlineCatalogItem = (OnlineCatalogItem) other;
        return this.postId == onlineCatalogItem.postId && Intrinsics.areEqual(this.title, onlineCatalogItem.title) && Intrinsics.areEqual(this.slug, onlineCatalogItem.slug) && Intrinsics.areEqual(this.zipUrl, onlineCatalogItem.zipUrl) && Intrinsics.areEqual(this.downloadLinks, onlineCatalogItem.downloadLinks) && Intrinsics.areEqual(this.thumbnailUrl, onlineCatalogItem.thumbnailUrl) && Intrinsics.areEqual(this.contentHtml, onlineCatalogItem.contentHtml) && Intrinsics.areEqual(this.excerpt, onlineCatalogItem.excerpt) && Intrinsics.areEqual(this.categories, onlineCatalogItem.categories) && Intrinsics.areEqual(this.tags, onlineCatalogItem.tags) && Intrinsics.areEqual(this.galleryImages, onlineCatalogItem.galleryImages) && Intrinsics.areEqual(this.translations, onlineCatalogItem.translations) && Intrinsics.areEqual(this.translator, onlineCatalogItem.translator) && Intrinsics.areEqual(this.gameSize, onlineCatalogItem.gameSize) && Intrinsics.areEqual(this.storeLinks, onlineCatalogItem.storeLinks) && Intrinsics.areEqual(this.engine, onlineCatalogItem.engine) && Intrinsics.areEqual(this.streamUrl, onlineCatalogItem.streamUrl);
    }

    public final List<String> getCategories() {
        return this.categories;
    }

    public final String getContentHtml() {
        return this.contentHtml;
    }

    public final List<DownloadLink> getDownloadLinks() {
        return this.downloadLinks;
    }

    public final String getEngine() {
        return this.engine;
    }

    public final String getExcerpt() {
        return this.excerpt;
    }

    public final List<String> getGalleryImages() {
        return this.galleryImages;
    }

    public final String getGameSize() {
        return this.gameSize;
    }

    public final long getPostId() {
        return this.postId;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final OnlineStoreLinks getStoreLinks() {
        return this.storeLinks;
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

    public final List<OnlineTranslationPackage> getTranslations() {
        return this.translations;
    }

    public final String getTranslator() {
        return this.translator;
    }

    public final String getZipUrl() {
        return this.zipUrl;
    }

    public int hashCode() {
        return this.streamUrl.hashCode() + E.b.d(this.engine, (this.storeLinks.hashCode() + E.b.d(this.gameSize, E.b.d(this.translator, (this.translations.hashCode() + ((this.galleryImages.hashCode() + ((this.tags.hashCode() + ((this.categories.hashCode() + E.b.d(this.excerpt, E.b.d(this.contentHtml, E.b.d(this.thumbnailUrl, (this.downloadLinks.hashCode() + E.b.d(this.zipUrl, E.b.d(this.slug, E.b.d(this.title, Long.hashCode(this.postId) * 31, 31), 31), 31)) * 31, 31), 31), 31)) * 31)) * 31)) * 31)) * 31, 31), 31)) * 31, 31);
    }

    public String toString() {
        long j2 = this.postId;
        String str = this.title;
        String str2 = this.slug;
        String str3 = this.zipUrl;
        List<DownloadLink> list = this.downloadLinks;
        String str4 = this.thumbnailUrl;
        String str5 = this.contentHtml;
        String str6 = this.excerpt;
        List<String> list2 = this.categories;
        List<String> list3 = this.tags;
        List<String> list4 = this.galleryImages;
        List<OnlineTranslationPackage> list5 = this.translations;
        String str7 = this.translator;
        String str8 = this.gameSize;
        OnlineStoreLinks onlineStoreLinks = this.storeLinks;
        String str9 = this.engine;
        String str10 = this.streamUrl;
        StringBuilder sb = new StringBuilder("OnlineCatalogItem(postId=");
        sb.append(j2);
        sb.append(", title=");
        sb.append(str);
        kotlin.collections.unsigned.a.n(sb, ", slug=", str2, ", zipUrl=", str3);
        sb.append(", downloadLinks=");
        sb.append(list);
        sb.append(", thumbnailUrl=");
        sb.append(str4);
        kotlin.collections.unsigned.a.n(sb, ", contentHtml=", str5, ", excerpt=", str6);
        sb.append(", categories=");
        sb.append(list2);
        sb.append(", tags=");
        sb.append(list3);
        sb.append(", galleryImages=");
        sb.append(list4);
        sb.append(", translations=");
        sb.append(list5);
        kotlin.collections.unsigned.a.n(sb, ", translator=", str7, ", gameSize=", str8);
        sb.append(", storeLinks=");
        sb.append(onlineStoreLinks);
        sb.append(", engine=");
        sb.append(str9);
        sb.append(", streamUrl=");
        sb.append(str10);
        sb.append(")");
        return sb.toString();
    }

    public /* synthetic */ OnlineCatalogItem(long j2, String str, String str2, String str3, List list, String str4, String str5, String str6, List list2, List list3, List list4, List list5, String str7, String str8, OnlineStoreLinks onlineStoreLinks, String str9, String str10, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0L : j2, str, (i3 & 4) != 0 ? "" : str2, str3, (i3 & 16) != 0 ? CollectionsKt.emptyList() : list, (i3 & 32) != 0 ? "" : str4, (i3 & 64) != 0 ? "" : str5, (i3 & 128) != 0 ? "" : str6, (i3 & 256) != 0 ? CollectionsKt.emptyList() : list2, (i3 & 512) != 0 ? CollectionsKt.emptyList() : list3, (i3 & 1024) != 0 ? CollectionsKt.emptyList() : list4, (i3 & 2048) != 0 ? CollectionsKt.emptyList() : list5, (i3 & 4096) != 0 ? "" : str7, (i3 & 8192) != 0 ? "" : str8, (i3 & 16384) != 0 ? new OnlineStoreLinks(null, null, null, null, null, 31, null) : onlineStoreLinks, (32768 & i3) != 0 ? "" : str9, (i3 & 65536) != 0 ? "" : str10);
    }
}
