package E1;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.material.slider.Slider;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LE1/B;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTranslationSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/TranslationSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,211:1\n1563#2:212\n1634#2,3:213\n1563#2:216\n1634#2,3:217\n1869#2,2:220\n1869#2,2:222\n257#3,2:224\n*S KotlinDebug\n*F\n+ 1 TranslationSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/TranslationSettingsFragment\n*L\n51#1:212\n51#1:213,3\n52#1:216\n52#1:217,3\n127#1:220,2\n167#1:222,2\n206#1:224,2\n*E\n"})
public final class B extends Fragment {
    public p058w1.j b;

    public final void b() {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        float f = getResources().getDisplayMetrics().density;
        int i3 = (int) (32 * f);
        float f3 = 8 * f;
        int i4 = (int) f3;
        p058w1.j jVar = this.b;
        Intrinsics.checkNotNull(jVar);
        jVar.f5820a.removeAllViews();
        Iterator it = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("#FFFFFF", contextRequireContext.getString(R.string.color_white)), TuplesKt.to("#FFFF00", contextRequireContext.getString(R.string.color_yellow)), TuplesKt.to("#00FF00", contextRequireContext.getString(R.string.color_green)), TuplesKt.to("#EF4444", contextRequireContext.getString(R.string.color_red)), TuplesKt.to("#00BFFF", contextRequireContext.getString(R.string.color_blue)), TuplesKt.to("#FFA500", contextRequireContext.getString(R.string.color_orange))}).iterator();
        while (it.hasNext()) {
            Object objComponent1 = ((Pair) it.next()).component1();
            Intrinsics.checkNotNullExpressionValue(objComponent1, "component1(...)");
            String str = (String) objComponent1;
            boolean zAreEqual = Intrinsics.areEqual(S1.d.h(contextRequireContext), str);
            View frameLayout = new FrameLayout(contextRequireContext);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i3);
            layoutParams.setMarginEnd(i4);
            frameLayout.setLayoutParams(layoutParams);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(f3);
            gradientDrawable.setColor(Color.parseColor(str));
            if (zAreEqual) {
                gradientDrawable.setStroke((int) (3 * f), -1);
            } else {
                gradientDrawable.setStroke((int) (3 * f), Color.parseColor("#26FFFFFF"));
            }
            frameLayout.setBackground(gradientDrawable);
            frameLayout.setOnClickListener(new z(contextRequireContext, str, this, 0));
            p058w1.j jVar2 = this.b;
            Intrinsics.checkNotNull(jVar2);
            jVar2.f5820a.addView(frameLayout);
        }
    }

    public final void c() {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        float f = getResources().getDisplayMetrics().density;
        float f3 = 10 * f;
        int i3 = (int) (8 * f);
        p058w1.j jVar = this.b;
        Intrinsics.checkNotNull(jVar);
        jVar.b.removeAllViews();
        for (Pair pair : CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("sub_film", contextRequireContext.getString(R.string.trans_style_sub_film)), TuplesKt.to("trans_only", contextRequireContext.getString(R.string.trans_style_trans_only))})) {
            Object objComponent1 = pair.component1();
            Intrinsics.checkNotNullExpressionValue(objComponent1, "component1(...)");
            String str = (String) objComponent1;
            String str2 = (String) pair.component2();
            Set set = S1.d.f2060a;
            Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
            String string = contextRequireContext.getSharedPreferences("minhub_prefs", 0).getString("trans_style", "sub_film");
            if (string == null) {
                string = "sub_film";
            }
            boolean zAreEqual = Intrinsics.areEqual(string, str);
            TextView textView = new TextView(contextRequireContext);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams.setMarginEnd(i3);
            textView.setLayoutParams(layoutParams);
            textView.setText(str2);
            textView.setGravity(17);
            textView.setTextSize(12.0f);
            int i4 = (int) (12 * f);
            int i5 = (int) f3;
            textView.setPadding(i4, i5, i4, i5);
            textView.setTextColor(zAreEqual ? -1 : Color.parseColor("#99FFFFFF"));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(f3);
            if (zAreEqual) {
                gradientDrawable.setColor(Color.parseColor("#26FFFFFF"));
                gradientDrawable.setStroke((int) (2 * f), -1);
            } else {
                gradientDrawable.setColor(Color.parseColor("#0DFFFFFF"));
                gradientDrawable.setStroke((int) (2 * f), Color.parseColor("#26FFFFFF"));
            }
            textView.setBackground(gradientDrawable);
            textView.setOnClickListener(new z(contextRequireContext, str, this, 1));
            p058w1.j jVar2 = this.b;
            Intrinsics.checkNotNull(jVar2);
            jVar2.b.addView(textView);
        }
    }

    public final void d() {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        p058w1.j jVar = this.b;
        Intrinsics.checkNotNull(jVar);
        jVar.f5826j.setText(S1.d.j(contextRequireContext) + "px");
        p058w1.j jVar2 = this.b;
        Intrinsics.checkNotNull(jVar2);
        jVar2.f5825i.setTextSize((float) S1.d.j(contextRequireContext));
        p058w1.j jVar3 = this.b;
        Intrinsics.checkNotNull(jVar3);
        jVar3.f5825i.setTextColor(Color.parseColor(S1.d.h(contextRequireContext)));
        p058w1.j jVar4 = this.b;
        Intrinsics.checkNotNull(jVar4);
        jVar4.f5825i.setTypeface(Typeface.create(S1.d.i(contextRequireContext), 0));
        String string = getString(R.string.trans_preview_text);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        p058w1.j jVar5 = this.b;
        Intrinsics.checkNotNull(jVar5);
        TextView textView = jVar5.f5825i;
        Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
        String string2 = contextRequireContext.getSharedPreferences("minhub_prefs", 0).getString("trans_style", "sub_film");
        if (string2 == null) {
            string2 = "sub_film";
        }
        if (!Intrinsics.areEqual(string2, "sub_film")) {
            string = StringsKt__StringsKt.substringAfter$default(string, "\n", (String) null, 2, (Object) null);
        }
        textView.setText(string);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(R.layout.fragment_settings_translation, viewGroup, false);
        int i4 = R.id.layout_color_picker;
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_color_picker);
        if (linearLayout != null) {
            i4 = R.id.layout_style_picker;
            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.layout_style_picker);
            if (linearLayout2 != null) {
                i4 = R.id.layout_trans_options;
                LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.layout_trans_options);
                if (linearLayout3 != null) {
                    i4 = R.id.slider_trans_size;
                    Slider slider = (Slider) viewInflate.findViewById(R.id.slider_trans_size);
                    if (slider != null) {
                        i4 = R.id.spinner_trans_font;
                        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spinner_trans_font);
                        if (spinner != null) {
                            i4 = R.id.spinner_trans_source;
                            Spinner spinner2 = (Spinner) viewInflate.findViewById(R.id.spinner_trans_source);
                            if (spinner2 != null) {
                                i4 = R.id.spinner_trans_target;
                                Spinner spinner3 = (Spinner) viewInflate.findViewById(R.id.spinner_trans_target);
                                if (spinner3 != null) {
                                    i4 = R.id.switch_translation;
                                    Switch r9 = (Switch) viewInflate.findViewById(R.id.switch_translation);
                                    if (r9 != null) {
                                        i4 = R.id.tv_trans_preview;
                                        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_trans_preview);
                                        if (textView != null) {
                                            i4 = R.id.tv_trans_size_label;
                                            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_trans_size_label);
                                            if (textView2 != null) {
                                                ScrollView scrollView = (ScrollView) viewInflate;
                                                p058w1.j jVar = new p058w1.j(scrollView, linearLayout, linearLayout2, linearLayout3, slider, spinner, spinner2, spinner3, r9, textView, textView2);
                                                this.b = jVar;
                                                Intrinsics.checkNotNull(jVar);
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        Intrinsics.checkNotNullParameter(v2, "v");
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        List list = S1.l.f2070a;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((S1.k) it.next()).f2069a);
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            String string = (String) obj;
            int iHashCode = string.hashCode();
            if (iHashCode != 3241) {
                if (iHashCode != 3355) {
                    if (iHashCode != 3383) {
                        if (iHashCode != 3428) {
                            if (iHashCode != 3763) {
                                if (iHashCode == 3886 && string.equals("zh")) {
                                    string = getString(R.string.lang_chinese);
                                }
                            } else if (string.equals("vi")) {
                                string = getString(R.string.lang_vietnamese);
                            }
                        } else if (string.equals("ko")) {
                            string = getString(R.string.lang_korean);
                        }
                    } else if (string.equals("ja")) {
                        string = getString(R.string.lang_japanese);
                    }
                } else if (string.equals("id")) {
                    string = getString(R.string.lang_indonesian);
                }
            } else if (string.equals("en")) {
                string = getString(R.string.lang_english);
            }
            arrayList2.add(string);
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R.layout.item_spinner, arrayList2);
        arrayAdapter.setDropDownViewResource(R.layout.item_spinner_dropdown);
        p058w1.j jVar = this.b;
        Intrinsics.checkNotNull(jVar);
        jVar.f5824h.setChecked(S1.d.m(contextRequireContext));
        p058w1.j jVar2 = this.b;
        Intrinsics.checkNotNull(jVar2);
        jVar2.f5824h.setOnCheckedChangeListener(new B1.f(2, contextRequireContext, this));
        boolean zM = S1.d.m(contextRequireContext);
        p058w1.j jVar3 = this.b;
        Intrinsics.checkNotNull(jVar3);
        LinearLayout layoutTransOptions = jVar3.f5821c;
        Intrinsics.checkNotNullExpressionValue(layoutTransOptions, "layoutTransOptions");
        layoutTransOptions.setVisibility(zM ? 0 : 8);
        p058w1.j jVar4 = this.b;
        Intrinsics.checkNotNull(jVar4);
        jVar4.f.setAdapter((SpinnerAdapter) arrayAdapter);
        p058w1.j jVar5 = this.b;
        Intrinsics.checkNotNull(jVar5);
        jVar5.f.setSelection(RangesKt.coerceAtLeast(arrayList.indexOf(S1.d.k(contextRequireContext)), 0));
        p058w1.j jVar6 = this.b;
        Intrinsics.checkNotNull(jVar6);
        jVar6.g.setAdapter((SpinnerAdapter) arrayAdapter);
        p058w1.j jVar7 = this.b;
        Intrinsics.checkNotNull(jVar7);
        jVar7.g.setSelection(RangesKt.coerceAtLeast(arrayList.indexOf(S1.d.l(contextRequireContext)), 0));
        c();
        String[] strArr = {"Noto Sans", "Roboto", "Arial", "Courier New", "Georgia", "Verdana"};
        p058w1.j jVar8 = this.b;
        Intrinsics.checkNotNull(jVar8);
        Spinner spinner = jVar8.f5823e;
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(requireContext(), R.layout.item_spinner, strArr);
        arrayAdapter2.setDropDownViewResource(R.layout.item_spinner_dropdown);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter2);
        p058w1.j jVar9 = this.b;
        Intrinsics.checkNotNull(jVar9);
        jVar9.f5823e.setSelection(RangesKt.coerceAtLeast(ArraysKt___ArraysKt.indexOf((String[]) strArr, S1.d.i(contextRequireContext)), 0));
        p058w1.j jVar10 = this.b;
        Intrinsics.checkNotNull(jVar10);
        jVar10.f5823e.setOnItemSelectedListener(new m(contextRequireContext, strArr, this));
        b();
        p058w1.j jVar11 = this.b;
        Intrinsics.checkNotNull(jVar11);
        jVar11.f5822d.setValue(S1.d.j(contextRequireContext));
        p058w1.j jVar12 = this.b;
        Intrinsics.checkNotNull(jVar12);
        jVar12.f5822d.f2548n.add(new y(contextRequireContext, this));
        p058w1.j jVar13 = this.b;
        Intrinsics.checkNotNull(jVar13);
        jVar13.f.setOnItemSelectedListener(new A(contextRequireContext, arrayList, 0));
        p058w1.j jVar14 = this.b;
        Intrinsics.checkNotNull(jVar14);
        jVar14.g.setOnItemSelectedListener(new A(contextRequireContext, arrayList, 1));
        d();
    }
}
