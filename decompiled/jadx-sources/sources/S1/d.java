package S1;

import G1.q;
import G1.s;
import android.content.Context;
import android.content.SharedPreferences;
import com.minhub.gamehub.game.GameActivity;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p023i1.o;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f2060a = SetsKt.setOf("webgl2");
    public static final Set b = SetsKt.setOf((Object[]) new String[]{"vi", "en", "ja", "zh", "ko", "id"});

    public static void A(Context context, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putBoolean("is_patreon", z2).apply();
    }

    public static void B(Context context, String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putString("patreon_user_id", str).apply();
    }

    public static void C(Context context, String str) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putString("session_token", str).apply();
    }

    public static void D(Context context, String v2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(v2, "v");
        s(context).edit().putString("username", v2).apply();
    }

    public static void a(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        y(context, false);
        A(context, false);
        D(context, "RPG Player");
        z(context, 0);
        B(context, null);
        x(context, 0L);
        C(context, null);
    }

    public static String b(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = s(context).getString("app_lock_pin_hash", "");
        return string == null ? "" : string;
    }

    public static int c(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return s(context).getInt("game_volume", 75);
    }

    public static String d(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = s(context).getString("lang", "en");
        String str = string != null ? string : "en";
        return Intrinsics.areEqual(str, "id") ? "in" : str;
    }

    public static boolean e(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getSharedPreferences("minhub_prefs", 0).getBoolean("physical_gamepad_enabled", false);
    }

    public static String f(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return q(s(context).getString("render_mode", "webgl2"));
    }

    public static String g(GameActivity gameActivity) {
        Intrinsics.checkNotNullParameter(gameActivity, "<this>");
        String string = s(gameActivity).getString("resolution", "device-width");
        return string == null ? "device-width" : string;
    }

    public static String h(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = s(context).getString("trans_color", "#FFFFFF");
        return string == null ? "#FFFFFF" : string;
    }

    public static String i(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = s(context).getString("trans_font", "Noto Sans");
        return string == null ? "Noto Sans" : string;
    }

    public static int j(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return s(context).getInt("trans_size", 14);
    }

    public static String k(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return r(s(context).getString("trans_source", "ja"));
    }

    public static String l(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return r(s(context).getString("trans_target", "vi"));
    }

    public static boolean m(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return s(context).getBoolean("trans_enabled", false);
    }

    public static boolean n(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return s(context).getBoolean("logged_in", false);
    }

    public static boolean o(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Intrinsics.checkNotNullParameter(context, "<this>");
        long j2 = context.getSharedPreferences("minhub_prefs", 0).getLong("last_login_time", 0L);
        Intrinsics.checkNotNullParameter(context, "<this>");
        int i3 = s(context).getInt("login_type", 0);
        return i3 == 1 ? !(j2 == 0 || jCurrentTimeMillis - j2 > 2160000000L) : !(i3 != 2 && (i3 != 3 || j2 == 0 || jCurrentTimeMillis - j2 > 21600000));
    }

    public static boolean p(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return s(context).getBoolean("is_patreon", false);
    }

    public static String q(String str) {
        String lowerCase;
        String string;
        if (str == null || (string = StringsKt.trim((CharSequence) str).toString()) == null) {
            lowerCase = null;
        } else {
            lowerCase = string.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        }
        if (lowerCase == null) {
            return "webgl2";
        }
        String str2 = f2060a.contains(lowerCase) ? lowerCase : null;
        return str2 == null ? "webgl2" : str2;
    }

    public static String r(String str) {
        String lowerCase;
        String string;
        if (str == null || (string = StringsKt.trim((CharSequence) str).toString()) == null) {
            lowerCase = null;
        } else {
            lowerCase = string.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        }
        if (lowerCase == null) {
            return "vi";
        }
        String str2 = b.contains(lowerCase) ? lowerCase : null;
        return str2 == null ? "vi" : str2;
    }

    public static SharedPreferences s(Context context) {
        return context.getSharedPreferences("minhub_prefs", 0);
    }

    public static s t(String str) {
        if (str == null || StringsKt.isBlank(str)) {
            return q.a();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            Iterator it = ((p028k1.k) p000a.a.E(str).d().b.entrySet()).iterator();
            while (((p028k1.j) it).hasNext()) {
                p028k1.l lVarB = ((p028k1.j) it).b();
                Intrinsics.checkNotNull(lVarB);
                String str2 = (String) lVarB.getKey();
                o oVar = (o) lVarB.getValue();
                oVar.getClass();
                if ((oVar instanceof p023i1.s) && (oVar.e().b instanceof Boolean)) {
                    linkedHashMap.put(str2, Boolean.valueOf(oVar.b()));
                }
            }
            return q.b(linkedHashMap);
        } catch (Exception unused) {
            return q.a();
        }
    }

    public static void u(Context context, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putBoolean("app_lock_biometric", z2).apply();
    }

    public static void v(Context context, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putBoolean("app_lock_enabled", z2).apply();
    }

    public static void w(Context context, String v2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(v2, "v");
        if (Intrinsics.areEqual(v2, "id")) {
            v2 = "in";
        }
        context.getSharedPreferences("minhub_prefs", 0).edit().putString("lang", v2).apply();
    }

    public static void x(Context context, long j2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putLong("last_login_time", j2).apply();
    }

    public static void y(Context context, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putBoolean("logged_in", z2).apply();
    }

    public static void z(Context context, int i3) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        s(context).edit().putInt("login_type", i3).apply();
    }
}
