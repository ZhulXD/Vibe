package com.minhub.gamehub.hub;

import A1.C0036q;
import C1.C0049a0;
import C1.C0052b0;
import C1.C0058d0;
import C1.C0061e0;
import C1.C0069h;
import C1.C0076j0;
import C1.C0093p;
import C1.C0101s;
import C1.C0107u;
import C1.E1;
import C1.EnumC0055c0;
import C1.Q;
import C1.RunnableC0051b;
import C1.RunnableC0060e;
import C1.RunnableC0084m;
import C1.T;
import C1.U;
import C1.ViewOnClickListenerC0048a;
import C1.ViewOnClickListenerC0090o;
import C1.Y;
import C1.Z;
import C1.Z0;
import C1.r;
import D1.b;
import H0.o;
import S1.c;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.ViewModelLazy;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.hub.catalog.CatalogDiskCache;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import com.minhub.gamehub.hub.catalog.CatalogFetchResult;
import com.minhub.gamehub.hub.catalog.CatalogMemoryCache;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.OnlineCatalogPage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p058w1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/AddGameActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAddGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddGameActivity.kt\ncom/minhub/gamehub/hub/AddGameActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,707:1\n75#2,13:708\n1#3:721\n1869#4,2:722\n1869#4,2:724\n1761#4,3:742\n1869#4,2:745\n161#5,8:726\n161#5,8:734\n*S KotlinDebug\n*F\n+ 1 AddGameActivity.kt\ncom/minhub/gamehub/hub/AddGameActivity\n*L\n42#1:708,13\n693#1:722,2\n702#1:724,2\n144#1:742,3\n560#1:745,2\n136#1:726,8\n137#1:734,8\n*E\n"})
public final class AddGameActivity extends c {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final /* synthetic */ int f3740y = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f3741e;
    public final Handler f;
    public final Set g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f3742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Lazy f3743i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0076j0 f3744j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ActivityResultLauncher f3745k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final ActivityResultLauncher f3746l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public o f3747m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Uri f3748n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0107u f3749o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public E1 f3750p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public E1 f3751q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public List f3752r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public List f3753s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public List f3754t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Z f3755u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f3756v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3757w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f3758x;

    public AddGameActivity() {
        new ViewModelLazy(Reflection.getOrCreateKotlinClass(Z0.class), new C0101s(this, 0), new r(this), new C0101s(this, 1));
        this.f = new Handler(Looper.getMainLooper());
        this.g = Collections.synchronizedSet(new LinkedHashSet());
        this.f3742h = Collections.synchronizedList(new ArrayList());
        this.f3743i = LazyKt.lazy(new C0036q(7));
        int i3 = 0;
        this.f3744j = new C0076j0(new C0069h(this, i3));
        this.f3745k = registerForActivityResult(new ActivityResultContracts.GetContent(), new C0093p(this, i3));
        this.f3746l = registerForActivityResult(new ActivityResultContracts.OpenDocumentTree(), new C0093p(this, 1));
        this.f3750p = new E1();
        this.f3751q = new E1();
        this.f3752r = CollectionsKt.emptyList();
        this.f3753s = CollectionsKt.emptyList();
        this.f3754t = CollectionsKt.emptyList();
        this.f3755u = new Z(null, null, null, 15);
    }

    public static final void o(LinearLayout linearLayout, List list, Ref.ObjectRef objectRef, AddGameActivity addGameActivity, Function1 function1, Function1 function2, TextView textView, NestedScrollView nestedScrollView) {
        linearLayout.removeAllViews();
        for (Object obj : list) {
            boolean zAreEqual = Intrinsics.areEqual(obj, objectRef.element);
            TextView textView2 = new TextView(addGameActivity);
            textView2.setText((CharSequence) function1.invoke(obj));
            textView2.setTextSize(14.0f);
            textView2.setMinHeight(textView2.getResources().getDimensionPixelSize(R.dimen.filter_dropdown_item_height));
            textView2.setGravity(16);
            float f = 12;
            textView2.setPadding((int) (addGameActivity.getResources().getDisplayMetrics().density * f), 0, (int) (f * addGameActivity.getResources().getDisplayMetrics().density), 0);
            textView2.setTextColor(ContextCompat.getColor(addGameActivity, zAreEqual ? R.color.accent : R.color.text_pri));
            if (zAreEqual) {
                textView2.setBackgroundResource(R.drawable.bg_filter_dropdown_item_selected);
                textView2.setTypeface(textView2.getTypeface(), 1);
            }
            textView2.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            textView2.setOnClickListener(new ViewOnClickListenerC0090o(objectRef, obj, function2, addGameActivity, textView, nestedScrollView));
            linearLayout.addView(textView2);
        }
    }

