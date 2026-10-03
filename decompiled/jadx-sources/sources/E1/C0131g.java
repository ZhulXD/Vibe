package E1;

import C1.C0056c1;
import C1.G0;
import C1.L;
import C1.ViewOnClickListenerC0075j;
import C1.ViewOnClickListenerC0106t1;
import C1.ViewOnClickListenerC0110v;
import android.R;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: E1.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LE1/g;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGamepadSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GamepadSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GamepadSettingsFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,534:1\n3856#2:535\n4374#2,2:536\n1#3:538\n1#3:556\n1869#4,2:539\n1878#4,3:541\n295#4,2:544\n1617#4,9:546\n1869#4:555\n1870#4:557\n1626#4:558\n2746#4,3:559\n1878#4,3:562\n1878#4,3:565\n1563#4:568\n1634#4,3:569\n1563#4:572\n1634#4,3:573\n*S KotlinDebug\n*F\n+ 1 GamepadSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GamepadSettingsFragment\n*L\n102#1:535\n102#1:536,2\n246#1:556\n128#1:539,2\n166#1:541,3\n227#1:544,2\n246#1:546,9\n246#1:555\n246#1:557\n246#1:558\n250#1:559,3\n317#1:562,3\n412#1:565,3\n450#1:568\n450#1:569,3\n462#1:572\n462#1:573,3\n*E\n"})
public final class C0131g extends Fragment {
    public p058w1.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public B1.z f888c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f890e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f889d = new ArrayList();
    public int f = 1;

    public static void g(H0.o oVar, View view) {
        oVar.setContentView(view);
        Window window = oVar.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        oVar.setOnShowListener(new L(oVar, 4));
    }

    public final LinearLayout b(String str, String str2, int i3, Function0 function0) {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        float f = getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(contextRequireContext);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMarginEnd(i3);
        linearLayout.setLayoutParams(layoutParams);
        float f3 = 10 * f;
        int i4 = (int) f3;
        linearLayout.setPadding(i4, i4, i4, i4);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(f3);
        gradientDrawable.setColor(Color.parseColor("#212734"));
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setOnClickListener(new ViewOnClickListenerC0106t1(1, function0));
        TextView textView = new TextView(contextRequireContext);
        textView.setText(str);
        textView.setTextSize(9.0f);
        textView.setTextColor(Color.parseColor("#8888A4"));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(contextRequireContext);
        textView2.setText(str2);
        textView2.setTextSize(12.0f);
        textView2.setTextColor(Color.parseColor("#F0F0F6"));
        textView2.setTypeface(null, 1);
        textView2.setLineSpacing(0.0f, 1.2f);
        linearLayout.addView(textView2);
        return linearLayout;
    }

