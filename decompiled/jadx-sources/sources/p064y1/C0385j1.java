package p064y1;

import A1.C0033n;
import I1.j;
import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.renpy.android.b;
import p061x1.a;
import p061x1.e;

/* JADX INFO: renamed from: y1.j1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0385j1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f6256a;
    public final GamepadOverlay b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f6257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final View f6258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f6259e;
    public final Function0 f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final j f6260h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public EditModeOverlay f6261i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6262j;

    public C0385j1(Activity context, GamepadOverlay gamepadOverlay, FrameLayout controlsHost, FrameLayout keyboardHost, FrameLayout editorHost, View arrangeToolbar, View arrangeProperties, Function0 onArrangeSave) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gamepadOverlay, "gamepadOverlay");
        Intrinsics.checkNotNullParameter(controlsHost, "controlsHost");
        Intrinsics.checkNotNullParameter(keyboardHost, "keyboardHost");
        Intrinsics.checkNotNullParameter(editorHost, "editorHost");
        Intrinsics.checkNotNullParameter(arrangeToolbar, "arrangeToolbar");
        Intrinsics.checkNotNullParameter(arrangeProperties, "arrangeProperties");
        Intrinsics.checkNotNullParameter(onArrangeSave, "onArrangeSave");
        this.f6256a = context;
        this.b = gamepadOverlay;
        this.f6257c = editorHost;
        this.f6258d = arrangeToolbar;
        this.f6259e = arrangeProperties;
        this.f = onArrangeSave;
        this.g = -1;
        this.f6260h = new j(keyboardHost, new C0370e1(this, 0), new C0033n(16, this));
    }

    public final void a(boolean z2) {
        C0403p1 c0403p1 = z2 ? new C0403p1(false, true) : new C0403p1(true, false);
        this.b.setVisibility(c0403p1.f6323a ? 0 : 4);
        boolean z3 = c0403p1.b;
        this.f6257c.setVisibility(z3 ? 0 : 8);
        EditModeOverlay editModeOverlay = this.f6261i;
        if (editModeOverlay != null) {
            editModeOverlay.setVisibility(z3 ? 0 : 8);
        }
    }

    public final List b() {
        GamepadOverlay gamepadOverlay = this.b;
        RangesKt.coerceAtLeast(gamepadOverlay.getWidth(), 1.0f);
        RangesKt.coerceAtLeast(gamepadOverlay.getHeight(), 1.0f);
        return e.a(this.f6256a, this.g, true);
    }

    public final int c(int i3) {
        return (int) (i3 * this.f6256a.getResources().getDisplayMetrics().density);
    }

    public final void d() {
        j jVar = this.f6260h;
        View view = (View) jVar.f;
        if (view != null) {
            view.setVisibility(8);
        }
        ((FrameLayout) jVar.b).setVisibility(8);
        EditModeOverlay editModeOverlay = this.f6261i;
        FrameLayout frameLayout = this.f6257c;
        if (editModeOverlay == null) {
            EditModeOverlay editModeOverlay2 = new EditModeOverlay(this.f6256a, null);
            editModeOverlay2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.removeAllViews();
            frameLayout.addView(editModeOverlay2);
            this.f6261i = editModeOverlay2;
            editModeOverlay2.setOnButtonSelected(new C0370e1(this, 1));
            editModeOverlay2.setOnLayoutChanged(new C0370e1(this, 2));
        }
        this.f6262j = false;
        EditModeOverlay editModeOverlay3 = this.f6261i;
        if (editModeOverlay3 != null) {
            editModeOverlay3.d(b());
        }
        a(true);
        View view2 = this.f6258d;
        view2.setVisibility(0);
        frameLayout.bringToFront();
        view2.bringToFront();
        View view3 = this.f6259e;
        view3.bringToFront();
        view3.findViewById(R.id.btn_shape_circle).setOnClickListener(new ViewOnClickListenerC0376g1(this, 0));
        view3.findViewById(R.id.btn_shape_rounded).setOnClickListener(new ViewOnClickListenerC0376g1(this, 1));
        view3.findViewById(R.id.btn_shape_rect).setOnClickListener(new ViewOnClickListenerC0376g1(this, 2));
        for (Map.Entry entry : MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.id.color_green), "#22C55E"), TuplesKt.to(Integer.valueOf(R.id.color_red), "#EF4444"), TuplesKt.to(Integer.valueOf(R.id.color_blue), "#3B82F6"), TuplesKt.to(Integer.valueOf(R.id.color_yellow), "#F59E0B"), TuplesKt.to(Integer.valueOf(R.id.color_purple), "#8B5CF6"), TuplesKt.to(Integer.valueOf(R.id.color_orange), "#F97316"), TuplesKt.to(Integer.valueOf(R.id.color_pink), "#EC4899"), TuplesKt.to(Integer.valueOf(R.id.color_gray), "#6B7280"), TuplesKt.to(Integer.valueOf(R.id.color_white), "#F5F5F5")).entrySet()) {
            view3.findViewById(((Number) entry.getKey()).intValue()).setOnClickListener(new M0(1, this, (String) entry.getValue()));
        }
        view3.findViewById(R.id.btn_close_customize).setOnClickListener(new ViewOnClickListenerC0376g1(this, 3));
        view3.findViewById(R.id.btn_toggle_customize).setOnClickListener(new ViewOnClickListenerC0376g1(this, 4));
        ((SeekBar) view3.findViewById(R.id.seek_size)).setOnSeekBarChangeListener(new C0379h1(this, 0));
        ((SeekBar) view3.findViewById(R.id.seek_opacity)).setOnSeekBarChangeListener(new C0379h1(this, 1));
        g();
    }

    public final void e(boolean z2) {
        if (z2) {
            List<a> currentConfigs = b();
            EditModeOverlay editModeOverlay = this.f6261i;
            List<a> editedVisibleConfigs = editModeOverlay != null ? editModeOverlay.getCurrentConfigs() : null;
            if (editedVisibleConfigs == null) {
                editedVisibleConfigs = CollectionsKt.emptyList();
            }
            Intrinsics.checkNotNullParameter(currentConfigs, "currentConfigs");
            Intrinsics.checkNotNullParameter(editedVisibleConfigs, "editedVisibleConfigs");
            if (!editedVisibleConfigs.isEmpty()) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(editedVisibleConfigs, 10)), 16));
                for (Object obj : editedVisibleConfigs) {
                    linkedHashMap.put(((a) obj).f5994a, obj);
                }
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(currentConfigs, 10));
                for (a aVar : currentConfigs) {
                    a aVar2 = (a) linkedHashMap.get(aVar.f5994a);
                    if (aVar2 != null) {
                        aVar = aVar2;
                    }
                    arrayList.add(aVar);
                }
                currentConfigs = arrayList;
            }
            e.b(this.f6256a, this.g, currentConfigs);
            this.b.d();
            this.f.invoke();
        }
        this.f6258d.setVisibility(8);
        this.f6259e.setVisibility(8);
        a(false);
    }

    public final boolean f() {
        j jVar = this.f6260h;
        View view = (View) jVar.f;
        if (view == null || view.getVisibility() != 0) {
            if (this.f6257c.getVisibility() != 0) {
                return false;
            }
            e(true);
            return true;
        }
        View view2 = (View) jVar.f;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        ((FrameLayout) jVar.b).setVisibility(8);
        return true;
    }

    public final void g() {
        EditModeOverlay editModeOverlay = this.f6261i;
        a selectedButtonConfig = editModeOverlay != null ? editModeOverlay.getSelectedButtonConfig() : null;
        boolean z2 = selectedButtonConfig != null;
        boolean z3 = this.f6262j;
        C0356a c0356a = z2 ? new C0356a(true, !z3, z3 ? "▴" : "▾") : new C0356a(false, false, "▾");
        View view = this.f6259e;
        TextView textView = (TextView) view.findViewById(R.id.tv_arrange_selected);
        TextView textView2 = (TextView) view.findViewById(R.id.btn_toggle_customize);
        View viewFindViewById = view.findViewById(R.id.layout_arrange_body);
        TextView textView3 = (TextView) view.findViewById(R.id.tv_size_label);
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.seek_size);
        TextView textView4 = (TextView) view.findViewById(R.id.tv_opacity_label);
        SeekBar seekBar2 = (SeekBar) view.findViewById(R.id.seek_opacity);
        View viewFindViewById2 = view.findViewById(R.id.btn_shape_circle);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
        View viewFindViewById3 = view.findViewById(R.id.btn_shape_rounded);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(...)");
        View viewFindViewById4 = view.findViewById(R.id.btn_shape_rect);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(...)");
        View viewFindViewById5 = view.findViewById(R.id.color_green);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(...)");
        View viewFindViewById6 = view.findViewById(R.id.color_red);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(...)");
        View viewFindViewById7 = view.findViewById(R.id.color_blue);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(...)");
        View viewFindViewById8 = view.findViewById(R.id.color_yellow);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(...)");
        View viewFindViewById9 = view.findViewById(R.id.color_purple);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(...)");
        View viewFindViewById10 = view.findViewById(R.id.color_orange);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById10, "findViewById(...)");
        View viewFindViewById11 = view.findViewById(R.id.color_pink);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById11, "findViewById(...)");
        View viewFindViewById12 = view.findViewById(R.id.color_gray);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById12, "findViewById(...)");
        View viewFindViewById13 = view.findViewById(R.id.color_white);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById13, "findViewById(...)");
        Intrinsics.checkNotNull(seekBar);
        Intrinsics.checkNotNull(seekBar2);
        List<View> listListOf = CollectionsKt.listOf((Object[]) new View[]{viewFindViewById2, viewFindViewById3, viewFindViewById4, viewFindViewById5, viewFindViewById6, viewFindViewById7, viewFindViewById8, viewFindViewById9, viewFindViewById10, viewFindViewById11, viewFindViewById12, viewFindViewById13, seekBar, seekBar2});
        view.setVisibility(c0356a.f6168a ? 0 : 8);
        viewFindViewById.setVisibility(c0356a.b ? 0 : 8);
        textView2.setText(c0356a.f6169c);
        Activity activity = this.f6256a;
        if (selectedButtonConfig == null) {
            textView.setText("3 — " + activity.getString(R.string.label_customize));
            textView3.setText(activity.getString(R.string.format_size_dp, "36"));
            textView4.setText(activity.getString(R.string.format_opacity_percent, 100));
            seekBar.setProgress(36);
            seekBar2.setProgress(100);
            for (View view2 : listListOf) {
                view2.setEnabled(false);
                view2.setAlpha(0.45f);
            }
            k(null);
            j(null);
            return;
        }
        int i3 = selectedButtonConfig.f;
        textView.setText(selectedButtonConfig.b + " — " + activity.getString(R.string.label_customize));
        textView3.setText(activity.getString(R.string.format_size_dp, String.valueOf(i3)));
        int iCoerceIn = RangesKt.coerceIn((int) (selectedButtonConfig.f6000j * ((float) 100)), 10, 100);
        textView4.setText(activity.getString(R.string.format_opacity_percent, Integer.valueOf(iCoerceIn)));
        seekBar.setProgress(RangesKt.coerceIn(i3, 20, 140));
        seekBar2.setProgress(iCoerceIn);
        for (View view3 : listListOf) {
            view3.setEnabled(true);
            view3.setAlpha(1.0f);
        }
        String str = selectedButtonConfig.f5998h;
        Locale locale = Locale.ROOT;
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        k(upperCase);
        String upperCase2 = selectedButtonConfig.f5999i.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
        j(upperCase2);
    }

    public final void h() {
        final j jVar = this.f6260h;
        FrameLayout frameLayout = (FrameLayout) jVar.b;
        View viewInflate = (View) jVar.f;
        if (viewInflate == null) {
            viewInflate = LayoutInflater.from(frameLayout.getContext()).inflate(R.layout.view_ingame_keyboard_panel, (ViewGroup) frameLayout, false);
            final int i3 = 0;
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: y1.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i3) {
                        case 0:
                            j jVar2 = jVar;
                            View view2 = (View) jVar2.f;
                            if (view2 != null) {
                                view2.setVisibility(8);
                            }
                            ((FrameLayout) jVar2.b).setVisibility(8);
                            break;
                        case 1:
                            j jVar3 = jVar;
                            View view3 = (View) jVar3.f;
                            if (view3 != null) {
                                view3.setVisibility(8);
                            }
                            ((FrameLayout) jVar3.b).setVisibility(8);
                            break;
                        case 2:
                            j jVar4 = jVar;
                            jVar4.f1188c = "special";
                            jVar4.c();
                            break;
                        default:
                            j jVar5 = jVar;
                            jVar5.f1188c = "keyboard";
                            jVar5.c();
                            break;
                    }
                }
            });
            viewInflate.findViewById(R.id.layout_keyboard_sheet).setOnClickListener(new b(3));
            final int i4 = 1;
            ((Button) viewInflate.findViewById(R.id.btn_done_keyboard)).setOnClickListener(new View.OnClickListener() { // from class: y1.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i4) {
                        case 0:
                            j jVar2 = jVar;
                            View view2 = (View) jVar2.f;
                            if (view2 != null) {
                                view2.setVisibility(8);
                            }
                            ((FrameLayout) jVar2.b).setVisibility(8);
                            break;
                        case 1:
                            j jVar3 = jVar;
                            View view3 = (View) jVar3.f;
                            if (view3 != null) {
                                view3.setVisibility(8);
                            }
                            ((FrameLayout) jVar3.b).setVisibility(8);
                            break;
                        case 2:
                            j jVar4 = jVar;
                            jVar4.f1188c = "special";
                            jVar4.c();
                            break;
                        default:
                            j jVar5 = jVar;
                            jVar5.f1188c = "keyboard";
                            jVar5.c();
                            break;
                    }
                }
            });
            final int i5 = 2;
            ((TextView) viewInflate.findViewById(R.id.tab_special)).setOnClickListener(new View.OnClickListener() { // from class: y1.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i5) {
                        case 0:
                            j jVar2 = jVar;
                            View view2 = (View) jVar2.f;
                            if (view2 != null) {
                                view2.setVisibility(8);
                            }
                            ((FrameLayout) jVar2.b).setVisibility(8);
                            break;
                        case 1:
                            j jVar3 = jVar;
                            View view3 = (View) jVar3.f;
                            if (view3 != null) {
                                view3.setVisibility(8);
                            }
                            ((FrameLayout) jVar3.b).setVisibility(8);
                            break;
                        case 2:
                            j jVar4 = jVar;
                            jVar4.f1188c = "special";
                            jVar4.c();
                            break;
                        default:
                            j jVar5 = jVar;
                            jVar5.f1188c = "keyboard";
                            jVar5.c();
                            break;
                    }
                }
            });
            final int i6 = 3;
            ((TextView) viewInflate.findViewById(R.id.tab_keyboard)).setOnClickListener(new View.OnClickListener() { // from class: y1.m1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i6) {
                        case 0:
                            j jVar2 = jVar;
                            View view2 = (View) jVar2.f;
                            if (view2 != null) {
                                view2.setVisibility(8);
                            }
                            ((FrameLayout) jVar2.b).setVisibility(8);
                            break;
                        case 1:
                            j jVar3 = jVar;
                            View view3 = (View) jVar3.f;
                            if (view3 != null) {
                                view3.setVisibility(8);
                            }
                            ((FrameLayout) jVar3.b).setVisibility(8);
                            break;
                        case 2:
                            j jVar4 = jVar;
                            jVar4.f1188c = "special";
                            jVar4.c();
                            break;
                        default:
                            j jVar5 = jVar;
                            jVar5.f1188c = "keyboard";
                            jVar5.c();
                            break;
                    }
                }
            });
            frameLayout.removeAllViews();
            frameLayout.addView(viewInflate);
            jVar.f = viewInflate;
            Intrinsics.checkNotNull(viewInflate);
        }
        jVar.c();
        viewInflate.setVisibility(0);
        frameLayout.setVisibility(0);
    }

    public final void i(int i3, boolean z2) {
        View viewFindViewById = this.f6259e.findViewById(i3);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(c(10));
        gradientDrawable.setColor(Color.parseColor(z2 ? "#1FFF424D" : "#1B212D"));
        gradientDrawable.setStroke(c(1), z2 ? Color.parseColor("#FF424D") : Color.parseColor("#2A3446"));
        viewFindViewById.setBackground(gradientDrawable);
        if (viewFindViewById instanceof LinearLayout) {
            LinearLayout linearLayout = (LinearLayout) viewFindViewById;
            int childCount = linearLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = linearLayout.getChildAt(i4);
                if (childAt instanceof TextView) {
                    ((TextView) childAt).setTextColor(z2 ? Color.parseColor("#FF424D") : Color.parseColor("#9EA4B8"));
                } else {
                    childAt.setAlpha(z2 ? 1.0f : 0.82f);
                    if (childAt.getId() == -1) {
                        GradientDrawable gradientDrawable2 = new GradientDrawable();
                        gradientDrawable2.setShape(0);
                        gradientDrawable2.setColor(-1);
                        gradientDrawable2.setCornerRadius(i3 == R.id.btn_shape_circle ? c(999) : i3 == R.id.btn_shape_rounded ? c(6) : c(2));
                        childAt.setBackground(gradientDrawable2);
                    }
                }
            }
        }
    }

    public final void j(String str) {
        for (Map.Entry entry : MapsKt.mapOf(TuplesKt.to(Integer.valueOf(R.id.color_green), "#22C55E"), TuplesKt.to(Integer.valueOf(R.id.color_red), "#EF4444"), TuplesKt.to(Integer.valueOf(R.id.color_blue), "#3B82F6"), TuplesKt.to(Integer.valueOf(R.id.color_yellow), "#F59E0B"), TuplesKt.to(Integer.valueOf(R.id.color_purple), "#8B5CF6"), TuplesKt.to(Integer.valueOf(R.id.color_orange), "#F97316"), TuplesKt.to(Integer.valueOf(R.id.color_pink), "#EC4899"), TuplesKt.to(Integer.valueOf(R.id.color_gray), "#6B7280"), TuplesKt.to(Integer.valueOf(R.id.color_white), "#F5F5F5")).entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            String str2 = (String) entry.getValue();
            View viewFindViewById = this.f6259e.findViewById(iIntValue);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setCornerRadius(c(6));
            gradientDrawable.setColor(Color.parseColor(str2));
            int iC = c(2);
            String upperCase = str2.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            gradientDrawable.setStroke(iC, Intrinsics.areEqual(str, upperCase) ? -1 : Color.parseColor("#26FFFFFF"));
            viewFindViewById.setBackground(gradientDrawable);
        }
    }

    public final void k(String str) {
        i(R.id.btn_shape_circle, Intrinsics.areEqual(str, "CIRCLE"));
        i(R.id.btn_shape_rounded, Intrinsics.areEqual(str, "ROUNDED"));
        i(R.id.btn_shape_rect, Intrinsics.areEqual(str, "RECT"));
    }
}
