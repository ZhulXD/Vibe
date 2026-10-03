package E1;

import C1.C0074i1;
import C1.T;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.minhub.gamehub.R;
import java.io.File;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p064y1.C0429y1;
import p064y1.EnumC0420v1;
import p064y1.G1;
import p064y1.W0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LE1/w;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginsSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginsSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/PluginsSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,273:1\n1068#2:274\n1068#2:275\n*S KotlinDebug\n*F\n+ 1 PluginsSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/PluginsSettingsFragment\n*L\n75#1:274\n114#1:275\n*E\n"})
public final class w extends Fragment {
    public M1.g b;

    /* JADX WARN: Code duplicated, block: B:20:0x0054  */
    public static final void d(Context context, L1.a build, TextView textView, w wVar, Button button, Button button2) {
        int i3;
        C0429y1 c0429y1 = C0429y1.f6409a;
        EnumC0420v1 enumC0420v1 = EnumC0420v1.GODOT;
        boolean zK = C0429y1.k(build, context, enumC0420v1);
        textView.setText(wVar.getString(zK ? R.string.plugin_engine_installed : R.string.plugin_engine_not_installed));
        textView.setTextColor(context.getColor(zK ? R.color.success : R.color.text_mut));
        button.setText(wVar.getString(zK ? R.string.plugin_engine_reinstall : R.string.plugin_engine_download));
        if (zK) {
            i3 = 0;
        } else {
            Regex regex = W0.f6153a;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(build, "build");
            if (C0429y1.o(build, context, enumC0420v1).exists()) {
                i3 = 0;
            } else {
                i3 = 8;
            }
        }
        button2.setVisibility(i3);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006b  */
    public static final void e(Context context, L1.a build, TextView textView, w wVar, Button button, Button button2) {
        int i3;
        C0429y1 c0429y1 = C0429y1.f6409a;
        EnumC0420v1 enumC0420v1 = EnumC0420v1.RENPY7;
        boolean zK = C0429y1.k(build, context, enumC0420v1);
        textView.setText(wVar.getString(zK ? R.string.plugin_engine_installed : R.string.plugin_engine_not_installed));
        textView.setTextColor(context.getColor(zK ? R.color.success : R.color.text_mut));
        button.setText(wVar.getString(zK ? R.string.plugin_engine_reinstall : R.string.plugin_engine_download));
        if (zK) {
            i3 = 0;
        } else {
            Regex regex = G1.f6072a;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(build, "build");
            if (C0429y1.o(build, context, enumC0420v1).exists() || new File(context.getFilesDir(), G1.d(build.a())).exists()) {
                i3 = 0;
            } else {
                i3 = 8;
            }
        }
        button2.setVisibility(i3);
    }

    public final void b(Context context) {
        int iB = G1.m.b(context);
        M1.g gVar = this.b;
        Intrinsics.checkNotNull(gVar);
        ((TextView) gVar.f).setText(iB <= 0 ? getString(R.string.settings_patch_version_none) : getString(R.string.settings_patch_version_format, Integer.valueOf(iB)));
    }

    public final void c(Context context, EnumC0420v1 enumC0420v1, TextView textView, Button button) {
        boolean zK = C0429y1.k(null, context, enumC0420v1);
        textView.setText(getString(zK ? R.string.plugin_engine_installed : R.string.plugin_engine_not_installed));
        textView.setTextColor(context.getColor(zK ? R.color.success : R.color.text_mut));
        button.setText(getString(zK ? R.string.plugin_engine_reinstall : R.string.plugin_engine_download));
    }

    public final void f(EnumC0420v1 plugin, L1.a aVar, Function0 function0) {
        String str;
        String strB;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (aVar == null || (str = aVar.f1278c) == null) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            int iOrdinal = plugin.ordinal();
            if (iOrdinal == 0) {
                str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/ACE/PluginACE.zip";
            } else if (iOrdinal == 1) {
                str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy/PluginRenpy.zip";
            } else if (iOrdinal == 2) {
                str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.8.7/PluginRenpy7.zip";
            } else {
                if (iOrdinal != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                str = "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Godot/4.7.1/PluginGodot.zip";
            }
        }
        String str2 = str;
        if (aVar == null || plugin != EnumC0420v1.GODOT) {
            strB = aVar != null ? G1.b(aVar) : plugin.f6383c;
        } else {
            strB = W0.a(aVar);
        }
        String str3 = strB;
        View viewInflate = getLayoutInflater().inflate(R.layout.dialog_engine_plugin_downloading, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tv_plugin_dl_name)).setText(str3);
        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.pb_plugin_download);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_plugin_dl_percent);
        O0.b bVar = new O0.b(contextRequireContext, 0);
        C0240b c0240b = (C0240b) bVar.f4145c;
        c0240b.f4112t = viewInflate;
        c0240b.f4105m = false;
        DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        Window window = dialogInterfaceC0245gC.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialogInterfaceC0245gC.show();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        V1.A.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, new v(dialogInterfaceC0245gC, plugin, str2, contextRequireContext, aVar, this, progressBar, textView, str3, function0, null), 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(R.layout.fragment_settings_plugins, viewGroup, false);
        int i4 = R.id.btn_patch_update;
        Button button = (Button) viewInflate.findViewById(R.id.btn_patch_update);
        if (button != null) {
            i4 = R.id.btn_renpy8_install;
            Button button2 = (Button) viewInflate.findViewById(R.id.btn_renpy8_install);
            if (button2 != null) {
                i4 = R.id.btn_vxace_install;
                Button button3 = (Button) viewInflate.findViewById(R.id.btn_vxace_install);
                if (button3 != null) {
                    i4 = R.id.ll_godot_cores;
                    LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_godot_cores);
                    if (linearLayout != null) {
                        i4 = R.id.ll_renpy7_cores;
                        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.ll_renpy7_cores);
                        if (linearLayout2 != null) {
                            i4 = R.id.tv_patch_version;
                            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_patch_version);
                            if (textView != null) {
                                i4 = R.id.tv_renpy8_status;
                                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_renpy8_status);
                                if (textView2 != null) {
                                    i4 = R.id.tv_vxace_status;
                                    TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_vxace_status);
                                    if (textView3 != null) {
                                        ScrollView scrollView = (ScrollView) viewInflate;
                                        M1.g gVar = new M1.g(scrollView, button, button2, button3, linearLayout, linearLayout2, textView, textView2, textView3);
                                        this.b = gVar;
                                        Intrinsics.checkNotNull(gVar);
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.b = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        int i3;
        int i4;
        int i5;
        final w wVar = this;
        Intrinsics.checkNotNullParameter(v2, "v");
        Context contextRequireContext = wVar.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        EnumC0420v1 enumC0420v1 = EnumC0420v1.VXACE;
        M1.g gVar = wVar.b;
        Intrinsics.checkNotNull(gVar);
        TextView tvVxaceStatus = (TextView) gVar.f1366h;
        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus, "tvVxaceStatus");
        M1.g gVar2 = wVar.b;
        Intrinsics.checkNotNull(gVar2);
        Button btnVxaceInstall = (Button) gVar2.f1363c;
        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall, "btnVxaceInstall");
        wVar.c(contextRequireContext, enumC0420v1, tvVxaceStatus, btnVxaceInstall);
        EnumC0420v1 enumC0420v2 = EnumC0420v1.RENPY8;
        M1.g gVar3 = wVar.b;
        Intrinsics.checkNotNull(gVar3);
        TextView tvRenpy8Status = (TextView) gVar3.g;
        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status, "tvRenpy8Status");
        M1.g gVar4 = wVar.b;
        Intrinsics.checkNotNull(gVar4);
        Button btnRenpy8Install = (Button) gVar4.b;
        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install, "btnRenpy8Install");
        wVar.c(contextRequireContext, enumC0420v2, tvRenpy8Status, btnRenpy8Install);
        M1.g gVar5 = wVar.b;
        Intrinsics.checkNotNull(gVar5);
        LinearLayout llRenpy7Cores = (LinearLayout) gVar5.f1365e;
        Intrinsics.checkNotNullExpressionValue(llRenpy7Cores, "llRenpy7Cores");
        llRenpy7Cores.removeAllViews();
        Iterator it = CollectionsKt.sortedWith(G1.b, new T(3)).iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            i3 = R.id.btn_core_remove;
            i4 = R.id.btn_core_install;
            i5 = R.layout.item_settings_engine_core;
            if (!zHasNext) {
                break;
            }
            final L1.a aVar = (L1.a) it.next();
            View viewInflate = wVar.getLayoutInflater().inflate(R.layout.item_settings_engine_core, (ViewGroup) llRenpy7Cores, false);
            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_core_name);
            final TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_core_status);
            final Button button = (Button) viewInflate.findViewById(R.id.btn_core_install);
            final Button button2 = (Button) viewInflate.findViewById(R.id.btn_core_remove);
            textView.setText("Ren'Py " + aVar.b);
            final Context context = contextRequireContext;
            final int i6 = 1;
            button.setOnClickListener(new View.OnClickListener() { // from class: E1.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i6) {
                        case 0:
                            EnumC0420v1 enumC0420v3 = EnumC0420v1.GODOT;
                            final int i7 = 0;
                            final w wVar2 = this;
                            final L1.a aVar2 = aVar;
                            final Context context2 = context;
                            final Button button3 = button;
                            final Button button4 = button2;
                            final TextView textView3 = textView2;
                            wVar2.f(enumC0420v3, aVar2, new Function0() { // from class: E1.p
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i8 = i7;
                                    Button button5 = button3;
                                    Button button6 = button4;
                                    switch (i8) {
                                        case 0:
                                            w.d(context2, aVar2, textView3, wVar2, button5, button6);
                                            break;
                                        default:
                                            w.e(context2, aVar2, textView3, wVar2, button5, button6);
                                            break;
                                    }
                                    return Unit.INSTANCE;
                                }
                            });
                            break;
                        default:
                            EnumC0420v1 enumC0420v4 = EnumC0420v1.RENPY7;
                            final int i8 = 1;
                            final w wVar3 = this;
                            final L1.a aVar3 = aVar;
                            final Context context3 = context;
                            final Button button5 = button;
                            final Button button6 = button2;
                            final TextView textView4 = textView2;
                            wVar3.f(enumC0420v4, aVar3, new Function0() { // from class: E1.p
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i9 = i8;
                                    Button button7 = button5;
                                    Button button8 = button6;
                                    switch (i9) {
                                        case 0:
                                            w.d(context3, aVar3, textView4, wVar3, button7, button8);
                                            break;
                                        default:
                                            w.e(context3, aVar3, textView4, wVar3, button7, button8);
                                            break;
                                    }
                                    return Unit.INSTANCE;
                                }
                            });
                            break;
                    }
                }
            });
            button2.setOnClickListener(new s(this, context, textView, aVar, textView2, button, button2, 1));
            contextRequireContext = context;
            e(contextRequireContext, aVar, textView2, this, button, button2);
            wVar = this;
            llRenpy7Cores.addView(viewInflate);
        }
        final Context context2 = contextRequireContext;
        M1.g gVar6 = wVar.b;
        Intrinsics.checkNotNull(gVar6);
        LinearLayout llGodotCores = (LinearLayout) gVar6.f1364d;
        Intrinsics.checkNotNullExpressionValue(llGodotCores, "llGodotCores");
        llGodotCores.removeAllViews();
        for (final L1.a aVar2 : CollectionsKt.sortedWith(W0.b, new T(2))) {
            View viewInflate2 = wVar.getLayoutInflater().inflate(i5, (ViewGroup) llGodotCores, false);
            TextView textView3 = (TextView) viewInflate2.findViewById(R.id.tv_core_name);
            final TextView textView4 = (TextView) viewInflate2.findViewById(R.id.tv_core_status);
            final Button button3 = (Button) viewInflate2.findViewById(i4);
            final Button button4 = (Button) viewInflate2.findViewById(i3);
            textView3.setText("Godot " + aVar2.b);
            final int i7 = 0;
            button3.setOnClickListener(new View.OnClickListener() { // from class: E1.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i7) {
                        case 0:
                            EnumC0420v1 enumC0420v3 = EnumC0420v1.GODOT;
                            final int i8 = 0;
                            final w wVar2 = this;
                            final L1.a aVar3 = aVar2;
                            final Context context3 = context2;
                            final Button button5 = button3;
                            final Button button6 = button4;
                            final TextView textView5 = textView4;
                            wVar2.f(enumC0420v3, aVar3, new Function0() { // from class: E1.p
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i9 = i8;
                                    Button button7 = button5;
                                    Button button8 = button6;
                                    switch (i9) {
                                        case 0:
                                            w.d(context3, aVar3, textView5, wVar2, button7, button8);
                                            break;
                                        default:
                                            w.e(context3, aVar3, textView5, wVar2, button7, button8);
                                            break;
                                    }
                                    return Unit.INSTANCE;
                                }
                            });
                            break;
                        default:
                            EnumC0420v1 enumC0420v4 = EnumC0420v1.RENPY7;
                            final int i9 = 1;
                            final w wVar3 = this;
                            final L1.a aVar4 = aVar2;
                            final Context context4 = context2;
                            final Button button7 = button3;
                            final Button button8 = button4;
                            final TextView textView6 = textView4;
                            wVar3.f(enumC0420v4, aVar4, new Function0() { // from class: E1.p
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i10 = i9;
                                    Button button9 = button7;
                                    Button button10 = button8;
                                    switch (i10) {
                                        case 0:
                                            w.d(context4, aVar4, textView6, wVar3, button9, button10);
                                            break;
                                        default:
                                            w.e(context4, aVar4, textView6, wVar3, button9, button10);
                                            break;
                                    }
                                    return Unit.INSTANCE;
                                }
                            });
                            break;
                    }
                }
            });
            Context context3 = context2;
            button4.setOnClickListener(new s(this, context3, textView3, aVar2, textView4, button3, button4, 0));
            d(context3, aVar2, textView4, this, button3, button4);
            context2 = context3;
            wVar = this;
            llGodotCores.addView(viewInflate2);
            i5 = R.layout.item_settings_engine_core;
            i3 = R.id.btn_core_remove;
            i4 = R.id.btn_core_install;
        }
        M1.g gVar7 = wVar.b;
        Intrinsics.checkNotNull(gVar7);
        final int i8 = 1;
        ((Button) gVar7.f1363c).setOnClickListener(new View.OnClickListener(wVar) { // from class: E1.o

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ w f903c;

            {
                this.f903c = wVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i8) {
                    case 0:
                        w wVar2 = this.f903c;
                        M1.g gVar8 = wVar2.b;
                        Intrinsics.checkNotNull(gVar8);
                        ((Button) gVar8.f1362a).setEnabled(false);
                        M1.g gVar9 = wVar2.b;
                        Intrinsics.checkNotNull(gVar9);
                        ((TextView) gVar9.f).setText(wVar2.getString(R.string.settings_patch_checking));
                        LifecycleOwner viewLifecycleOwner = wVar2.getViewLifecycleOwner();
                        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                        V1.A.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, new C0074i1(wVar2, context2, (Continuation) null, 3), 3);
                        break;
                    case 1:
                        EnumC0420v1 enumC0420v3 = EnumC0420v1.VXACE;
                        final int i9 = 0;
                        final w wVar3 = this.f903c;
                        final Context context4 = context2;
                        wVar3.f(enumC0420v3, null, new Function0() { // from class: E1.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                switch (i9) {
                                    case 0:
                                        EnumC0420v1 enumC0420v4 = EnumC0420v1.VXACE;
                                        w wVar4 = wVar3;
                                        M1.g gVar10 = wVar4.b;
                                        Intrinsics.checkNotNull(gVar10);
                                        TextView tvVxaceStatus2 = (TextView) gVar10.f1366h;
                                        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus2, "tvVxaceStatus");
                                        M1.g gVar11 = wVar4.b;
                                        Intrinsics.checkNotNull(gVar11);
                                        Button btnVxaceInstall2 = (Button) gVar11.f1363c;
                                        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall2, "btnVxaceInstall");
                                        wVar4.c(context4, enumC0420v4, tvVxaceStatus2, btnVxaceInstall2);
                                        break;
                                    default:
                                        EnumC0420v1 enumC0420v5 = EnumC0420v1.RENPY8;
                                        w wVar5 = wVar3;
                                        M1.g gVar12 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar12);
                                        TextView tvRenpy8Status2 = (TextView) gVar12.g;
                                        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status2, "tvRenpy8Status");
                                        M1.g gVar13 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar13);
                                        Button btnRenpy8Install2 = (Button) gVar13.b;
                                        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install2, "btnRenpy8Install");
                                        wVar5.c(context4, enumC0420v5, tvRenpy8Status2, btnRenpy8Install2);
                                        break;
                                }
                                return Unit.INSTANCE;
                            }
                        });
                        break;
                    default:
                        EnumC0420v1 enumC0420v4 = EnumC0420v1.RENPY8;
                        final int i10 = 1;
                        final w wVar4 = this.f903c;
                        final Context context5 = context2;
                        wVar4.f(enumC0420v4, null, new Function0() { // from class: E1.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                switch (i10) {
                                    case 0:
                                        EnumC0420v1 enumC0420v5 = EnumC0420v1.VXACE;
                                        w wVar5 = wVar4;
                                        M1.g gVar10 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar10);
                                        TextView tvVxaceStatus2 = (TextView) gVar10.f1366h;
                                        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus2, "tvVxaceStatus");
                                        M1.g gVar11 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar11);
                                        Button btnVxaceInstall2 = (Button) gVar11.f1363c;
                                        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall2, "btnVxaceInstall");
                                        wVar5.c(context5, enumC0420v5, tvVxaceStatus2, btnVxaceInstall2);
                                        break;
                                    default:
                                        EnumC0420v1 enumC0420v6 = EnumC0420v1.RENPY8;
                                        w wVar6 = wVar4;
                                        M1.g gVar12 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar12);
                                        TextView tvRenpy8Status2 = (TextView) gVar12.g;
                                        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status2, "tvRenpy8Status");
                                        M1.g gVar13 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar13);
                                        Button btnRenpy8Install2 = (Button) gVar13.b;
                                        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install2, "btnRenpy8Install");
                                        wVar6.c(context5, enumC0420v6, tvRenpy8Status2, btnRenpy8Install2);
                                        break;
                                }
                                return Unit.INSTANCE;
                            }
                        });
                        break;
                }
            }
        });
        M1.g gVar8 = wVar.b;
        Intrinsics.checkNotNull(gVar8);
        final int i9 = 2;
        ((Button) gVar8.b).setOnClickListener(new View.OnClickListener(wVar) { // from class: E1.o

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ w f903c;

            {
                this.f903c = wVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i9) {
                    case 0:
                        w wVar2 = this.f903c;
                        M1.g gVar9 = wVar2.b;
                        Intrinsics.checkNotNull(gVar9);
                        ((Button) gVar9.f1362a).setEnabled(false);
                        M1.g gVar10 = wVar2.b;
                        Intrinsics.checkNotNull(gVar10);
                        ((TextView) gVar10.f).setText(wVar2.getString(R.string.settings_patch_checking));
                        LifecycleOwner viewLifecycleOwner = wVar2.getViewLifecycleOwner();
                        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                        V1.A.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, new C0074i1(wVar2, context2, (Continuation) null, 3), 3);
                        break;
                    case 1:
                        EnumC0420v1 enumC0420v3 = EnumC0420v1.VXACE;
                        final int i10 = 0;
                        final w wVar3 = this.f903c;
                        final Context context4 = context2;
                        wVar3.f(enumC0420v3, null, new Function0() { // from class: E1.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                switch (i10) {
                                    case 0:
                                        EnumC0420v1 enumC0420v5 = EnumC0420v1.VXACE;
                                        w wVar5 = wVar3;
                                        M1.g gVar11 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar11);
                                        TextView tvVxaceStatus2 = (TextView) gVar11.f1366h;
                                        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus2, "tvVxaceStatus");
                                        M1.g gVar12 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar12);
                                        Button btnVxaceInstall2 = (Button) gVar12.f1363c;
                                        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall2, "btnVxaceInstall");
                                        wVar5.c(context4, enumC0420v5, tvVxaceStatus2, btnVxaceInstall2);
                                        break;
                                    default:
                                        EnumC0420v1 enumC0420v6 = EnumC0420v1.RENPY8;
                                        w wVar6 = wVar3;
                                        M1.g gVar13 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar13);
                                        TextView tvRenpy8Status2 = (TextView) gVar13.g;
                                        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status2, "tvRenpy8Status");
                                        M1.g gVar14 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar14);
                                        Button btnRenpy8Install2 = (Button) gVar14.b;
                                        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install2, "btnRenpy8Install");
                                        wVar6.c(context4, enumC0420v6, tvRenpy8Status2, btnRenpy8Install2);
                                        break;
                                }
                                return Unit.INSTANCE;
                            }
                        });
                        break;
                    default:
                        EnumC0420v1 enumC0420v4 = EnumC0420v1.RENPY8;
                        final int i11 = 1;
                        final w wVar4 = this.f903c;
                        final Context context5 = context2;
                        wVar4.f(enumC0420v4, null, new Function0() { // from class: E1.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                switch (i11) {
                                    case 0:
                                        EnumC0420v1 enumC0420v5 = EnumC0420v1.VXACE;
                                        w wVar5 = wVar4;
                                        M1.g gVar11 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar11);
                                        TextView tvVxaceStatus2 = (TextView) gVar11.f1366h;
                                        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus2, "tvVxaceStatus");
                                        M1.g gVar12 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar12);
                                        Button btnVxaceInstall2 = (Button) gVar12.f1363c;
                                        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall2, "btnVxaceInstall");
                                        wVar5.c(context5, enumC0420v5, tvVxaceStatus2, btnVxaceInstall2);
                                        break;
                                    default:
                                        EnumC0420v1 enumC0420v6 = EnumC0420v1.RENPY8;
                                        w wVar6 = wVar4;
                                        M1.g gVar13 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar13);
                                        TextView tvRenpy8Status2 = (TextView) gVar13.g;
                                        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status2, "tvRenpy8Status");
                                        M1.g gVar14 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar14);
                                        Button btnRenpy8Install2 = (Button) gVar14.b;
                                        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install2, "btnRenpy8Install");
                                        wVar6.c(context5, enumC0420v6, tvRenpy8Status2, btnRenpy8Install2);
                                        break;
                                }
                                return Unit.INSTANCE;
                            }
                        });
                        break;
                }
            }
        });
        wVar.b(context2);
        M1.g gVar9 = wVar.b;
        Intrinsics.checkNotNull(gVar9);
        final int i10 = 0;
        ((Button) gVar9.f1362a).setOnClickListener(new View.OnClickListener(wVar) { // from class: E1.o

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ w f903c;

            {
                this.f903c = wVar;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        w wVar2 = this.f903c;
                        M1.g gVar10 = wVar2.b;
                        Intrinsics.checkNotNull(gVar10);
                        ((Button) gVar10.f1362a).setEnabled(false);
                        M1.g gVar11 = wVar2.b;
                        Intrinsics.checkNotNull(gVar11);
                        ((TextView) gVar11.f).setText(wVar2.getString(R.string.settings_patch_checking));
                        LifecycleOwner viewLifecycleOwner = wVar2.getViewLifecycleOwner();
                        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                        V1.A.c(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, new C0074i1(wVar2, context2, (Continuation) null, 3), 3);
                        break;
                    case 1:
                        EnumC0420v1 enumC0420v3 = EnumC0420v1.VXACE;
                        final int i11 = 0;
                        final w wVar3 = this.f903c;
                        final Context context4 = context2;
                        wVar3.f(enumC0420v3, null, new Function0() { // from class: E1.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                switch (i11) {
                                    case 0:
                                        EnumC0420v1 enumC0420v5 = EnumC0420v1.VXACE;
                                        w wVar5 = wVar3;
                                        M1.g gVar12 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar12);
                                        TextView tvVxaceStatus2 = (TextView) gVar12.f1366h;
                                        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus2, "tvVxaceStatus");
                                        M1.g gVar13 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar13);
                                        Button btnVxaceInstall2 = (Button) gVar13.f1363c;
                                        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall2, "btnVxaceInstall");
                                        wVar5.c(context4, enumC0420v5, tvVxaceStatus2, btnVxaceInstall2);
                                        break;
                                    default:
                                        EnumC0420v1 enumC0420v6 = EnumC0420v1.RENPY8;
                                        w wVar6 = wVar3;
                                        M1.g gVar14 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar14);
                                        TextView tvRenpy8Status2 = (TextView) gVar14.g;
                                        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status2, "tvRenpy8Status");
                                        M1.g gVar15 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar15);
                                        Button btnRenpy8Install2 = (Button) gVar15.b;
                                        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install2, "btnRenpy8Install");
                                        wVar6.c(context4, enumC0420v6, tvRenpy8Status2, btnRenpy8Install2);
                                        break;
                                }
                                return Unit.INSTANCE;
                            }
                        });
                        break;
                    default:
                        EnumC0420v1 enumC0420v4 = EnumC0420v1.RENPY8;
                        final int i12 = 1;
                        final w wVar4 = this.f903c;
                        final Context context5 = context2;
                        wVar4.f(enumC0420v4, null, new Function0() { // from class: E1.q
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                switch (i12) {
                                    case 0:
                                        EnumC0420v1 enumC0420v5 = EnumC0420v1.VXACE;
                                        w wVar5 = wVar4;
                                        M1.g gVar12 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar12);
                                        TextView tvVxaceStatus2 = (TextView) gVar12.f1366h;
                                        Intrinsics.checkNotNullExpressionValue(tvVxaceStatus2, "tvVxaceStatus");
                                        M1.g gVar13 = wVar5.b;
                                        Intrinsics.checkNotNull(gVar13);
                                        Button btnVxaceInstall2 = (Button) gVar13.f1363c;
                                        Intrinsics.checkNotNullExpressionValue(btnVxaceInstall2, "btnVxaceInstall");
                                        wVar5.c(context5, enumC0420v5, tvVxaceStatus2, btnVxaceInstall2);
                                        break;
                                    default:
                                        EnumC0420v1 enumC0420v6 = EnumC0420v1.RENPY8;
                                        w wVar6 = wVar4;
                                        M1.g gVar14 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar14);
                                        TextView tvRenpy8Status2 = (TextView) gVar14.g;
                                        Intrinsics.checkNotNullExpressionValue(tvRenpy8Status2, "tvRenpy8Status");
                                        M1.g gVar15 = wVar6.b;
                                        Intrinsics.checkNotNull(gVar15);
                                        Button btnRenpy8Install2 = (Button) gVar15.b;
                                        Intrinsics.checkNotNullExpressionValue(btnRenpy8Install2, "btnRenpy8Install");
                                        wVar6.c(context5, enumC0420v6, tvRenpy8Status2, btnRenpy8Install2);
                                        break;
                                }
                                return Unit.INSTANCE;
                            }
                        });
                        break;
                }
            }
        });
    }
}
