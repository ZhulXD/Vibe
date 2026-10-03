package com.minhub.gamehub.hub;

import A1.C0035p;
import B1.C0046b;
import C1.G1;
import C1.V;
import I1.j;
import S1.c;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/hub/OnlineDownloadsActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnlineDownloadsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineDownloadsActivity.kt\ncom/minhub/gamehub/hub/OnlineDownloadsActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,52:1\n161#2,8:53\n*S KotlinDebug\n*F\n+ 1 OnlineDownloadsActivity.kt\ncom/minhub/gamehub/hub/OnlineDownloadsActivity\n*L\n31#1:53,8\n*E\n"})
public final class OnlineDownloadsActivity extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f3799h = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public j f3800e;
    public G1 f;
    public CatalogDownloadQueue g;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CatalogDownloadQueue catalogDownloadQueue = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_online_downloads, (ViewGroup) null, false);
        int i3 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
        if (imageButton != null) {
            i3 = R.id.layout_header;
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_header);
            if (linearLayout != null) {
                i3 = R.id.recycler_downloads;
                RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_downloads);
                if (recyclerView != null) {
                    i3 = R.id.tv_empty;
                    TextView textView = (TextView) viewInflate.findViewById(R.id.tv_empty);
                    if (textView != null) {
                        LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                        j jVar = new j(linearLayout2, imageButton, linearLayout, recyclerView, textView, 2);
                        Intrinsics.checkNotNullExpressionValue(jVar, "inflate(...)");
                        this.f3800e = jVar;
                        setContentView(linearLayout2);
                        j jVar2 = this.f3800e;
                        if (jVar2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar2 = null;
                        }
                        ViewCompat.setOnApplyWindowInsetsListener((LinearLayout) jVar2.b, new C0046b(3, this));
                        CatalogDownloadQueue.Companion companion = CatalogDownloadQueue.INSTANCE;
                        Context applicationContext = getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                        this.g = companion.getInstance(applicationContext);
                        G1 g3 = new G1();
                        g3.f434d = CollectionsKt.emptyList();
                        this.f = g3;
                        j jVar3 = this.f3800e;
                        if (jVar3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar3 = null;
                        }
                        ((ImageButton) jVar3.f1188c).setOnClickListener(new V(2, this));
                        j jVar4 = this.f3800e;
                        if (jVar4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar4 = null;
                        }
                        ((RecyclerView) jVar4.f1190e).setLayoutManager(new LinearLayoutManager(1));
                        j jVar5 = this.f3800e;
                        if (jVar5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("b");
                            jVar5 = null;
                        }
                        RecyclerView recyclerView2 = (RecyclerView) jVar5.f1190e;
                        G1 g4 = this.f;
                        if (g4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            g4 = null;
                        }
                        recyclerView2.setAdapter(g4);
                        CatalogDownloadQueue catalogDownloadQueue2 = this.g;
                        if (catalogDownloadQueue2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("queue");
                        } else {
                            catalogDownloadQueue = catalogDownloadQueue2;
                        }
                        catalogDownloadQueue.observe(new C0035p(7, this));
                        return;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
