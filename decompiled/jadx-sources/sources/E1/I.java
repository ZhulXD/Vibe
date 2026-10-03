package E1;

import A1.C0015e;
import A1.C0035p;
import C1.A1;
import C1.ViewOnClickListenerC0075j;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.minhub.gamehub.R;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"LE1/I;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nUtilitiesSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtilitiesSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/UtilitiesSettingsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,298:1\n1193#2,2:299\n1267#2,4:301\n1869#2,2:305\n1869#2,2:309\n13472#3,2:307\n*S KotlinDebug\n*F\n+ 1 UtilitiesSettingsFragment.kt\ncom/minhub/gamehub/hub/settings/UtilitiesSettingsFragment\n*L\n97#1:299,2\n97#1:301,4\n102#1:305,2\n161#1:309,2\n282#1:307,2\n*E\n"})
public final class I extends Fragment {
    public p058w1.c b;

    public static long b(File file) {
        long length;
        File[] fileArrListFiles = file.listFiles();
        long j2 = 0;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    Intrinsics.checkNotNull(file2);
                    length = b(file2);
                } else {
                    length = file2.length();
                }
                j2 += length;
            }
        }
        return j2;
    }

    public static void d(View view, boolean z2) {
        float f = view.getResources().getDisplayMetrics().density;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(12 * f);
        gradientDrawable.setColor(Color.parseColor(z2 ? "#22EF4444" : "#18181f"));
        gradientDrawable.setStroke((int) (1 * f), Color.parseColor(z2 ? "#55EF4444" : "#222230"));
        view.setBackground(gradientDrawable);
    }

    public final int c(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    public final void e() {
        String string;
        File cacheDir = requireContext().getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
        long jB = b(cacheDir);
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        TextView textView = (TextView) cVar.f5648c;
        if (jB < 1024) {
            string = getString(R.string.format_bytes, Long.valueOf(jB));
        } else {
            string = jB < 1048576 ? getString(R.string.format_kb, Long.valueOf(jB / ((long) 1024))) : getString(R.string.format_mb, Long.valueOf(jB / ((long) 1048576)));
        }
        Intrinsics.checkNotNull(string);
        textView.setText(string);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater i3, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkNotNullParameter(i3, "i");
        View viewInflate = i3.inflate(R.layout.fragment_settings_utilities, viewGroup, false);
        int i4 = R.id.btn_add_util_url;
        TextView textView = (TextView) viewInflate.findViewById(R.id.btn_add_util_url);
        if (textView != null) {
            i4 = R.id.btn_check_update;
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.btn_check_update);
            if (linearLayout != null) {
                i4 = R.id.btn_clear_cache;
                LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.btn_clear_cache);
                if (linearLayout2 != null) {
                    i4 = R.id.btn_export_data;
                    LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.btn_export_data);
                    if (linearLayout3 != null) {
                        i4 = R.id.btn_import_data;
                        LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.btn_import_data);
                        if (linearLayout4 != null) {
                            i4 = R.id.card_changelog;
                            LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.card_changelog);
                            if (linearLayout5 != null) {
                                i4 = R.id.container_utils;
                                LinearLayout linearLayout6 = (LinearLayout) viewInflate.findViewById(R.id.container_utils);
                                if (linearLayout6 != null) {
                                    i4 = R.id.tv_cache_size;
                                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_cache_size);
                                    if (textView2 != null) {
                                        i4 = R.id.tv_changelog_content;
                                        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_changelog_content);
                                        if (textView3 != null) {
                                            i4 = R.id.tv_changelog_version;
                                            TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_changelog_version);
                                            if (textView4 != null) {
                                                i4 = R.id.tv_version;
                                                TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_version);
                                                if (textView5 != null) {
                                                    ScrollView scrollView = (ScrollView) viewInflate;
                                                    p058w1.c cVar = new p058w1.c(scrollView, textView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, textView2, textView3, textView4, textView5);
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

    /* JADX WARN: Type inference failed for: r1v5, types: [G1.s, T] */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View v2, Bundle bundle) {
        Intrinsics.checkNotNullParameter(v2, "v");
        Context ctx = requireContext();
        Intrinsics.checkNotNullExpressionValue(ctx, "requireContext(...)");
        Intrinsics.checkNotNullParameter(ctx, "<this>");
        Set set = S1.d.f2060a;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        ?? T2 = S1.d.t(S1.d.s(ctx).getString("utilities_json", "{}"));
        j jVar = new j(ctx, 2);
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(contextRequireContext);
        List list = G1.q.f1036a;
        EnumEntries enumEntries = G1.o.g;
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntries, 10)), 16));
        for (Object obj : enumEntries) {
            G1.o oVar = (G1.o) obj;
            List list2 = G1.q.f1036a;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list2) {
                if (((G1.n) obj2).b == oVar) {
                    arrayList.add(obj2);
                }
            }
            linkedHashMap.put(obj, arrayList);
        }
        EnumEntries<G1.o> enumEntries2 = G1.o.g;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(enumEntries2, 10));
        for (G1.o oVar2 : enumEntries2) {
            int iIntValue = ((Number) MapsKt__MapsKt.getValue(G1.q.f1037c, oVar2)).intValue();
            List listEmptyList = (List) linkedHashMap.get(oVar2);
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            arrayList2.add(new G1.r(oVar2, iIntValue, listEmptyList));
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10)), 16));
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj3 = arrayList2.get(i3);
            i3++;
            Pair pair = TuplesKt.to(((G1.r) obj3).f1038a, Boolean.FALSE);
            linkedHashMap2.put(pair.getFirst(), pair.getSecond());
        }
        Map mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap2);
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = T2;
        p058w1.c cVar = this.b;
        Intrinsics.checkNotNull(cVar);
        ((LinearLayout) cVar.f5651h).removeAllViews();
        int size2 = arrayList2.size();
        int i4 = 0;
        while (true) {
            final int i5 = 1;
            if (i4 >= size2) {
                p058w1.c cVar2 = this.b;
                Intrinsics.checkNotNull(cVar2);
                TextView textView = (TextView) cVar2.f5654k;
                Intrinsics.checkNotNullParameter(ctx, "ctx");
                textView.setText("0.8.9");
                C0035p onResult = new C0035p(11, this);
                C0015e onError = new C0015e(27);
                Intrinsics.checkNotNullParameter(ctx, "ctx");
                Intrinsics.checkNotNullParameter(onResult, "onResult");
                Intrinsics.checkNotNullParameter(onError, "onError");
                final int i6 = 3;
                Thread thread = new Thread(new A1(new Handler(Looper.getMainLooper()), new A1.r(onResult, ctx, onError, 6), onError, 3));
                thread.setDaemon(true);
                thread.setName("update-check");
                thread.start();
                p058w1.c cVar3 = this.b;
                Intrinsics.checkNotNull(cVar3);
                cVar3.f5649d.setOnClickListener(new ViewOnClickListenerC0075j(20, ctx, this));
                p058w1.c cVar4 = this.b;
                Intrinsics.checkNotNull(cVar4);
                final int i7 = 0;
                ((LinearLayout) cVar4.f5647a).setOnClickListener(new View.OnClickListener(this) { // from class: E1.F

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ I f875c;

                    {
                        this.f875c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i7) {
                            case 0:
                                I i8 = this.f875c;
                                File cacheDir = i8.requireContext().getCacheDir();
                                Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
                                FilesKt.deleteRecursively(cacheDir);
                                Toast.makeText(i8.requireContext(), i8.getString(R.string.toast_cache_cleared), 0).show();
                                i8.e();
                                break;
                            case 1:
                                I i9 = this.f875c;
                                Toast.makeText(i9.requireContext(), i9.getString(R.string.toast_export_dev), 0).show();
                                break;
                            case 2:
                                I i10 = this.f875c;
                                Toast.makeText(i10.requireContext(), i10.getString(R.string.toast_import_dev), 0).show();
                                break;
                            default:
                                I i11 = this.f875c;
                                Toast.makeText(i11.requireContext(), i11.getString(R.string.toast_load_util_dev), 0).show();
                                break;
                        }
                    }
                });
                p058w1.c cVar5 = this.b;
                Intrinsics.checkNotNull(cVar5);
                ((LinearLayout) cVar5.b).setOnClickListener(new View.OnClickListener(this) { // from class: E1.F

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ I f875c;

                    {
                        this.f875c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i5) {
                            case 0:
                                I i8 = this.f875c;
                                File cacheDir = i8.requireContext().getCacheDir();
                                Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
                                FilesKt.deleteRecursively(cacheDir);
                                Toast.makeText(i8.requireContext(), i8.getString(R.string.toast_cache_cleared), 0).show();
                                i8.e();
                                break;
                            case 1:
                                I i9 = this.f875c;
                                Toast.makeText(i9.requireContext(), i9.getString(R.string.toast_export_dev), 0).show();
                                break;
                            case 2:
                                I i10 = this.f875c;
                                Toast.makeText(i10.requireContext(), i10.getString(R.string.toast_import_dev), 0).show();
                                break;
                            default:
                                I i11 = this.f875c;
                                Toast.makeText(i11.requireContext(), i11.getString(R.string.toast_load_util_dev), 0).show();
                                break;
                        }
                    }
                });
                p058w1.c cVar6 = this.b;
                Intrinsics.checkNotNull(cVar6);
                final int i8 = 2;
                ((LinearLayout) cVar6.f).setOnClickListener(new View.OnClickListener(this) { // from class: E1.F

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ I f875c;

                    {
                        this.f875c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i8) {
                            case 0:
                                I i9 = this.f875c;
                                File cacheDir = i9.requireContext().getCacheDir();
                                Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
                                FilesKt.deleteRecursively(cacheDir);
                                Toast.makeText(i9.requireContext(), i9.getString(R.string.toast_cache_cleared), 0).show();
                                i9.e();
                                break;
                            case 1:
                                I i10 = this.f875c;
                                Toast.makeText(i10.requireContext(), i10.getString(R.string.toast_export_dev), 0).show();
                                break;
                            case 2:
                                I i11 = this.f875c;
                                Toast.makeText(i11.requireContext(), i11.getString(R.string.toast_import_dev), 0).show();
                                break;
                            default:
                                I i12 = this.f875c;
                                Toast.makeText(i12.requireContext(), i12.getString(R.string.toast_load_util_dev), 0).show();
                                break;
                        }
                    }
                });
                p058w1.c cVar7 = this.b;
                Intrinsics.checkNotNull(cVar7);
                cVar7.f5650e.setOnClickListener(new View.OnClickListener(this) { // from class: E1.F

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ I f875c;

                    {
                        this.f875c = this;
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        switch (i6) {
                            case 0:
                                I i9 = this.f875c;
                                File cacheDir = i9.requireContext().getCacheDir();
                                Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
                                FilesKt.deleteRecursively(cacheDir);
                                Toast.makeText(i9.requireContext(), i9.getString(R.string.toast_cache_cleared), 0).show();
                                i9.e();
                                break;
                            case 1:
                                I i10 = this.f875c;
                                Toast.makeText(i10.requireContext(), i10.getString(R.string.toast_export_dev), 0).show();
                                break;
                            case 2:
                                I i11 = this.f875c;
                                Toast.makeText(i11.requireContext(), i11.getString(R.string.toast_import_dev), 0).show();
                                break;
                            default:
                                I i12 = this.f875c;
                                Toast.makeText(i12.requireContext(), i12.getString(R.string.toast_load_util_dev), 0).show();
                                break;
                        }
                    }
                });
                e();
                return;
            }
            int i9 = i4 + 1;
            G1.r rVar = (G1.r) arrayList2.get(i4);
            List list3 = rVar.f1039c;
            LinearLayout linearLayout = new LinearLayout(contextRequireContext);
            linearLayout.setOrientation(1);
            linearLayout.setBackgroundResource(R.drawable.bg_card);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.bottomMargin = c(12);
            linearLayout.setLayoutParams(layoutParams);
            LinearLayout linearLayout2 = new LinearLayout(contextRequireContext);
            linearLayout2.setOrientation(0);
            linearLayout2.setGravity(16);
            Map map = mutableMap;
            int i10 = size2;
            linearLayout2.setPadding(c(16), c(16), c(16), c(16));
            linearLayout2.setClickable(true);
            linearLayout2.setFocusable(true);
            TextView textView2 = new TextView(contextRequireContext);
            textView2.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            textView2.setText(getString(rVar.b));
            textView2.setTextSize(14.0f);
            textView2.setTextColor(textView2.getResources().getColor(R.color.text_pri, contextRequireContext.getTheme()));
            TextView textView3 = new TextView(contextRequireContext);
            textView3.setText(getString(R.string.settings_utilities_show));
            textView3.setTextSize(12.0f);
            textView3.setTextColor(textView3.getResources().getColor(R.color.accent, contextRequireContext.getTheme()));
            LinearLayout linearLayout3 = new LinearLayout(contextRequireContext);
            linearLayout3.setOrientation(1);
            linearLayout3.setVisibility(8);
            ArrayList arrayList3 = arrayList2;
            final int i11 = 0;
            linearLayout3.setPadding(c(12), 0, c(12), c(12));
            linearLayout2.addView(textView2);
            linearLayout2.addView(textView3);
            linearLayout.addView(linearLayout2);
            linearLayout.addView(linearLayout3);
            final C c3 = new C(map, rVar, textView3, this, linearLayout3, list3, contextRequireContext, layoutInflaterFrom, objectRef, jVar);
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: E1.D
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i11) {
                        case 0:
                            c3.invoke();
                            break;
                        default:
                            c3.invoke();
                            break;
                    }
                }
            });
            final int i12 = 1;
            textView3.setOnClickListener(new View.OnClickListener() { // from class: E1.D
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    switch (i12) {
                        case 0:
                            c3.invoke();
                            break;
                        default:
                            c3.invoke();
                            break;
                    }
                }
            });
            p058w1.c cVar8 = this.b;
            Intrinsics.checkNotNull(cVar8);
            ((LinearLayout) cVar8.f5651h).addView(linearLayout);
            mutableMap = map;
            i4 = i9;
            size2 = i10;
            arrayList2 = arrayList3;
        }
    }
}
