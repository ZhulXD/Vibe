package com.minhub.gamehub.gamepad;

import B1.C0046b;
import B1.e;
import B1.h;
import I1.j;
import S1.c;
import S1.d;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.gamepad.ButtonCatalogActivity;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;", "LS1/c;", "<init>", "()V", "B1/e", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nButtonCatalogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ButtonCatalogActivity.kt\ncom/minhub/gamehub/gamepad/ButtonCatalogActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,100:1\n1869#2,2:101\n1869#2,2:103\n1193#2,2:107\n1267#2,4:109\n216#3,2:105\n161#4,8:113\n*S KotlinDebug\n*F\n+ 1 ButtonCatalogActivity.kt\ncom/minhub/gamehub/gamepad/ButtonCatalogActivity\n*L\n61#1:101,2\n66#1:103,2\n88#1:107,2\n88#1:109,4\n83#1:105,2\n39#1:113,8\n*E\n"})
public final class ButtonCatalogActivity extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f3734h = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f3735e;
    public h f;
    public final List g = CollectionsKt.listOf((Object[]) new e[]{new e("dpad", "D-Pad", "Arrow keys", "#666666"), new e("joystick", "Joystick", "Analog → Arrow keys", "#666666"), new e("btn_a", "A Button", "Confirm (Z)", "#22C55E"), new e("btn_b", "B Button", "Cancel (X)", "#EF4444"), new e("btn_x", "X Button", "Action (A)", "#3B82F6"), new e("btn_y", "Y Button", "Action (S)", "#F59E0B"), new e("btn_lb", "LB", "Shoulder (Q)", "#888888"), new e("btn_rb", "RB", "Shoulder (W)", "#888888"), new e("btn_select", "Enter", "Keyboard Enter", "#888888"), new e("btn_start", "Esc", "Keyboard Escape", "#888888")});

    public final LinkedHashMap m() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<e> list = this.g;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashMap.put(((e) it.next()).f309a, Boolean.TRUE);
        }
        try {
            Set set = d.f2060a;
            Intrinsics.checkNotNullParameter(this, "<this>");
            String str = "{}";
            String string = getSharedPreferences("minhub_prefs", 0).getString("button_visibility", "{}");
            if (string != null) {
                str = string;
            }
            JSONObject jSONObject = new JSONObject(str);
            for (e eVar : list) {
                if (jSONObject.has(eVar.f309a)) {
                    String str2 = eVar.f309a;
                    linkedHashMap.put(str2, Boolean.valueOf(jSONObject.getBoolean(str2)));
                }
            }
        } catch (Exception unused) {
        }
        return linkedHashMap;
    }

    public final void n(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            jSONObject.put((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
        }
        Set set = d.f2060a;
        String v2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(v2, "toString(...)");
        Intrinsics.checkNotNullParameter(this, "<this>");
        Intrinsics.checkNotNullParameter(v2, "v");
        getSharedPreferences("minhub_prefs", 0).edit().putString("button_visibility", v2).apply();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h hVar = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_button_catalog, (ViewGroup) null, false);
        int i3 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
        if (imageButton != null) {
            i3 = R.id.btn_reset;
            Button button = (Button) viewInflate.findViewById(R.id.btn_reset);
            if (button != null) {
                i3 = R.id.layout_header;
                LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_header);
                if (linearLayout != null) {
                    i3 = R.id.recycler_buttons;
                    RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_buttons);
                    if (recyclerView != null) {
                        LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                        j jVar = new j(linearLayout2, imageButton, button, linearLayout, recyclerView, 1);
                        Intrinsics.checkNotNullExpressionValue(jVar, "inflate(...)");
                        this.f3735e = jVar;
                        setContentView(linearLayout2);
                        j jVar2 = this.f3735e;
                        if (jVar2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar2 = null;
                        }
                        ViewCompat.setOnApplyWindowInsetsListener((LinearLayout) jVar2.b, new C0046b(0, this));
                        j jVar3 = this.f3735e;
                        if (jVar3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar3 = null;
                        }
                        final int i4 = 0;
                        ((ImageButton) jVar3.f1188c).setOnClickListener(new View.OnClickListener(this) { // from class: B1.c

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ ButtonCatalogActivity f307c;

                            {
                                this.f307c = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i5 = i4;
                                ButtonCatalogActivity buttonCatalogActivity = this.f307c;
                                switch (i5) {
                                    case 0:
                                        int i6 = ButtonCatalogActivity.f3734h;
                                        buttonCatalogActivity.finish();
                                        break;
                                    default:
                                        List list = buttonCatalogActivity.g;
                                        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10)), 16));
                                        Iterator it = list.iterator();
                                        while (it.hasNext()) {
                                            Pair pair = TuplesKt.to(((e) it.next()).f309a, Boolean.TRUE);
                                            linkedHashMap.put(pair.getFirst(), pair.getSecond());
                                        }
                                        Map newMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
                                        buttonCatalogActivity.n(newMap);
                                        h hVar2 = buttonCatalogActivity.f;
                                        if (hVar2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                            hVar2 = null;
                                        }
                                        hVar2.getClass();
                                        Intrinsics.checkNotNullParameter(newMap, "newMap");
                                        LinkedHashMap linkedHashMap2 = hVar2.f317e;
                                        linkedHashMap2.clear();
                                        linkedHashMap2.putAll(newMap);
                                        hVar2.c();
                                        break;
                                }
                            }
                        });
                        j jVar4 = this.f3735e;
                        if (jVar4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar4 = null;
                        }
                        final int i5 = 1;
                        ((Button) jVar4.f1189d).setOnClickListener(new View.OnClickListener(this) { // from class: B1.c

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ ButtonCatalogActivity f307c;

                            {
                                this.f307c = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i6 = i5;
                                ButtonCatalogActivity buttonCatalogActivity = this.f307c;
                                switch (i6) {
                                    case 0:
                                        int i7 = ButtonCatalogActivity.f3734h;
                                        buttonCatalogActivity.finish();
                                        break;
                                    default:
                                        List list = buttonCatalogActivity.g;
                                        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10)), 16));
                                        Iterator it = list.iterator();
                                        while (it.hasNext()) {
                                            Pair pair = TuplesKt.to(((e) it.next()).f309a, Boolean.TRUE);
                                            linkedHashMap.put(pair.getFirst(), pair.getSecond());
                                        }
                                        Map newMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
                                        buttonCatalogActivity.n(newMap);
                                        h hVar2 = buttonCatalogActivity.f;
                                        if (hVar2 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                            hVar2 = null;
                                        }
                                        hVar2.getClass();
                                        Intrinsics.checkNotNullParameter(newMap, "newMap");
                                        LinkedHashMap linkedHashMap2 = hVar2.f317e;
                                        linkedHashMap2.clear();
                                        linkedHashMap2.putAll(newMap);
                                        hVar2.c();
                                        break;
                                }
                            }
                        });
                        this.f = new h(this.g, m(), new B1.d(this, 0));
                        j jVar5 = this.f3735e;
                        if (jVar5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar5 = null;
                        }
                        ((RecyclerView) jVar5.f).setLayoutManager(new LinearLayoutManager(1));
                        j jVar6 = this.f3735e;
                        if (jVar6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar6 = null;
                        }
                        RecyclerView recyclerView2 = (RecyclerView) jVar6.f;
                        h hVar2 = this.f;
                        if (hVar2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        } else {
                            hVar = hVar2;
                        }
                        recyclerView2.setAdapter(hVar);
                        return;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
