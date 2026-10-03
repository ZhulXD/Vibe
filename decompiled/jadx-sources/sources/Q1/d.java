package Q1;

import androidx.core.os.EnvironmentCompat;
import java.util.HashSet;
import java.util.Locale;
import java.util.UUID;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1849a;
    public H1.b b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f1850c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f1851d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1852e;
    public final String f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayDeque f1853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet f1854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f1856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f1857l;

    /* JADX WARN: Code duplicated, block: B:17:0x005a  */
    /* JADX WARN: Code duplicated, block: B:25:0x007d  */
    /* JADX WARN: Code duplicated, block: B:33:0x009c  */
    public d(int i3, int i4, String str, String str2, String str3, String str4) {
        String str5 = str;
        String str6 = str2;
        String str7 = null;
        String str8 = (i4 & 8) != 0 ? null : str3;
        String str9 = (i4 & 16) != 0 ? null : str4;
        this.f1849a = i3;
        this.b = null;
        Intrinsics.checkNotNullExpressionValue(UUID.randomUUID().toString(), "toString(...)");
        this.f1850c = true;
        String str10 = EnvironmentCompat.MEDIA_UNKNOWN;
        if (str5 != null) {
            str5 = SetsKt.setOf((Object[]) new String[]{"MV", "MZ", "TYRANO", "HTML", "BROWSE", "VXACE", "RENPY7", "RENPY8", "KIRI", "GODOT"}).contains(str5) ? str5 : null;
            str5 = str5 == null ? EnvironmentCompat.MEDIA_UNKNOWN : str5;
        }
        this.f1851d = str5;
        if (str6 != null) {
            str6 = SetsKt.setOf((Object[]) new String[]{"arm", "aarch64", "arm64", "x86", "i686", "x86_64"}).contains(str6) ? str6 : null;
            str6 = str6 == null ? EnvironmentCompat.MEDIA_UNKNOWN : str6;
        }
        this.f1852e = str6;
        if (str8 != null) {
            str8 = SetsKt.setOf((Object[]) new String[]{"com.google.android.webview", "com.android.webview", "com.android.chrome", "com.google.android.trichromelibrary"}).contains(str8) ? str8 : null;
            str8 = str8 == null ? EnvironmentCompat.MEDIA_UNKNOWN : str8;
        }
        this.f = str8;
        if (str9 != null) {
            if (str9.length() <= 40 && new Regex("[0-9]+(\\.[0-9]+){0,5}").matches(str9)) {
                str7 = str9;
            }
            if (str7 != null) {
                str10 = str7;
            }
        }
        this.g = str10;
        this.f1853h = new ArrayDeque();
        this.f1854i = new HashSet();
        this.f1856k = a.b;
        this.f1857l = "not-submitted";
    }

    /* JADX WARN: Code duplicated, block: B:38:0x010c  */
    public final synchronized c a(String title, String str, boolean z2) {
        String str2;
        String string;
        try {
            Intrinsics.checkNotNullParameter(title, "title");
            if (!this.f1850c) {
                return null;
            }
            String str3 = (String) SequencesKt.firstOrNull(StringsKt.lineSequence(StringsKt.take(title, 1024)));
            String strTake = (str3 == null || (string = StringsKt.trim((CharSequence) str3).toString()) == null) ? null : StringsKt.take(string, 220);
            if (strTake == null) {
                strTake = "";
            }
            if (StringsKt.isBlank(strTake)) {
                return null;
            }
            String lowerCase = new Regex("\\s+").replace(new Regex("\\b\\d+\\b").replace(new Regex(":[0-9]+:[0-9]+").replace(strTake, ""), "#"), " ").toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String strTake2 = StringsKt.take(lowerCase, 160);
            if (!z2 && (this.f1854i.size() >= 256 || !this.f1854i.add(strTake2))) {
                return null;
            }
            String str4 = "[Runtime observation]\nactual=legacy; engine=" + this.f1851d + "; engineVersion=unknown; core=unknown/game-provided\nsdk=" + this.f1849a + "; processArch=" + this.f1852e + "; webView=" + this.f + "; webViewVersion=" + this.g + "\npersistedLock=" + this.f1856k.name() + "; pinnedApplied=false\nota=" + this.f1857l + "\n" + p000a.a.b(this.b);
            String strTake3 = str != null ? StringsKt.take(str, 1500) : null;
            if (strTake3 != null) {
                str2 = "---\n" + strTake3 + "\n";
                if (str2 == null) {
                    str2 = "";
                }
            } else {
                str2 = "";
            }
            String str5 = str4 + str2 + "---\n";
            return new c(strTake, strTake3, str4, StringsKt.take(str5, 5500) + StringsKt.takeLast(CollectionsKt.o(this.f1853h, "\n", null, null, null, 62), RangesKt.coerceAtLeast(5500 - str5.length(), 0)));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        this.f1850c = false;
        this.f1855j = false;
        this.f1853h.clear();
        this.f1854i.clear();
    }

    public final synchronized void c() {
        this.f1855j = false;
    }

    public final synchronized void d(b status, Integer num, String channel) {
        Object obj;
        try {
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(channel, "channel");
            if (this.f1850c) {
                String lowerCase = status.name().toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (num == null) {
                    obj = EnvironmentCompat.MEDIA_UNKNOWN;
                } else {
                    if (num.intValue() < 0) {
                        obj = null;
                    }
                    if (obj == null) {
                        obj = num;
                        obj = EnvironmentCompat.MEDIA_UNKNOWN;
                    }
                }
                obj = num;
                this.f1857l = lowerCase + "; channel=" + channel + "; observed-cached-candidate=" + obj + "; non-atomic; execution=unverified";
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
