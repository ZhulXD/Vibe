package p064y1;

import C1.D;
import C1.G0;
import C1.I1;
import C1.V;
import C1.ViewOnClickListenerC0072i;
import C1.ViewOnClickListenerC0075j;
import C1.ViewOnClickListenerC0090o;
import O0.b;
import P.H0;
import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import com.google.android.material.button.MaterialButton;
import com.minhub.gamehub.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.IntRange;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p023i1.s;

/* JADX INFO: renamed from: y1.x0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0425x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f6399a;
    public final File b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f6400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Function0 f6401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f6402e;

    public C0425x0(Activity activity, File file, File file2, Function0 onClosed, Function0 onExit) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onClosed, "onClosed");
        Intrinsics.checkNotNullParameter(onExit, "onExit");
        this.f6399a = activity;
        this.b = file2;
        this.f6400c = onClosed;
        this.f6401d = onExit;
        this.f6402e = activity.getResources().getDisplayMetrics().density;
    }

    public static final void c(EditText editText, DialogInterfaceC0245g dialogInterfaceC0245g, Function1 function1, C0425x0 c0425x0, X0 field) {
        s sVar;
        Regex regex = AbstractC0361b1.f6196a;
        String text = editText.getText().toString();
        Intrinsics.checkNotNullParameter(field, "field");
        Intrinsics.checkNotNullParameter(text, "text");
        String string = StringsKt.trim((CharSequence) text).toString();
        s sVar2 = null;
        if (field.f6157c) {
            String lowerCase = string.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (Intrinsics.areEqual(lowerCase, "true")) {
                sVar2 = new s(Boolean.TRUE);
            } else if (Intrinsics.areEqual(lowerCase, "false")) {
                sVar2 = new s(Boolean.FALSE);
            }
        } else {
            Long longOrNull = StringsKt.toLongOrNull(string);
            if (longOrNull != null) {
                sVar = new s(Long.valueOf(longOrNull.longValue()));
            } else {
                Double doubleOrNull = StringsKt.toDoubleOrNull(string);
                if (doubleOrNull != null) {
                    if (Math.abs(doubleOrNull.doubleValue()) > Double.MAX_VALUE) {
                        doubleOrNull = null;
                    }
                    if (doubleOrNull != null) {
                        double dDoubleValue = doubleOrNull.doubleValue();
                        sVar = (dDoubleValue != Math.rint(dDoubleValue) || Math.abs(dDoubleValue) >= 9.0E15d) ? new s(doubleOrNull) : new s(Long.valueOf((long) dDoubleValue));
                    }
                }
            }
            sVar2 = sVar;
            if (field.f) {
                sVar2 = new s(sVar2.f());
            }
        }
        if (sVar2 == null) {
            Activity activity = c0425x0.f6399a;
            Toast.makeText(activity, activity.getString(R.string.godot_cheat_invalid, CollectionsKt.o(field.f6156a, " › ", null, null, null, 62)), 1).show();
        } else {
            dialogInterfaceC0245g.dismiss();
            function1.invoke(sVar2);
        }
    }

    public static final void e(EditText editText, List fields, C0425x0 c0425x0, LinkedHashMap linkedHashMap, H0 h2, LinearLayout linearLayout, Ref.ObjectRef objectRef) {
        List listEmptyList;
        Double doubleOrNull;
        Z0 z2;
        Double doubleOrNull2;
        Activity activity = c0425x0.f6399a;
        String query = StringsKt.trim((CharSequence) editText.getText().toString()).toString();
        if (query.length() == 0) {
            editText.requestFocus();
            return;
        }
        Regex regex = AbstractC0361b1.f6196a;
        Intrinsics.checkNotNullParameter(fields, "fields");
        Intrinsics.checkNotNullParameter(query, "query");
        String q2 = StringsKt.trim((CharSequence) query).toString();
        if (q2.length() == 0) {
            z2 = new Z0(CollectionsKt.emptyList(), CollectionsKt.toList(CollectionsKt.getIndices(fields)));
        } else {
            Intrinsics.checkNotNullParameter(q2, "q");
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(q2, " ", "", false, 4, (Object) null), "_", "", false, 4, (Object) null);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Double doubleOrNull3 = StringsKt.toDoubleOrNull(strReplace$default);
            if (doubleOrNull3 != null) {
                linkedHashSet.add(Double.valueOf(doubleOrNull3.doubleValue()));
            }
            Double doubleOrNull4 = StringsKt.toDoubleOrNull(StringsKt__StringsJVMKt.replace$default(strReplace$default, ",", "", false, 4, (Object) null));
            if (doubleOrNull4 != null) {
                linkedHashSet.add(Double.valueOf(doubleOrNull4.doubleValue()));
            }
            if (new Regex("-?\\d{1,3}(\\.\\d{3})+").matches(strReplace$default) && (doubleOrNull2 = StringsKt.toDoubleOrNull(StringsKt__StringsJVMKt.replace$default(strReplace$default, ".", "", false, 4, (Object) null))) != null) {
                linkedHashSet.add(Double.valueOf(doubleOrNull2.doubleValue()));
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : linkedHashSet) {
                if (Math.abs(((Number) obj).doubleValue()) <= Double.MAX_VALUE) {
                    arrayList.add(obj);
                }
            }
            Set set = CollectionsKt.toSet(arrayList);
            if (set.isEmpty()) {
                listEmptyList = CollectionsKt.emptyList();
            } else {
                IntRange indices = CollectionsKt.getIndices(fields);
                ArrayList arrayList2 = new ArrayList();
                for (Integer num : indices) {
                    int iIntValue = num.intValue();
                    if (!((X0) fields.get(iIntValue)).f6157c && (doubleOrNull = StringsKt.toDoubleOrNull(((X0) fields.get(iIntValue)).b)) != null && set.contains(Double.valueOf(doubleOrNull.doubleValue()))) {
                        arrayList2.add(num);
                    }
                }
                listEmptyList = arrayList2;
            }
            HashSet hashSet = CollectionsKt___CollectionsKt.toHashSet(listEmptyList);
            String lowerCase = q2.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            IntRange indices2 = CollectionsKt.getIndices(fields);
            ArrayList arrayList3 = new ArrayList();
            for (Integer num2 : indices2) {
                int iIntValue2 = num2.intValue();
                if (!hashSet.contains(Integer.valueOf(iIntValue2))) {
                    String lowerCase2 = CollectionsKt.o(((X0) fields.get(iIntValue2)).f6156a, " › ", null, null, null, 62).toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                    if (StringsKt__StringsKt.contains$default((CharSequence) lowerCase2, (CharSequence) lowerCase, false, 2, (Object) null)) {
                        arrayList3.add(num2);
                    }
                }
            }
            z2 = new Z0(listEmptyList, arrayList3);
        }
        List list = z2.f6166a;
        int size = list.size();
        if (size == 0) {
            Toast.makeText(activity, activity.getString(R.string.godot_cheat_none_found), 1).show();
        } else {
            if (size == 1) {
                c0425x0.h(fields, ((Number) list.get(0)).intValue(), linkedHashMap, new C0416u0(h2, linearLayout, linkedHashMap, fields, objectRef, c0425x0));
                return;
            }
            String string = activity.getString(R.string.godot_cheat_pick_field, Integer.valueOf(list.size()));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            c0425x0.i(string, activity.getString(R.string.godot_cheat_many_hint), fields, list, false, h2, new C0402p0(c0425x0, fields, linkedHashMap, linearLayout, objectRef, h2, 1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void f(final H0 h2, final LinearLayout linearLayout, final LinkedHashMap linkedHashMap, final List list, final Ref.ObjectRef objectRef, final C0425x0 c0425x0) {
        Button button;
        linearLayout.removeAllViews();
        if (!linkedHashMap.isEmpty()) {
            Activity activity = c0425x0.f6399a;
            TextView textView = new TextView(activity);
            textView.setText(activity.getString(R.string.godot_cheat_pending));
            textView.setTextSize(12.0f);
            textView.setTextColor(h2.f1596c);
            textView.setTypeface(Typeface.DEFAULT_BOLD);
            textView.setPadding(0, c0425x0.k(14), 0, c0425x0.k(4));
            linearLayout.addView(textView);
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                final int iIntValue = ((Number) entry.getKey()).intValue();
                s sVar = (s) entry.getValue();
                final X0 x2 = (X0) list.get(iIntValue);
                TextView textView2 = new TextView(activity);
                textView2.setText("✓ " + CollectionsKt.last((List<? extends Object>) x2.f6156a) + ":  " + x2.b + "  →  " + sVar.f());
                textView2.setTextSize(15.0f);
                textView2.setTextColor(h2.f1597d);
                textView2.setTypeface(Typeface.DEFAULT_BOLD);
                textView2.setPadding(0, c0425x0.k(3), 0, c0425x0.k(3));
                textView2.setOnClickListener(new View.OnClickListener() { // from class: y1.i0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        final int i3 = iIntValue;
                        Integer numValueOf = Integer.valueOf(i3);
                        final LinkedHashMap linkedHashMap2 = linkedHashMap;
                        s sVar2 = (s) linkedHashMap2.get(numValueOf);
                        String strF = sVar2 != null ? sVar2.f() : null;
                        final H0 h3 = h2;
                        final LinearLayout linearLayout2 = linearLayout;
                        final List list2 = list;
                        final Ref.ObjectRef objectRef2 = objectRef;
                        final C0425x0 c0425x1 = c0425x0;
                        final X0 x3 = x2;
                        c0425x1.b(x3, strF, new Function1() { // from class: y1.k0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                s nv = (s) obj;
                                Intrinsics.checkNotNullParameter(nv, "nv");
                                C0425x0 c0425x2 = c0425x1;
                                c0425x2.getClass();
                                boolean zAreEqual = Intrinsics.areEqual(nv.f(), x3.b);
                                LinkedHashMap linkedHashMap3 = linkedHashMap2;
                                int i4 = i3;
                                if (zAreEqual) {
                                    linkedHashMap3.remove(Integer.valueOf(i4));
                                } else {
                                    linkedHashMap3.put(Integer.valueOf(i4), nv);
                                }
                                C0425x0.f(h3, linearLayout2, linkedHashMap3, list2, objectRef2, c0425x2);
                                return Unit.INSTANCE;
                            }
                        });
                    }
                });
                linearLayout.addView(textView2);
            }
        }
        DialogInterfaceC0245g dialogInterfaceC0245g = (DialogInterfaceC0245g) objectRef.element;
        if (dialogInterfaceC0245g == null || (button = dialogInterfaceC0245g.f4146d.f4127i) == null) {
            return;
        }
        button.setEnabled(!linkedHashMap.isEmpty());
        button.setText(c0425x0.f6399a.getString(R.string.godot_cheat_save_n, Integer.valueOf(linkedHashMap.size())));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r23v0, types: [android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r9v11, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    public static final void j(LinearLayout linearLayout, List list, List list2, C0425x0 c0425x0, H0 h2, Ref.ObjectRef objectRef, Function1 function1, String str) {
        ?? arrayList;
        List list3 = list2;
        Activity activity = c0425x0.f6399a;
        int i3 = h2.b;
        linearLayout.removeAllViews();
        if (StringsKt.isBlank(str)) {
            arrayList = list;
        } else {
            arrayList = new ArrayList();
            for (Object obj : list) {
                if (StringsKt__StringsKt.contains(CollectionsKt.o(((X0) list3.get(((Number) obj).intValue())).f6156a, " › ", null, null, null, 62), (CharSequence) StringsKt.trim((CharSequence) str).toString(), true)) {
                    arrayList.add(obj);
                }
            }
        }
        Iterator it = CollectionsKt.take(arrayList, 150).iterator();
        ?? r6 = arrayList;
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            X0 x2 = (X0) list3.get(iIntValue);
            D d3 = new D(objectRef, function1, iIntValue, 1);
            ?? linearLayout2 = new LinearLayout(activity);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            ?? r16 = r6;
            linearLayout2.setPadding(c0425x0.k(12), c0425x0.k(10), c0425x0.k(12), c0425x0.k(10));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(h2.f1598e);
            gradientDrawable.setCornerRadius(10 * c0425x0.f6402e);
            linearLayout2.setBackground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = c0425x0.k(6);
            linearLayout2.setLayoutParams(layoutParams);
            linearLayout2.setClickable(true);
            linearLayout2.setOnClickListener(new V(9, d3));
            LinearLayout linearLayout3 = new LinearLayout(activity);
            linearLayout3.setOrientation(1);
            linearLayout3.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            TextView textView = new TextView(activity);
            textView.setText((CharSequence) CollectionsKt.last(x2.f6156a));
            textView.setTextSize(15.0f);
            textView.setTextColor(h2.f1595a);
            textView.setTypeface(Typeface.DEFAULT_BOLD);
            linearLayout3.addView(textView);
            List listDropLast = CollectionsKt___CollectionsKt.dropLast(x2.f6156a, 1);
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : listDropLast) {
                if (!Intrinsics.areEqual((String) obj2, "data")) {
                    arrayList2.add(obj2);
                }
            }
            if (!arrayList2.isEmpty()) {
                TextView textView2 = new TextView(activity);
                textView2.setText(CollectionsKt.o(arrayList2, " › ", null, null, null, 62));
                textView2.setTextSize(11.0f);
                textView2.setTextColor(i3);
                linearLayout3.addView(textView2);
            }
            linearLayout2.addView(linearLayout3);
            TextView textView3 = new TextView(activity);
            textView3.setText(x2.b);
            textView3.setTextSize(16.0f);
            textView3.setTypeface(Typeface.MONOSPACE);
            textView3.setTextColor(h2.f1596c);
            textView3.setPadding(c0425x0.k(10), 0, 0, 0);
            linearLayout2.addView(textView3);
            linearLayout.addView(linearLayout2);
            list3 = list2;
            r6 = r16;
        }
        ?? r17 = r6;
        if (r17.size() > 150) {
            TextView textView4 = new TextView(activity);
            textView4.setText("+" + (r17.size() - 150) + " …");
            textView4.setTextColor(i3);
            textView4.setPadding(0, c0425x0.k(6), 0, c0425x0.k(6));
            linearLayout.addView(textView4);
        }
        if (r17.isEmpty()) {
            TextView textView5 = new TextView(activity);
            textView5.setText(activity.getString(R.string.godot_cheat_none_found));
            textView5.setTextColor(i3);
            linearLayout.addView(textView5);
        }
    }

    public final H0 a() {
        Activity activity = this.f6399a;
        int color = ContextCompat.getColor(activity, R.color.text_pri);
        int color2 = ContextCompat.getColor(activity, R.color.text_sec);
        int color3 = ContextCompat.getColor(activity, R.color.accent);
        int color4 = ContextCompat.getColor(activity, R.color.success);
        int color5 = ContextCompat.getColor(activity, R.color.s2);
        H0 h2 = new H0();
        h2.f1595a = color;
        h2.b = color2;
        h2.f1596c = color3;
        h2.f1597d = color4;
        h2.f1598e = color5;
        return h2;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00fc  */
    public final void b(final X0 x2, String str, final Function1 function1) {
        String strN;
        H0 h0A = a();
        boolean z2 = x2.f6157c;
        List list = x2.f6156a;
        String str2 = x2.f6159e;
        String str3 = x2.b;
        Activity activity = this.f6399a;
        if (z2) {
            b bVar = new b(activity, 0);
            C0240b c0240b = (C0240b) bVar.f4145c;
            c0240b.f4098d = (CharSequence) CollectionsKt.last(list);
            c0240b.f = activity.getString(R.string.godot_cheat_current, str3);
            final int i3 = 0;
            bVar.h(R.string.godot_cheat_on, new DialogInterface.OnClickListener() { // from class: y1.r0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    switch (i3) {
                        case 0:
                            function1.invoke(new s(Boolean.TRUE));
                            break;
                        default:
                            function1.invoke(new s(Boolean.FALSE));
                            break;
                    }
                }
            });
            final int i4 = 1;
            bVar.f(R.string.godot_cheat_off, new DialogInterface.OnClickListener() { // from class: y1.r0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i5) {
                    switch (i4) {
                        case 0:
                            function1.invoke(new s(Boolean.TRUE));
                            break;
                        default:
                            function1.invoke(new s(Boolean.FALSE));
                            break;
                    }
                }
            });
            c0240b.f4103k = c0240b.f4096a.getText(android.R.string.cancel);
            c0240b.f4104l = null;
            bVar.e();
            return;
        }
        final EditText editText = new EditText(activity);
        editText.setText(str == null ? str3 : str);
        editText.setSingleLine();
        editText.setTextSize(26.0f);
        editText.setTypeface(Typeface.DEFAULT_BOLD);
        editText.setTextColor(h0A.f1597d);
        editText.setGravity(17);
        editText.setSelectAllOnFocus(true);
        editText.setInputType(12290);
        editText.setImeOptions(6);
        LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        if (str2 != null) {
            listCreateListBuilder.add(TuplesKt.to(activity.getString(R.string.godot_cheat_max, str2), str2));
        }
        boolean z3 = StringsKt.toLongOrNull(str3) != null;
        for (Object obj : CollectionsKt.listOf((Object[]) new String[]{"9999", "99999", "999999"})) {
            Intrinsics.checkNotNullExpressionValue(obj, "next(...)");
            String str4 = (String) obj;
            if (str2 == null) {
                listCreateListBuilder.add(TuplesKt.to(str4, str4));
            } else {
                Double doubleOrNull = StringsKt.toDoubleOrNull(str2);
                if ((doubleOrNull != null ? doubleOrNull.doubleValue() : Double.MAX_VALUE) > Double.parseDouble(str4)) {
                    listCreateListBuilder.add(TuplesKt.to(str4, str4));
                }
            }
        }
        if (!z3 && listCreateListBuilder.isEmpty()) {
            listCreateListBuilder.add(TuplesKt.to("9999", "9999"));
        }
        List<Pair> listTake = CollectionsKt.take(CollectionsKt.build(listCreateListBuilder), 3);
        for (Pair pair : listTake) {
            Object objComponent1 = pair.component1();
            Intrinsics.checkNotNullExpressionValue(objComponent1, "component1(...)");
            String str5 = (String) pair.component2();
            List list2 = list;
            MaterialButton materialButton = new MaterialButton(activity, null, R.attr.materialButtonOutlinedStyle);
            materialButton.setText((String) objComponent1);
            materialButton.setTextSize(12.0f);
            materialButton.setAllCaps(false);
            materialButton.setMinWidth(0);
            materialButton.setPadding(k(10), 0, k(10), 0);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMarginEnd(k(6));
            materialButton.setLayoutParams(layoutParams);
            materialButton.setOnClickListener(new ViewOnClickListenerC0075j(27, editText, str5));
            linearLayout.addView(materialButton);
            list = list2;
        }
        List list3 = list;
        LinearLayout linearLayout2 = new LinearLayout(activity);
        linearLayout2.setOrientation(1);
        linearLayout2.setPadding(k(22), k(4), k(22), 0);
        List listDropLast = CollectionsKt___CollectionsKt.dropLast(list3, 1);
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : listDropLast) {
            if (!Intrinsics.areEqual((String) obj2, "data")) {
                arrayList.add(obj2);
            }
        }
        String str6 = x2.f6158d;
        if (str6 == null && str2 == null) {
            strN = "";
        } else {
            if (str6 == null) {
                str6 = "…";
            }
            if (str2 == null) {
                str2 = "…";
            }
            strN = E.b.n("  (", str6, " – ", str2, ")");
        }
        TextView textView = new TextView(activity);
        textView.setText(activity.getString(R.string.godot_cheat_current, str3) + strN + (arrayList.isEmpty() ? "" : a.o("\n", CollectionsKt.o(arrayList, " › ", null, null, null, 62))));
        textView.setTextSize(13.0f);
        textView.setTextColor(h0A.b);
        linearLayout2.addView(textView);
        linearLayout2.addView(editText);
        if (!listTake.isEmpty()) {
            HorizontalScrollView horizontalScrollView = new HorizontalScrollView(activity);
            horizontalScrollView.addView(linearLayout);
            linearLayout2.addView(horizontalScrollView);
        }
        b bVar2 = new b(activity, 0);
        String string = activity.getString(R.string.godot_cheat_change, CollectionsKt.last(list3));
        C0240b c0240b2 = (C0240b) bVar2.f4145c;
        c0240b2.f4098d = string;
        c0240b2.f4112t = linearLayout2;
        bVar2.h(android.R.string.ok, null);
        bVar2.f(android.R.string.cancel, null);
        final DialogInterfaceC0245g dialogInterfaceC0245gC = bVar2.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: y1.s0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView2, int i5, KeyEvent keyEvent) {
                C0425x0.c(editText, dialogInterfaceC0245gC, function1, this, x2);
                return true;
            }
        });
        dialogInterfaceC0245gC.setOnShowListener(new DialogInterface.OnShowListener() { // from class: y1.j0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                DialogInterfaceC0245g dialogInterfaceC0245g = dialogInterfaceC0245gC;
                Button button = dialogInterfaceC0245g.f4146d.f4127i;
                X0 x3 = x2;
                EditText editText2 = editText;
                button.setOnClickListener(new ViewOnClickListenerC0072i(x3, editText2, this, dialogInterfaceC0245g, function1, 2));
                editText2.requestFocus();
                Window window = dialogInterfaceC0245g.getWindow();
                if (window != null) {
                    window.setSoftInputMode(4);
                }
            }
        });
        dialogInterfaceC0245gC.show();
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [T, android.app.Dialog, e.g, java.lang.Object] */
    public final void d(String title, final List fields, Pair pair, final Function1 onSave) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(fields, "fields");
        Intrinsics.checkNotNullParameter(onSave, "onSave");
        final H0 h0A = a();
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Activity activity = this.f6399a;
        final LinearLayout linearLayout = new LinearLayout(activity);
        linearLayout.setOrientation(1);
        final EditText editText = new EditText(activity);
        editText.setHint(activity.getString(R.string.godot_cheat_search));
        editText.setSingleLine();
        editText.setTextSize(24.0f);
        editText.setTypeface(Typeface.DEFAULT_BOLD);
        int i3 = h0A.f1595a;
        editText.setTextColor(i3);
        int i4 = h0A.b;
        editText.setHintTextColor(i4);
        editText.setInputType(12290);
        editText.setImeOptions(3);
        editText.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: y1.n0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                C0425x0.e(editText, fields, this, linkedHashMap, h0A, linearLayout, objectRef);
                return true;
            }
        });
        MaterialButton materialButton = new MaterialButton(activity, null);
        materialButton.setText(activity.getString(R.string.godot_cheat_find));
        materialButton.setOnClickListener(new E1.s(editText, fields, this, linkedHashMap, h0A, linearLayout, objectRef));
        LinearLayout linearLayout2 = new LinearLayout(activity);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.addView(editText);
        linearLayout2.addView(materialButton);
        TextView textView = new TextView(activity);
        textView.setText(activity.getString(R.string.godot_cheat_browse));
        textView.setTextSize(13.0f);
        textView.setTextColor(i4);
        textView.setPaintFlags(textView.getPaintFlags() | 8);
        textView.setPadding(0, k(10), 0, k(4));
        textView.setOnClickListener(new ViewOnClickListenerC0090o(h0A, linearLayout, linkedHashMap, fields, objectRef, this));
        LinearLayout linearLayout3 = new LinearLayout(activity);
        linearLayout3.setOrientation(1);
        linearLayout3.setPadding(k(22), k(4), k(22), 0);
        TextView textView2 = new TextView(activity);
        textView2.setText(activity.getString(R.string.godot_cheat_help));
        textView2.setTextSize(14.0f);
        textView2.setTextColor(i3);
        textView2.setPadding(0, 0, 0, k(6));
        linearLayout3.addView(textView2);
        linearLayout3.addView(linearLayout2);
        linearLayout3.addView(textView);
        linearLayout3.addView(linearLayout);
        ScrollView scrollView = new ScrollView(activity);
        scrollView.addView(linearLayout3);
        b bVar = new b(activity, 0);
        C0240b c0240b = (C0240b) bVar.f4145c;
        c0240b.f4098d = title;
        c0240b.f4112t = scrollView;
        bVar.i(activity.getString(R.string.godot_cheat_save_n, 0), null);
        bVar.f(android.R.string.cancel, null);
        if (pair != null) {
            String str = (String) pair.component1();
            I1 i5 = new I1(4, (Function0) pair.component2());
            c0240b.f4103k = str;
            c0240b.f4104l = i5;
        }
        c0240b.f4107o = new DialogInterfaceOnDismissListenerC0393m0(this, 2);
        final ?? C2 = bVar.c();
        Intrinsics.checkNotNullExpressionValue(C2, "create(...)");
        objectRef.element = C2;
        C2.setOnShowListener(new DialogInterface.OnShowListener() { // from class: y1.o0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                DialogInterfaceC0245g dialogInterfaceC0245g = C2;
                Button button = dialogInterfaceC0245g.f4146d.f4127i;
                LinkedHashMap linkedHashMap2 = linkedHashMap;
                Function1 function1 = onSave;
                List list = fields;
                button.setOnClickListener(new G0(linkedHashMap2, dialogInterfaceC0245g, function1, list));
                C0425x0.f(h0A, linearLayout, linkedHashMap2, list, objectRef, this);
                editText.requestFocus();
            }
        });
        C2.show();
    }

    public final void g(int i3) {
        b bVar = new b(this.f6399a, 0);
        C0240b c0240b = (C0240b) bVar.f4145c;
        c0240b.f = c0240b.f4096a.getText(i3);
        bVar.h(android.R.string.ok, null);
        c0240b.f4107o = new DialogInterfaceOnDismissListenerC0393m0(this, 1);
        bVar.e();
    }

    public final void h(List list, final int i3, final LinkedHashMap linkedHashMap, final Function0 function0) {
        final X0 x2 = (X0) list.get(i3);
        s sVar = (s) linkedHashMap.get(Integer.valueOf(i3));
        b(x2, sVar != null ? sVar.f() : null, new Function1(linkedHashMap, i3, x2, function0) { // from class: y1.q0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LinkedHashMap f6327c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ int f6328d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ X0 f6329e;
            public final /* synthetic */ FunctionReferenceImpl f;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.f = (FunctionReferenceImpl) function0;
            }

            /* JADX WARN: Type inference failed for: r4v2, types: [kotlin.jvm.functions.Function0, kotlin.jvm.internal.FunctionReferenceImpl] */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                s v2 = (s) obj;
                Intrinsics.checkNotNullParameter(v2, "v");
                this.b.getClass();
                boolean zAreEqual = Intrinsics.areEqual(v2.f(), this.f6329e.b);
                LinkedHashMap linkedHashMap2 = this.f6327c;
                int i4 = this.f6328d;
                if (zAreEqual) {
                    linkedHashMap2.remove(Integer.valueOf(i4));
                } else {
                    linkedHashMap2.put(Integer.valueOf(i4), v2);
                }
                this.f.invoke();
                return Unit.INSTANCE;
            }
        });
    }

    /* JADX WARN: Type inference failed for: r12v2, types: [T, e.g] */
    public final void i(String str, String str2, List list, List list2, boolean z2, H0 h2, Function1 function1) {
        LinearLayout linearLayout;
        int i3 = h2.b;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Activity activity = this.f6399a;
        LinearLayout linearLayout2 = new LinearLayout(activity);
        linearLayout2.setOrientation(1);
        LinearLayout linearLayout3 = new LinearLayout(activity);
        linearLayout3.setOrientation(1);
        linearLayout3.setPadding(k(20), k(4), k(20), 0);
        if (str2 != null) {
            TextView textView = new TextView(activity);
            textView.setText(str2);
            textView.setTextSize(12.0f);
            textView.setTextColor(i3);
            textView.setPadding(0, 0, 0, k(8));
            linearLayout3.addView(textView);
        }
        if (z2) {
            EditText editText = new EditText(activity);
            editText.setHint(activity.getString(R.string.godot_cheat_filter));
            editText.setSingleLine();
            editText.setTextColor(h2.f1595a);
            editText.setHintTextColor(i3);
            C0422w0 c0422w0 = new C0422w0(linearLayout2, list2, list, this, h2, objectRef, function1);
            linearLayout = linearLayout2;
            objectRef = objectRef;
            editText.addTextChangedListener(c0422w0);
            linearLayout3.addView(editText);
        } else {
            linearLayout = linearLayout2;
        }
        ScrollView scrollView = new ScrollView(activity);
        scrollView.addView(linearLayout);
        scrollView.setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (activity.getResources().getDisplayMetrics().heightPixels * 0.45f)));
        linearLayout3.addView(scrollView);
        j(linearLayout, list2, list, this, h2, objectRef, function1, "");
        b bVar = new b(activity, 0);
        C0240b c0240b = (C0240b) bVar.f4145c;
        c0240b.f4098d = str;
        c0240b.f4112t = linearLayout3;
        bVar.f(android.R.string.cancel, null);
        objectRef.element = bVar.e();
    }

    public final int k(int i3) {
        return (int) (i3 * this.f6402e);
    }
}
