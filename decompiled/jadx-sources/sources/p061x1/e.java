package p061x1;

import S1.d;
import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static List a(Context context, int i3, boolean z2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Set set = d.f2060a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = d.s(context).getString("button_layout_" + i3, "[]");
        if (string == null) {
            string = "[]";
        }
        if (StringsKt.isBlank(string) || Intrinsics.areEqual(string, "[]")) {
            return z2 ? com.bumptech.glide.d.m() : CollectionsKt.emptyList();
        }
        try {
            JSONArray jSONArray = new JSONArray(string);
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i4 = 0; i4 < length; i4++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i4);
                Intrinsics.checkNotNullExpressionValue(jSONObject, "getJSONObject(...)");
                a aVarC = c(jSONObject);
                if (aVarC != null) {
                    arrayList.add(aVarC);
                }
            }
            if (arrayList.isEmpty()) {
                return z2 ? com.bumptech.glide.d.m() : CollectionsKt.emptyList();
            }
            return arrayList;
        } catch (Exception unused) {
            return z2 ? com.bumptech.glide.d.m() : CollectionsKt.emptyList();
        }
    }

    public static void b(Context context, int i3, List configs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configs, "configs");
        JSONArray jSONArray = new JSONArray();
        Iterator it = configs.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", aVar.f5994a);
            jSONObject.put("label", aVar.b);
            jSONObject.put("keyCode", aVar.f5995c);
            jSONObject.put("x", Float.valueOf(aVar.f5996d));
            jSONObject.put("y", Float.valueOf(aVar.f5997e));
            jSONObject.put("widthDp", aVar.f);
            jSONObject.put("heightDp", aVar.g);
            jSONObject.put("shape", aVar.f5998h);
            jSONObject.put("colorHex", aVar.f5999i);
            jSONObject.put("opacity", Float.valueOf(aVar.f6000j));
            jSONObject.put("visible", aVar.f6001k);
            jSONArray.put(jSONObject);
        }
        Set set = d.f2060a;
        String json = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(json, "toString(...)");
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        d.s(context).edit().putString("button_layout_" + i3, json).apply();
    }

    public static a c(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString("id");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = jSONObject.getString("label");
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = jSONObject.getString("keyCode");
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            float f = (float) jSONObject.getDouble("x");
            float f3 = (float) jSONObject.getDouble("y");
            int i3 = jSONObject.getInt("widthDp");
            int i4 = jSONObject.getInt("heightDp");
            String string4 = jSONObject.getString("shape");
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            String string5 = jSONObject.getString("colorHex");
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            return new a(string, string2, string3, f, f3, i3, i4, string4, string5, (float) jSONObject.getDouble("opacity"), jSONObject.getBoolean("visible"));
        } catch (Exception unused) {
            return null;
        }
    }
}
