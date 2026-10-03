package p064y1;

import android.os.Build;
import java.util.List;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 y1.v1[], still in use, count: 1, list:
  (r0v1 y1.v1[]) from 0x00f5: INVOKE (r0v1 y1.v1[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED] (LINE:246)
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: renamed from: y1.v1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class EnumC0420v1 {
    VXACE("ace", "RPG VX Ace Runtime", MapsKt.mapOf(TuplesKt.to("arm64-v8a", CollectionsKt.listOf((Object[]) new String[]{"libSDL2.so", "libSDL2_image.so", "libSDL2_sound.so", "libSDL2_ttf.so", "libopenal.so", "libjpeg.so", "libpng16d.so", "libruby.so", "libmkxp-z.so"})), TuplesKt.to("x86_64", CollectionsKt.listOf((Object[]) new String[]{"libSDL2.so", "libSDL2_image.so", "libSDL2_sound.so", "libSDL2_ttf.so", "libopenal.so", "libjpeg.so", "libpng16d.so", "libruby.so", "libmkxp-z.so"}))), 1),
    RENPY8("renpy", "Ren'Py 8 Runtime", MapsKt.mapOf(TuplesKt.to("arm64-v8a", CollectionsKt.listOf("librenpython.so")), TuplesKt.to("armeabi-v7a", CollectionsKt.listOf("librenpython.so")), TuplesKt.to("x86_64", CollectionsKt.listOf("librenpython.so"))), 1),
    RENPY7("renpy7", "Ren'Py 7 Runtime", MapsKt.mapOf(TuplesKt.to("arm64-v8a", CollectionsKt.listOf("librenpython7.so")), TuplesKt.to("armeabi-v7a", CollectionsKt.listOf("librenpython7.so")), TuplesKt.to("x86_64", CollectionsKt.listOf("librenpython7.so"))), 5),
    GODOT("godot", "Godot Runtime", MapsKt.mapOf(TuplesKt.to("arm64-v8a", CollectionsKt.listOf((Object[]) new String[]{"libc++_shared.so", "libgodot_android.so"})), TuplesKt.to("x86_64", CollectionsKt.listOf((Object[]) new String[]{"libc++_shared.so", "libgodot_android.so"}))), 5);

    public static final C0363c0 f = new C0363c0();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ EnumEntries f6382l;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map f6384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6385e;

    static {
        f6382l = EnumEntriesKt.enumEntries(new EnumC0420v1[]{r0, r9, r10, r2});
    }

    public EnumC0420v1(String str, String str2, Map map, int i3) {
        super(str, i);
        this.b = str;
        this.f6383c = str2;
        this.f6384d = map;
        this.f6385e = i3;
    }

    public static EnumC0420v1 valueOf(String str) {
        return (EnumC0420v1) Enum.valueOf(EnumC0420v1.class, str);
    }

    public static EnumC0420v1[] values() {
        return (EnumC0420v1[]) f6381k.clone();
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0009  */
    public final String a() {
        String str;
        String property = System.getProperty("os.arch");
        if (property == null) {
            str = null;
        } else if (StringsKt__StringsKt.contains$default((CharSequence) property, (CharSequence) "aarch64", false, 2, (Object) null)) {
            str = "arm64-v8a";
        } else if (StringsKt__StringsKt.contains$default((CharSequence) property, (CharSequence) "arm", false, 2, (Object) null)) {
            str = "armeabi-v7a";
        } else {
            String str2 = "x86_64";
            if (!StringsKt__StringsKt.contains$default((CharSequence) property, (CharSequence) "x86_64", false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) property, (CharSequence) "amd64", false, 2, (Object) null)) {
                str2 = "x86";
                if (!StringsKt__StringsKt.contains$default((CharSequence) property, (CharSequence) "x86", false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) property, (CharSequence) "i386", false, 2, (Object) null)) {
                    str = null;
                }
            }
            str = str2;
        }
        Map map = this.f6384d;
        if (str != null && map.containsKey(str)) {
            return str;
        }
        String[] SUPPORTED_ABIS = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_ABIS, "SUPPORTED_ABIS");
        for (String str3 : SUPPORTED_ABIS) {
            if (map.containsKey(str3)) {
                return str3;
            }
        }
        return null;
    }

    public final List b() {
        String strA = a();
        if (strA == null) {
            return CollectionsKt.emptyList();
        }
        List list = (List) this.f6384d.get(strA);
        return list == null ? CollectionsKt.emptyList() : list;
    }
}