    public final void c() {
        String str;
        B1.z zVar = this.f888c;
        B1.z zVar2 = null;
        if (zVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
            zVar = null;
        }
        B1.z zVar3 = this.f888c;
        if (zVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
        } else {
            zVar2 = zVar3;
        }
        zVar2.getClass();
        ArrayList rows = this.f889d;
        Intrinsics.checkNotNullParameter(rows, "rows");
        ArrayList arrayListF = B1.z.f(rows);
        ArrayList arrayList = new ArrayList();
        int size = arrayListF.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            Object obj = arrayListF.get(i4);
            i4++;
            B1.A a3 = (B1.A) obj;
            String str2 = a3.b;
            if (str2 != null && !StringsKt.isBlank(str2) && (str = a3.f300c) != null && !StringsKt.isBlank(str)) {
                arrayList.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size2 = arrayList.size();
        while (i3 < size2) {
            Object obj2 = arrayList.get(i3);
            i3++;
            B1.A a4 = (B1.A) obj2;
            String str3 = a4.f300c;
            Intrinsics.checkNotNull(str3);
            String str4 = a4.b;
            Intrinsics.checkNotNull(str4);
            Pair pair = TuplesKt.to(str3, str4);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        zVar.h(linkedHashMap);
    }

    public final void d() {
        float f;
        boolean z2;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        float f3 = getResources().getDisplayMetrics().density;
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        cVar.f5649d.removeAllViews();
        int[] deviceIds = InputDevice.getDeviceIds();
        Intrinsics.checkNotNullExpressionValue(deviceIds, "getDeviceIds(...)");
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        for (int i4 : deviceIds) {
            InputDevice device = InputDevice.getDevice(i4);
            if (device != null && ((device.getSources() & InputDeviceCompat.SOURCE_GAMEPAD) == 1025 || (device.getSources() & InputDeviceCompat.SOURCE_JOYSTICK) == 16777232)) {
                arrayList.add(Integer.valueOf(i4));
            }
        }
        int i5 = 14;
        int i6 = 16;
        if (arrayList.isEmpty()) {
            LinearLayout linearLayout = new LinearLayout(contextRequireContext);
            linearLayout.setOrientation(1);
            int i7 = (int) (20 * f3);
            linearLayout.setPadding(i7, i7, i7, i7);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(14 * f3);
            gradientDrawable.setColor(Color.parseColor("#18181f"));
            linearLayout.setBackground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = (int) (16 * f3);
            linearLayout.setLayoutParams(layoutParams);
            linearLayout.setGravity(17);
            TextView textView = new TextView(contextRequireContext);
            textView.setText("🎮");
            textView.setTextSize(28.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.bottomMargin = (int) (8 * f3);
            textView.setLayoutParams(layoutParams2);
            TextView textView2 = new TextView(contextRequireContext);
            textView2.setText(getString(com.minhub.gamehub.R.string.label_no_gamepad));
            textView2.setTextSize(13.0f);
            textView2.setTextColor(Color.parseColor("#F0F0F6"));
            textView2.setTypeface(null, 1);
            textView2.setGravity(17);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams3.bottomMargin = (int) (4 * f3);
            textView2.setLayoutParams(layoutParams3);
            TextView textView3 = new TextView(contextRequireContext);
            textView3.setText(getString(com.minhub.gamehub.R.string.hint_connect_gamepad));
            textView3.setTextSize(11.0f);
            textView3.setTextColor(Color.parseColor("#8888A4"));
            textView3.setGravity(17);
            textView3.setLineSpacing(0.0f, 1.6f);
            linearLayout.addView(textView);
            linearLayout.addView(textView2);
            linearLayout.addView(textView3);
            p058w1.c cVar2 = this.b;
            Intrinsics.checkNotNull(cVar2);
            cVar2.f5649d.addView(linearLayout);
            return;
        }
        int size = arrayList.size();
        int i8 = 0;
        while (i8 < size) {
            Object obj = arrayList.get(i8);
            i8++;
            int iIntValue = ((Number) obj).intValue();
            InputDevice device2 = InputDevice.getDevice(iIntValue);
            if (device2 == null) {
                f = f3;
                z2 = true;
            } else {
                LinearLayout linearLayout2 = new LinearLayout(contextRequireContext);
                linearLayout2.setOrientation(i3);
                linearLayout2.setGravity(i6);
                float f4 = i5 * f3;
                int i9 = (int) f4;
                linearLayout2.setPadding(i9, i9, (int) (i6 * f3), i9);
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setShape(i3);
                gradientDrawable2.setCornerRadius(f4);
                gradientDrawable2.setColor(Color.parseColor("#18181f"));
                linearLayout2.setBackground(gradientDrawable2);
                LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams4.bottomMargin = (int) (10 * f3);
                linearLayout2.setLayoutParams(layoutParams4);
                TextView textView4 = new TextView(contextRequireContext);
                textView4.setText("🎮");
                textView4.setTextSize(22.0f);
                textView4.setGravity(17);
                int i10 = (int) (44 * f3);
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(i10, i10);
                layoutParams5.setMarginEnd(i9);
                textView4.setLayoutParams(layoutParams5);
                LinearLayout linearLayout3 = new LinearLayout(contextRequireContext);
                linearLayout3.setOrientation(1);
                f = f3;
                linearLayout3.setLayoutParams(new LinearLayout.LayoutParams(i3, -2, 1.0f));
                TextView textView5 = new TextView(contextRequireContext);
                String name = device2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                textView5.setText(StringsKt.take(name, 40));
                textView5.setTextSize(13.0f);
                textView5.setTextColor(Color.parseColor("#F0F0F6"));
                textView5.setTypeface(null, 1);
                LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(-2, -2);
                layoutParams6.bottomMargin = (int) (2 * f);
                textView5.setLayoutParams(layoutParams6);
                TextView textView6 = new TextView(contextRequireContext);
                textView6.setText("Đã kết nối · ID " + iIntValue);
                textView6.setTextSize(10.0f);
                textView6.setTextColor(Color.parseColor("#45455a"));
                linearLayout3.addView(textView5);
                linearLayout3.addView(textView6);
                View frameLayout = new FrameLayout(contextRequireContext);
                int i11 = (int) (8 * f);
                frameLayout.setLayoutParams(new LinearLayout.LayoutParams(i11, i11));
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                z2 = true;
                gradientDrawable3.setShape(1);
                gradientDrawable3.setColor(Color.parseColor("#22C55E"));
                frameLayout.setBackground(gradientDrawable3);
                linearLayout2.addView(textView4);
                linearLayout2.addView(linearLayout3);
                linearLayout2.addView(frameLayout);
                p058w1.c cVar3 = this.b;
                Intrinsics.checkNotNull(cVar3);
                cVar3.f5649d.addView(linearLayout2);
            }
            f3 = f;
            i3 = 0;
            i5 = 14;
            i6 = 16;
        }
    }

    public final void e() {
        ArrayList arrayList = this.f889d;
        arrayList.clear();
        B1.z zVar = this.f888c;
        if (zVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
            zVar = null;
        }
        B1.z zVar2 = this.f888c;
        if (zVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
            zVar2 = null;
        }
        LinkedHashMap mapping = zVar2.c();
        zVar.getClass();
        Intrinsics.checkNotNullParameter(mapping, "mapping");
        Set setEntrySet = mapping.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "<get-entries>(...)");
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setEntrySet, 10));
        int i3 = 0;
        int i4 = 0;
        for (Object obj : setEntrySet) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Map.Entry entry = (Map.Entry) obj;
            Intrinsics.checkNotNull(entry);
            Object key = entry.getKey();
            Intrinsics.checkNotNullExpressionValue(key, "component1(...)");
            Object value = entry.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "component2(...)");
            arrayList2.add(new B1.A(E.b.i(i5, "row_"), (String) value, (String) key));
            i4 = i5;
        }
        CollectionsKt__MutableCollectionsKt.addAll(arrayList, arrayList2);
        ArrayList arrayList3 = new ArrayList();
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj2 = arrayList.get(i6);
            i6++;
            Integer intOrNull = StringsKt.toIntOrNull(StringsKt__StringsKt.removePrefix(((B1.A) obj2).f299a, (CharSequence) "row_"));
            if (intOrNull != null) {
                arrayList3.add(intOrNull);
            }
        }
        Integer num = (Integer) CollectionsKt___CollectionsKt.maxOrNull((Iterable) arrayList3);
        this.f = num != null ? 1 + num.intValue() : 1;
        if (!arrayList.isEmpty()) {
            int size2 = arrayList.size();
            while (i3 < size2) {
                Object obj3 = arrayList.get(i3);
                i3++;
                if (Intrinsics.areEqual(((B1.A) obj3).f299a, this.f890e)) {
                    return;
                }
            }
        }
        this.f890e = null;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0092  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void f() {
        String string;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        float f = getResources().getDisplayMetrics().density;
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        ((LinearLayout) cVar.f5648c).removeAllViews();
        ArrayList arrayList = this.f889d;
        int size = arrayList.size();
        final int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            int i6 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            final B1.A a3 = (B1.A) obj;
            LinearLayout linearLayout = new LinearLayout(contextRequireContext);
            linearLayout.setOrientation(i3);
            linearLayout.setGravity(16);
            float f3 = 10 * f;
            int i7 = (int) f3;
            linearLayout.setPadding(i7, i7, i7, i7);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(i3);
            gradientDrawable.setCornerRadius(f3);
            gradientDrawable.setColor(Color.parseColor("#151821"));
            linearLayout.setBackground(gradientDrawable);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i4 > 0) {
                layoutParams.topMargin = (int) (8 * f);
            }
            linearLayout.setLayoutParams(layoutParams);
            String string2 = getString(com.minhub.gamehub.R.string.label_keyboard_key);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String str = a3.b;
            if (str != null) {
                List list = B1.y.f378a;
                string = B1.y.b(str);
                if (string == null) {
                    string = getString(com.minhub.gamehub.R.string.hint_select_keyboard_key);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                }
            } else {
                string = getString(com.minhub.gamehub.R.string.hint_select_keyboard_key);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
            int i8 = (int) (8 * f);
            View viewB = b(string2, string, i8, new Function0(this) { // from class: E1.f

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ C0131g f886c;

                {
                    this.f886c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    C0130f c0130f = this;
                    switch (i3) {
                        case 0:
                            C0131g c0131g = c0130f.f886c;
                            H0.o oVar = new H0.o(c0131g.requireContext());
                            View viewInflate = c0131g.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.sheet_gamepad_keyboard_picker, (ViewGroup) null);
                            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(com.minhub.gamehub.R.id.container_keyboard_options);
                            List list2 = B1.y.f378a;
                            int i9 = (int) (8 * c0131g.getResources().getDisplayMetrics().density);
                            boolean z2 = false;
                            int i10 = 0;
                            for (Object obj2 : list2) {
                                int i11 = i10 + 1;
                                if (i10 < 0) {
                                    CollectionsKt.throwIndexOverflow();
                                }
                                B1.C c3 = (B1.C) obj2;
                                View viewInflate2 = c0131g.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.item_gamepad_keyboard_option, linearLayout2, z2);
                                TextView textView = (TextView) viewInflate2.findViewById(com.minhub.gamehub.R.id.tv_option_label);
                                TextView textView2 = (TextView) viewInflate2.findViewById(com.minhub.gamehub.R.id.tv_option_check);
                                B1.A a4 = a3;
                                String str2 = a4.b;
                                String optionValue = c3.f302a;
                                Intrinsics.checkNotNullParameter(optionValue, "optionValue");
                                boolean zAreEqual = Intrinsics.areEqual(str2, optionValue);
                                textView.setText(c3.b);
                                viewInflate2.setBackgroundResource(zAreEqual ? com.minhub.gamehub.R.drawable.bg_gamepad_sheet_row_selected : com.minhub.gamehub.R.drawable.bg_gamepad_sheet_row);
                                textView2.setVisibility(zAreEqual ? 0 : 8);
                                viewInflate2.setOnClickListener(new G0(c0131g, a4, c3, oVar, 1));
                                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                                if (i10 > 0) {
                                    layoutParams2.topMargin = i9;
                                }
                                Unit unit = Unit.INSTANCE;
                                linearLayout2.addView(viewInflate2, layoutParams2);
                                c0130f = this;
                                i10 = i11;
                                z2 = false;
                            }
                            Intrinsics.checkNotNull(viewInflate);
                            C0131g.g(oVar, viewInflate);
                            oVar.show();
                            break;
                        default:
                            String str3 = a3.f299a;
                            C0131g c0131g2 = c0130f.f886c;
                            c0131g2.f890e = str3;
                            c0131g2.i();
                            c0131g2.f();
                            p058w1.c cVar2 = c0131g2.b;
                            Intrinsics.checkNotNull(cVar2);
                            ((ScrollView) cVar2.f5651h).requestFocus();
                            break;
                    }
                    return Unit.INSTANCE;
                }
            });
            String string3 = getString(com.minhub.gamehub.R.string.label_gamepad_button);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            String string4 = a3.f300c;
            if (string4 != null) {
                switch (string4.hashCode()) {
                    case -1810353066:
                        if (string4.equals("KEYCODE_BUTTON_SELECT")) {
                            string4 = "Select";
                        }
                        break;
                    case -1721778389:
                        if (string4.equals("DPAD_UP")) {
                            string4 = "D-pad Up";
                        }
                        break;
                    case -1443435096:
                        if (string4.equals("KEYCODE_BUTTON_START")) {
                            string4 = "Start";
                        }
                        break;
                    case -1067127502:
                        if (string4.equals("DPAD_DOWN")) {
                            string4 = "D-pad Down";
                        }
                        break;
                    case -1066899305:
                        if (string4.equals("DPAD_LEFT")) {
                            string4 = "D-pad Left";
                        }
                        break;
                    case -575286849:
                        if (string4.equals("KEYCODE_BUTTON_L1")) {
                            string4 = "L1";
                        }
                        break;
                    case -575286663:
                        if (string4.equals("KEYCODE_BUTTON_R1")) {
                            string4 = "R1";
                        }
                        break;
                    case -157104985:
                        if (string4.equals("KEYCODE_BUTTON_A")) {
                            string4 = "A";
                        }
                        break;
                    case -157104984:
                        if (string4.equals("KEYCODE_BUTTON_B")) {
                            string4 = "B";
                        }
                        break;
                    case -157104962:
                        if (string4.equals("KEYCODE_BUTTON_X")) {
                            string4 = "X";
                        }
                        break;
                    case -157104961:
                        if (string4.equals("KEYCODE_BUTTON_Y")) {
                            string4 = "Y";
                        }
                        break;
                    case 1291520876:
                        if (string4.equals("DPAD_RIGHT")) {
                            string4 = "D-pad Right";
                        }
                        break;
                }
            } else if (Intrinsics.areEqual(this.f890e, a3.f299a)) {
                string4 = getString(com.minhub.gamehub.R.string.hint_press_gamepad_button);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            } else {
                string4 = getString(com.minhub.gamehub.R.string.label_unassigned);
                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            }
            final int i9 = 1;
            View viewB2 = b(string3, string4, i8, new Function0(this) { // from class: E1.f

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ C0131g f886c;

                {
                    this.f886c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    C0130f c0130f = this;
                    switch (i9) {
                        case 0:
                            C0131g c0131g = c0130f.f886c;
                            H0.o oVar = new H0.o(c0131g.requireContext());
                            View viewInflate = c0131g.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.sheet_gamepad_keyboard_picker, (ViewGroup) null);
                            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(com.minhub.gamehub.R.id.container_keyboard_options);
                            List list2 = B1.y.f378a;
                            int i10 = (int) (8 * c0131g.getResources().getDisplayMetrics().density);
                            boolean z2 = false;
                            int i11 = 0;
                            for (Object obj2 : list2) {
                                int i12 = i11 + 1;
                                if (i11 < 0) {
                                    CollectionsKt.throwIndexOverflow();
                                }
                                B1.C c3 = (B1.C) obj2;
                                View viewInflate2 = c0131g.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.item_gamepad_keyboard_option, linearLayout2, z2);
                                TextView textView = (TextView) viewInflate2.findViewById(com.minhub.gamehub.R.id.tv_option_label);
                                TextView textView2 = (TextView) viewInflate2.findViewById(com.minhub.gamehub.R.id.tv_option_check);
                                B1.A a4 = a3;
                                String str2 = a4.b;
                                String optionValue = c3.f302a;
                                Intrinsics.checkNotNullParameter(optionValue, "optionValue");
                                boolean zAreEqual = Intrinsics.areEqual(str2, optionValue);
                                textView.setText(c3.b);
                                viewInflate2.setBackgroundResource(zAreEqual ? com.minhub.gamehub.R.drawable.bg_gamepad_sheet_row_selected : com.minhub.gamehub.R.drawable.bg_gamepad_sheet_row);
                                textView2.setVisibility(zAreEqual ? 0 : 8);
                                viewInflate2.setOnClickListener(new G0(c0131g, a4, c3, oVar, 1));
                                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                                if (i11 > 0) {
                                    layoutParams2.topMargin = i10;
                                }
                                Unit unit = Unit.INSTANCE;
                                linearLayout2.addView(viewInflate2, layoutParams2);
                                c0130f = this;
                                i11 = i12;
                                z2 = false;
                            }
                            Intrinsics.checkNotNull(viewInflate);
                            C0131g.g(oVar, viewInflate);
                            oVar.show();
                            break;
                        default:
                            String str3 = a3.f299a;
                            C0131g c0131g2 = c0130f.f886c;
                            c0131g2.f890e = str3;
                            c0131g2.i();
                            c0131g2.f();
                            p058w1.c cVar2 = c0131g2.b;
                            Intrinsics.checkNotNull(cVar2);
                            ((ScrollView) cVar2.f5651h).requestFocus();
                            break;
                    }
                    return Unit.INSTANCE;
                }
            });
            TextView textView = new TextView(contextRequireContext);
            textView.setGravity(17);
            textView.setMinWidth((int) (72 * f));
            int i10 = (int) (12 * f);
            textView.setPadding(i10, i10, i10, i10);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(0);
            gradientDrawable2.setCornerRadius(f3);
            gradientDrawable2.setColor(Color.parseColor("#212734"));
            textView.setBackground(gradientDrawable2);
            textView.setTextColor(Color.parseColor("#F0F0F6"));
            textView.setTextSize(11.0f);
            textView.setText(getString(com.minhub.gamehub.R.string.label_delete_mapping_row));
            textView.setOnClickListener(new ViewOnClickListenerC0075j(17, this, a3));
            linearLayout.addView(viewB);
            linearLayout.addView(viewB2);
            linearLayout.addView(textView);
            p058w1.c cVar2 = this.b;
            Intrinsics.checkNotNull(cVar2);
            ((LinearLayout) cVar2.f5648c).addView(linearLayout);
            i4 = i6;
            i3 = 0;
        }
    }

    public final void h() {
        B1.z zVar = this.f888c;
        if (zVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mappingManager");
            zVar = null;
        }
        List listD = zVar.d();
        if (listD.isEmpty()) {
            Toast.makeText(requireContext(), getString(com.minhub.gamehub.R.string.toast_no_saved_layouts), 0).show();
            return;
        }
        H0.o oVar = new H0.o(requireContext());
        View viewInflate = getLayoutInflater().inflate(com.minhub.gamehub.R.layout.sheet_gamepad_load_layout, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(com.minhub.gamehub.R.id.container_layout_options);
        View viewFindViewById = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_cancel);
        int i3 = (int) (8 * getResources().getDisplayMetrics().density);
        int i4 = 0;
        for (Object obj : listD) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            B1.B b = (B1.B) obj;
            View viewInflate2 = getLayoutInflater().inflate(com.minhub.gamehub.R.layout.item_gamepad_layout_option, (ViewGroup) linearLayout, false);
            TextView textView = (TextView) viewInflate2.findViewById(com.minhub.gamehub.R.id.tv_option_label);
            TextView textView2 = (TextView) viewInflate2.findViewById(com.minhub.gamehub.R.id.btn_delete_option);
            textView.setText(b.f301a);
            viewInflate2.setOnClickListener(new ViewOnClickListenerC0126b(this, b, oVar));
            textView2.setOnClickListener(new ViewOnClickListenerC0126b(this, oVar, b));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            if (i4 > 0) {
                layoutParams.topMargin = i3;
            }
            Unit unit = Unit.INSTANCE;
            linearLayout.addView(viewInflate2, layoutParams);
            i4 = i5;
        }
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0110v(oVar, 4));
        Intrinsics.checkNotNull(viewInflate);
        g(oVar, viewInflate);
        oVar.show();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0040 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    /* JADX WARN: Code duplicated, block: B:15:0x004a  */
    /* JADX WARN: Code duplicated, block: B:21:0x0067  */
    public final void i() {
        Object obj;
        String str;
        String string;
        ArrayList arrayList = this.f889d;
        int size = arrayList.size();
        int i3 = 0;
        do {
            if (i3 >= size) {
                obj = null;
                break;
            } else {
                obj = arrayList.get(i3);
                i3++;
            }
        } while (!Intrinsics.areEqual(((B1.A) obj).f299a, this.f890e));
        B1.A a3 = (B1.A) obj;
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        TextView textView = cVar.f5650e;
        if (a3 == null) {
            p058w1.c cVar2 = this.b;
            Intrinsics.checkNotNull(cVar2);
            if (!((Switch) cVar2.f5654k).isChecked()) {
                string = getString(com.minhub.gamehub.R.string.hint_physical_gamepad_off_mapping_still_editable);
            } else if (a3 == null) {
                string = getString(com.minhub.gamehub.R.string.hint_tap_mapping_row);
            } else {
                str = a3.b;
                if (str != null || StringsKt.isBlank(str)) {
                    string = getString(com.minhub.gamehub.R.string.hint_press_gamepad_button);
                } else {
                    List list = B1.y.f378a;
                    string = getString(com.minhub.gamehub.R.string.hint_press_gamepad_button_for_row, B1.y.b(str));
                }
            }
        } else if (a3 == null) {
            string = getString(com.minhub.gamehub.R.string.hint_tap_mapping_row);
        } else {
            str = a3.b;
            if (str != null) {
                string = getString(com.minhub.gamehub.R.string.hint_press_gamepad_button);
            } else {
                string = getString(com.minhub.gamehub.R.string.hint_press_gamepad_button);
            }
        }
        textView.setText(string);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(com.minhub.gamehub.R.layout.fragment_settings_gamepad, viewGroup, false);
        int i4 = com.minhub.gamehub.R.id.btn_add_mapping_row;
        Button button = (Button) viewInflate.findViewById(com.minhub.gamehub.R.id.btn_add_mapping_row);
        if (button != null) {
            i4 = com.minhub.gamehub.R.id.btn_load_layout;
            Button button2 = (Button) viewInflate.findViewById(com.minhub.gamehub.R.id.btn_load_layout);
            if (button2 != null) {
                i4 = com.minhub.gamehub.R.id.btn_reset_mapping;
                Button button3 = (Button) viewInflate.findViewById(com.minhub.gamehub.R.id.btn_reset_mapping);
                if (button3 != null) {
                    i4 = com.minhub.gamehub.R.id.btn_save_layout;
                    Button button4 = (Button) viewInflate.findViewById(com.minhub.gamehub.R.id.btn_save_layout);
                    if (button4 != null) {
                        i4 = com.minhub.gamehub.R.id.container_gamepads;
                        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(com.minhub.gamehub.R.id.container_gamepads);
                        if (linearLayout != null) {
                            i4 = com.minhub.gamehub.R.id.container_mapping_rows;
                            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(com.minhub.gamehub.R.id.container_mapping_rows);
                            if (linearLayout2 != null) {
                                i4 = com.minhub.gamehub.R.id.layout_mapping_card;
                                if (((LinearLayout) viewInflate.findViewById(com.minhub.gamehub.R.id.layout_mapping_card)) != null) {
                                    i4 = com.minhub.gamehub.R.id.switch_gamepad_auto_map;
                                    Switch r8 = (Switch) viewInflate.findViewById(com.minhub.gamehub.R.id.switch_gamepad_auto_map);
                                    if (r8 != null) {
                                        i4 = com.minhub.gamehub.R.id.switch_gamepad_vibration;
                                        Switch r9 = (Switch) viewInflate.findViewById(com.minhub.gamehub.R.id.switch_gamepad_vibration);
                                        if (r9 != null) {
                                            i4 = com.minhub.gamehub.R.id.switch_physical_gamepad;
                                            Switch r10 = (Switch) viewInflate.findViewById(com.minhub.gamehub.R.id.switch_physical_gamepad);
                                            if (r10 != null) {
                                                i4 = com.minhub.gamehub.R.id.tv_mapping_prompt;
                                                TextView textView = (TextView) viewInflate.findViewById(com.minhub.gamehub.R.id.tv_mapping_prompt);
                                                if (textView != null) {
                                                    ScrollView scrollView = (ScrollView) viewInflate;
                                                    p058w1.c cVar = new p058w1.c(scrollView, button, button2, button3, button4, linearLayout, linearLayout2, r8, r9, r10, textView);
                                                    this.b = cVar;
                                                    Intrinsics.checkNotNull(cVar);
                                                    Intrinsics.checkNotNullExpressionValue(scrollView, "getRoot(...)");
                                                    return scrollView;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        ((ScrollView) cVar.f5651h).requestFocus();
        d();
        e();
        f();
        i();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        Intrinsics.checkNotNullParameter(v2, "v");
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this.f888c = new B1.z(contextRequireContext);
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        ((Switch) cVar.f5654k).setChecked(S1.d.e(contextRequireContext));
        p058w1.c cVar2 = this.b;
        Intrinsics.checkNotNull(cVar2);
        Switch r6 = (Switch) cVar2.f5653j;
        Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
        r6.setChecked(S1.d.s(contextRequireContext).getBoolean("gamepad_vibration", true));
        p058w1.c cVar3 = this.b;
        Intrinsics.checkNotNull(cVar3);
        Switch r7 = (Switch) cVar3.f5652i;
        Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
        r7.setChecked(contextRequireContext.getSharedPreferences("minhub_prefs", 0).getBoolean("gamepad_automap", true));
        p058w1.c cVar4 = this.b;
        Intrinsics.checkNotNull(cVar4);
        ((Switch) cVar4.f5654k).setOnCheckedChangeListener(new B1.f(1, contextRequireContext, this));
        p058w1.c cVar5 = this.b;
        Intrinsics.checkNotNull(cVar5);
        ((Switch) cVar5.f5653j).setOnCheckedChangeListener(new C0127c(contextRequireContext, 0));
        p058w1.c cVar6 = this.b;
        Intrinsics.checkNotNull(cVar6);
        ((Switch) cVar6.f5652i).setOnCheckedChangeListener(new C0127c(contextRequireContext, 1));
        p058w1.c cVar7 = this.b;
        Intrinsics.checkNotNull(cVar7);
        final int i3 = 0;
        ((Button) cVar7.f5647a).setOnClickListener(new View.OnClickListener(this) { // from class: E1.d

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ C0131g f885c;

            {
                this.f885c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        C0131g c0131g = this.f885c;
                        c0131g.f889d.add(new B1.A(E.b.i(c0131g.f, "row_"), null, null));
                        c0131g.f++;
                        c0131g.f();
                        c0131g.i();
                        break;
                    case 1:
                        C0131g c0131g2 = this.f885c;
                        c0131g2.c();
                        H0.o oVar = new H0.o(c0131g2.requireContext());
                        View viewInflate = c0131g2.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.sheet_gamepad_save_layout, (ViewGroup) null);
                        EditText editText = (EditText) viewInflate.findViewById(com.minhub.gamehub.R.id.et_layout_name);
                        TextView textView = (TextView) viewInflate.findViewById(com.minhub.gamehub.R.id.tv_layout_error);
                        View viewFindViewById = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_cancel);
                        View viewFindViewById2 = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_save);
                        editText.addTextChangedListener(new C0056c1(1, textView));
                        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0110v(oVar, 3));
                        viewFindViewById2.setOnClickListener(new G0(editText, textView, c0131g2, oVar, 2));
                        Intrinsics.checkNotNull(viewInflate);
                        C0131g.g(oVar, viewInflate);
                        oVar.show();
                        break;
                    default:
                        this.f885c.h();
                        break;
                }
            }
        });
        p058w1.c cVar8 = this.b;
        Intrinsics.checkNotNull(cVar8);
        final int i4 = 1;
        ((Button) cVar8.g).setOnClickListener(new View.OnClickListener(this) { // from class: E1.d

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ C0131g f885c;

            {
                this.f885c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        C0131g c0131g = this.f885c;
                        c0131g.f889d.add(new B1.A(E.b.i(c0131g.f, "row_"), null, null));
                        c0131g.f++;
                        c0131g.f();
                        c0131g.i();
                        break;
                    case 1:
                        C0131g c0131g2 = this.f885c;
                        c0131g2.c();
                        H0.o oVar = new H0.o(c0131g2.requireContext());
                        View viewInflate = c0131g2.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.sheet_gamepad_save_layout, (ViewGroup) null);
                        EditText editText = (EditText) viewInflate.findViewById(com.minhub.gamehub.R.id.et_layout_name);
                        TextView textView = (TextView) viewInflate.findViewById(com.minhub.gamehub.R.id.tv_layout_error);
                        View viewFindViewById = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_cancel);
                        View viewFindViewById2 = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_save);
                        editText.addTextChangedListener(new C0056c1(1, textView));
                        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0110v(oVar, 3));
                        viewFindViewById2.setOnClickListener(new G0(editText, textView, c0131g2, oVar, 2));
                        Intrinsics.checkNotNull(viewInflate);
                        C0131g.g(oVar, viewInflate);
                        oVar.show();
                        break;
                    default:
                        this.f885c.h();
                        break;
                }
            }
        });
        p058w1.c cVar9 = this.b;
        Intrinsics.checkNotNull(cVar9);
        final int i5 = 2;
        ((Button) cVar9.b).setOnClickListener(new View.OnClickListener(this) { // from class: E1.d

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ C0131g f885c;

            {
                this.f885c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        C0131g c0131g = this.f885c;
                        c0131g.f889d.add(new B1.A(E.b.i(c0131g.f, "row_"), null, null));
                        c0131g.f++;
                        c0131g.f();
                        c0131g.i();
                        break;
                    case 1:
                        C0131g c0131g2 = this.f885c;
                        c0131g2.c();
                        H0.o oVar = new H0.o(c0131g2.requireContext());
                        View viewInflate = c0131g2.getLayoutInflater().inflate(com.minhub.gamehub.R.layout.sheet_gamepad_save_layout, (ViewGroup) null);
                        EditText editText = (EditText) viewInflate.findViewById(com.minhub.gamehub.R.id.et_layout_name);
                        TextView textView = (TextView) viewInflate.findViewById(com.minhub.gamehub.R.id.tv_layout_error);
                        View viewFindViewById = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_cancel);
                        View viewFindViewById2 = viewInflate.findViewById(com.minhub.gamehub.R.id.btn_save);
                        editText.addTextChangedListener(new C0056c1(1, textView));
                        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0110v(oVar, 3));
                        viewFindViewById2.setOnClickListener(new G0(editText, textView, c0131g2, oVar, 2));
                        Intrinsics.checkNotNull(viewInflate);
                        C0131g.g(oVar, viewInflate);
                        oVar.show();
                        break;
                    default:
                        this.f885c.h();
                        break;
                }
            }
        });
        p058w1.c cVar10 = this.b;
        Intrinsics.checkNotNull(cVar10);
        ((Button) cVar10.f).setOnClickListener(new ViewOnClickListenerC0075j(18, this, contextRequireContext));
        p058w1.c cVar11 = this.b;
        Intrinsics.checkNotNull(cVar11);
        ((ScrollView) cVar11.f5651h).setFocusableInTouchMode(true);
        p058w1.c cVar12 = this.b;
        Intrinsics.checkNotNull(cVar12);
        ((ScrollView) cVar12.f5651h).requestFocus();
        p058w1.c cVar13 = this.b;
        Intrinsics.checkNotNull(cVar13);
        ((ScrollView) cVar13.f5651h).setOnKeyListener(new View.OnKeyListener() { // from class: E1.e
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
                String str;
                C0131g c0131g = this.b;
                String str2 = c0131g.f890e;
                if (str2 != null && keyEvent.getAction() == 0) {
                    B1.z zVar = null;
                    if (i6 == 96) {
                        str = "KEYCODE_BUTTON_A";
                    } else if (i6 == 97) {
                        str = "KEYCODE_BUTTON_B";
                    } else if (i6 == 99) {
                        str = "KEYCODE_BUTTON_X";
                    } else if (i6 == 100) {
                        str = "KEYCODE_BUTTON_Y";
                    } else if (i6 == 102) {
                        str = "KEYCODE_BUTTON_L1";
                    } else if (i6 == 103) {
                        str = "KEYCODE_BUTTON_R1";
                    } else if (i6 == 108) {
                        str = "KEYCODE_BUTTON_START";
                    } else if (i6 != 109) {
                        switch (i6) {
                            case 19:
                                str = "DPAD_UP";
                                break;
                            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                                str = "DPAD_DOWN";
                                break;
                            case 21:
                                str = "DPAD_LEFT";
                                break;
                            case 22:
                                str = "DPAD_RIGHT";
                                break;
                            default:
                                str = null;
                                break;
                        }
                    } else {
                        str = "KEYCODE_BUTTON_SELECT";
                    }
                    if (str != null) {
                        ArrayList arrayList = c0131g.f889d;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                        int size = arrayList.size();
                        int i7 = 0;
                        while (i7 < size) {
                            Object obj = arrayList.get(i7);
                            i7++;
                            B1.A a3 = (B1.A) obj;
                            if (Intrinsics.areEqual(a3.f299a, str2)) {
                                a3 = B1.A.a(a3, null, str, 3);
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
                        c0131g.f890e = str2;
                        c0131g.c();
                        c0131g.f();
                        c0131g.i();
                        Toast.makeText(c0131g.requireContext(), c0131g.getString(com.minhub.gamehub.R.string.toast_mapping_saved), 0).show();
                        return true;
                    }
                }
                return false;
            }
        });
        d();
        e();
        f();
        i();
    }
}
