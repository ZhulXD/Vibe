package C1;

import A1.C0035p;
import E1.C0131g;
import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.GameDetailActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G0 implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f433e;
    public final /* synthetic */ Object f;

    public /* synthetic */ G0(GameDetailActivity gameDetailActivity, H0.o oVar, LinkedHashMap linkedHashMap, c2 c2Var) {
        this.b = 0;
        this.f432d = gameDetailActivity;
        this.f431c = oVar;
        this.f433e = linkedHashMap;
        this.f = c2Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        B1.z zVar = null;
        int i4 = 0;
        Object obj = this.f;
        Object obj2 = this.f431c;
        Object obj3 = this.f432d;
        Object obj4 = this.f433e;
        switch (i3) {
            case 0:
                GameDetailActivity gameDetailActivity = (GameDetailActivity) obj3;
                H0.o oVar = (H0.o) obj2;
                LinkedHashMap linkedHashMap = (LinkedHashMap) obj4;
                c2 c2Var = (c2) obj;
                boolean zP = S1.d.p(gameDetailActivity);
                p023i1.l lVar = X0.f526a;
                if (zP) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    for (Map.Entry entry : linkedHashMap.entrySet()) {
                        linkedHashMap2.put((String) entry.getKey(), ((Function0) entry.getValue()).invoke());
                    }
                    com.bumptech.glide.c.Z(gameDetailActivity, new A1.r(gameDetailActivity, c2Var, linkedHashMap2, 3));
                    oVar.dismiss();
                } else {
                    com.bumptech.glide.c.V(gameDetailActivity);
                    oVar.dismiss();
                }
                break;
            case 1:
                C0131g c0131g = (C0131g) obj3;
                H0.o oVar2 = (H0.o) obj2;
                String str = ((B1.A) obj4).f299a;
                String str2 = ((B1.C) obj).f302a;
                ArrayList arrayList = c0131g.f889d;
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                int size = arrayList.size();
                while (i4 < size) {
                    Object obj5 = arrayList.get(i4);
                    i4++;
                    B1.A a3 = (B1.A) obj5;
                    if (Intrinsics.areEqual(a3.f299a, str)) {
                        a3 = B1.A.a(a3, str2, null, 5);
                    }
                    arrayList2.add(a3);
                }
                arrayList.clear();
                B1.z zVar2 = c0131g.f888c;
                if (zVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
                } else {
                    zVar = zVar2;
                }
                zVar.getClass();
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, B1.z.f(arrayList2));
                c0131g.f890e = str;
                c0131g.c();
                c0131g.f();
                c0131g.i();
                oVar2.dismiss();
                break;
            case 2:
                TextView textView = (TextView) obj4;
                C0131g c0131g2 = (C0131g) obj;
                H0.o oVar3 = (H0.o) obj2;
                Editable text = ((EditText) obj3).getText();
                String name = text != null ? text.toString() : null;
                if (name == null) {
                    name = "";
                }
                Intrinsics.checkNotNullParameter(name, "name");
                if (StringsKt.trim((CharSequence) name).toString().length() > 0) {
                    textView.setVisibility(8);
                    B1.z zVar3 = c0131g2.f888c;
                    if (zVar3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
                    } else {
                        zVar = zVar3;
                    }
                    String name2 = StringsKt.trim((CharSequence) name).toString();
                    zVar.getClass();
                    Intrinsics.checkNotNullParameter(name2, "name");
                    String string = StringsKt.trim((CharSequence) name2).toString();
                    if (!StringsKt.isBlank(string)) {
                        LinkedHashMap linkedHashMapC = zVar.c();
                        List listD = zVar.d();
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj6 : listD) {
                            if (!StringsKt.equals(((B1.B) obj6).f301a, string, true)) {
                                arrayList3.add(obj6);
                            }
                        }
                        List mutableList = CollectionsKt.toMutableList((Collection) arrayList3);
                        mutableList.add(new B1.B(string, linkedHashMapC));
                        Set set = S1.d.f2060a;
                        Context context = zVar.f380a;
                        String v2 = CollectionsKt.o(mutableList, ",", "[", "]", new C0035p(3, zVar), 24);
                        Intrinsics.checkNotNullParameter(context, "<this>");
                        Intrinsics.checkNotNullParameter(v2, "v");
                        S1.d.s(context).edit().putString("physical_gamepad_presets_json", v2).apply();
                    }
                    Toast.makeText(c0131g2.requireContext(), c0131g2.getString(R.string.toast_layout_saved), 0).show();
                    oVar3.dismiss();
                } else {
                    textView.setVisibility(0);
                }
                break;
            default:
                LinkedHashMap linkedHashMap3 = (LinkedHashMap) obj4;
                DialogInterfaceC0245g dialogInterfaceC0245g = (DialogInterfaceC0245g) obj3;
                Function1 function1 = (Function1) obj2;
                List list = (List) obj;
                if (!linkedHashMap3.isEmpty()) {
                    Set<Map.Entry> setEntrySet = linkedHashMap3.entrySet();
                    Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
                    LinkedHashMap linkedHashMap4 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
                    for (Map.Entry entry2 : setEntrySet) {
                        Intrinsics.checkNotNull(entry2);
                        Object key = entry2.getKey();
                        Intrinsics.checkNotNullExpressionValue(key, "component1(...)");
                        Object value = entry2.getValue();
                        Intrinsics.checkNotNullExpressionValue(value, "component2(...)");
                        Pair pair = TuplesKt.to(list.get(((Integer) key).intValue()), (p023i1.s) value);
                        linkedHashMap4.put(pair.getFirst(), pair.getSecond());
                    }
                    dialogInterfaceC0245g.dismiss();
                    function1.invoke(linkedHashMap4);
                    break;
                }
                break;
        }
    }

    public /* synthetic */ G0(Object obj, Object obj2, Object obj3, H0.o oVar, int i3) {
        this.b = i3;
        this.f432d = obj;
        this.f433e = obj2;
        this.f = obj3;
        this.f431c = oVar;
    }

    public /* synthetic */ G0(LinkedHashMap linkedHashMap, DialogInterfaceC0245g dialogInterfaceC0245g, Function1 function1, List list) {
        this.b = 3;
        this.f433e = linkedHashMap;
        this.f432d = dialogInterfaceC0245g;
        this.f431c = function1;
        this.f = list;
    }
}