    public static void q(Dialog dialog) {
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        try {
            dialog.dismiss();
        } catch (WindowManager.BadTokenException e2) {
            Log.d("MinHub", "Import dialog window already gone: " + e2.getMessage());
        } catch (IllegalArgumentException e3) {
            Log.d("MinHub", "Import dialog already detached: " + e3.getMessage());
        }
    }

    public final void A(int i3) {
        Z filter = this.f3755u;
        E1 pagerState = this.f3750p;
        Intrinsics.checkNotNullParameter(filter, "filter");
        Intrinsics.checkNotNullParameter(pagerState, "pagerState");
        int iCoerceIn = RangesKt.coerceIn(i3, 1, RangesKt.coerceAtLeast(pagerState.b, 1));
        p000a.a c0058d0 = U.c(filter) ? new C0058d0(iCoerceIn) : new C0061e0(iCoerceIn);
        if (c0058d0 instanceof C0061e0) {
            u(((C0061e0) c0058d0).f580m, 1);
            return;
        }
        if (!(c0058d0 instanceof C0058d0)) {
            throw new NoWhenBranchMatchedException();
        }
        E1 e1A = E1.a(this.f3750p, ((C0058d0) c0058d0).f573m, false, null, 2);
        this.f3750p = e1A;
        List list = U.b(this.f3754t, e1A.f422a);
        C0076j0 c0076j0 = this.f3744j;
        c0076j0.getClass();
        Intrinsics.checkNotNullParameter(list, "list");
        c0076j0.f = list;
        c0076j0.c();
        w();
    }

