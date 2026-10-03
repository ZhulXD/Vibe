package E1;

import A1.C0021h;
import C1.S0;
import C1.ViewOnClickListenerC0075j;
import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.os.EnvironmentCompat;
import androidx.fragment.app.Fragment;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.tabs.TabLayout;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.hub.SetupAppLockActivity;
import com.minhub.gamehub.hub.catalog.HostLimitTracker;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p064y1.C0363c0;
import p064y1.F1;
import p064y1.N0;
import p064y1.O0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LE1/n;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGeneralSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GeneralSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,384:1\n360#2,7:385\n1878#2,3:392\n1563#2:395\n1634#2,3:396\n1869#2,2:400\n1869#2,2:402\n1563#2:404\n1634#2,3:405\n1#3:399\n*S KotlinDebug\n*F\n+ 1 GeneralSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/GeneralSettingsFragment\n*L\n96#1:385,7\n97#1:392,3\n173#1:395\n173#1:396,3\n225#1:400,2\n266#1:402,2\n154#1:404\n154#1:405,3\n*E\n"})
public final class n extends Fragment {
    public p058w1.i b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f900c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ActivityResultLauncher f901d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ActivityResultLauncher f902e;

    public n() {
        final int i3 = 0;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback(this) { // from class: E1.h

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ n f891c;

            {
                this.f891c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i4 = i3;
                n nVar = this.f891c;
                ActivityResult result = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        Intrinsics.checkNotNullParameter(result, "result");
                        String str = nVar.f900c;
                        if (str != null) {
                            nVar.f900c = null;
                            if (result.getResultCode() == -1) {
                                if (Intrinsics.areEqual(str, "disable")) {
                                    Context contextRequireContext = nVar.requireContext();
                                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                                    S1.d.v(contextRequireContext, false);
                                    Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
                                    Intrinsics.checkNotNullParameter("", "v");
                                    S1.d.s(contextRequireContext).edit().putString("app_lock_pin_hash", "").apply();
                                    S1.d.u(contextRequireContext, false);
                                    nVar.b(contextRequireContext);
                                    Toast.makeText(contextRequireContext, nVar.getString(R.string.app_lock_disabled), 0).show();
                                } else if (Intrinsics.areEqual(str, "change_pin")) {
                                    ActivityResultLauncher activityResultLauncher = nVar.f902e;
                                    int i5 = SetupAppLockActivity.f3805j;
                                    Context contextRequireContext2 = nVar.requireContext();
                                    Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
                                    activityResultLauncher.launch(com.bumptech.glide.c.j(contextRequireContext2));
                                }
                            }
                            break;
                        }
                        break;
                    default:
                        Intrinsics.checkNotNullParameter(result, "result");
                        if (result.getResultCode() == -1 && nVar.b != null) {
                            Context contextRequireContext3 = nVar.requireContext();
                            Intrinsics.checkNotNullExpressionValue(contextRequireContext3, "requireContext(...)");
                            nVar.b(contextRequireContext3);
                            Toast.makeText(contextRequireContext3, nVar.getString(R.string.app_lock_setup_success), 0).show();
                            break;
                        }
                        break;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.f901d = activityResultLauncherRegisterForActivityResult;
        final int i4 = 1;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback(this) { // from class: E1.h

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ n f891c;

            {
                this.f891c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i5 = i4;
                n nVar = this.f891c;
                ActivityResult result = (ActivityResult) obj;
                switch (i5) {
                    case 0:
                        Intrinsics.checkNotNullParameter(result, "result");
                        String str = nVar.f900c;
                        if (str != null) {
                            nVar.f900c = null;
                            if (result.getResultCode() == -1) {
                                if (Intrinsics.areEqual(str, "disable")) {
                                    Context contextRequireContext = nVar.requireContext();
                                    Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                                    S1.d.v(contextRequireContext, false);
                                    Intrinsics.checkNotNullParameter(contextRequireContext, "<this>");
                                    Intrinsics.checkNotNullParameter("", "v");
                                    S1.d.s(contextRequireContext).edit().putString("app_lock_pin_hash", "").apply();
                                    S1.d.u(contextRequireContext, false);
                                    nVar.b(contextRequireContext);
                                    Toast.makeText(contextRequireContext, nVar.getString(R.string.app_lock_disabled), 0).show();
                                } else if (Intrinsics.areEqual(str, "change_pin")) {
                                    ActivityResultLauncher activityResultLauncher = nVar.f902e;
                                    int i6 = SetupAppLockActivity.f3805j;
                                    Context contextRequireContext2 = nVar.requireContext();
                                    Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
                                    activityResultLauncher.launch(com.bumptech.glide.c.j(contextRequireContext2));
                                }
                            }
                            break;
                        }
                        break;
                    default:
                        Intrinsics.checkNotNullParameter(result, "result");
                        if (result.getResultCode() == -1 && nVar.b != null) {
                            Context contextRequireContext3 = nVar.requireContext();
                            Intrinsics.checkNotNullExpressionValue(contextRequireContext3, "requireContext(...)");
                            nVar.b(contextRequireContext3);
                            Toast.makeText(contextRequireContext3, nVar.getString(R.string.app_lock_setup_success), 0).show();
                            break;
                        }
                        break;
                }
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult2, "registerForActivityResult(...)");
        this.f902e = activityResultLauncherRegisterForActivityResult2;
    }

    public static final void c(n nVar, Spinner spinner, List list, List list2, Enum r7, Function1 function1) {
        Context contextRequireContext = nVar.requireContext();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(nVar.getString(((Number) it.next()).intValue()));
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(contextRequireContext, R.layout.item_spinner, arrayList);
        arrayAdapter.setDropDownViewResource(R.layout.item_spinner_dropdown);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        spinner.setSelection(list.indexOf(r7));
        spinner.setOnItemSelectedListener(new S0(function1, list, 1));
    }

    public final void b(Context context) {
        Set set = S1.d.f2060a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        boolean z2 = S1.d.s(context).getBoolean("app_lock_enabled", false) && S1.d.b(context).length() > 0;
        p058w1.i iVar = this.b;
        Intrinsics.checkNotNull(iVar);
        iVar.f5810h.setOnCheckedChangeListener(null);
        p058w1.i iVar2 = this.b;
        Intrinsics.checkNotNull(iVar2);
        iVar2.f5810h.setChecked(z2);
        p058w1.i iVar3 = this.b;
        Intrinsics.checkNotNull(iVar3);
        iVar3.f5810h.setOnCheckedChangeListener(new C0133i(context, this, 0));
        boolean z3 = new F.b(new C0021h(context, 1)).c() == 0;
        p058w1.i iVar4 = this.b;
        Intrinsics.checkNotNull(iVar4);
        iVar4.f5811i.setVisibility((z2 && z3) ? 0 : 8);
        p058w1.i iVar5 = this.b;
        Intrinsics.checkNotNull(iVar5);
        iVar5.f5811i.setOnCheckedChangeListener(null);
        p058w1.i iVar6 = this.b;
        Intrinsics.checkNotNull(iVar6);
        Switch r5 = iVar6.f5811i;
        Intrinsics.checkNotNullParameter(context, "<this>");
        r5.setChecked(S1.d.s(context).getBoolean("app_lock_biometric", false) && z3);
        p058w1.i iVar7 = this.b;
        Intrinsics.checkNotNull(iVar7);
        iVar7.f5811i.setOnCheckedChangeListener(new C0127c(context, 3));
        p058w1.i iVar8 = this.b;
        Intrinsics.checkNotNull(iVar8);
        iVar8.f5807c.setVisibility(z2 ? 0 : 8);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(R.layout.fragment_settings_general, viewGroup, false);
        int i4 = R.id.chip_group_engines;
        ChipGroup chipGroup = (ChipGroup) viewInflate.findViewById(R.id.chip_group_engines);
        if (chipGroup != null) {
            i4 = R.id.ll_host_status;
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_host_status);
            if (linearLayout != null) {
                i4 = R.id.row_change_pin;
                LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.row_change_pin);
                if (linearLayout2 != null) {
                    i4 = R.id.spinner_godot_fps;
                    Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spinner_godot_fps);
                    if (spinner != null) {
                        i4 = R.id.spinner_godot_renderer;
                        Spinner spinner2 = (Spinner) viewInflate.findViewById(R.id.spinner_godot_renderer);
                        if (spinner2 != null) {
                            i4 = R.id.spinner_lang;
                            Spinner spinner3 = (Spinner) viewInflate.findViewById(R.id.spinner_lang);
                            if (spinner3 != null) {
                                i4 = R.id.spinner_renpy_resolution;
                                Spinner spinner4 = (Spinner) viewInflate.findViewById(R.id.spinner_renpy_resolution);
                                if (spinner4 != null) {
                                    i4 = R.id.switch_app_lock;
                                    Switch r12 = (Switch) viewInflate.findViewById(R.id.switch_app_lock);
                                    if (r12 != null) {
                                        i4 = R.id.switch_app_lock_biometric;
                                        Switch r13 = (Switch) viewInflate.findViewById(R.id.switch_app_lock_biometric);
                                        if (r13 != null) {
                                            i4 = R.id.switch_auto_save;
                                            Switch r14 = (Switch) viewInflate.findViewById(R.id.switch_auto_save);
                                            if (r14 != null) {
                                                i4 = R.id.switch_frame_skip;
                                                Switch r15 = (Switch) viewInflate.findViewById(R.id.switch_frame_skip);
                                                if (r15 != null) {
                                                    i4 = R.id.switch_fullscreen;
                                                    Switch r16 = (Switch) viewInflate.findViewById(R.id.switch_fullscreen);
                                                    if (r16 != null) {
                                                        i4 = R.id.switch_renpy_memory_saver;
                                                        Switch r17 = (Switch) viewInflate.findViewById(R.id.switch_renpy_memory_saver);
                                                        if (r17 != null) {
                                                            i4 = R.id.switch_vibration;
                                                            Switch r18 = (Switch) viewInflate.findViewById(R.id.switch_vibration);
                                                            if (r18 != null) {
                                                                i4 = R.id.tab_render;
                                                                TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.tab_render);
                                                                if (tabLayout != null) {
                                                                    i4 = R.id.tv_device_arch;
                                                                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_device_arch);
                                                                    if (textView != null) {
                                                                        i4 = R.id.tv_device_name;
                                                                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_device_name);
                                                                        if (textView2 != null) {
                                                                            ScrollView scrollView = (ScrollView) viewInflate;
                                                                            p058w1.i iVar = new p058w1.i(scrollView, chipGroup, linearLayout, linearLayout2, spinner, spinner2, spinner3, spinner4, r12, r13, r14, r15, r16, r17, r18, tabLayout, textView, textView2);
                                                                            this.b = iVar;
                                                                            Intrinsics.checkNotNull(iVar);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        Object next;
        boolean z2;
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(v2, "v");
        Context context = requireContext();
        Intrinsics.checkNotNullExpressionValue(context, "requireContext(...)");
        p058w1.i iVar = this.b;
        Intrinsics.checkNotNull(iVar);
        Switch r2 = iVar.f5814l;
        Set set = S1.d.f2060a;
        Intrinsics.checkNotNullParameter(context, "<this>");
        r2.setChecked(S1.d.s(context).getBoolean("fullscreen", true));
        p058w1.i iVar2 = this.b;
        Intrinsics.checkNotNull(iVar2);
        Switch r3 = iVar2.f5816n;
        Intrinsics.checkNotNullParameter(context, "<this>");
        ?? r8 = 0;
        r3.setChecked(context.getSharedPreferences("minhub_prefs", 0).getBoolean("vibration", true));
        p058w1.i iVar3 = this.b;
        Intrinsics.checkNotNull(iVar3);
        Switch r4 = iVar3.f5812j;
        Intrinsics.checkNotNullParameter(context, "<this>");
        r4.setChecked(context.getSharedPreferences("minhub_prefs", 0).getBoolean("auto_save", true));
        p058w1.i iVar4 = this.b;
        Intrinsics.checkNotNull(iVar4);
        Switch r5 = iVar4.f5815m;
        Intrinsics.checkNotNullParameter(context, "context");
        r5.setChecked(context.getSharedPreferences("minhub_prefs", 0).getBoolean("renpy_memory_saver", true));
        p058w1.i iVar5 = this.b;
        Intrinsics.checkNotNull(iVar5);
        Switch r6 = iVar5.f5813k;
        Intrinsics.checkNotNullParameter(context, "<this>");
        r6.setChecked(context.getSharedPreferences("minhub_prefs", 0).getBoolean("frame_skip", false));
        p058w1.i iVar6 = this.b;
        Intrinsics.checkNotNull(iVar6);
        iVar6.f5814l.setOnCheckedChangeListener(new C0127c(context, 4));
        p058w1.i iVar7 = this.b;
        Intrinsics.checkNotNull(iVar7);
        iVar7.f5816n.setOnCheckedChangeListener(new C0127c(context, 5));
        p058w1.i iVar8 = this.b;
        Intrinsics.checkNotNull(iVar8);
        iVar8.f5812j.setOnCheckedChangeListener(new C0127c(context, 6));
        p058w1.i iVar9 = this.b;
        Intrinsics.checkNotNull(iVar9);
        iVar9.f5815m.setOnCheckedChangeListener(new C0127c(context, 7));
        p058w1.i iVar10 = this.b;
        Intrinsics.checkNotNull(iVar10);
        iVar10.f5813k.setOnCheckedChangeListener(new C0127c(context, 8));
        List list = S1.f.f2061a;
        p058w1.i iVar11 = this.b;
        Intrinsics.checkNotNull(iVar11);
        iVar11.f5817o.i();
        Iterator it = list.iterator();
        int i5 = 0;
        while (true) {
            if (!it.hasNext()) {
                i5 = -1;
                break;
            }
            ((S1.e) it.next()).getClass();
            if (Intrinsics.areEqual("webgl2", S1.d.f(context))) {
                break;
            } else {
                i5++;
            }
        }
        int i6 = 0;
        for (Object obj : list) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            p058w1.i iVar12 = this.b;
            Intrinsics.checkNotNull(iVar12);
            TabLayout tabLayout = iVar12.f5817o;
            p058w1.i iVar13 = this.b;
            Intrinsics.checkNotNull(iVar13);
            p007c1.f fVarH = iVar13.f5817o.h();
            ((S1.e) obj).getClass();
            fVarH.b("WebGL 2");
            tabLayout.c(fVarH, i6 == i5);
            i6 = i7;
        }
        p058w1.i iVar14 = this.b;
        Intrinsics.checkNotNull(iVar14);
        iVar14.f5817o.a(new l(context, list));
        p058w1.i iVar15 = this.b;
        Intrinsics.checkNotNull(iVar15);
        iVar15.b.removeAllViews();
        float f = getResources().getDisplayMetrics().density;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM HH:mm", Locale.getDefault());
        for (HostLimitTracker.Host host : HostLimitTracker.Host.getEntries()) {
            HostLimitTracker.Status status = HostLimitTracker.INSTANCE.status(context, host);
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(0);
            linearLayout.setGravity(16);
            linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            int i8 = (int) (7 * f);
            linearLayout.setPadding(0, i8, 0, i8);
            TextView textView = new TextView(context);
            textView.setText(host.getDisplayName());
            textView.setTextColor(context.getColor(R.color.text_pri));
            textView.setTextSize(13.0f);
            textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            TextView textView2 = new TextView(context);
            if (status.getLimited()) {
                textView2.setText(getString(R.string.settings_host_status_limited, simpleDateFormat.format(new Date(status.getResetsAtMillis()))));
                textView2.setTextColor(context.getColor(R.color.danger));
            } else {
                textView2.setText(getString(R.string.settings_host_status_ok));
                textView2.setTextColor(context.getColor(R.color.success));
            }
            textView2.setTextSize(12.0f);
            linearLayout.addView(textView);
            linearLayout.addView(textView2);
            p058w1.i iVar16 = this.b;
            Intrinsics.checkNotNull(iVar16);
            iVar16.b.addView(linearLayout);
        }
        EnumEntries enumEntries = F1.f;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntries, 10));
        Iterator<E> it2 = enumEntries.iterator();
        while (it2.hasNext()) {
            int iOrdinal = ((F1) it2.next()).ordinal();
            if (iOrdinal == 0) {
                i4 = R.string.settings_renpy_resolution_auto;
            } else if (iOrdinal == 1) {
                i4 = R.string.settings_renpy_resolution_1080;
            } else if (iOrdinal == 2) {
                i4 = R.string.settings_renpy_resolution_720;
            } else {
                if (iOrdinal != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                i4 = R.string.settings_renpy_resolution_native;
            }
            arrayList.add(getString(i4));
        }
        p058w1.i iVar17 = this.b;
        Intrinsics.checkNotNull(iVar17);
        Spinner spinner = iVar17.g;
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), R.layout.item_spinner, arrayList);
        arrayAdapter.setDropDownViewResource(R.layout.item_spinner_dropdown);
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
        p058w1.i iVar18 = this.b;
        Intrinsics.checkNotNull(iVar18);
        Spinner spinner2 = iVar18.g;
        Intrinsics.checkNotNullParameter(context, "context");
        C0363c0 c0363c0 = F1.f6065c;
        AttributeSet attributeSet = null;
        String string = context.getSharedPreferences("minhub_prefs", 0).getString("renpy_render_resolution", null);
        c0363c0.getClass();
        Iterator<E> it3 = F1.f.iterator();
        do {
            if (!it3.hasNext()) {
                next = null;
                break;
            }
            next = it3.next();
        } while (!Intrinsics.areEqual(((F1) next).b, string));
        F1 f3 = (F1) next;
        if (f3 == null) {
            f3 = F1.AUTO;
        }
        spinner2.setSelection(enumEntries.indexOf(f3));
        p058w1.i iVar19 = this.b;
        Intrinsics.checkNotNull(iVar19);
        iVar19.g.setOnItemSelectedListener(new S0(context, enumEntries, 2));
        p058w1.i iVar20 = this.b;
        Intrinsics.checkNotNull(iVar20);
        Spinner spinnerGodotFps = iVar20.f5808d;
        Intrinsics.checkNotNullExpressionValue(spinnerGodotFps, "spinnerGodotFps");
        c(this, spinnerGodotFps, N0.f6107h, CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.settings_godot_fps_60), Integer.valueOf(R.string.settings_godot_fps_30), Integer.valueOf(R.string.settings_godot_fps_unlimited)}), C0363c0.b(context), new j(context, 0));
        p058w1.i iVar21 = this.b;
        Intrinsics.checkNotNull(iVar21);
        Spinner spinnerGodotRenderer = iVar21.f5809e;
        Intrinsics.checkNotNullExpressionValue(spinnerGodotRenderer, "spinnerGodotRenderer");
        c(this, spinnerGodotRenderer, O0.g, CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(R.string.settings_godot_renderer_vulkan), Integer.valueOf(R.string.settings_godot_renderer_opengl)}), C0363c0.d(context), new j(context, 1));
        String[] strArr = {kotlin.collections.unsigned.a.o("🇻🇳 ", getString(R.string.lang_vietnamese)), kotlin.collections.unsigned.a.o("🇬🇧 ", getString(R.string.lang_english)), kotlin.collections.unsigned.a.o("🇮🇩 ", getString(R.string.lang_indonesian)), kotlin.collections.unsigned.a.o("🇨🇳 ", getString(R.string.lang_chinese)), kotlin.collections.unsigned.a.o("🇯🇵 ", getString(R.string.lang_japanese)), kotlin.collections.unsigned.a.o("🇰🇷 ", getString(R.string.lang_korean))};
        String[] strArr2 = {"vi", "en", "in", "zh", "ja", "ko"};
        p058w1.i iVar22 = this.b;
        Intrinsics.checkNotNull(iVar22);
        Spinner spinner3 = iVar22.f;
        ArrayAdapter arrayAdapter2 = new ArrayAdapter(requireContext(), R.layout.item_spinner, strArr);
        arrayAdapter2.setDropDownViewResource(R.layout.item_spinner_dropdown);
        spinner3.setAdapter((SpinnerAdapter) arrayAdapter2);
        p058w1.i iVar23 = this.b;
        Intrinsics.checkNotNull(iVar23);
        iVar23.f.setSelection(RangesKt.coerceAtLeast(ArraysKt___ArraysKt.indexOf((String[]) strArr2, S1.d.d(context)), 0));
        p058w1.i iVar24 = this.b;
        Intrinsics.checkNotNull(iVar24);
        iVar24.f.setOnItemSelectedListener(new m(strArr2, context, this));
        b(context);
        p058w1.i iVar25 = this.b;
        Intrinsics.checkNotNull(iVar25);
        iVar25.f5810h.setOnCheckedChangeListener(new C0133i(context, this, 1));
        p058w1.i iVar26 = this.b;
        Intrinsics.checkNotNull(iVar26);
        iVar26.f5811i.setOnCheckedChangeListener(new C0127c(context, 2));
        p058w1.i iVar27 = this.b;
        Intrinsics.checkNotNull(iVar27);
        iVar27.f5807c.setOnClickListener(new ViewOnClickListenerC0075j(19, context, this));
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        if (MANUFACTURER.length() > 0) {
            char upperCase = Character.toUpperCase(MANUFACTURER.charAt(0));
            z2 = true;
            String strSubstring = MANUFACTURER.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            MANUFACTURER = upperCase + strSubstring;
        } else {
            z2 = true;
        }
        String strH = Build.MODEL;
        p058w1.i iVar28 = this.b;
        Intrinsics.checkNotNull(iVar28);
        TextView textView3 = iVar28.f5819q;
        Intrinsics.checkNotNull(strH);
        if (!StringsKt__StringsJVMKt.startsWith(strH, MANUFACTURER, true)) {
            strH = kotlin.collections.unsigned.a.h(MANUFACTURER, " ", strH);
        }
        textView3.setText(strH);
        String[] SUPPORTED_64_BIT_ABIS = Build.SUPPORTED_64_BIT_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_64_BIT_ABIS, "SUPPORTED_64_BIT_ABIS");
        if (SUPPORTED_64_BIT_ABIS.length != 0) {
            z2 = false;
        }
        String[] SUPPORTED_ABIS = Build.SUPPORTED_ABIS;
        Intrinsics.checkNotNullExpressionValue(SUPPORTED_ABIS, "SUPPORTED_ABIS");
        String str = (String) ArraysKt.firstOrNull(SUPPORTED_ABIS);
        if (str == null) {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        p058w1.i iVar29 = this.b;
        Intrinsics.checkNotNull(iVar29);
        iVar29.f5818p.setText(!z2 ? getString(R.string.settings_device_arch_64, str) : getString(R.string.settings_device_arch_32, str));
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add(GameEngine.MV);
        listCreateListBuilder.add(GameEngine.MZ);
        listCreateListBuilder.add(GameEngine.TYRANO);
        listCreateListBuilder.add(GameEngine.HTML);
        listCreateListBuilder.add(GameEngine.VXACE);
        listCreateListBuilder.add(GameEngine.RENPY8);
        listCreateListBuilder.add(GameEngine.RENPY7);
        listCreateListBuilder.add(GameEngine.KIRI);
        if (!z2) {
            listCreateListBuilder.add(GameEngine.GODOT);
        }
        List listBuild = CollectionsKt.build(listCreateListBuilder);
        float f4 = getResources().getDisplayMetrics().density;
        float f5 = 6.0f * f4;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(requireContext().getColor(R.color.s3));
        Intrinsics.checkNotNullExpressionValue(colorStateListValueOf, "valueOf(...)");
        int color = requireContext().getColor(R.color.text_pri);
        ColorStateList colorStateListValueOf2 = ColorStateList.valueOf(requireContext().getColor(R.color.accent));
        Intrinsics.checkNotNullExpressionValue(colorStateListValueOf2, "valueOf(...)");
        p058w1.i iVar30 = this.b;
        Intrinsics.checkNotNull(iVar30);
        iVar30.f5806a.removeAllViews();
        Iterator it4 = listBuild.iterator();
        while (it4.hasNext()) {
            GameEngine gameEngine = (GameEngine) it4.next();
            Chip chip = new Chip(requireContext(), attributeSet);
            switch (k.f895a[gameEngine.ordinal()]) {
                case 1:
                    i3 = R.string.login_engine_mv;
                    break;
                case 2:
                    i3 = R.string.login_engine_mz;
                    break;
                case 3:
                    i3 = R.string.login_engine_tyrano;
                    break;
                case 4:
                    i3 = R.string.login_engine_vxace;
                    break;
                case 5:
                    i3 = R.string.login_engine_html;
                    break;
                case 6:
                    i3 = R.string.login_engine_renpy8;
                    break;
                case 7:
                    i3 = R.string.login_engine_renpy7;
                    break;
                case 8:
                    i3 = R.string.login_engine_kiri;
                    break;
                case 9:
                    i3 = R.string.login_engine_godot;
                    break;
                case 10:
                    i3 = R.string.login_engine_browse;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            chip.setText(getString(i3));
            chip.setClickable(r8);
            chip.setCheckable(r8);
            chip.setTextColor(color);
            chip.setChipBackgroundColor(colorStateListValueOf);
            chip.setChipStrokeColor(colorStateListValueOf2);
            chip.setChipStrokeWidth(f4);
            Y0.k kVar = new Y0.k();
            Y0.k kVar2 = new Y0.k();
            Y0.k kVar3 = new Y0.k();
            Y0.k kVar4 = new Y0.k();
            Y0.e eVar = new Y0.e(r8);
            Y0.e eVar2 = new Y0.e(r8);
            Y0.e eVar3 = new Y0.e(r8);
            Iterator it5 = it4;
            Y0.e eVar4 = new Y0.e(r8);
            Y0.a aVar = new Y0.a(f5);
            float f6 = f4;
            Y0.a aVar2 = new Y0.a(f5);
            ColorStateList colorStateList = colorStateListValueOf;
            Y0.a aVar3 = new Y0.a(f5);
            int i9 = color;
            Y0.a aVar4 = new Y0.a(f5);
            float f7 = f5;
            Y0.m mVar = new Y0.m();
            mVar.f2429a = kVar;
            mVar.b = kVar2;
            mVar.f2430c = kVar3;
            mVar.f2431d = kVar4;
            mVar.f2432e = aVar;
            mVar.f = aVar2;
            mVar.g = aVar3;
            mVar.f2433h = aVar4;
            mVar.f2434i = eVar;
            mVar.f2435j = eVar2;
            mVar.f2436k = eVar3;
            mVar.f2437l = eVar4;
            chip.setShapeAppearanceModel(mVar);
            chip.setTextSize(11.0f);
            chip.setChipIconVisible(false);
            chip.setCloseIconVisible(false);
            float f8 = 10.0f * f6;
            chip.setChipStartPadding(f8);
            chip.setChipEndPadding(f8);
            chip.setTextStartPadding(0.0f);
            chip.setTextEndPadding(0.0f);
            p058w1.i iVar31 = this.b;
            Intrinsics.checkNotNull(iVar31);
            iVar31.f5806a.addView(chip);
            r8 = 0;
            f4 = f6;
            colorStateListValueOf = colorStateList;
            color = i9;
            f5 = f7;
            attributeSet = null;
            it4 = it5;
        }
    }
}
