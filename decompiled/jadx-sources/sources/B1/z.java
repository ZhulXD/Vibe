package B1;

import A1.C0015e;
import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class z {
    public static final Regex b = new Regex("\"((?:\\\\\\\\.|[^\"])*)\":\"((?:\\\\\\\\.|[^\"])*)\"");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Regex f379c = new Regex("\\{\"name\":\"((?:\\\\.|[^\"])*)\",\"mapping\":(\\{(?:\\\\.|[^}])*\\})\\}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f380a;

    public z(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f380a = context;
    }

    public static LinkedHashMap a() {
        return MapsKt.linkedMapOf(TuplesKt.to("KEYCODE_BUTTON_A", "Enter"), TuplesKt.to("KEYCODE_BUTTON_B", "Escape"), TuplesKt.to("DPAD_UP", "ArrowUp"), TuplesKt.to("DPAD_DOWN", "ArrowDown"), TuplesKt.to("DPAD_LEFT", "ArrowLeft"), TuplesKt.to("DPAD_RIGHT", "ArrowRight"));
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i3 = 0; i3 < str.length(); i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '\t') {
                sb.append("\\t");
            } else if (cCharAt == '\n') {
                sb.append("\\n");
            } else if (cCharAt == '\r') {
                sb.append("\\r");
            } else if (cCharAt == '\"') {
                sb.append("\\\"");
            } else if (cCharAt != '\\') {
                sb.append(cCharAt);
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    public static LinkedHashMap e(String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String string = StringsKt.trim((CharSequence) str).toString();
        if (!StringsKt.N(string, "{") || !StringsKt__StringsJVMKt.endsWith$default(string, "}", false, 2, null)) {
            throw new IllegalArgumentException("Malformed mapping JSON");
        }
        String strSubstring = string.substring(1, string.length() - 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        if (!StringsKt.isBlank(strSubstring)) {
            int i3 = 0;
            while (i3 < strSubstring.length()) {
                MatchResult matchResultFind = b.find(strSubstring, i3);
                if (matchResultFind != null && matchResultFind.getRange().getFirst() == i3) {
                    String str2 = matchResultFind.getGroupValues().get(1);
                    Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
                    String strI = i(str2);
                    String str3 = matchResultFind.getGroupValues().get(2);
                    Intrinsics.checkNotNullExpressionValue(str3, "get(...)");
                    String string2 = StringsKt.trim((CharSequence) i(str3)).toString();
                    if (!StringsKt.isBlank(string2)) {
                        linkedHashMap.put(strI, string2);
                    }
                    int last = matchResultFind.getRange().getLast();
                    int i4 = last + 1;
                    if (i4 == strSubstring.length()) {
                        break;
                    }
                    if (strSubstring.charAt(i4) != ',') {
                        throw new IllegalArgumentException("Malformed mapping JSON");
                    }
                    i3 = last + 2;
                } else {
                    throw new IllegalArgumentException("Malformed mapping JSON");
                }
            }
        }
        return linkedHashMap;
    }

    public static ArrayList f(ArrayList rows) {
        Intrinsics.checkNotNullParameter(rows, "rows");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        int size = rows.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = rows.get(i4);
            i4++;
            A a3 = (A) obj;
            String str = a3.f300c;
            String str2 = a3.f299a;
            if (str != null) {
                linkedHashMap.put(str, str2);
            }
            String str3 = a3.b;
            if (str3 != null) {
                linkedHashMap2.put(str3, str2);
            }
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(rows, 10));
        int size2 = rows.size();
        while (i3 < size2) {
            Object obj2 = rows.get(i3);
            i3++;
            A a4 = (A) obj2;
            String str4 = a4.f300c;
            String str5 = a4.b;
            String str6 = a4.f299a;
            boolean zAreEqual = str4 != null ? Intrinsics.areEqual(linkedHashMap.get(str4), str6) : true;
            String str7 = null;
            if (!(str5 != null ? Intrinsics.areEqual(linkedHashMap2.get(str5), str6) : true)) {
                str5 = null;
            }
            if (zAreEqual) {
                str7 = a4.f300c;
            }
            arrayList.add(A.a(a4, str5, str7, 1));
        }
        return arrayList;
    }

    public static List g(String str) {
        String string = StringsKt.trim((CharSequence) str).toString();
        if (!StringsKt.N(string, "[") || !StringsKt__StringsJVMKt.endsWith$default(string, "]", false, 2, null)) {
            throw new IllegalArgumentException("Malformed presets JSON");
        }
        String strSubstring = string.substring(1, string.length() - 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        if (StringsKt.isBlank(strSubstring)) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (i3 < strSubstring.length()) {
            MatchResult matchResultFind = f379c.find(strSubstring, i3);
            if (matchResultFind == null || matchResultFind.getRange().getFirst() != i3) {
                throw new IllegalArgumentException("Malformed presets JSON");
            }
            String str2 = matchResultFind.getGroupValues().get(1);
            Intrinsics.checkNotNullExpressionValue(str2, "get(...)");
            String string2 = StringsKt.trim((CharSequence) i(str2)).toString();
            if (!StringsKt.isBlank(string2)) {
                String str3 = matchResultFind.getGroupValues().get(2);
                Intrinsics.checkNotNullExpressionValue(str3, "get(...)");
                arrayList.add(new B(string2, e(str3)));
                int last = matchResultFind.getRange().getLast();
                int i4 = last + 1;
                if (i4 == strSubstring.length()) {
                    break;
                }
                if (strSubstring.charAt(i4) != ',') {
                    throw new IllegalArgumentException("Malformed presets JSON");
                }
                i3 = last + 2;
            } else {
                throw new IllegalArgumentException("Preset name must not be blank");
            }
        }
        return arrayList;
    }

    public static String i(String str) {
        int i3;
        StringBuilder sb = new StringBuilder(str.length());
        int i4 = 0;
        while (i4 < str.length()) {
            char cCharAt = str.charAt(i4);
            if (cCharAt != '\\' || (i3 = i4 + 1) >= str.length()) {
                sb.append(cCharAt);
                i4++;
            } else {
                char cCharAt2 = str.charAt(i3);
                if (cCharAt2 == '\"') {
                    sb.append(Typography.quote);
                } else if (cCharAt2 == '\\') {
                    sb.append('\\');
                } else if (cCharAt2 == 'n') {
                    sb.append('\n');
                } else if (cCharAt2 == 'r') {
                    sb.append('\r');
                } else if (cCharAt2 != 't') {
                    sb.append(cCharAt2);
                } else {
                    sb.append('\t');
                }
                i4 += 2;
            }
        }
        return sb.toString();
    }

    public final LinkedHashMap c() {
        Object objM9constructorimpl;
        Set set = S1.d.f2060a;
        Context context = this.f380a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = S1.d.s(context).getString("physical_gamepad_mapping_json", "{}");
        String str = string != null ? string : "{}";
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(e(str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            objM9constructorimpl = a();
        }
        Map mapA = (Map) objM9constructorimpl;
        if (mapA.isEmpty()) {
            mapA = a();
        }
        return new LinkedHashMap(mapA);
    }

    public final List d() {
        Object objM9constructorimpl;
        Set set = S1.d.f2060a;
        Context context = this.f380a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = S1.d.s(context).getString("physical_gamepad_presets_json", "[]");
        String str = string != null ? string : "[]";
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(g(str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            objM9constructorimpl = CollectionsKt.emptyList();
        }
        return (List) objM9constructorimpl;
    }

    public final void h(LinkedHashMap mapping) {
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Set set = S1.d.f2060a;
        String v2 = CollectionsKt.o(mapping.entrySet(), ",", "{", "}", new C0015e(this), 24);
        Context context = this.f380a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(v2, "v");
        S1.d.s(context).edit().putString("physical_gamepad_mapping_json", v2).apply();
    }
}