    public final void B(Q state) {
        Intrinsics.checkNotNullParameter(state, "state");
        a aVar = this.f3741e;
        a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar = null;
        }
        aVar.f5617i.setVisibility(state == Q.b ? 0 : 8);
        a aVar3 = this.f3741e;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar3 = null;
        }
        aVar3.f5620l.setVisibility(state == Q.f488c ? 0 : 8);
        a aVar4 = this.f3741e;
        if (aVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            aVar2 = aVar4;
        }
        aVar2.f5621m.setVisibility(state == Q.f489d ? 0 : 8);
    }

    public final void C(Dialog dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        List importDialogs = this.f3742h;
        Intrinsics.checkNotNullExpressionValue(importDialogs, "importDialogs");
        importDialogs.remove(dialog);
    }

    public final void D(int i3) {
        a aVar = this.f3741e;
        a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar = null;
        }
        aVar.f5623o.setProgress(i3);
        a aVar3 = this.f3741e;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            aVar2 = aVar3;
        }
        aVar2.f5628t.setText(i3 + "%");
    }

    public final void m(boolean z2) {
        String strD;
        List items = this.f3752r;
        List fullCatalogItems = this.f3753s;
        Z filter = this.f3755u;
        Intrinsics.checkNotNullParameter(items, "remotePageItems");
        Intrinsics.checkNotNullParameter(fullCatalogItems, "fullCatalogItems");
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (U.c(filter)) {
            items = fullCatalogItems;
        }
        boolean zC = U.c(this.f3755u);
        C0076j0 c0076j0 = this.f3744j;
        if (!zC) {
            this.f3754t = items;
            this.f3750p = E1.a(this.f3751q, 0, false, null, 3);
            c0076j0.getClass();
            Intrinsics.checkNotNullParameter(items, "list");
            c0076j0.f = items;
            c0076j0.c();
            return;
        }
        Z filter2 = this.f3755u;
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(filter2, "filter");
        String str = filter2.f539a;
        EnumC0055c0 filter3 = filter2.f541d;
        String string = StringsKt.trim((CharSequence) str).toString();
        if (string.length() != 0) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : items) {
                if (StringsKt__StringsKt.contains(((OnlineCatalogItem) obj).getTitle(), (CharSequence) string, true)) {
                    arrayList.add(obj);
                }
            }
            items = arrayList;
        }
        GameEngine gameEngine = filter2.f540c.b;
        if (gameEngine != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : items) {
                if (GameEngine.INSTANCE.fromConfigLabel(((OnlineCatalogItem) obj2).getEngine()) == gameEngine) {
                    arrayList2.add(obj2);
                }
            }
            items = arrayList2;
        }
        if (filter3 != EnumC0055c0.ALL) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : items) {
                OnlineCatalogItem onlineCatalogItem = (OnlineCatalogItem) obj3;
                Intrinsics.checkNotNullParameter(onlineCatalogItem, "<this>");
                Intrinsics.checkNotNullParameter(filter3, "filter");
                String str2 = filter3.b;
                if (str2 != null && (strD = U.d(str2)) != null) {
                    List<String> categories = onlineCatalogItem.getCategories();
                    if (categories == null || !categories.isEmpty()) {
                        Iterator<T> it = categories.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.areEqual(U.d((String) it.next()), strD)) {
                            }
                        }
                    }
                }
                arrayList3.add(obj3);
            }
            items = arrayList3;
        }
        int iOrdinal = filter2.b.ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal == 1) {
                items = CollectionsKt.asReversed(items);
            } else if (iOrdinal == 2) {
                items = CollectionsKt.sortedWith(items, new T(0));
            } else {
                if (iOrdinal != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                items = CollectionsKt.sortedWith(items, new T(1));
            }
        }
        this.f3754t = items;
        int size = items.size();
        E1 previous = this.f3750p;
        Intrinsics.checkNotNullParameter(previous, "previous");
        int iA = U.a(size);
        int iCoerceIn = z2 ? 1 : RangesKt.coerceIn(previous.f422a, 1, iA);
        previous.getClass();
        this.f3750p = new E1(iCoerceIn, iA, false, null);
        List list = U.b(this.f3754t, iCoerceIn);
        c0076j0.getClass();
        Intrinsics.checkNotNullParameter(list, "list");
        c0076j0.f = list;
        c0076j0.c();
    }

    public final void n(Z filter) {
        Z z2 = this.f3755u;
        this.f3755u = filter;
        boolean z3 = this.f3758x;
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (!U.c(filter) || z3) {
            m(true);
            w();
            return;
        }
        CatalogMemoryCache catalogMemoryCache = CatalogMemoryCache.INSTANCE;
        if (!catalogMemoryCache.getHasHydratedFullCatalog()) {
            this.f3750p = E1.a(this.f3750p, 0, true, null, 3);
            x();
            new Thread(new RunnableC0084m(this, z2, 0)).start();
        } else {
            this.f3753s = catalogMemoryCache.getFullCatalogItems();
            this.f3758x = true;
            m(true);
            w();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a aVar = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_add_game, (ViewGroup) null, false);
        int i3 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
        if (imageButton != null) {
            i3 = R.id.btn_filter;
            ImageButton imageButton2 = (ImageButton) viewInflate.findViewById(R.id.btn_filter);
            if (imageButton2 != null) {
                i3 = R.id.btn_go_library;
                Button button = (Button) viewInflate.findViewById(R.id.btn_go_library);
                if (button != null) {
                    i3 = R.id.btn_more;
                    ImageButton imageButton3 = (ImageButton) viewInflate.findViewById(R.id.btn_more);
                    if (imageButton3 != null) {
                        i3 = R.id.btn_next_page;
                        Button button2 = (Button) viewInflate.findViewById(R.id.btn_next_page);
                        if (button2 != null) {
                            i3 = R.id.btn_prev_page;
                            Button button3 = (Button) viewInflate.findViewById(R.id.btn_prev_page);
                            if (button3 != null) {
                                i3 = R.id.content_frame;
                                FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.content_frame);
                                if (frameLayout != null) {
                                    i3 = R.id.layout_catalog;
                                    LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_catalog);
                                    if (linearLayout != null) {
                                        i3 = R.id.layout_header;
                                        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.layout_header);
                                        if (linearLayout2 != null) {
                                            i3 = R.id.layout_pager;
                                            LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.layout_pager);
                                            if (linearLayout3 != null) {
                                                i3 = R.id.layout_step1;
                                                LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.layout_step1);
                                                if (linearLayout4 != null) {
                                                    i3 = R.id.layout_step2;
                                                    LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.layout_step2);
                                                    if (linearLayout5 != null) {
                                                        i3 = R.id.progress_catalog;
                                                        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_catalog);
                                                        if (progressBar != null) {
                                                            i3 = R.id.progress_import;
                                                            ProgressBar progressBar2 = (ProgressBar) viewInflate.findViewById(R.id.progress_import);
                                                            if (progressBar2 != null) {
                                                                i3 = R.id.recycler_catalog;
                                                                RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_catalog);
                                                                if (recyclerView != null) {
                                                                    i3 = R.id.tv_catalog_message;
                                                                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_catalog_message);
                                                                    if (textView != null) {
                                                                        i3 = R.id.tv_import_status;
                                                                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_import_status);
                                                                        if (textView2 != null) {
                                                                            i3 = R.id.tv_page_indicator;
                                                                            TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_page_indicator);
                                                                            if (textView3 != null) {
                                                                                i3 = R.id.tv_progress_pct;
                                                                                TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_progress_pct);
                                                                                if (textView4 != null) {
                                                                                    i3 = R.id.view_download_badge;
                                                                                    View viewFindViewById = viewInflate.findViewById(R.id.view_download_badge);
                                                                                    if (viewFindViewById != null) {
                                                                                        LinearLayout linearLayout6 = (LinearLayout) viewInflate;
                                                                                        a aVar2 = new a(linearLayout6, imageButton, imageButton2, button, imageButton3, button2, button3, frameLayout, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, progressBar, progressBar2, recyclerView, textView, textView2, textView3, textView4, viewFindViewById);
                                                                                        Intrinsics.checkNotNullExpressionValue(aVar2, "inflate(...)");
                                                                                        this.f3741e = aVar2;
                                                                                        setContentView(linearLayout6);
                                                                                        a aVar3 = this.f3741e;
                                                                                        if (aVar3 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar3 = null;
                                                                                        }
                                                                                        ViewCompat.setOnApplyWindowInsetsListener(aVar3.f5612a, new C0093p(this, 2));
                                                                                        CatalogDownloadQueue.Companion companion = CatalogDownloadQueue.INSTANCE;
                                                                                        Context applicationContext = getApplicationContext();
                                                                                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                                                                                        companion.getInstance(applicationContext).observe(new C0069h(this, 1));
                                                                                        a aVar4 = this.f3741e;
                                                                                        if (aVar4 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar4 = null;
                                                                                        }
                                                                                        aVar4.b.setOnClickListener(new ViewOnClickListenerC0048a(this, 3));
                                                                                        a aVar5 = this.f3741e;
                                                                                        if (aVar5 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar5 = null;
                                                                                        }
                                                                                        aVar5.f5615e.setOnClickListener(new ViewOnClickListenerC0048a(this, 4));
                                                                                        a aVar6 = this.f3741e;
                                                                                        if (aVar6 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar6 = null;
                                                                                        }
                                                                                        aVar6.f5613c.setOnClickListener(new ViewOnClickListenerC0048a(this, 5));
                                                                                        a aVar7 = this.f3741e;
                                                                                        if (aVar7 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar7 = null;
                                                                                        }
                                                                                        aVar7.f5624p.setLayoutManager(new GridLayoutManager());
                                                                                        a aVar8 = this.f3741e;
                                                                                        if (aVar8 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar8 = null;
                                                                                        }
                                                                                        aVar8.f5624p.setAdapter(this.f3744j);
                                                                                        a aVar9 = this.f3741e;
                                                                                        if (aVar9 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar9 = null;
                                                                                        }
                                                                                        aVar9.g.setOnClickListener(new ViewOnClickListenerC0048a(this, 1));
                                                                                        a aVar10 = this.f3741e;
                                                                                        if (aVar10 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar10 = null;
                                                                                        }
                                                                                        aVar10.f.setOnClickListener(new ViewOnClickListenerC0048a(this, 2));
                                                                                        B(Q.b);
                                                                                        CatalogDiskCache catalogDiskCache = CatalogDiskCache.INSTANCE;
                                                                                        Context applicationContext2 = getApplicationContext();
                                                                                        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
                                                                                        List<OnlineCatalogItem> listLoad = catalogDiskCache.load(applicationContext2);
                                                                                        if (listLoad != null) {
                                                                                            CatalogMemoryCache catalogMemoryCache = CatalogMemoryCache.INSTANCE;
                                                                                            catalogMemoryCache.setFullCatalogItems(listLoad);
                                                                                            catalogMemoryCache.setHasHydratedFullCatalog(true);
                                                                                            this.f3753s = listLoad;
                                                                                            this.f3758x = true;
                                                                                            y(new OnlineCatalogPage(1, 10, U.a(listLoad.size()), listLoad.size(), CollectionsKt.take(listLoad, 10)));
                                                                                        } else {
                                                                                            u(1, 1);
                                                                                        }
                                                                                        a aVar11 = this.f3741e;
                                                                                        if (aVar11 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                            aVar11 = null;
                                                                                        }
                                                                                        aVar11.f5614d.setOnClickListener(new ViewOnClickListenerC0048a(this, 6));
                                                                                        a aVar12 = this.f3741e;
                                                                                        if (aVar12 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        } else {
                                                                                            aVar = aVar12;
                                                                                        }
                                                                                        aVar.f5625q.setOnClickListener(new ViewOnClickListenerC0048a(this, 0));
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }

    @Override // p011e.AbstractActivityC0248j, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        List list;
        List importDialogs = this.f3742h;
        Intrinsics.checkNotNullExpressionValue(importDialogs, "importDialogs");
        synchronized (importDialogs) {
            List importDialogs2 = this.f3742h;
            Intrinsics.checkNotNullExpressionValue(importDialogs2, "importDialogs");
            list = CollectionsKt.toList(importDialogs2);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            q((Dialog) it.next());
        }
        this.f3742h.clear();
        q(this.f3747m);
        this.f3747m = null;
        if (!isChangingConfigurations()) {
            Set importOperations = this.g;
            Intrinsics.checkNotNullExpressionValue(importOperations, "importOperations");
            synchronized (importOperations) {
                try {
                    Set importOperations2 = this.g;
                    Intrinsics.checkNotNullExpressionValue(importOperations2, "importOperations");
                    Iterator it2 = importOperations2.iterator();
                    while (it2.hasNext()) {
                        ((b) it2.next()).b();
                    }
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        super.onDestroy();
    }

    public final void p(TextView textView, View view) {
        view.setVisibility(8);
        textView.setText(getString(R.string.filter_chevron_closed));
    }

    public final void r(b operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        Set importOperations = this.g;
        Intrinsics.checkNotNullExpressionValue(importOperations, "importOperations");
        importOperations.remove(operation);
    }

    public final String s(Y y2) {
        String label;
        int iOrdinal = y2.ordinal();
        if (iOrdinal == 0) {
            String string = getString(R.string.catalog_engine_all);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        if (iOrdinal == 10) {
            String string2 = getString(R.string.catalog_engine_browse);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            return string2;
        }
        GameEngine gameEngine = y2.b;
        if (gameEngine != null && (label = gameEngine.getLabel()) != null) {
            return label;
        }
        String string3 = getString(R.string.catalog_engine_all);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        return string3;
    }

    public final List t() throws ExecutionException, InterruptedException {
        d c0052b0;
        CatalogDiskCache catalogDiskCache = CatalogDiskCache.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        CatalogDiskCache.CachedCatalog cachedCatalogLoadWithMeta = catalogDiskCache.loadWithMeta(applicationContext);
        List<OnlineCatalogItem> items = cachedCatalogLoadWithMeta != null ? cachedCatalogLoadWithMeta.getItems() : null;
        String etag = cachedCatalogLoadWithMeta != null ? cachedCatalogLoadWithMeta.getEtag() : null;
        final B1.d fetchConditional = new B1.d(this, 2);
        Intrinsics.checkNotNullParameter(fetchConditional, "fetchConditional");
        int i3 = 0;
        CatalogFetchResult catalogFetchResult = (CatalogFetchResult) fetchConditional.invoke(1, items != null && !items.isEmpty() && etag != null && !StringsKt.isBlank(etag) ? etag : null);
        if (catalogFetchResult instanceof CatalogFetchResult.NotModified) {
            if (items == null) {
                items = CollectionsKt.emptyList();
            }
            c0052b0 = new C0049a0(items);
        } else {
            Intrinsics.checkNotNull(catalogFetchResult, "null cannot be cast to non-null type com.minhub.gamehub.hub.catalog.CatalogFetchResult.Fresh");
            CatalogFetchResult.Fresh fresh = (CatalogFetchResult.Fresh) catalogFetchResult;
            if (fresh.getPage().getTotalPages() <= 1) {
                c0052b0 = new C0052b0(fresh.getPage().getGames(), fresh.getEtag());
            } else {
                List list = CollectionsKt.toList(new IntRange(2, fresh.getPage().getTotalPages()));
                ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(RangesKt.coerceAtMost(list.size(), 4));
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    final int iIntValue = ((Number) it.next()).intValue();
                    arrayList.add(executorServiceNewFixedThreadPool.submit(new Callable() { // from class: C1.S
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            Object objInvoke = fetchConditional.invoke(Integer.valueOf(iIntValue), null);
                            Intrinsics.checkNotNull(objInvoke, "null cannot be cast to non-null type com.minhub.gamehub.hub.catalog.CatalogFetchResult.Fresh");
                            return ((CatalogFetchResult.Fresh) objInvoke).getPage().getGames();
                        }
                    }));
                }
                executorServiceNewFixedThreadPool.shutdown();
                List listCreateListBuilder = CollectionsKt.createListBuilder();
                listCreateListBuilder.addAll(fresh.getPage().getGames());
                int size = arrayList.size();
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    Object obj2 = ((Future) obj).get();
                    Intrinsics.checkNotNullExpressionValue(obj2, "get(...)");
                    listCreateListBuilder.addAll((Collection) obj2);
                }
                c0052b0 = new C0052b0(CollectionsKt.build(listCreateListBuilder), fresh.getEtag());
            }
        }
        if (c0052b0 instanceof C0049a0) {
            CatalogDiskCache catalogDiskCache2 = CatalogDiskCache.INSTANCE;
            Context applicationContext2 = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            catalogDiskCache2.touch(applicationContext2);
        } else {
            if (!(c0052b0 instanceof C0052b0)) {
                throw new NoWhenBranchMatchedException();
            }
            CatalogDiskCache catalogDiskCache3 = CatalogDiskCache.INSTANCE;
            Context applicationContext3 = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
            C0052b0 c0052b1 = (C0052b0) c0052b0;
            catalogDiskCache3.save(applicationContext3, c0052b1.b, c0052b1.f556c);
        }
        return c0052b0.B();
    }

    public final void u(int i3, int i4) {
        E1 e2 = this.f3751q;
        if (e2.f423c) {
            return;
        }
        int iCoerceIn = RangesKt.coerceIn(i3, 1, RangesKt.coerceAtLeast(e2.b, 1));
        OnlineCatalogPage page = CatalogMemoryCache.INSTANCE.getPage(iCoerceIn);
        if (page != null) {
            y(page);
            return;
        }
        E1 e1A = E1.a(this.f3751q, iCoerceIn, true, null, 2);
        this.f3751q = e1A;
        this.f3750p = e1A;
        x();
        new Thread(new RunnableC0051b(this, iCoerceIn, i4, 0)).start();
    }

    public final void v(boolean z2) {
        boolean z3;
        this.f3756v = true;
        this.f3757w = z2;
        a aVar = this.f3741e;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar = null;
        }
        aVar.f5613c.setEnabled(this.f3756v && this.f3757w);
        if (!z2 || (z3 = this.f3758x) || z3 || CatalogMemoryCache.INSTANCE.getHasHydratedFullCatalog()) {
            return;
        }
        Thread thread = new Thread(new RunnableC0060e(this, 0));
        thread.setDaemon(true);
        thread.setName("catalog-prehydrate");
        thread.start();
    }

    public final void w() {
        a aVar = null;
        if (this.f3754t.isEmpty()) {
            a aVar2 = this.f3741e;
            if (aVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                aVar2 = null;
            }
            aVar2.f5624p.setVisibility(8);
            a aVar3 = this.f3741e;
            if (aVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                aVar3 = null;
            }
            aVar3.f5625q.setVisibility(0);
            a aVar4 = this.f3741e;
            if (aVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
            } else {
                aVar = aVar4;
            }
            TextView textView = aVar.f5625q;
            Z filter = this.f3755u;
            Intrinsics.checkNotNullParameter(filter, "filter");
            textView.setText(getString(U.c(filter) ? R.string.catalog_filter_empty : R.string.catalog_empty));
        } else {
            a aVar5 = this.f3741e;
            if (aVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                aVar5 = null;
            }
            aVar5.f5624p.setVisibility(0);
            a aVar6 = this.f3741e;
            if (aVar6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
            } else {
                aVar = aVar6;
            }
            aVar.f5625q.setVisibility(8);
        }
        z();
    }

    public final void x() {
        B(Q.b);
        a aVar = this.f3741e;
        a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar = null;
        }
        aVar.f5622n.setVisibility(0);
        a aVar3 = this.f3741e;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            aVar2 = aVar3;
        }
        aVar2.f5625q.setVisibility(8);
        z();
    }

    public final void y(OnlineCatalogPage page) {
        CatalogMemoryCache.INSTANCE.putPage(page.getPage(), page);
        E1 previous = this.f3751q;
        Intrinsics.checkNotNullParameter(page, "page");
        Intrinsics.checkNotNullParameter(previous, "previous");
        int iCoerceAtLeast = RangesKt.coerceAtLeast(page.getTotalPages(), 1);
        int iCoerceIn = RangesKt.coerceIn(page.getPage(), 1, RangesKt.coerceAtLeast(page.getTotalPages(), 1));
        previous.getClass();
        a aVar = null;
        E1 e2 = new E1(iCoerceIn, iCoerceAtLeast, false, null);
        this.f3751q = e2;
        this.f3750p = e2;
        this.f3752r = page.getGames();
        if (!this.f3758x) {
            this.f3753s = page.getGames();
        }
        v(true);
        m(false);
        a aVar2 = this.f3741e;
        if (aVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            aVar = aVar2;
        }
        aVar.f5622n.setVisibility(8);
        w();
    }

    public final void z() {
        a aVar = this.f3741e;
        a aVar2 = null;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar = null;
        }
        TextView textView = aVar.f5627s;
        E1 e2 = this.f3750p;
        int i3 = e2.f422a;
        int i4 = e2.b;
        String format = getString(R.string.format_page_indicator);
        Intrinsics.checkNotNullExpressionValue(format, "getString(...)");
        Intrinsics.checkNotNullParameter(format, "format");
        String str = String.format(format, Arrays.copyOf(new Object[]{Integer.valueOf(RangesKt.coerceAtLeast(i3, 1)), Integer.valueOf(RangesKt.coerceAtLeast(i4, 1))}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        textView.setText(str);
        a aVar3 = this.f3741e;
        if (aVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar3 = null;
        }
        Button button = aVar3.g;
        E1 e3 = this.f3750p;
        button.setEnabled(!e3.f423c && e3.f422a > 1);
        a aVar4 = this.f3741e;
        if (aVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            aVar4 = null;
        }
        Button button2 = aVar4.f;
        E1 e4 = this.f3750p;
        button2.setEnabled(!e4.f423c && e4.f422a < e4.b);
        a aVar5 = this.f3741e;
        if (aVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            aVar2 = aVar5;
        }
        aVar2.f5619k.setVisibility(this.f3750p.b <= 1 ? 8 : 0);
    }
}
