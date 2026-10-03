package I1;

import A1.C0033n;
import B1.t;
import B1.u;
import B1.x;
import C1.ViewOnClickListenerC0075j;
import I1.j;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONException;
import p064y1.C0370e1;
import p064y1.D0;
import p064y1.F0;
import p064y1.M0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1187a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f1188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f1189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f1190e;
    public Object f;

    public /* synthetic */ j(LinearLayout linearLayout, View view, View view2, View view3, View view4, int i3) {
        this.f1187a = i3;
        this.b = linearLayout;
        this.f1188c = view;
        this.f1189d = view2;
        this.f1190e = view3;
        this.f = view4;
    }

    public int a(int i3) {
        float f;
        float f3;
        switch (this.f1187a) {
            case 5:
                f = i3;
                f3 = ((FrameLayout) this.b).getContext().getResources().getDisplayMetrics().density;
                break;
            default:
                f = i3;
                f3 = ((FrameLayout) this.b).getContext().getResources().getDisplayMetrics().density;
                break;
        }
        return (int) (f * f3);
    }

    public LinearLayout b(boolean z2) {
        switch (this.f1187a) {
            case 5:
                LinearLayout linearLayout = new LinearLayout(((FrameLayout) this.b).getContext());
                linearLayout.setOrientation(0);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.bottomMargin = a(z2 ? 2 : 8);
                linearLayout.setLayoutParams(layoutParams);
                return linearLayout;
            default:
                LinearLayout linearLayout2 = new LinearLayout(((FrameLayout) this.b).getContext());
                linearLayout2.setOrientation(0);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams2.bottomMargin = a(z2 ? 2 : 8);
                linearLayout2.setLayoutParams(layoutParams2);
                return linearLayout2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:136:0x05dc  */
    /* JADX WARN: Code duplicated, block: B:148:0x0602  */
    /* JADX WARN: Code duplicated, block: B:149:0x0611  */
    public void c() {
        Object objM9constructorimpl;
        String string;
        int i3 = this.f1187a;
        String str = "#171E29";
        int i4 = 8;
        int i5 = -2;
        Object obj = this.f1190e;
        Object obj2 = this.b;
        int i6 = 1;
        boolean z2 = false;
        switch (i3) {
            case 5:
                FrameLayout frameLayout = (FrameLayout) obj2;
                D0 d3 = (D0) obj;
                View view = (View) this.f;
                if (view != null) {
                    ((TextView) view.findViewById(R.id.tv_keyboard_active)).setText(frameLayout.getContext().getString(R.string.format_buttons_active, Integer.valueOf(((Set) d3.invoke()).size())));
                }
                View view2 = (View) this.f;
                if (view2 != null) {
                    int color = Color.parseColor("#FF424D");
                    int color2 = Color.parseColor("#8C93A7");
                    View viewFindViewById = view2.findViewById(R.id.tab_special);
                    Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
                    d((TextView) viewFindViewById, Intrinsics.areEqual((String) this.f1188c, "gamepad"), color, color2);
                    View viewFindViewById2 = view2.findViewById(R.id.tab_keyboard);
                    Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
                    d((TextView) viewFindViewById2, Intrinsics.areEqual((String) this.f1188c, "keyboard"), color, color2);
                }
                View view3 = (View) this.f;
                if (view3 != null) {
                    LinearLayout linearLayout = (LinearLayout) view3.findViewById(R.id.layout_keyboard_content);
                    linearLayout.removeAllViews();
                    Set set = (Set) d3.invoke();
                    if (Intrinsics.areEqual((String) this.f1188c, "gamepad")) {
                        Intrinsics.checkNotNull(linearLayout);
                        List list = t.f351a;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Object obj3 : list) {
                            switch (((u) obj3).f352a) {
                                case "btn_lb":
                                case "btn_lt":
                                case "btn_rb":
                                case "btn_rt":
                                    string = frameLayout.getContext().getString(R.string.group_shoulder);
                                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                    break;
                                case "btn_a":
                                case "btn_b":
                                case "btn_x":
                                case "btn_y":
                                    string = "A · B · X · Y";
                                    break;
                                case "gdpad":
                                    string = frameLayout.getContext().getString(R.string.group_dpad);
                                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                    break;
                                case "btn_mouse_left":
                                    string = frameLayout.getContext().getString(R.string.group_mouse);
                                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                    break;
                                default:
                                    string = frameLayout.getContext().getString(R.string.group_menu_keys);
                                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                    break;
                            }
                            Object arrayList = linkedHashMap.get(string);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                linkedHashMap.put(string, arrayList);
                            }
                            ((List) arrayList).add(obj3);
                        }
                        Iterator it = linkedHashMap.entrySet().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            String str2 = (String) entry.getKey();
                            List list2 = (List) entry.getValue();
                            String upperCase = str2.toUpperCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                            TextView textView = new TextView(frameLayout.getContext());
                            textView.setText(upperCase);
                            textView.setTextColor(Color.parseColor("#7F889D"));
                            char c3 = CharCompanionObject.MIN_VALUE;
                            textView.setTextSize(9.0f);
                            textView.setTypeface(textView.getTypeface(), 1);
                            textView.setLetterSpacing(0.08f);
                            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                            layoutParams.bottomMargin = a(8);
                            textView.setLayoutParams(layoutParams);
                            linearLayout.addView(textView);
                            Iterator it2 = CollectionsKt___CollectionsKt.chunked(list2, 4).iterator();
                            while (it2.hasNext()) {
                                List list3 = (List) it2.next();
                                LinearLayout linearLayoutB = b(false);
                                Iterator it3 = list3.iterator();
                                while (it3.hasNext()) {
                                    u uVar = (u) it3.next();
                                    String str3 = uVar.f352a;
                                    String str4 = uVar.b;
                                    boolean zContains = set.contains(str3);
                                    int color3 = Color.parseColor("#FF424D");
                                    try {
                                        Result.Companion companion = Result.INSTANCE;
                                        objM9constructorimpl = Result.m9constructorimpl(Integer.valueOf(Color.parseColor(uVar.f359k)));
                                    } catch (Throwable th) {
                                        Result.Companion companion2 = Result.INSTANCE;
                                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                                    }
                                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                                        objM9constructorimpl = -7829368;
                                    }
                                    int iIntValue = ((Number) objM9constructorimpl).intValue();
                                    LinearLayout linearLayout2 = new LinearLayout(frameLayout.getContext());
                                    linearLayout2.setOrientation(1);
                                    linearLayout2.setGravity(1);
                                    GradientDrawable gradientDrawable = new GradientDrawable();
                                    FrameLayout frameLayout2 = frameLayout;
                                    gradientDrawable.setShape(0);
                                    gradientDrawable.setCornerRadius(a(12));
                                    gradientDrawable.setColor(zContains ? Color.parseColor("#14FF424D") : Color.parseColor("#171E29"));
                                    gradientDrawable.setStroke(a(2), zContains ? color3 : Color.parseColor("#273244"));
                                    linearLayout2.setBackground(gradientDrawable);
                                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(a(72), -2);
                                    layoutParams2.rightMargin = a(8);
                                    layoutParams2.bottomMargin = a(8);
                                    linearLayout2.setLayoutParams(layoutParams2);
                                    Iterator it4 = it;
                                    Iterator it5 = it2;
                                    linearLayout2.setPadding(a(8), a(10), a(8), a(8));
                                    linearLayout2.setOnClickListener(new ViewOnClickListenerC0075j(29, this, uVar));
                                    TextView textView2 = new TextView(frameLayout2.getContext());
                                    textView2.setText(StringsKt.take(str4, 3));
                                    textView2.setGravity(17);
                                    textView2.setTextColor(-1);
                                    textView2.setTextSize(10.0f);
                                    textView2.setTypeface(textView2.getTypeface(), 1);
                                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                                    gradientDrawable2.setShape(0);
                                    gradientDrawable2.setCornerRadius(a(Intrinsics.areEqual(uVar.f360l, "CIRCLE") ? 18 : 9));
                                    gradientDrawable2.setColor(zContains ? color3 : Color.argb(85, Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
                                    gradientDrawable2.setStroke(a(2), zContains ? color3 : Color.argb(136, Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
                                    textView2.setBackground(gradientDrawable2);
                                    textView2.setLayoutParams(new LinearLayout.LayoutParams(a(38), a(38)));
                                    linearLayout2.addView(textView2);
                                    TextView textView3 = new TextView(frameLayout2.getContext());
                                    textView3.setText(str4);
                                    textView3.setGravity(17);
                                    textView3.setTextColor(zContains ? color3 : Color.parseColor("#95A0B6"));
                                    textView3.setTextSize(9.0f);
                                    textView3.setTypeface(textView3.getTypeface(), 1);
                                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
                                    layoutParams3.topMargin = a(6);
                                    textView3.setLayoutParams(layoutParams3);
                                    linearLayout2.addView(textView3);
                                    View view4 = new View(frameLayout2.getContext());
                                    GradientDrawable gradientDrawable3 = new GradientDrawable();
                                    gradientDrawable3.setShape(1);
                                    gradientDrawable3.setColor(color3);
                                    view4.setBackground(gradientDrawable3);
                                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(a(6), a(6));
                                    layoutParams4.topMargin = a(6);
                                    view4.setLayoutParams(layoutParams4);
                                    view4.setVisibility(zContains ? 0 : 4);
                                    linearLayout2.addView(view4);
                                    linearLayoutB.addView(linearLayout2);
                                    c3 = 0;
                                    frameLayout = frameLayout2;
                                    it3 = it3;
                                    it = it4;
                                    it2 = it5;
                                    break;
                                }
                                linearLayout.addView(linearLayoutB);
                                frameLayout = frameLayout;
                            }
                        }
                        FrameLayout frameLayout3 = frameLayout;
                        String string2 = frameLayout3.getContext().getString(R.string.godot_tip_arrange);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        LinearLayout linearLayout3 = new LinearLayout(frameLayout3.getContext());
                        linearLayout3.setOrientation(1);
                        GradientDrawable gradientDrawable4 = new GradientDrawable();
                        gradientDrawable4.setShape(0);
                        gradientDrawable4.setCornerRadius(a(12));
                        gradientDrawable4.setColor(Color.parseColor("#171E29"));
                        linearLayout3.setBackground(gradientDrawable4);
                        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams5.topMargin = a(4);
                        linearLayout3.setLayoutParams(layoutParams5);
                        linearLayout3.setPadding(a(12), a(12), a(12), a(12));
                        TextView textView4 = new TextView(frameLayout3.getContext());
                        textView4.setText(string2);
                        textView4.setTextColor(Color.parseColor("#A7AFBF"));
                        textView4.setTextSize(10.0f);
                        textView4.setLineSpacing(0.0f, 1.2f);
                        linearLayout3.addView(textView4);
                        linearLayout.addView(linearLayout3);
                    } else {
                        Intrinsics.checkNotNull(linearLayout);
                        String string3 = frameLayout.getContext().getString(R.string.godot_keyboard_hint);
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        TextView textView5 = new TextView(frameLayout.getContext());
                        textView5.setText(string3);
                        textView5.setTextColor(Color.parseColor("#8C93A7"));
                        textView5.setTextSize(10.0f);
                        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams6.bottomMargin = a(10);
                        textView5.setLayoutParams(layoutParams6);
                        linearLayout.addView(textView5);
                        ArrayList arrayList2 = B1.i.f320d;
                        int size = arrayList2.size();
                        int i7 = 0;
                        while (i7 < size) {
                            Object obj4 = arrayList2.get(i7);
                            i7++;
                            LinearLayout linearLayoutB2 = b(true);
                            for (x xVar : (List) obj4) {
                                boolean zContains2 = set.contains(xVar.f372a);
                                int color4 = Color.parseColor("#FF424D");
                                TextView textView6 = new TextView(frameLayout.getContext());
                                String str5 = xVar.b;
                                int i8 = xVar.g;
                                textView6.setText(str5);
                                textView6.setGravity(17);
                                textView6.setTextColor(zContains2 ? -1 : Color.parseColor("#B3BACC"));
                                Set set2 = set;
                                textView6.setTextSize(str5.length() > 8 ? 7.0f : str5.length() > 3 ? 8.0f : 10.0f);
                                textView6.setTypeface(Typeface.MONOSPACE, 1);
                                textView6.setMinWidth(a(xVar.f));
                                textView6.setHeight(a(i8));
                                textView6.setPadding(a(6), 0, a(6), 0);
                                GradientDrawable gradientDrawable5 = new GradientDrawable();
                                gradientDrawable5.setShape(0);
                                gradientDrawable5.setCornerRadius(a(6));
                                gradientDrawable5.setColor(zContains2 ? color4 : Color.parseColor("#171E29"));
                                int iA = a(2);
                                if (!zContains2) {
                                    color4 = Color.parseColor("#2A3446");
                                }
                                gradientDrawable5.setStroke(iA, color4);
                                textView6.setBackground(gradientDrawable5);
                                LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(-2, a(i8));
                                layoutParams7.rightMargin = a(4);
                                layoutParams7.bottomMargin = a(4);
                                textView6.setLayoutParams(layoutParams7);
                                textView6.setOnClickListener(new M0(0, this, xVar));
                                linearLayoutB2.addView(textView6);
                                set = set2;
                            }
                            linearLayout.addView(linearLayoutB2);
                        }
                    }
                    break;
                }
                break;
            default:
                FrameLayout frameLayout4 = (FrameLayout) obj2;
                C0033n c0033n = (C0033n) obj;
                View view5 = (View) this.f;
                if (view5 != null) {
                    ((TextView) view5.findViewById(R.id.tv_keyboard_active)).setText(frameLayout4.getContext().getString(R.string.format_buttons_active, Integer.valueOf(((Set) c0033n.invoke()).size())));
                }
                View view6 = (View) this.f;
                if (view6 != null) {
                    int color5 = Color.parseColor("#FF424D");
                    int color6 = Color.parseColor("#8C93A7");
                    TextView textView7 = (TextView) view6.findViewById(R.id.tab_special);
                    TextView textView8 = (TextView) view6.findViewById(R.id.tab_keyboard);
                    Intrinsics.checkNotNull(textView7);
                    d(textView7, Intrinsics.areEqual((String) this.f1188c, "special"), color5, color6);
                    Intrinsics.checkNotNull(textView8);
                    d(textView8, Intrinsics.areEqual((String) this.f1188c, "keyboard"), color5, color6);
                }
                View view7 = (View) this.f;
                if (view7 != null) {
                    LinearLayout linearLayout4 = (LinearLayout) view7.findViewById(R.id.layout_keyboard_content);
                    linearLayout4.removeAllViews();
                    Set set3 = (Set) c0033n.invoke();
                    if (Intrinsics.areEqual((String) this.f1188c, "special")) {
                        Intrinsics.checkNotNull(linearLayout4);
                        List list4 = B1.i.b;
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj5 : list4) {
                            String str6 = ((x) obj5).f373c;
                            Object arrayList3 = linkedHashMap2.get(str6);
                            if (arrayList3 == null) {
                                arrayList3 = new ArrayList();
                                linkedHashMap2.put(str6, arrayList3);
                            }
                            ((List) arrayList3).add(obj5);
                        }
                        Iterator it6 = linkedHashMap2.entrySet().iterator();
                        while (it6.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it6.next();
                            String str7 = (String) entry2.getKey();
                            List list5 = (List) entry2.getValue();
                            String upperCase2 = str7.toUpperCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
                            TextView textView9 = new TextView(frameLayout4.getContext());
                            textView9.setText(upperCase2);
                            textView9.setTextColor(Color.parseColor("#7F889D"));
                            textView9.setTextSize(9.0f);
                            textView9.setTypeface(textView9.getTypeface(), i6);
                            textView9.setLetterSpacing(0.08f);
                            LinearLayout.LayoutParams layoutParams8 = new LinearLayout.LayoutParams(i5, i5);
                            layoutParams8.bottomMargin = a(i4);
                            textView9.setLayoutParams(layoutParams8);
                            linearLayout4.addView(textView9);
                            for (List<x> list6 : CollectionsKt___CollectionsKt.chunked(list5, 4)) {
                                LinearLayout linearLayoutB3 = b(z2);
                                for (final x xVar2 : list6) {
                                    String str8 = xVar2.f372a;
                                    String str9 = xVar2.b;
                                    boolean zContains3 = set3.contains(str8);
                                    int color7 = Color.parseColor("#FF424D");
                                    String str10 = str;
                                    LinearLayout linearLayout5 = new LinearLayout(frameLayout4.getContext());
                                    linearLayout5.setOrientation(i6);
                                    linearLayout5.setGravity(i6);
                                    GradientDrawable gradientDrawable6 = new GradientDrawable();
                                    gradientDrawable6.setShape(0);
                                    FrameLayout frameLayout5 = frameLayout4;
                                    gradientDrawable6.setCornerRadius(a(12));
                                    gradientDrawable6.setColor(zContains3 ? Color.parseColor("#14FF424D") : Color.parseColor(str10));
                                    gradientDrawable6.setStroke(a(2), zContains3 ? color7 : Color.parseColor("#273244"));
                                    linearLayout5.setBackground(gradientDrawable6);
                                    LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(a(72), -2);
                                    layoutParams9.rightMargin = a(8);
                                    layoutParams9.bottomMargin = a(8);
                                    linearLayout5.setLayoutParams(layoutParams9);
                                    Iterator it7 = it6;
                                    linearLayout5.setPadding(a(8), a(10), a(8), a(8));
                                    final int i9 = 0;
                                    linearLayout5.setOnClickListener(new View.OnClickListener(this) { // from class: y1.n1

                                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                                        public final /* synthetic */ j f6299c;

                                        {
                                            this.f6299c = this;
                                        }

                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view8) throws JSONException {
                                            switch (i9) {
                                                case 0:
                                                    j jVar = this.f6299c;
                                                    ((C0370e1) jVar.f1189d).invoke(xVar2.f372a);
                                                    jVar.c();
                                                    break;
                                                default:
                                                    j jVar2 = this.f6299c;
                                                    ((C0370e1) jVar2.f1189d).invoke(xVar2.f372a);
                                                    jVar2.c();
                                                    break;
                                            }
                                        }
                                    });
                                    TextView textView10 = new TextView(frameLayout5.getContext());
                                    String str11 = xVar2.f376h;
                                    textView10.setText(StringsKt.take(str9, 2));
                                    textView10.setGravity(17);
                                    textView10.setTextColor(-1);
                                    textView10.setTextSize(10.0f);
                                    textView10.setTypeface(textView10.getTypeface(), 1);
                                    GradientDrawable gradientDrawable7 = new GradientDrawable();
                                    gradientDrawable7.setShape(0);
                                    gradientDrawable7.setCornerRadius(a((Intrinsics.areEqual(str11, "CIRCLE") || Intrinsics.areEqual(str11, "DPAD") || Intrinsics.areEqual(str11, "JOYSTICK")) ? 18 : 9));
                                    gradientDrawable7.setColor(zContains3 ? color7 : Color.parseColor(str10));
                                    gradientDrawable7.setStroke(a(2), zContains3 ? color7 : Color.parseColor("#2A3446"));
                                    textView10.setBackground(gradientDrawable7);
                                    textView10.setLayoutParams(new LinearLayout.LayoutParams(a(38), a(38)));
                                    TextView textView11 = new TextView(frameLayout5.getContext());
                                    textView11.setText(str9);
                                    textView11.setGravity(17);
                                    textView11.setTextColor(zContains3 ? color7 : Color.parseColor("#95A0B6"));
                                    textView11.setTextSize(9.0f);
                                    textView11.setTypeface(textView11.getTypeface(), 1);
                                    LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(-1, -2);
                                    layoutParams10.topMargin = a(6);
                                    textView11.setLayoutParams(layoutParams10);
                                    View view8 = new View(frameLayout5.getContext());
                                    GradientDrawable gradientDrawable8 = new GradientDrawable();
                                    gradientDrawable8.setShape(1);
                                    gradientDrawable8.setColor(color7);
                                    view8.setBackground(gradientDrawable8);
                                    LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(a(6), a(6));
                                    layoutParams11.topMargin = a(6);
                                    view8.setLayoutParams(layoutParams11);
                                    view8.setVisibility(zContains3 ? 0 : 4);
                                    linearLayout5.addView(textView10);
                                    linearLayout5.addView(textView11);
                                    linearLayout5.addView(view8);
                                    linearLayoutB3.addView(linearLayout5);
                                    str = str10;
                                    frameLayout4 = frameLayout5;
                                    it6 = it7;
                                    i6 = 1;
                                }
                                linearLayout4.addView(linearLayoutB3);
                                i4 = 8;
                                i5 = -2;
                                i6 = 1;
                                z2 = false;
                            }
                        }
                        String str12 = str;
                        FrameLayout frameLayout6 = frameLayout4;
                        LinearLayout linearLayout6 = new LinearLayout(frameLayout6.getContext());
                        linearLayout6.setOrientation(1);
                        GradientDrawable gradientDrawable9 = new GradientDrawable();
                        gradientDrawable9.setShape(0);
                        gradientDrawable9.setCornerRadius(a(12));
                        gradientDrawable9.setColor(Color.parseColor(str12));
                        linearLayout6.setBackground(gradientDrawable9);
                        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(-1, -2);
                        layoutParams12.topMargin = a(4);
                        linearLayout6.setLayoutParams(layoutParams12);
                        linearLayout6.setPadding(a(12), a(12), a(12), a(12));
                        TextView textView12 = new TextView(frameLayout6.getContext());
                        textView12.setText("💡 Bật nút → vào Sắp xếp nút để đặt vị trí.");
                        textView12.setTextColor(Color.parseColor("#A7AFBF"));
                        textView12.setTextSize(10.0f);
                        textView12.setLineSpacing(0.0f, 1.2f);
                        linearLayout6.addView(textView12);
                        linearLayout4.addView(linearLayout6);
                    } else {
                        Intrinsics.checkNotNull(linearLayout4);
                        TextView textView13 = new TextView(frameLayout4.getContext());
                        textView13.setText("Bấm phím để bật/tắt • Đỏ = đang bật");
                        textView13.setTextColor(Color.parseColor("#8C93A7"));
                        textView13.setTextSize(10.0f);
                        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams13.bottomMargin = a(10);
                        textView13.setLayoutParams(layoutParams13);
                        linearLayout4.addView(textView13);
                        ArrayList arrayList4 = B1.i.f320d;
                        int size2 = arrayList4.size();
                        int i10 = 0;
                        while (i10 < size2) {
                            Object obj6 = arrayList4.get(i10);
                            i10++;
                            LinearLayout linearLayoutB4 = b(true);
                            for (final x xVar3 : (List) obj6) {
                                boolean zContains4 = set3.contains(xVar3.f372a);
                                int color8 = Color.parseColor("#FF424D");
                                TextView textView14 = new TextView(frameLayout4.getContext());
                                String str13 = xVar3.b;
                                int i11 = xVar3.g;
                                textView14.setText(str13);
                                textView14.setGravity(17);
                                textView14.setTextColor(zContains4 ? -1 : Color.parseColor("#B3BACC"));
                                Set set4 = set3;
                                textView14.setTextSize(str13.length() > 8 ? 7.0f : str13.length() > 3 ? 8.0f : 10.0f);
                                textView14.setTypeface(Typeface.MONOSPACE, 1);
                                textView14.setMinWidth(a(xVar3.f));
                                textView14.setHeight(a(i11));
                                textView14.setPadding(a(6), 0, a(6), 0);
                                GradientDrawable gradientDrawable10 = new GradientDrawable();
                                gradientDrawable10.setShape(0);
                                gradientDrawable10.setCornerRadius(a(6));
                                gradientDrawable10.setColor(zContains4 ? color8 : Color.parseColor("#171E29"));
                                int iA2 = a(2);
                                if (!zContains4) {
                                    color8 = Color.parseColor("#2A3446");
                                }
                                gradientDrawable10.setStroke(iA2, color8);
                                textView14.setBackground(gradientDrawable10);
                                LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(-2, a(i11));
                                layoutParams14.rightMargin = a(4);
                                layoutParams14.bottomMargin = a(4);
                                textView14.setLayoutParams(layoutParams14);
                                final int i12 = 1;
                                textView14.setOnClickListener(new View.OnClickListener(this) { // from class: y1.n1

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final /* synthetic */ j f6299c;

                                    {
                                        this.f6299c = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view9) throws JSONException {
                                        switch (i12) {
                                            case 0:
                                                j jVar = this.f6299c;
                                                ((C0370e1) jVar.f1189d).invoke(xVar3.f372a);
                                                jVar.c();
                                                break;
                                            default:
                                                j jVar2 = this.f6299c;
                                                ((C0370e1) jVar2.f1189d).invoke(xVar3.f372a);
                                                jVar2.c();
                                                break;
                                        }
                                    }
                                });
                                linearLayoutB4.addView(textView14);
                                set3 = set4;
                            }
                            linearLayout4.addView(linearLayoutB4);
                        }
                    }
                    break;
                }
                break;
        }
    }

    public void d(TextView textView, boolean z2, int i3, int i4) {
        switch (this.f1187a) {
            case 5:
                if (!z2) {
                    i3 = i4;
                }
                textView.setTextColor(i3);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(a(10));
                gradientDrawable.setColor(z2 ? Color.parseColor("#14FF424D") : 0);
                gradientDrawable.setStroke(a(1), Color.parseColor(z2 ? "#52FF424D" : "#243041"));
                textView.setBackground(gradientDrawable);
                break;
            default:
                if (!z2) {
                    i3 = i4;
                }
                textView.setTextColor(i3);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(0);
                gradientDrawable2.setCornerRadius(a(10));
                gradientDrawable2.setColor(z2 ? Color.parseColor("#14FF424D") : 0);
                gradientDrawable2.setStroke(a(1), Color.parseColor(z2 ? "#52FF424D" : "#243041"));
                textView.setBackground(gradientDrawable2);
                break;
        }
    }

    public j(FrameLayout host, C0370e1 onToggleButton, C0033n onEnabledButtonsRequested) {
        this.f1187a = 6;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(onToggleButton, "onToggleButton");
        Intrinsics.checkNotNullParameter(onEnabledButtonsRequested, "onEnabledButtonsRequested");
        this.b = host;
        this.f1189d = onToggleButton;
        this.f1190e = onEnabledButtonsRequested;
        this.f1188c = "special";
    }

    public j(FrameLayout host, F0 onToggleButton, D0 onEnabledButtonsRequested) {
        this.f1187a = 5;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(onToggleButton, "onToggleButton");
        Intrinsics.checkNotNullParameter(onEnabledButtonsRequested, "onEnabledButtonsRequested");
        this.b = host;
        this.f1189d = onToggleButton;
        this.f1190e = onEnabledButtonsRequested;
        this.f1188c = "gamepad";
    }

    public j(i mode, String str, String str2, b bVar, b bVar2, List patches) {
        this.f1187a = 0;
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(patches, "patches");
        this.b = mode;
        this.f1188c = str;
        this.f1189d = bVar;
        this.f1190e = bVar2;
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(patches));
        Intrinsics.checkNotNullExpressionValue(listUnmodifiableList, "unmodifiableList(...)");
        this.f = listUnmodifiableList;
        if (str != null && (StringsKt.isBlank(str) || str.length() > 128)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (str2 != null && (StringsKt.isBlank(str2) || str2.length() > 128)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (patches.size() <= 128) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(patches, 10));
            Iterator it = patches.iterator();
            while (it.hasNext()) {
                arrayList.add(((b) it.next()).f1173a);
            }
            if (CollectionsKt.distinct(arrayList).size() == patches.size()) {
                if (((i) this.b) == i.b && (((b) this.f1189d) != null || ((b) this.f1190e) != null || !patches.isEmpty())) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                if (((i) this.b) == i.f1184c) {
                    if (((String) this.f1188c) == null || ((b) this.f1189d) == null) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}
