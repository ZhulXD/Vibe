package C1;

import A1.C0009b;
import A1.C0033n;
import P.C0144f;
import P.RunnableC0140d;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.chip.Chip;
import com.google.android.material.chip.ChipGroup;
import com.minhub.gamehub.R;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: renamed from: C1.d1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LC1/d1;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFragment.kt\ncom/minhub/gamehub/hub/HomeFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,251:1\n55#2,12:252\n84#2,3:264\n1869#3,2:267\n774#3:269\n865#3,2:270\n1869#3:272\n1870#3:274\n1#4:273\n257#5,2:275\n257#5,2:277\n255#5:279\n257#5,2:280\n*S KotlinDebug\n*F\n+ 1 HomeFragment.kt\ncom/minhub/gamehub/hub/HomeFragment\n*L\n84#1:252,12\n84#1:264,3\n116#1:267,2\n168#1:269\n168#1:270,2\n176#1:272\n176#1:274\n232#1:275,2\n237#1:277,2\n73#1:279\n74#1:280,2\n*E\n"})
public final class C0059d1 extends Fragment {
    public p058w1.c b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f574c = LazyKt.lazy(new C0033n(4, this));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0076j0 f575d = new C0076j0(new C0050a1(this, 0));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f576e = "all";
    public String f = "";
    public int g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List f577h = CollectionsKt.emptyList();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x015b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x011f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0135 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:142:? A[LOOP:6: B:69:0x0123->B:142:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:61:0x0101  */
    /* JADX WARN: Code duplicated, block: B:63:0x0112  */
    /* JADX WARN: Code duplicated, block: B:65:0x0118  */
    /* JADX WARN: Code duplicated, block: B:71:0x0129  */
    /* JADX WARN: Code duplicated, block: B:75:0x013b  */
    /* JADX WARN: Code duplicated, block: B:78:0x014a  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00be, code lost:
    
        if (r2.equals("all") == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d9, code lost:
    
        if (r2.equals("") == false) goto L58;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.util.List r9, boolean r10) {
        /*
            Method dump skipped, instruction units count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C1.C0059d1.b(java.util.List, boolean):void");
    }

    public final void c() {
        int iMax = Math.max(1, (this.f577h.size() + 9) / 10);
        int i3 = (this.g - 1) * 10;
        List listEmptyList = this.f577h.isEmpty() ? CollectionsKt.emptyList() : this.f577h.subList(i3, Math.min(i3 + 10, this.f577h.size()));
        C0144f c0144f = (C0144f) this.f575d.f625e;
        C0009b c0009b = c0144f.f1664a;
        int i4 = c0144f.g + 1;
        c0144f.g = i4;
        List list = c0144f.f1667e;
        if (listEmptyList != list) {
            if (listEmptyList == null) {
                int size = list.size();
                c0144f.f1667e = null;
                c0144f.f = Collections.EMPTY_LIST;
                c0009b.a(0, size);
                c0144f.a();
            } else if (list == null) {
                c0144f.f1667e = listEmptyList;
                c0144f.f = Collections.unmodifiableList(listEmptyList);
                c0009b.i(0, listEmptyList.size());
                c0144f.a();
            } else {
                ((Executor) c0144f.b.b).execute(new RunnableC0140d(c0144f, list, listEmptyList, i4));
            }
        }
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        TextView tvEmpty = (TextView) cVar.f5653j;
        Intrinsics.checkNotNullExpressionValue(tvEmpty, "tvEmpty");
        tvEmpty.setVisibility(this.f577h.isEmpty() ? 0 : 8);
        p058w1.c cVar2 = this.b;
        Intrinsics.checkNotNull(cVar2);
        LinearLayout layoutPager = (LinearLayout) cVar2.f5651h;
        Intrinsics.checkNotNullExpressionValue(layoutPager, "layoutPager");
        layoutPager.setVisibility(iMax > 1 ? 0 : 8);
        if (iMax <= 1) {
            return;
        }
        p058w1.c cVar3 = this.b;
        Intrinsics.checkNotNull(cVar3);
        ((TextView) cVar3.f5654k).setText(getString(R.string.format_page_indicator, Integer.valueOf(this.g), Integer.valueOf(iMax)));
        p058w1.c cVar4 = this.b;
        Intrinsics.checkNotNull(cVar4);
        ((Button) cVar4.b).setEnabled(this.g > 1);
        p058w1.c cVar5 = this.b;
        Intrinsics.checkNotNull(cVar5);
        ((Button) cVar5.f5647a).setEnabled(this.g < iMax);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(R.layout.fragment_home, viewGroup, false);
        int i4 = R.id.btn_next_page;
        Button button = (Button) viewInflate.findViewById(R.id.btn_next_page);
        if (button != null) {
            i4 = R.id.btn_prev_page;
            Button button2 = (Button) viewInflate.findViewById(R.id.btn_prev_page);
            if (button2 != null) {
                i4 = R.id.btn_search;
                ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_search);
                if (imageButton != null) {
                    i4 = R.id.chip_group;
                    ChipGroup chipGroup = (ChipGroup) viewInflate.findViewById(R.id.chip_group);
                    if (chipGroup != null) {
                        i4 = R.id.container_downloading;
                        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.container_downloading);
                        if (linearLayout != null) {
                            i4 = R.id.et_search;
                            EditText editText = (EditText) viewInflate.findViewById(R.id.et_search);
                            if (editText != null) {
                                i4 = R.id.layout_pager;
                                LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.layout_pager);
                                if (linearLayout2 != null) {
                                    i4 = R.id.recycler;
                                    RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler);
                                    if (recyclerView != null) {
                                        i4 = R.id.tv_count;
                                        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_count);
                                        if (textView != null) {
                                            i4 = R.id.tv_empty;
                                            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_empty);
                                            if (textView2 != null) {
                                                i4 = R.id.tv_page_indicator;
                                                TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_page_indicator);
                                                if (textView3 != null) {
                                                    LinearLayout linearLayout3 = (LinearLayout) viewInflate;
                                                    p058w1.c cVar = new p058w1.c(linearLayout3, button, button2, imageButton, chipGroup, linearLayout, editText, linearLayout2, recyclerView, textView, textView2, textView3);
                                                    this.b = cVar;
                                                    Intrinsics.checkNotNull(cVar);
                                                    Intrinsics.checkNotNullExpressionValue(linearLayout3, "getRoot(...)");
                                                    return linearLayout3;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0184  */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        int color;
        Intrinsics.checkNotNullParameter(v2, "v");
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        RecyclerView recyclerView = (RecyclerView) cVar.f5652i;
        requireContext();
        recyclerView.setLayoutManager(new GridLayoutManager());
        p058w1.c cVar2 = this.b;
        Intrinsics.checkNotNull(cVar2);
        ((RecyclerView) cVar2.f5652i).setAdapter(this.f575d);
        p058w1.c cVar3 = this.b;
        Intrinsics.checkNotNull(cVar3);
        final int i3 = 0;
        ((Button) cVar3.b).setOnClickListener(new View.OnClickListener(this) { // from class: C1.b1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ C0059d1 f557c;

            {
                this.f557c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        C0059d1 c0059d1 = this.f557c;
                        c0059d1.g--;
                        c0059d1.c();
                        p058w1.c cVar4 = c0059d1.b;
                        Intrinsics.checkNotNull(cVar4);
                        ((RecyclerView) cVar4.f5652i).f0(0);
                        break;
                    case 1:
                        C0059d1 c0059d2 = this.f557c;
                        c0059d2.g++;
                        c0059d2.c();
                        p058w1.c cVar5 = c0059d2.b;
                        Intrinsics.checkNotNull(cVar5);
                        ((RecyclerView) cVar5.f5652i).f0(0);
                        break;
                    default:
                        C0059d1 c0059d3 = this.f557c;
                        p058w1.c cVar6 = c0059d3.b;
                        Intrinsics.checkNotNull(cVar6);
                        EditText etSearch = (EditText) cVar6.g;
                        Intrinsics.checkNotNullExpressionValue(etSearch, "etSearch");
                        boolean z2 = etSearch.getVisibility() == 0;
                        p058w1.c cVar7 = c0059d3.b;
                        Intrinsics.checkNotNull(cVar7);
                        EditText etSearch2 = (EditText) cVar7.g;
                        Intrinsics.checkNotNullExpressionValue(etSearch2, "etSearch");
                        etSearch2.setVisibility(!z2 ? 0 : 8);
                        if (!z2) {
                            p058w1.c cVar8 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar8);
                            ((EditText) cVar8.g).requestFocus();
                            p058w1.c cVar9 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar9);
                            EditText etSearch3 = (EditText) cVar9.g;
                            Intrinsics.checkNotNullExpressionValue(etSearch3, "etSearch");
                            Object systemService = c0059d3.requireContext().getSystemService("input_method");
                            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                            ((InputMethodManager) systemService).showSoftInput(etSearch3, 1);
                        } else {
                            p058w1.c cVar10 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar10);
                            Editable text = ((EditText) cVar10.g).getText();
                            if (text != null) {
                                text.clear();
                            }
                            p058w1.c cVar11 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar11);
                            EditText etSearch4 = (EditText) cVar11.g;
                            Intrinsics.checkNotNullExpressionValue(etSearch4, "etSearch");
                            Object systemService2 = c0059d3.requireContext().getSystemService("input_method");
                            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                            ((InputMethodManager) systemService2).hideSoftInputFromWindow(etSearch4.getWindowToken(), 0);
                        }
                        break;
                }
            }
        });
        p058w1.c cVar4 = this.b;
        Intrinsics.checkNotNull(cVar4);
        final int i4 = 1;
        ((Button) cVar4.f5647a).setOnClickListener(new View.OnClickListener(this) { // from class: C1.b1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ C0059d1 f557c;

            {
                this.f557c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        C0059d1 c0059d1 = this.f557c;
                        c0059d1.g--;
                        c0059d1.c();
                        p058w1.c cVar5 = c0059d1.b;
                        Intrinsics.checkNotNull(cVar5);
                        ((RecyclerView) cVar5.f5652i).f0(0);
                        break;
                    case 1:
                        C0059d1 c0059d2 = this.f557c;
                        c0059d2.g++;
                        c0059d2.c();
                        p058w1.c cVar6 = c0059d2.b;
                        Intrinsics.checkNotNull(cVar6);
                        ((RecyclerView) cVar6.f5652i).f0(0);
                        break;
                    default:
                        C0059d1 c0059d3 = this.f557c;
                        p058w1.c cVar7 = c0059d3.b;
                        Intrinsics.checkNotNull(cVar7);
                        EditText etSearch = (EditText) cVar7.g;
                        Intrinsics.checkNotNullExpressionValue(etSearch, "etSearch");
                        boolean z2 = etSearch.getVisibility() == 0;
                        p058w1.c cVar8 = c0059d3.b;
                        Intrinsics.checkNotNull(cVar8);
                        EditText etSearch2 = (EditText) cVar8.g;
                        Intrinsics.checkNotNullExpressionValue(etSearch2, "etSearch");
                        etSearch2.setVisibility(!z2 ? 0 : 8);
                        if (!z2) {
                            p058w1.c cVar9 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar9);
                            ((EditText) cVar9.g).requestFocus();
                            p058w1.c cVar10 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar10);
                            EditText etSearch3 = (EditText) cVar10.g;
                            Intrinsics.checkNotNullExpressionValue(etSearch3, "etSearch");
                            Object systemService = c0059d3.requireContext().getSystemService("input_method");
                            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                            ((InputMethodManager) systemService).showSoftInput(etSearch3, 1);
                        } else {
                            p058w1.c cVar11 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar11);
                            Editable text = ((EditText) cVar11.g).getText();
                            if (text != null) {
                                text.clear();
                            }
                            p058w1.c cVar12 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar12);
                            EditText etSearch4 = (EditText) cVar12.g;
                            Intrinsics.checkNotNullExpressionValue(etSearch4, "etSearch");
                            Object systemService2 = c0059d3.requireContext().getSystemService("input_method");
                            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                            ((InputMethodManager) systemService2).hideSoftInputFromWindow(etSearch4.getWindowToken(), 0);
                        }
                        break;
                }
            }
        });
        ((Z0) this.f574c.getValue()).b.observe(getViewLifecycleOwner(), new C0117x0(new C0050a1(this, 1)));
        p058w1.c cVar5 = this.b;
        Intrinsics.checkNotNull(cVar5);
        final int i5 = 2;
        ((ImageButton) cVar5.f5648c).setOnClickListener(new View.OnClickListener(this) { // from class: C1.b1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ C0059d1 f557c;

            {
                this.f557c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        C0059d1 c0059d1 = this.f557c;
                        c0059d1.g--;
                        c0059d1.c();
                        p058w1.c cVar6 = c0059d1.b;
                        Intrinsics.checkNotNull(cVar6);
                        ((RecyclerView) cVar6.f5652i).f0(0);
                        break;
                    case 1:
                        C0059d1 c0059d2 = this.f557c;
                        c0059d2.g++;
                        c0059d2.c();
                        p058w1.c cVar7 = c0059d2.b;
                        Intrinsics.checkNotNull(cVar7);
                        ((RecyclerView) cVar7.f5652i).f0(0);
                        break;
                    default:
                        C0059d1 c0059d3 = this.f557c;
                        p058w1.c cVar8 = c0059d3.b;
                        Intrinsics.checkNotNull(cVar8);
                        EditText etSearch = (EditText) cVar8.g;
                        Intrinsics.checkNotNullExpressionValue(etSearch, "etSearch");
                        boolean z2 = etSearch.getVisibility() == 0;
                        p058w1.c cVar9 = c0059d3.b;
                        Intrinsics.checkNotNull(cVar9);
                        EditText etSearch2 = (EditText) cVar9.g;
                        Intrinsics.checkNotNullExpressionValue(etSearch2, "etSearch");
                        etSearch2.setVisibility(!z2 ? 0 : 8);
                        if (!z2) {
                            p058w1.c cVar10 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar10);
                            ((EditText) cVar10.g).requestFocus();
                            p058w1.c cVar11 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar11);
                            EditText etSearch3 = (EditText) cVar11.g;
                            Intrinsics.checkNotNullExpressionValue(etSearch3, "etSearch");
                            Object systemService = c0059d3.requireContext().getSystemService("input_method");
                            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                            ((InputMethodManager) systemService).showSoftInput(etSearch3, 1);
                        } else {
                            p058w1.c cVar12 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar12);
                            Editable text = ((EditText) cVar12.g).getText();
                            if (text != null) {
                                text.clear();
                            }
                            p058w1.c cVar13 = c0059d3.b;
                            Intrinsics.checkNotNull(cVar13);
                            EditText etSearch4 = (EditText) cVar13.g;
                            Intrinsics.checkNotNullExpressionValue(etSearch4, "etSearch");
                            Object systemService2 = c0059d3.requireContext().getSystemService("input_method");
                            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
                            ((InputMethodManager) systemService2).hideSoftInputFromWindow(etSearch4.getWindowToken(), 0);
                        }
                        break;
                }
            }
        });
        p058w1.c cVar6 = this.b;
        Intrinsics.checkNotNull(cVar6);
        EditText etSearch = (EditText) cVar6.g;
        Intrinsics.checkNotNullExpressionValue(etSearch, "etSearch");
        etSearch.addTextChangedListener(new C0056c1(0, this));
        String str = "kiri";
        Object obj = "tyrano";
        Object obj2 = "all";
        for (Pair pair : CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("all", getString(R.string.filter_all)), TuplesKt.to("mv", "RPG MV"), TuplesKt.to("mz", "RPG MZ"), TuplesKt.to("godot", "Godot"), TuplesKt.to("renpy", "Ren'Py"), TuplesKt.to("tyrano", "Tyrano"), TuplesKt.to("vxace", "VX Ace"), TuplesKt.to("kiri", "KiriKiri"), TuplesKt.to("fav", getString(R.string.filter_fav))})) {
            Object objComponent1 = pair.component1();
            Intrinsics.checkNotNullExpressionValue(objComponent1, "component1(...)");
            String str2 = (String) objComponent1;
            String str3 = (String) pair.component2();
            switch (str2.hashCode()) {
                case -858746827:
                    if (str2.equals(obj)) {
                        color = Color.parseColor("#F97316");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                case 3497:
                    if (str2.equals("mv")) {
                        color = Color.parseColor("#3B82F6");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                case 3501:
                    if (str2.equals("mz")) {
                        color = Color.parseColor("#8B5CF6");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                case 3292181:
                    if (str2.equals(str)) {
                        color = Color.parseColor("#FF6B35");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                case 98529121:
                    if (str2.equals("godot")) {
                        color = Color.parseColor("#478CBF");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                case 108399588:
                    if (str2.equals("renpy")) {
                        color = Color.parseColor("#E91E8C");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                case 112646785:
                    if (str2.equals("vxace")) {
                        color = Color.parseColor("#10B981");
                    } else {
                        color = Color.parseColor("#EF4444");
                    }
                    break;
                default:
                    color = Color.parseColor("#EF4444");
                    break;
            }
            Chip chip = new Chip(requireContext(), null);
            chip.setText(str3);
            chip.setCheckable(true);
            Object obj3 = obj2;
            chip.setChecked(Intrinsics.areEqual(str2, obj3));
            chip.setCheckedIconVisible(false);
            chip.setChipIconVisible(false);
            chip.setRippleColorResource(android.R.color.transparent);
            chip.setChipMinHeight(chip.getResources().getDimension(R.dimen.control_height_34));
            chip.setTextSize(11.0f);
            chip.setTypeface(Typeface.DEFAULT_BOLD);
            Object obj4 = obj;
            chip.setChipBackgroundColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{Color.argb(34, Color.red(color), Color.green(color), Color.blue(color)), Color.parseColor("#18181f")}));
            chip.setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{color, Color.parseColor("#8888A4")}));
            chip.setChipStrokeWidth(1.0f);
            chip.setChipStrokeColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_checked}, new int[0]}, new int[]{Color.argb(68, Color.red(color), Color.green(color), Color.blue(color)), 0}));
            chip.setOnClickListener(new ViewOnClickListenerC0075j(3, this, str2));
            p058w1.c cVar7 = this.b;
            Intrinsics.checkNotNull(cVar7);
            ((ChipGroup) cVar7.f).addView(chip);
            obj2 = obj3;
            obj = obj4;
            str = str;
        }
        p058w1.c cVar8 = this.b;
        Intrinsics.checkNotNull(cVar8);
        ((ChipGroup) cVar8.f).setSingleSelection(true);
    }
}
