package com.minhub.gamehub.hub;

import B1.C0046b;
import C1.C0120y0;
import C1.V;
import E1.x;
import I1.j;
import P.W;
import P.q0;
import S1.c;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import p007c1.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/SettingsActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsActivity.kt\ncom/minhub/gamehub/hub/SettingsActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,38:1\n161#2,8:39\n*S KotlinDebug\n*F\n+ 1 SettingsActivity.kt\ncom/minhub/gamehub/hub/SettingsActivity\n*L\n22#1:39,8\n*E\n"})
public final class SettingsActivity extends c {
    public static final /* synthetic */ int f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f3804e;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        j jVar = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings, (ViewGroup) null, false);
        int i3 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
        if (imageButton != null) {
            i3 = R.id.layout_header;
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_header);
            if (linearLayout != null) {
                i3 = R.id.tab_layout;
                TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.tab_layout);
                if (tabLayout != null) {
                    i3 = R.id.view_pager;
                    ViewPager2 viewPager2 = (ViewPager2) viewInflate.findViewById(R.id.view_pager);
                    if (viewPager2 != null) {
                        LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                        j jVar2 = new j(linearLayout2, imageButton, linearLayout, tabLayout, viewPager2, 3);
                        Intrinsics.checkNotNullExpressionValue(jVar2, "inflate(...)");
                        this.f3804e = jVar2;
                        setContentView(linearLayout2);
                        j jVar3 = this.f3804e;
                        if (jVar3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar3 = null;
                        }
                        ViewCompat.setOnApplyWindowInsetsListener((LinearLayout) jVar3.b, new C0046b(5, this));
                        j jVar4 = this.f3804e;
                        if (jVar4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar4 = null;
                        }
                        ((ImageButton) jVar4.f1188c).setOnClickListener(new V(3, this));
                        x xVar = new x(this);
                        j jVar5 = this.f3804e;
                        if (jVar5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar5 = null;
                        }
                        ((ViewPager2) jVar5.f).setAdapter(xVar);
                        j jVar6 = this.f3804e;
                        if (jVar6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar6 = null;
                        }
                        TabLayout tabLayout2 = (TabLayout) jVar6.f1190e;
                        j jVar7 = this.f3804e;
                        if (jVar7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                        } else {
                            jVar = jVar7;
                        }
                        ViewPager2 viewPager3 = (ViewPager2) jVar.f;
                        p007c1.j jVar8 = new p007c1.j(tabLayout2, viewPager3, new C0046b(6, xVar));
                        if (jVar8.f3168e) {
                            throw new IllegalStateException("TabLayoutMediator is already attached");
                        }
                        W adapter = viewPager3.getAdapter();
                        jVar8.f3167d = adapter;
                        if (adapter == null) {
                            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
                        }
                        jVar8.f3168e = true;
                        ((ArrayList) viewPager3.f3060d.b).add(new i(tabLayout2));
                        int i4 = 2;
                        tabLayout2.a(new C0120y0(viewPager3, i4));
                        jVar8.f3167d.f1643a.registerObserver(new q0(i4, jVar8));
                        jVar8.a();
                        tabLayout2.l(viewPager3.getCurrentItem(), 0.0f, true, true, true);
                        return;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
