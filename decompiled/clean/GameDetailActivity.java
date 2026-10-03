package com.minhub.gamehub.hub;
import C1.A0;
import C1.AbstractC0097q0;
import C1.C0085m0;
import C1.C0111v0;
import C1.C0114w0;
import C1.C0117x0;
import C1.C0120y0;
import C1.C0123z0;
import C1.F0;
import C1.H0;
import C1.N0;
import C1.R0;
import C1.V0;
import C1.ViewOnClickListenerC0075j;
import C1.ViewOnClickListenerC0088n0;
import C1.ViewOnClickListenerC0094p0;
import C1.ViewOnClickListenerC0113w;
import C1.ViewOnClickListenerC0122z;
import C1.X0;
import C1.X1;
import C1.Z0;
import C1.b2;
import C1.g2;
import G1.g;
import O0.b;
import P.C;
import P.D;
import P.E;
import P.F;
import P.G;
import P.y0;
import S1.c;
import S1.d;
import S1.f;
import V1.A;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.hub.catalog.OnlineTranslationPackage;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import p000a.a;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p023i1.l;
import p058w1.e;
import p064y1.A1;
import p064y1.B1;
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class GameDetailActivity extends c {
    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ int f3762w = 0;
    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f3763e;
    public Game g;
    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3764h;
    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SaveRepository f3765i;
    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g2 f3766j;
    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Save f3768l;
    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f3769m;
    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public OnlineTranslationPackage f3771o;
    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public X1 f3773q;
    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public b2 f3774r;
    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public G f3775s;
    public final ViewModelLazy f = new ViewModelLazy(Reflection.getOrCreateKotlinClass(Z0.class), new A0(this, 0), new C0123z0(this), new A0(this, 1));
    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public List f3767k = CollectionsKt.emptyList();
    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f3770n = "";
    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3772p = -1;
    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ActivityResultLauncher f3776t = registerForActivityResult(new ActivityResultContracts.GetContent(), new C0085m0(this, 0));
    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final ActivityResultLauncher f3777u = registerForActivityResult(new ActivityResultContracts.OpenDocumentTree(), new C0085m0(this, 1));
    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final ActivityResultLauncher f3778v = registerForActivityResult(new ActivityResultContracts.CreateDocument("application/octet-stream"), new C0085m0(this, 2));
    public static final void s(LinearLayout linearLayout, List list, GameDetailActivity gameDetailActivity) {
        Object obj;
        int childCount = linearLayout.getChildCount();
        int i3 = 1;
        while (true) {
            obj = null;
            if (i3 >= childCount) {
                break;
            }
            View childAt = linearLayout.getChildAt(i3);
            Button button = childAt instanceof Button ? (Button) childAt : null;
            if (button != null) {
                S1.e eVar = (S1.e) list.get(i3 - 1);
                String strF = d.f(gameDetailActivity);
                eVar.getClass();
                boolean zAreEqual = Intrinsics.areEqual(strF, "webgl2");
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(24.0f);
                gradientDrawable.setColor(Color.parseColor(zAreEqual ? "#22EF4444" : "#18181f"));
                if (zAreEqual) {
                    gradientDrawable.setStroke(1, Color.parseColor("#44EF4444"));
                }
                button.setBackground(gradientDrawable);
                button.setTextColor(Color.parseColor(zAreEqual ? "#EF4444" : "#45455a"));
            }
            i3++;
        }
        TextView textView = gameDetailActivity.n().f5719C;
        for (Object obj2 : list) {
            ((S1.e) obj2).getClass();
            if (Intrinsics.areEqual("webgl2", d.f(gameDetailActivity))) {
                obj = obj2;
                break;
            }
        }
        textView.setText(((S1.e) obj) != null ? "WebGL 2" : d.f(gameDetailActivity));
    }
    public final void m(Game g) {
        String string;
        this.g = g;
        int i3 = 3;
        Continuation continuation = null;
        int i4 = 1;
        int i5 = 0;
        if (!this.f3764h) {
            this.f3764h = true;
            String str = g.f997a;
            if (g.getCatalogPostId() > 0 && SetsKt.setOf((Object[]) new GameEngine[]{GameEngine.MV, GameEngine.MZ, GameEngine.TYRANO, GameEngine.HTML}).contains(GameKt.getEngineEnum(g))) {
                Context applicationContext = getApplicationContext();
                n().f5735e.setEnabled(false);
                A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new C0111v0(this, g, applicationContext, (Continuation) null), 3);
            }
        }
        View viewHero = n().f5731P;
        Intrinsics.checkNotNullExpressionValue(viewHero, "viewHero");
        a.c(viewHero, null, g, 0.0f);
        List listListOfNotNull = CollectionsKt.listOfNotNull((Object[]) new String[]{g.getBgPath(), g.getIconPath()});
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOfNotNull) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        int i6 = 4;
        if (arrayList.isEmpty()) {
            n().f5742n.setOnClickListener(null);
        } else {
            n().f5742n.setOnClickListener(new ViewOnClickListenerC0113w(this, arrayList, g, i6));
        }
        n().f5727L.setText(g.getTitle());
        n().f5730O.setText(getString(R.string.format_version_size, g.getVersion(), g.getSizeLabel()));
        n().f5752x.setText(g.getDescription());
        n().f5724H.setText(GameKt.getPlaytimeLabel(g));
        TextView textView = n().f5722F;
        long lastPlayedMs = g.getLastPlayedMs();
        l lVar = X0.f526a;
        Intrinsics.checkNotNullParameter(this, "ctx");
        if (lastPlayedMs == 0) {
            string = getString(R.string.never_played);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        } else {
            long jCurrentTimeMillis = (System.currentTimeMillis() - lastPlayedMs) / ((long) 60000);
            if (jCurrentTimeMillis < 60) {
                string = getString(R.string.format_minutes_ago, Long.valueOf(jCurrentTimeMillis));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            } else if (jCurrentTimeMillis < 1440) {
                string = getString(R.string.format_hours_ago, Long.valueOf(jCurrentTimeMillis / ((long) 60)));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            } else if (jCurrentTimeMillis < 10080) {
                string = getString(R.string.format_days_ago, Long.valueOf(jCurrentTimeMillis / ((long) 1440)));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            } else {
                string = getString(R.string.format_weeks_ago, Long.valueOf(jCurrentTimeMillis / ((long) 10080)));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
        }
        textView.setText(string);
        n().K.setText(getString(R.string.format_slot_count, Integer.valueOf(g.getSaveCount())));
        n().f5753y.setText(GameKt.getEngineEnum(g).getLabel());
        n().f5717A.setText(GameKt.getEngineEnum(g).getLabel());
        n().f5721E.setText(g.getVersion());
        n().f5720D.setText(g.getSizeLabel());
        n().f5718B.setText(getString(g.isPortraitGame() ? R.string.orientation_portrait : R.string.orientation_landscape));
        int i7 = AbstractC0097q0.f670a[GameKt.getEngineEnum(g).ordinal()];
        int i8 = 2;
        boolean z2 = i7 == 1 || i7 == 2 || i7 == 3 || i7 == 4;
        n().f5743o.setVisibility(z2 ? 0 : 8);
        n().f5747s.setVisibility(z2 ? 0 : 8);
        n().f5746r.setOnClickListener(new ViewOnClickListenerC0094p0(this, i5));
        com.bumptech.glide.d.d(this, g);
        Intrinsics.checkNotNullParameter(this, "<this>");
        Intrinsics.checkNotNullParameter(g, "g");
        if (g.getCatalogPostId() > 0 && this.f3772p != g.getId()) {
            this.f3772p = g.getId();
            A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new V0(this, g, continuation, i5), 3);
        }
        int color = Color.parseColor(GameKt.getEngineEnum(g).getColorHex());
        n().f5753y.setTextColor(color);
        TextView textView2 = n().f5753y;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(10.0f);
        gradientDrawable.setColor(Color.argb(26, Color.red(color), Color.green(color), Color.blue(color)));
        gradientDrawable.setStroke(1, Color.argb(51, Color.red(color), Color.green(color), Color.blue(color)));
        textView2.setBackground(gradientDrawable);
        n().f5754z.setText(g.getFavorite() ? "★" : "☆");
        n().f5733c.setOnClickListener(new ViewOnClickListenerC0094p0(this, i4));
        n().f5754z.setOnClickListener(new ViewOnClickListenerC0088n0(this, g, i5));
        n().f5735e.setOnClickListener(new ViewOnClickListenerC0088n0(this, g, i4));
        n().f5738j.setOnClickListener(new ViewOnClickListenerC0088n0(this, g, i8));
        n().f5737i.setOnClickListener(new ViewOnClickListenerC0088n0(this, g, i3));
        com.bumptech.glide.c.c(this, g, false);
        if (n().f5751w.getSelectedTabPosition() == 1) {
            R0.d(this);
        }
    }
    public final e n() {
        e eVar = this.f3763e;
        if (eVar != null) {
            return eVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("b");
        return null;
    }
    public final String o(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode != 3241) {
            if (iHashCode != 3355) {
                if (iHashCode != 3383) {
                    if (iHashCode != 3428) {
                        if (iHashCode != 3763) {
                            if (iHashCode == 3886 && str.equals("zh")) {
                                String string = getString(R.string.lang_chinese);
                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                return string;
                            }
                        } else if (str.equals("vi")) {
                            String string2 = getString(R.string.lang_vietnamese);
                            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                            return string2;
                        }
                    } else if (str.equals("ko")) {
                        String string3 = getString(R.string.lang_korean);
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        return string3;
                    }
                } else if (str.equals("ja")) {
                    String string4 = getString(R.string.lang_japanese);
                    Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                    return string4;
                }
            } else if (str.equals("id")) {
                String string5 = getString(R.string.lang_indonesian);
                Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                return string5;
            }
        } else if (str.equals("en")) {
            String string6 = getString(R.string.lang_english);
            Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
            return string6;
        }
        return str;
    }
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_game_detail, (ViewGroup) null, false);
        int i3 = R.id.btn_add_plugin;
        Button button = (Button) viewInflate.findViewById(R.id.btn_add_plugin);
        if (button != null) {
            i3 = R.id.btn_back;
            ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
            if (imageButton != null) {
                i3 = R.id.btn_import_save;
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_import_save);
                if (button2 != null) {
                    i3 = R.id.btn_play;
                    Button button3 = (Button) viewInflate.findViewById(R.id.btn_play);
                    if (button3 != null) {
                        i3 = R.id.btn_save_plugins;
                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_save_plugins);
                        if (button4 != null) {
                            i3 = R.id.btn_translation_install;
                            Button button5 = (Button) viewInflate.findViewById(R.id.btn_translation_install);
                            if (button5 != null) {
                                i3 = R.id.btn_translation_restore;
                                Button button6 = (Button) viewInflate.findViewById(R.id.btn_translation_restore);
                                if (button6 != null) {
                                    i3 = R.id.btn_uninstall;
                                    Button button7 = (Button) viewInflate.findViewById(R.id.btn_uninstall);
                                    if (button7 != null) {
                                        i3 = R.id.btn_update;
                                        Button button8 = (Button) viewInflate.findViewById(R.id.btn_update);
                                        if (button8 != null) {
                                            i3 = R.id.container_tabs;
                                            if (((FrameLayout) viewInflate.findViewById(R.id.container_tabs)) != null) {
                                                i3 = R.id.content_info;
                                                ScrollView scrollView = (ScrollView) viewInflate.findViewById(R.id.content_info);
                                                if (scrollView != null) {
                                                    i3 = R.id.content_plugins;
                                                    NestedScrollView nestedScrollView = (NestedScrollView) viewInflate.findViewById(R.id.content_plugins);
                                                    if (nestedScrollView != null) {
                                                        i3 = R.id.content_saves;
                                                        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.content_saves);
                                                        if (linearLayout != null) {
                                                            i3 = R.id.hero_frame;
                                                            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.hero_frame);
                                                            if (frameLayout != null) {
                                                                i3 = R.id.layout_renderer_scroll;
                                                                HorizontalScrollView horizontalScrollView = (HorizontalScrollView) viewInflate.findViewById(R.id.layout_renderer_scroll);
                                                                if (horizontalScrollView != null) {
                                                                    i3 = R.id.layout_translation_section;
                                                                    LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.layout_translation_section);
                                                                    if (linearLayout2 != null) {
                                                                        i3 = R.id.render_mode_row;
                                                                        LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.render_mode_row);
                                                                        if (linearLayout3 != null) {
                                                                            i3 = R.id.row_info_orientation;
                                                                            LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.row_info_orientation);
                                                                            if (linearLayout4 != null) {
                                                                                i3 = R.id.row_info_renderer;
                                                                                LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.row_info_renderer);
                                                                                if (linearLayout5 != null) {
                                                                                    i3 = R.id.rv_plugins_manager;
                                                                                    RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_plugins_manager);
                                                                                    if (recyclerView != null) {
                                                                                        i3 = R.id.rv_saves;
                                                                                        RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.rv_saves);
                                                                                        if (recyclerView2 != null) {
                                                                                            i3 = R.id.spinner_translation_package;
                                                                                            Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spinner_translation_package);
                                                                                            if (spinner != null) {
                                                                                                i3 = R.id.tab_layout;
                                                                                                TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.tab_layout);
                                                                                                if (tabLayout != null) {
                                                                                                    i3 = R.id.tv_desc;
                                                                                                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_desc);
                                                                                                    if (textView != null) {
                                                                                                        i3 = R.id.tv_engine;
                                                                                                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_engine);
                                                                                                        if (textView2 != null) {
                                                                                                            i3 = R.id.tv_fav;
                                                                                                            TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_fav);
                                                                                                            if (textView3 != null) {
                                                                                                                i3 = R.id.tv_info_engine;
                                                                                                                TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_info_engine);
                                                                                                                if (textView4 != null) {
                                                                                                                    i3 = R.id.tv_info_orientation;
                                                                                                                    TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_info_orientation);
                                                                                                                    if (textView5 != null) {
                                                                                                                        i3 = R.id.tv_info_renderer;
                                                                                                                        TextView textView6 = (TextView) viewInflate.findViewById(R.id.tv_info_renderer);
                                                                                                                        if (textView6 != null) {
                                                                                                                            i3 = R.id.tv_info_size;
                                                                                                                            TextView textView7 = (TextView) viewInflate.findViewById(R.id.tv_info_size);
                                                                                                                            if (textView7 != null) {
                                                                                                                                i3 = R.id.tv_info_version;
                                                                                                                                TextView textView8 = (TextView) viewInflate.findViewById(R.id.tv_info_version);
                                                                                                                                if (textView8 != null) {
                                                                                                                                    i3 = R.id.tv_last_played;
                                                                                                                                    TextView textView9 = (TextView) viewInflate.findViewById(R.id.tv_last_played);
                                                                                                                                    if (textView9 != null) {
                                                                                                                                        i3 = R.id.tv_no_saves;
                                                                                                                                        TextView textView10 = (TextView) viewInflate.findViewById(R.id.tv_no_saves);
                                                                                                                                        if (textView10 != null) {
                                                                                                                                            i3 = R.id.tv_playtime;
                                                                                                                                            TextView textView11 = (TextView) viewInflate.findViewById(R.id.tv_playtime);
                                                                                                                                            if (textView11 != null) {
                                                                                                                                                i3 = R.id.tv_plugins_empty;
                                                                                                                                                TextView textView12 = (TextView) viewInflate.findViewById(R.id.tv_plugins_empty);
                                                                                                                                                if (textView12 != null) {
                                                                                                                                                    i3 = R.id.tv_plugins_hint;
                                                                                                                                                    TextView textView13 = (TextView) viewInflate.findViewById(R.id.tv_plugins_hint);
                                                                                                                                                    if (textView13 != null) {
                                                                                                                                                        i3 = R.id.tv_saves;
                                                                                                                                                        TextView textView14 = (TextView) viewInflate.findViewById(R.id.tv_saves);
                                                                                                                                                        if (textView14 != null) {
                                                                                                                                                            i3 = R.id.tv_title;
                                                                                                                                                            TextView textView15 = (TextView) viewInflate.findViewById(R.id.tv_title);
                                                                                                                                                            if (textView15 != null) {
                                                                                                                                                                i3 = R.id.tv_translation_available;
                                                                                                                                                                TextView textView16 = (TextView) viewInflate.findViewById(R.id.tv_translation_available);
                                                                                                                                                                if (textView16 != null) {
                                                                                                                                                                    i3 = R.id.tv_translation_status;
                                                                                                                                                                    TextView textView17 = (TextView) viewInflate.findViewById(R.id.tv_translation_status);
                                                                                                                                                                    if (textView17 != null) {
                                                                                                                                                                        i3 = R.id.tv_version;
                                                                                                                                                                        TextView textView18 = (TextView) viewInflate.findViewById(R.id.tv_version);
                                                                                                                                                                        if (textView18 != null) {
                                                                                                                                                                            i3 = R.id.view_hero;
                                                                                                                                                                            View viewFindViewById = viewInflate.findViewById(R.id.view_hero);
                                                                                                                                                                            if (viewFindViewById != null) {
                                                                                                                                                                                e eVar = new e((LinearLayout) viewInflate, button, imageButton, button2, button3, button4, button5, button6, button7, button8, scrollView, nestedScrollView, linearLayout, frameLayout, horizontalScrollView, linearLayout2, linearLayout3, linearLayout4, linearLayout5, recyclerView, recyclerView2, spinner, tabLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, viewFindViewById);
                                                                                                                                                                                Intrinsics.checkNotNullExpressionValue(eVar, "inflate(...)");
                                                                                                                                                                                Intrinsics.checkNotNullParameter(eVar, "<set-?>");
                                                                                                                                                                                this.f3763e = eVar;
                                                                                                                                                                                setContentView(n().f5732a);
                                                                                                                                                                                ViewCompat.setOnApplyWindowInsetsListener(n().f5732a, new C0085m0(this, 3));
                                                                                                                                                                                SaveRepository saveRepository = new SaveRepository(this);
                                                                                                                                                                                Intrinsics.checkNotNullParameter(saveRepository, "<set-?>");
                                                                                                                                                                                this.f3765i = saveRepository;
                                                                                                                                                                                List<S1.e> list = f.f2061a;
                                                                                                                                                                                LinearLayout renderModeRow = n().f5745q;
                                                                                                                                                                                Intrinsics.checkNotNullExpressionValue(renderModeRow, "renderModeRow");
                                                                                                                                                                                int i4 = (int) (4 * getResources().getDisplayMetrics().density);
                                                                                                                                                                                int i5 = (int) (10 * getResources().getDisplayMetrics().density);
                                                                                                                                                                                for (S1.e eVar2 : list) {
                                                                                                                                                                                    Button button9 = new Button(this);
                                                                                                                                                                                    eVar2.getClass();
                                                                                                                                                                                    button9.setText("WebGL 2");
                                                                                                                                                                                    button9.setTextSize(9.0f);
                                                                                                                                                                                    button9.setAllCaps(false);
                                                                                                                                                                                    button9.setPadding(i5, i4, i5, i4);
                                                                                                                                                                                    button9.setMinHeight(0);
                                                                                                                                                                                    button9.setMinimumHeight(0);
                                                                                                                                                                                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                                                                                                                                                                                    layoutParams.setMarginEnd((int) (6 * button9.getResources().getDisplayMetrics().density));
                                                                                                                                                                                    button9.setLayoutParams(layoutParams);
                                                                                                                                                                                    button9.setOnClickListener(new ViewOnClickListenerC0113w(this, eVar2, renderModeRow, list));
                                                                                                                                                                                    renderModeRow.addView(button9);
                                                                                                                                                                                }
                                                                                                                                                                                s(renderModeRow, list, this);
                                                                                                                                                                                TabLayout tabLayout2 = n().f5751w;
                                                                                                                                                                                p007c1.f fVarH = n().f5751w.h();
                                                                                                                                                                                fVarH.a(R.string.tab_info);
                                                                                                                                                                                tabLayout2.b(fVarH);
                                                                                                                                                                                TabLayout tabLayout3 = n().f5751w;
                                                                                                                                                                                p007c1.f fVarH2 = n().f5751w.h();
                                                                                                                                                                                fVarH2.a(R.string.tab_saves);
                                                                                                                                                                                tabLayout3.b(fVarH2);
                                                                                                                                                                                TabLayout tabLayout4 = n().f5751w;
                                                                                                                                                                                p007c1.f fVarH3 = n().f5751w.h();
                                                                                                                                                                                fVarH3.a(R.string.tab_plugins);
                                                                                                                                                                                tabLayout4.b(fVarH3);
                                                                                                                                                                                n().f5751w.a(new C0120y0(this, 0));
                                                                                                                                                                                t(0);
                                                                                                                                                                                Intrinsics.checkNotNullParameter(this, "<this>");
                                                                                                                                                                                g2 g2Var = new g2(new F0(this, 2), new F0(this, 3), new F0(this, 4), true);
                                                                                                                                                                                Intrinsics.checkNotNullParameter(g2Var, "<set-?>");
                                                                                                                                                                                this.f3766j = g2Var;
                                                                                                                                                                                n().f5749u.setLayoutManager(new LinearLayoutManager(1));
                                                                                                                                                                                RecyclerView recyclerView3 = n().f5749u;
                                                                                                                                                                                g2 g2Var2 = this.f3766j;
                                                                                                                                                                                if (g2Var2 == null) {
                                                                                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("saveAdapter");
                                                                                                                                                                                    g2Var2 = null;
                                                                                                                                                                                }
                                                                                                                                                                                recyclerView3.setAdapter(g2Var2);
                                                                                                                                                                                n().f5734d.setOnClickListener(new ViewOnClickListenerC0094p0(this, 4));
                                                                                                                                                                                Intrinsics.checkNotNullParameter(this, "<this>");
                                                                                                                                                                                b2 b2Var = new b2(new F0(this, 0), new F0(this, 1), new H0(this, 0), new H0(this, 1), new H0(this, 2));
                                                                                                                                                                                Intrinsics.checkNotNullParameter(b2Var, "<set-?>");
                                                                                                                                                                                this.f3774r = b2Var;
                                                                                                                                                                                n().f5748t.setLayoutManager(new LinearLayoutManager(1));
                                                                                                                                                                                RecyclerView recyclerView4 = n().f5748t;
                                                                                                                                                                                b2 b2Var2 = this.f3774r;
                                                                                                                                                                                if (b2Var2 == null) {
                                                                                                                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pluginManagerAdapter");
                                                                                                                                                                                    b2Var2 = null;
                                                                                                                                                                                }
                                                                                                                                                                                recyclerView4.setAdapter(b2Var2);
                                                                                                                                                                                G g = new G(new N0(this));
                                                                                                                                                                                Intrinsics.checkNotNullParameter(g, "<set-?>");
                                                                                                                                                                                this.f3775s = g;
                                                                                                                                                                                RecyclerView recyclerView5 = n().f5748t;
                                                                                                                                                                                RecyclerView recyclerView6 = g.f1576r;
                                                                                                                                                                                if (recyclerView6 != recyclerView5) {
                                                                                                                                                                                    C c3 = g.f1584z;
                                                                                                                                                                                    if (recyclerView6 != null) {
                                                                                                                                                                                        recyclerView6.a0(g);
                                                                                                                                                                                        RecyclerView recyclerView7 = g.f1576r;
                                                                                                                                                                                        recyclerView7.f3005r.remove(c3);
                                                                                                                                                                                        if (recyclerView7.f3007s == c3) {
                                                                                                                                                                                            recyclerView7.f3007s = null;
                                                                                                                                                                                        }
                                                                                                                                                                                        ArrayList arrayList = g.f1576r.f2958D;
                                                                                                                                                                                        if (arrayList != null) {
                                                                                                                                                                                            arrayList.remove(g);
                                                                                                                                                                                        }
                                                                                                                                                                                        ArrayList arrayList2 = g.f1574p;
                                                                                                                                                                                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                                                                                                                                                                                            D d3 = (D) arrayList2.get(0);
                                                                                                                                                                                            d3.g.cancel();
                                                                                                                                                                                            y0 y0Var = d3.f1536e;
                                                                                                                                                                                            g.f1571m.getClass();
                                                                                                                                                                                            E.a(y0Var);
                                                                                                                                                                                        }
                                                                                                                                                                                        arrayList2.clear();
                                                                                                                                                                                        g.f1581w = null;
                                                                                                                                                                                        VelocityTracker velocityTracker = g.f1578t;
                                                                                                                                                                                        if (velocityTracker != null) {
                                                                                                                                                                                            velocityTracker.recycle();
                                                                                                                                                                                            g.f1578t = null;
                                                                                                                                                                                        }
                                                                                                                                                                                        F f = g.f1583y;
                                                                                                                                                                                        if (f != null) {
                                                                                                                                                                                            f.f1552a = false;
                                                                                                                                                                                            g.f1583y = null;
                                                                                                                                                                                        }
                                                                                                                                                                                        if (g.f1582x != null) {
                                                                                                                                                                                            g.f1582x = null;
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                    g.f1576r = recyclerView5;
                                                                                                                                                                                    Resources resources = recyclerView5.getResources();
                                                                                                                                                                                    g.f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
                                                                                                                                                                                    g.g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
                                                                                                                                                                                    g.f1575q = ViewConfiguration.get(g.f1576r.getContext()).getScaledTouchSlop();
                                                                                                                                                                                    g.f1576r.i(g);
                                                                                                                                                                                    g.f1576r.f3005r.add(c3);
                                                                                                                                                                                    RecyclerView recyclerView8 = g.f1576r;
                                                                                                                                                                                    if (recyclerView8.f2958D == null) {
                                                                                                                                                                                        recyclerView8.f2958D = new ArrayList();
                                                                                                                                                                                    }
                                                                                                                                                                                    recyclerView8.f2958D.add(g);
                                                                                                                                                                                    g.f1583y = new F(g);
                                                                                                                                                                                    g.f1582x = new GestureDetectorCompat(g.f1576r.getContext(), g.f1583y);
                                                                                                                                                                                }
                                                                                                                                                                                n().f.setOnClickListener(new ViewOnClickListenerC0094p0(this, 2));
                                                                                                                                                                                n().b.setOnClickListener(new ViewOnClickListenerC0094p0(this, 3));
                                                                                                                                                                                int intExtra = getIntent().getIntExtra("game_id", -1);
                                                                                                                                                                                if (intExtra == -1) {
                                                                                                                                                                                    finish();
                                                                                                                                                                                    return;
                                                                                                                                                                                } else {
                                                                                                                                                                                    q().b.observe(this, new C0117x0(new A1.F(intExtra, this, 1)));
                                                                                                                                                                                    return;
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        String strH;
        super.onResume();
        A1 a1E = B1.e(this);
        if (a1E != null) {
            View viewInflate = getLayoutInflater().inflate(R.layout.dialog_renpy_boot_error, (ViewGroup) null);
            String string = a1E.b;
            if (string == null) {
                string = getString(R.string.renpy_boot_failed_unknown);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            }
            String str = a1E.f6032c;
            if (str != null && (strH = kotlin.collections.unsigned.a.h(getString(R.string.renpy_boot_failed_version, str), "\n\n", string)) != null) {
                string = strH;
            }
            ((TextView) viewInflate.findViewById(R.id.tv_renpy_boot_error)).setText(string);
            if (a1E.f6033d) {
                ((TextView) viewInflate.findViewById(R.id.tv_renpy_boot_body)).setText(getString(R.string.renpy_boot_failed_body_minhub));
            }
            b bVar = new b(this, 0);
            ((C0240b) bVar.f4145c).f4112t = viewInflate;
            DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
            Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
            Window window = dialogInterfaceC0245gC.getWindow();
            if (window != null) {
                window.setBackgroundDrawableResource(android.R.color.transparent);
            }
            viewInflate.findViewById(R.id.btn_renpy_boot_copy).setOnClickListener(new ViewOnClickListenerC0075j(2, this, string));
            viewInflate.findViewById(R.id.btn_renpy_boot_close).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 2));
            dialogInterfaceC0245gC.show();
        }
    }
    public final SaveRepository p() {
        SaveRepository saveRepository = this.f3765i;
        if (saveRepository != null) {
            return saveRepository;
        }
        Intrinsics.throwUninitializedPropertyAccessException("saveRepository");
        return null;
    }
    /* JADX WARN: Multi-variable type inference failed */
    public final Z0 q() {
        return (Z0) this.f.getValue();
    }
    public final void r(Game game) {
        String strG;
        Log.d("GameLaunch", "detail.launchGame gameId=" + game.getId() + " engine=" + game.getEngine() + " path=" + game.getGamePath());
        switch (AbstractC0097q0.f670a[GameKt.getEngineEnum(game).ordinal()]) {
            case 5:
                strG = kotlin.collections.unsigned.a.g(getPackageName(), ":renpy7");
                break;
            case 6:
                strG = kotlin.collections.unsigned.a.g(getPackageName(), ":renpy");
                break;
            case 7:
                strG = kotlin.collections.unsigned.a.g(getPackageName(), ":vxace");
                break;
            case 8:
                strG = kotlin.collections.unsigned.a.g(getPackageName(), ":kirikiri");
                break;
            case 9:
                strG = kotlin.collections.unsigned.a.g(getPackageName(), ":godot");
                break;
            default:
                strG = getPackageName();
                break;
        }
        A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new C0114w0(game, this, strG, (Continuation) null, 0), 3);
    }
    public final void t(int i3) {
        n().f5739k.setVisibility(i3 == 0 ? 0 : 8);
        n().f5741m.setVisibility(i3 == 1 ? 0 : 8);
        n().f5740l.setVisibility(i3 == 2 ? 0 : 8);
    }
}
