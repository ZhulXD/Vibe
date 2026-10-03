package com.minhub.gamehub.hub.catalog;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\n \b*\u0004\u0018\u00010\u00070\u00072\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u0011\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/HostLimitTracker;", "", "<init>", "()V", "PREFS", "", "prefs", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "context", "Landroid/content/Context;", "markLimited", "", "host", "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;", NotificationCompat.CATEGORY_STATUS, "Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;", "clear", "detectLimit", "url", "errorMessage", "Host", "Status", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class HostLimitTracker {
    public static final HostLimitTracker INSTANCE = new HostLimitTracker();
    private static final String PREFS = "minhub_host_limits";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Host;", "", "id", "", "displayName", "resetWindowMillis", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V", "getId", "()Ljava/lang/String;", "getDisplayName", "getResetWindowMillis", "()J", "PIXELDRAIN", "GOFILE", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public enum Host {
        PIXELDRAIN("pixeldrain", "Pixeldrain", 604800000),
        GOFILE("gofile", "Gofile", 86400000);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final String displayName;
        private final String id;
        private final long resetWindowMillis;

        Host(String str, String str2, long j2) {
            this.id = str;
            this.displayName = str2;
            this.resetWindowMillis = j2;
        }

        public static EnumEntries<Host> getEntries() {
            return $ENTRIES;
        }

        public final String getDisplayName() {
            return this.displayName;
        }

        public final String getId() {
            return this.id;
        }

        public final long getResetWindowMillis() {
            return this.resetWindowMillis;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/HostLimitTracker$Status;", "", "limited", "", "sinceMillis", "", "resetsAtMillis", "<init>", "(ZJJ)V", "getLimited", "()Z", "getSinceMillis", "()J", "getResetsAtMillis", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Status {
        private final boolean limited;
        private final long resetsAtMillis;
        private final long sinceMillis;

        public Status(boolean z2, long j2, long j3) {
            this.limited = z2;
            this.sinceMillis = j2;
            this.resetsAtMillis = j3;
        }

        public static /* synthetic */ Status copy$default(Status status, boolean z2, long j2, long j3, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                z2 = status.limited;
            }
            if ((i3 & 2) != 0) {
                j2 = status.sinceMillis;
            }
            if ((i3 & 4) != 0) {
                j3 = status.resetsAtMillis;
            }
            return status.copy(z2, j2, j3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getLimited() {
            return this.limited;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getSinceMillis() {
            return this.sinceMillis;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final long getResetsAtMillis() {
            return this.resetsAtMillis;
        }

        public final Status copy(boolean limited, long sinceMillis, long resetsAtMillis) {
            return new Status(limited, sinceMillis, resetsAtMillis);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Status)) {
                return false;
            }
            Status status = (Status) other;
            return this.limited == status.limited && this.sinceMillis == status.sinceMillis && this.resetsAtMillis == status.resetsAtMillis;
        }

        public final boolean getLimited() {
            return this.limited;
        }

        public final long getResetsAtMillis() {
            return this.resetsAtMillis;
        }

        public final long getSinceMillis() {
            return this.sinceMillis;
        }

        public int hashCode() {
            return Long.hashCode(this.resetsAtMillis) + E.b.c(this.sinceMillis, Boolean.hashCode(this.limited) * 31, 31);
        }

        public String toString() {
            return "Status(limited=" + this.limited + ", sinceMillis=" + this.sinceMillis + ", resetsAtMillis=" + this.resetsAtMillis + ")";
        }
    }

    private HostLimitTracker() {
    }

    private final SharedPreferences prefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, 0);
    }

    public final void clear(Context context, Host host) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(host, "host");
        prefs(context).edit().remove(host.getId()).apply();
    }

    public final Host detectLimit(String url, String errorMessage) {
        String lowerCase;
        Intrinsics.checkNotNullParameter(url, "url");
        if (errorMessage != null) {
            lowerCase = errorMessage.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (lowerCase == null) {
            lowerCase = "";
        }
        if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "bandwidth", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "quota", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "file_rate_limited", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "rate limit", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "rate-limit", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "429", false, 2, (Object) null)) {
            if (StringsKt__StringsKt.contains(url, (CharSequence) "pixeldrain", true)) {
                return Host.PIXELDRAIN;
            }
            if (StringsKt__StringsKt.contains(url, (CharSequence) "gofile", true)) {
                return Host.GOFILE;
            }
        }
        return null;
    }

    public final void markLimited(Context context, Host host) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(host, "host");
        prefs(context).edit().putLong(host.getId(), System.currentTimeMillis()).apply();
        Log.i("MinHub-DL", "HostLimit: marked " + host.getId() + " limited");
    }

    public final Status status(Context context, Host host) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(host, "host");
        long j2 = prefs(context).getLong(host.getId(), 0L);
        if (j2 <= 0) {
            return new Status(false, 0L, 0L);
        }
        long resetWindowMillis = host.getResetWindowMillis() + j2;
        if (System.currentTimeMillis() < resetWindowMillis) {
            return new Status(true, j2, resetWindowMillis);
        }
        prefs(context).edit().remove(host.getId()).apply();
        return new Status(false, 0L, 0L);
    }
}
