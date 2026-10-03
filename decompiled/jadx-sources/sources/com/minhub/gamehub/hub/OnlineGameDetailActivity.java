package com.minhub.gamehub.hub;

import A1.C0035p;
import B1.C0046b;
import B1.d;
import C1.C0076j0;
import C1.C0120y0;
import C1.K1;
import C1.L1;
import C1.N1;
import C1.ViewOnClickListenerC0075j;
import S1.c;
import V1.A;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.b;
import com.bumptech.glide.n;
import com.google.android.material.tabs.TabLayout;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameRepository;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.ImageViewerActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import com.minhub.gamehub.hub.catalog.CatalogDownloadState;
import com.minhub.gamehub.hub.catalog.DownloadLink;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.RemoteZipImporter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;
import p025j0.g;
import p025j0.i;
import p025j0.k;
import p058w1.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;", "LS1/c;", "<init>", "()V", "C1/K1", "com/bumptech/glide/d", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnlineGameDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineGameDetailActivity.kt\ncom/minhub/gamehub/hub/OnlineGameDetailActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,551:1\n1#2:552\n257#3,2:553\n161#3,8:560\n1761#4,3:555\n295#4,2:558\n*S KotlinDebug\n*F\n+ 1 OnlineGameDetailActivity.kt\ncom/minhub/gamehub/hub/OnlineGameDetailActivity\n*L\n251#1:553,2\n177#1:560,8\n354#1:555,3\n490#1:558,2\n*E\n"})
public final class OnlineGameDetailActivity extends c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f3801i = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public f f3802e;
    public OnlineCatalogItem f;
    public C0076j0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CatalogDownloadQueue f3803h;

    /* JADX WARN: Code duplicated, block: B:136:0x025c  */
    /* JADX WARN: Code duplicated, block: B:181:0x03db  */
    /* JADX WARN: Code duplicated, block: B:87:0x0148  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void m() {
        String string;
        int i3;
        CharSequence charSequenceO;
        int i4;
        boolean z2;
        Integer numValueOf;
        Long importedGameId;
        OnlineCatalogItem onlineCatalogItem = this.f;
        if (onlineCatalogItem == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            onlineCatalogItem = null;
        }
        if (!StringsKt.isBlank(onlineCatalogItem.getStreamUrl())) {
            o();
            return;
        }
        OnlineCatalogItem onlineCatalogItem2 = this.f;
        if (onlineCatalogItem2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            onlineCatalogItem2 = null;
        }
        List<DownloadLink> listEffectiveDownloadLinks = onlineCatalogItem2.effectiveDownloadLinks();
        f fVar = this.f3802e;
        if (fVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar = null;
        }
        fVar.f5771n.removeAllViews();
        CatalogDownloadQueue catalogDownloadQueue = this.f3803h;
        if (catalogDownloadQueue == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadQueue");
            catalogDownloadQueue = null;
        }
        OnlineCatalogItem onlineCatalogItem3 = this.f;
        if (onlineCatalogItem3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            onlineCatalogItem3 = null;
        }
        CatalogDownloadJob catalogDownloadJobJobForItem = catalogDownloadQueue.jobForItem(onlineCatalogItem3);
        CatalogDownloadState catalogDownloadState = CatalogDownloadState.QUEUED;
        CatalogDownloadState catalogDownloadState2 = CatalogDownloadState.RUNNING;
        boolean zContains = CollectionsKt.contains(CollectionsKt.listOf((Object[]) new CatalogDownloadState[]{catalogDownloadState, catalogDownloadState2}), catalogDownloadJobJobForItem != null ? catalogDownloadJobJobForItem.getState() : null);
        CatalogDownloadState state = catalogDownloadJobJobForItem != null ? catalogDownloadJobJobForItem.getState() : null;
        CatalogDownloadState catalogDownloadState3 = CatalogDownloadState.COMPLETED;
        int i5 = 1;
        int i6 = 0;
        boolean z3 = state == catalogDownloadState3;
        f fVar2 = this.f3802e;
        if (fVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar2 = null;
        }
        TextView textView = fVar2.f5782y;
        if (listEffectiveDownloadLinks.isEmpty() || catalogDownloadJobJobForItem == null) {
            string = getString(R.string.download_status_idle);
        } else if (catalogDownloadJobJobForItem.getState() == catalogDownloadState) {
            string = getString(R.string.download_status_queued);
        } else if (catalogDownloadJobJobForItem.getState() == catalogDownloadState2) {
            string = getString(R.string.download_status_running, Integer.valueOf(catalogDownloadJobJobForItem.getProgress()));
        } else if (catalogDownloadJobJobForItem.getState() == catalogDownloadState3) {
            string = getString(R.string.download_status_completed);
        } else {
            String errorMessage = catalogDownloadJobJobForItem.getErrorMessage();
            if (errorMessage == null) {
                errorMessage = getString(R.string.download_status_failed_generic);
                Intrinsics.checkNotNullExpressionValue(errorMessage, "getString(...)");
            }
            string = getString(R.string.download_status_failed, errorMessage);
        }
        textView.setText(string);
        f fVar3 = this.f3802e;
        if (fVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar3 = null;
        }
        fVar3.f5775r.setVisibility(zContains ? 0 : 8);
        f fVar4 = this.f3802e;
        if (fVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar4 = null;
        }
        fVar4.f5775r.setProgress((!zContains || catalogDownloadJobJobForItem == null) ? 0 : catalogDownloadJobJobForItem.getProgress());
        f fVar5 = this.f3802e;
        if (fVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar5 = null;
        }
        fVar5.f5762c.setVisibility(z3 ? 0 : 8);
        if (z3) {
            if (catalogDownloadJobJobForItem == null || (importedGameId = catalogDownloadJobJobForItem.getImportedGameId()) == null) {
                numValueOf = null;
            } else {
                if (importedGameId.longValue() <= 0) {
                    importedGameId = null;
                }
                if (importedGameId != null) {
                    numValueOf = Integer.valueOf((int) importedGameId.longValue());
                } else {
                    numValueOf = null;
                }
            }
            if (numValueOf != null) {
                f fVar6 = this.f3802e;
                if (fVar6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    fVar6 = null;
                }
                fVar6.f5762c.setOnClickListener(new ViewOnClickListenerC0075j(11, this, numValueOf));
            }
        }
        if (!listEffectiveDownloadLinks.isEmpty()) {
            Iterator<T> it = listEffectiveDownloadLinks.iterator();
            while (it.hasNext()) {
                String url = ((DownloadLink) it.next()).getUrl();
                if (StringsKt__StringsKt.contains(url, (CharSequence) "buzzheavier.com", true) || StringsKt__StringsKt.contains(url, (CharSequence) "bzzhr.to", true)) {
                    f fVar7 = this.f3802e;
                    if (fVar7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("b");
                        fVar7 = null;
                    }
                    LinearLayout linearLayout = fVar7.f5771n;
                    float f = getResources().getDisplayMetrics().density;
                    TextView textView2 = new TextView(this);
                    textView2.setText(getString(R.string.download_buzzheavier_warning));
                    textView2.setTextSize(12.0f);
                    textView2.setTextColor(Color.parseColor("#FCD34D"));
                    int i7 = (int) (12 * f);
                    float f3 = 8 * f;
                    int i8 = (int) f3;
                    textView2.setPadding(i7, i8, i7, i8);
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    gradientDrawable.setCornerRadius(f3);
                    gradientDrawable.setColor(Color.parseColor("#1A78350A"));
                    gradientDrawable.setStroke((int) (1 * f), Color.parseColor("#44D97706"));
                    textView2.setBackground(gradientDrawable);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                    layoutParams.bottomMargin = (int) (10 * f);
                    textView2.setLayoutParams(layoutParams);
                    linearLayout.addView(textView2);
                    break;
                }
            }
        }
        Iterator<DownloadLink> it2 = listEffectiveDownloadLinks.iterator();
        while (it2.hasNext()) {
            DownloadLink next = it2.next();
            CatalogDownloadQueue catalogDownloadQueue2 = this.f3803h;
            if (catalogDownloadQueue2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downloadQueue");
                catalogDownloadQueue2 = null;
            }
            CatalogDownloadJob catalogDownloadJobJobForUrl = catalogDownloadQueue2.jobForUrl(next.getUrl());
            f fVar8 = this.f3802e;
            if (fVar8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                fVar8 = null;
            }
            LinearLayout linearLayout2 = fVar8.f5771n;
            float f4 = getResources().getDisplayMetrics().density;
            int i9 = (catalogDownloadJobJobForUrl != null ? catalogDownloadJobJobForUrl.getState() : null) == CatalogDownloadState.COMPLETED ? i5 : i6;
            if ((catalogDownloadJobJobForUrl != null ? catalogDownloadJobJobForUrl.getState() : null) == CatalogDownloadState.RUNNING) {
                i3 = i5;
            } else {
                if ((catalogDownloadJobJobForUrl != null ? catalogDownloadJobJobForUrl.getState() : null) == CatalogDownloadState.QUEUED) {
                    i3 = i5;
                } else {
                    i3 = i6;
                }
            }
            int i10 = (catalogDownloadJobJobForUrl != null ? catalogDownloadJobJobForUrl.getState() : null) == CatalogDownloadState.FAILED ? i5 : i6;
            String label = next.getLabel();
            if (label.length() > 0) {
                StringBuilder sb = new StringBuilder();
                String strValueOf = String.valueOf(label.charAt(i6));
                Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
                String upperCase = strValueOf.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                sb.append((Object) upperCase);
                String strSubstring = label.substring(1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                sb.append(strSubstring);
                label = sb.toString();
            }
            Button button = new Button(this);
            CatalogDownloadState state2 = catalogDownloadJobJobForUrl != null ? catalogDownloadJobJobForUrl.getState() : null;
            int i11 = state2 == null ? -1 : L1.f466a[state2.ordinal()];
            Iterator<DownloadLink> it3 = it2;
            if (i11 == 1) {
                charSequenceO = "⬇  " + label + "  " + catalogDownloadJobJobForUrl.getProgress() + "%";
            } else if (i11 == 2) {
                charSequenceO = "⏳  " + label + "  " + getString(R.string.download_btn_queued);
            } else if (i11 == 3) {
                charSequenceO = "✓  " + label + "  " + getString(R.string.download_btn_completed);
            } else if (i11 != 4) {
                charSequenceO = a.o("⬇  ", label);
            } else {
                charSequenceO = "✗  " + label + "  " + getString(R.string.download_btn_retry);
            }
            button.setText(charSequenceO);
            button.setAllCaps(false);
            button.setTextColor(-1);
            button.setTextSize(14.0f);
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setShape(0);
            gradientDrawable2.setCornerRadius(12 * f4);
            if (i9 != 0) {
                gradientDrawable2.setColor(Color.parseColor("#22C55E"));
            } else {
                if (i3 != 0) {
                    gradientDrawable2.setColor(Color.parseColor("#2563EB"));
                } else if (i10 != 0) {
                    gradientDrawable2.setColor(Color.parseColor("#7F1D1D"));
                    Unit unit = Unit.INSTANCE;
                    i4 = 1;
                    gradientDrawable2.setStroke((int) (1 * f4), Color.parseColor("#EF4444"));
                } else {
                    i4 = 1;
                    gradientDrawable2.setColor(Color.parseColor("#1E293B"));
                    Unit unit2 = Unit.INSTANCE;
                    gradientDrawable2.setStroke((int) (1 * f4), Color.parseColor("#334155"));
                }
                button.setBackground(gradientDrawable2);
                int i12 = (int) (16 * f4);
                int i13 = (int) (14 * f4);
                button.setPadding(i12, i13, i12, i13);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
                layoutParams2.bottomMargin = (int) (8 * f4);
                button.setLayoutParams(layoutParams2);
                if (zContains || i10 != 0) {
                    z2 = i4;
                } else {
                    z2 = 0;
                }
                button.setEnabled(z2);
                button.setOnClickListener(new ViewOnClickListenerC0075j(13, this, next));
                linearLayout2.addView(button);
                i5 = i4;
                i6 = 0;
                it2 = it3;
            }
            i4 = 1;
            button.setBackground(gradientDrawable2);
            int i14 = (int) (16 * f4);
            int i15 = (int) (14 * f4);
            button.setPadding(i14, i15, i14, i15);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams3.bottomMargin = (int) (8 * f4);
            button.setLayoutParams(layoutParams3);
            if (zContains) {
                z2 = i4;
            } else {
                z2 = i4;
            }
            button.setEnabled(z2);
            button.setOnClickListener(new ViewOnClickListenerC0075j(13, this, next));
            linearLayout2.addView(button);
            i5 = i4;
            i6 = 0;
            it2 = it3;
        }
    }

    public final void n(TextView textView, String str) {
        if (StringsKt.isBlank(str) || !RemoteZipImporter.INSTANCE.isSupportedRemoteUrl$app_release(str)) {
            return;
        }
        textView.setVisibility(0);
        textView.setOnClickListener(new ViewOnClickListenerC0075j(12, this, str));
    }

    /* JADX WARN: Code duplicated, block: B:29:0x008b  */
    public final void o() {
        Game game;
        Object next;
        long catalogPostId;
        OnlineCatalogItem onlineCatalogItem;
        f fVar = this.f3802e;
        f fVar2 = null;
        if (fVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar = null;
        }
        fVar.f5771n.removeAllViews();
        f fVar3 = this.f3802e;
        if (fVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar3 = null;
        }
        fVar3.f5775r.setVisibility(8);
        f fVar4 = this.f3802e;
        if (fVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar4 = null;
        }
        fVar4.f5782y.setText(getString(R.string.stream_game_playable));
        OnlineCatalogItem onlineCatalogItem2 = this.f;
        if (onlineCatalogItem2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("item");
            onlineCatalogItem2 = null;
        }
        if (onlineCatalogItem2.getPostId() > 0) {
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            List<Game> value = new GameRepository(applicationContext).getGames().getValue();
            if (value != null) {
                Iterator<T> it = value.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    catalogPostId = ((Game) next).getCatalogPostId();
                    onlineCatalogItem = this.f;
                    if (onlineCatalogItem == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("item");
                        onlineCatalogItem = null;
                    }
                } while (catalogPostId != onlineCatalogItem.getPostId());
                game = (Game) next;
            } else {
                game = null;
            }
        } else {
            game = null;
        }
        if (game != null) {
            f fVar5 = this.f3802e;
            if (fVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                fVar5 = null;
            }
            fVar5.f5762c.setVisibility(0);
            f fVar6 = this.f3802e;
            if (fVar6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
                fVar6 = null;
            }
            fVar6.f5782y.setText(getString(R.string.stream_game_in_library));
            f fVar7 = this.f3802e;
            if (fVar7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("b");
            } else {
                fVar2 = fVar7;
            }
            fVar2.f5762c.setOnClickListener(new ViewOnClickListenerC0075j(9, this, game));
            return;
        }
        f fVar8 = this.f3802e;
        if (fVar8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar8 = null;
        }
        fVar8.f5762c.setVisibility(8);
        float f = getResources().getDisplayMetrics().density;
        Button button = new Button(this);
        button.setText(getString(R.string.stream_game_add_to_library));
        button.setAllCaps(false);
        button.setTextColor(-1);
        button.setTextSize(14.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(12 * f);
        gradientDrawable.setColor(Color.parseColor("#7C3AED"));
        gradientDrawable.setStroke((int) (1 * f), Color.parseColor("#A78BFA"));
        button.setBackground(gradientDrawable);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.bottomMargin = (int) (8 * f);
        button.setLayoutParams(layoutParams);
        button.setOnClickListener(new ViewOnClickListenerC0075j(10, button, this));
        f fVar9 = this.f3802e;
        if (fVar9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            fVar2 = fVar9;
        }
        fVar2.f5771n.addView(button);
    }

    /* JADX WARN: Code duplicated, block: B:151:0x03e2 A[PHI: r11
      0x03e2: PHI (r11v11 java.lang.String) = (r11v10 java.lang.String), (r11v12 java.lang.String) binds: [B:147:0x03d1, B:149:0x03db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:267:0x0609  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        Object objM9constructorimpl;
        String title;
        String string;
        super.onCreate(bundle);
        String json = getIntent().getStringExtra("extra_item_json");
        if (json == null || StringsKt.isBlank(json)) {
            finish();
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Intrinsics.checkNotNullParameter(json, "json");
            Object objC = new l().c(json, OnlineCatalogItem.class);
            Intrinsics.checkNotNullExpressionValue(objC, "fromJson(...)");
            objM9constructorimpl = Result.m9constructorimpl((OnlineCatalogItem) objC);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            finish();
            return;
        }
        this.f = (OnlineCatalogItem) objM9constructorimpl;
        CatalogDownloadQueue catalogDownloadQueue = null;
        final int i3 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_online_game_detail, (ViewGroup) null, false);
        int i4 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
        if (imageButton != null) {
            i4 = R.id.btn_go_library;
            Button button = (Button) viewInflate.findViewById(R.id.btn_go_library);
            if (button != null) {
                i4 = R.id.btn_store_dlsite;
                TextView textView = (TextView) viewInflate.findViewById(R.id.btn_store_dlsite);
                if (textView != null) {
                    i4 = R.id.btn_store_dmm;
                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.btn_store_dmm);
                    if (textView2 != null) {
                        i4 = R.id.btn_store_itchio;
                        TextView textView3 = (TextView) viewInflate.findViewById(R.id.btn_store_itchio);
                        if (textView3 != null) {
                            i4 = R.id.btn_store_other;
                            TextView textView4 = (TextView) viewInflate.findViewById(R.id.btn_store_other);
                            if (textView4 != null) {
                                i4 = R.id.btn_store_steam;
                                TextView textView5 = (TextView) viewInflate.findViewById(R.id.btn_store_steam);
                                if (textView5 != null) {
                                    i4 = R.id.hero_frame;
                                    FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.hero_frame);
                                    if (frameLayout != null) {
                                        i4 = R.id.img_hero;
                                        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_hero);
                                        if (imageView != null) {
                                            i4 = R.id.label_size;
                                            TextView textView6 = (TextView) viewInflate.findViewById(R.id.label_size);
                                            if (textView6 != null) {
                                                i4 = R.id.label_store;
                                                TextView textView7 = (TextView) viewInflate.findViewById(R.id.label_store);
                                                if (textView7 != null) {
                                                    i4 = R.id.label_translator;
                                                    TextView textView8 = (TextView) viewInflate.findViewById(R.id.label_translator);
                                                    if (textView8 != null) {
                                                        i4 = R.id.ll_download_buttons;
                                                        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_download_buttons);
                                                        if (linearLayout != null) {
                                                            i4 = R.id.panel_download;
                                                            ScrollView scrollView = (ScrollView) viewInflate.findViewById(R.id.panel_download);
                                                            if (scrollView != null) {
                                                                i4 = R.id.panel_image;
                                                                LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.panel_image);
                                                                if (linearLayout2 != null) {
                                                                    i4 = R.id.panel_info;
                                                                    ScrollView scrollView2 = (ScrollView) viewInflate.findViewById(R.id.panel_info);
                                                                    if (scrollView2 != null) {
                                                                        i4 = R.id.progress_download;
                                                                        ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_download);
                                                                        if (progressBar != null) {
                                                                            i4 = R.id.recycler_images;
                                                                            RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recycler_images);
                                                                            if (recyclerView != null) {
                                                                                i4 = R.id.row_store_links;
                                                                                if (((LinearLayout) viewInflate.findViewById(R.id.row_store_links)) != null) {
                                                                                    i4 = R.id.scroll_store_links;
                                                                                    HorizontalScrollView horizontalScrollView = (HorizontalScrollView) viewInflate.findViewById(R.id.scroll_store_links);
                                                                                    if (horizontalScrollView != null) {
                                                                                        i4 = R.id.tabs;
                                                                                        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.tabs);
                                                                                        if (tabLayout != null) {
                                                                                            i4 = R.id.tv_badge;
                                                                                            TextView textView9 = (TextView) viewInflate.findViewById(R.id.tv_badge);
                                                                                            if (textView9 != null) {
                                                                                                i4 = R.id.tv_categories;
                                                                                                TextView textView10 = (TextView) viewInflate.findViewById(R.id.tv_categories);
                                                                                                if (textView10 != null) {
                                                                                                    i4 = R.id.tv_content;
                                                                                                    TextView textView11 = (TextView) viewInflate.findViewById(R.id.tv_content);
                                                                                                    if (textView11 != null) {
                                                                                                        i4 = R.id.tv_download_status;
                                                                                                        TextView textView12 = (TextView) viewInflate.findViewById(R.id.tv_download_status);
                                                                                                        if (textView12 != null) {
                                                                                                            i4 = R.id.tv_gallery_empty;
                                                                                                            TextView textView13 = (TextView) viewInflate.findViewById(R.id.tv_gallery_empty);
                                                                                                            if (textView13 != null) {
                                                                                                                i4 = R.id.tv_hero_abbr;
                                                                                                                TextView textView14 = (TextView) viewInflate.findViewById(R.id.tv_hero_abbr);
                                                                                                                if (textView14 != null) {
                                                                                                                    i4 = R.id.tv_meta;
                                                                                                                    TextView textView15 = (TextView) viewInflate.findViewById(R.id.tv_meta);
                                                                                                                    if (textView15 != null) {
                                                                                                                        i4 = R.id.tv_size;
                                                                                                                        TextView textView16 = (TextView) viewInflate.findViewById(R.id.tv_size);
                                                                                                                        if (textView16 != null) {
                                                                                                                            i4 = R.id.tv_tags;
                                                                                                                            TextView textView17 = (TextView) viewInflate.findViewById(R.id.tv_tags);
                                                                                                                            if (textView17 != null) {
                                                                                                                                i4 = R.id.tv_title;
                                                                                                                                TextView textView18 = (TextView) viewInflate.findViewById(R.id.tv_title);
                                                                                                                                if (textView18 != null) {
                                                                                                                                    i4 = R.id.tv_translator;
                                                                                                                                    TextView textView19 = (TextView) viewInflate.findViewById(R.id.tv_translator);
                                                                                                                                    if (textView19 != null) {
                                                                                                                                        LinearLayout linearLayout3 = (LinearLayout) viewInflate;
                                                                                                                                        f fVar = new f(linearLayout3, imageButton, button, textView, textView2, textView3, textView4, textView5, frameLayout, imageView, textView6, textView7, textView8, linearLayout, scrollView, linearLayout2, scrollView2, progressBar, recyclerView, horizontalScrollView, tabLayout, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19);
                                                                                                                                        Intrinsics.checkNotNullExpressionValue(fVar, "inflate(...)");
                                                                                                                                        this.f3802e = fVar;
                                                                                                                                        setContentView(linearLayout3);
                                                                                                                                        CatalogDownloadQueue.Companion companion3 = CatalogDownloadQueue.INSTANCE;
                                                                                                                                        Context applicationContext = getApplicationContext();
                                                                                                                                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                                                                                                                                        this.f3803h = companion3.getInstance(applicationContext);
                                                                                                                                        f fVar2 = this.f3802e;
                                                                                                                                        if (fVar2 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar2 = null;
                                                                                                                                        }
                                                                                                                                        ViewCompat.setOnApplyWindowInsetsListener(fVar2.f5761a, new C0046b(4, this));
                                                                                                                                        f fVar3 = this.f3802e;
                                                                                                                                        if (fVar3 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar3 = null;
                                                                                                                                        }
                                                                                                                                        TabLayout tabLayout2 = fVar3.f5778u;
                                                                                                                                        f fVar4 = this.f3802e;
                                                                                                                                        if (fVar4 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar4 = null;
                                                                                                                                        }
                                                                                                                                        p007c1.f fVarH = fVar4.f5778u.h();
                                                                                                                                        fVarH.b(getString(R.string.online_detail_tab_info));
                                                                                                                                        tabLayout2.b(fVarH);
                                                                                                                                        f fVar5 = this.f3802e;
                                                                                                                                        if (fVar5 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar5 = null;
                                                                                                                                        }
                                                                                                                                        TabLayout tabLayout3 = fVar5.f5778u;
                                                                                                                                        f fVar6 = this.f3802e;
                                                                                                                                        if (fVar6 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar6 = null;
                                                                                                                                        }
                                                                                                                                        p007c1.f fVarH2 = fVar6.f5778u.h();
                                                                                                                                        fVarH2.b(getString(R.string.online_detail_tab_download));
                                                                                                                                        tabLayout3.b(fVarH2);
                                                                                                                                        f fVar7 = this.f3802e;
                                                                                                                                        if (fVar7 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar7 = null;
                                                                                                                                        }
                                                                                                                                        TabLayout tabLayout4 = fVar7.f5778u;
                                                                                                                                        f fVar8 = this.f3802e;
                                                                                                                                        if (fVar8 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar8 = null;
                                                                                                                                        }
                                                                                                                                        p007c1.f fVarH3 = fVar8.f5778u.h();
                                                                                                                                        fVarH3.b(getString(R.string.online_detail_tab_image));
                                                                                                                                        tabLayout4.b(fVarH3);
                                                                                                                                        f fVar9 = this.f3802e;
                                                                                                                                        if (fVar9 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar9 = null;
                                                                                                                                        }
                                                                                                                                        final int i5 = 1;
                                                                                                                                        fVar9.f5778u.a(new C0120y0(this, i5));
                                                                                                                                        C0076j0 c0076j0 = new C0076j0(3);
                                                                                                                                        c0076j0.f625e = CollectionsKt.emptyList();
                                                                                                                                        this.g = c0076j0;
                                                                                                                                        c0076j0.f = new d(this, 3);
                                                                                                                                        f fVar10 = this.f3802e;
                                                                                                                                        if (fVar10 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar10 = null;
                                                                                                                                        }
                                                                                                                                        fVar10.f5776s.setLayoutManager(new LinearLayoutManager(0));
                                                                                                                                        f fVar11 = this.f3802e;
                                                                                                                                        if (fVar11 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar11 = null;
                                                                                                                                        }
                                                                                                                                        RecyclerView recyclerView2 = fVar11.f5776s;
                                                                                                                                        C0076j0 c0076j1 = this.g;
                                                                                                                                        if (c0076j1 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("imageAdapter");
                                                                                                                                            c0076j1 = null;
                                                                                                                                        }
                                                                                                                                        recyclerView2.setAdapter(c0076j1);
                                                                                                                                        f fVar12 = this.f3802e;
                                                                                                                                        if (fVar12 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar12 = null;
                                                                                                                                        }
                                                                                                                                        fVar12.b.setOnClickListener(new View.OnClickListener(this) { // from class: C1.J1

                                                                                                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                                                                                            public final /* synthetic */ OnlineGameDetailActivity f452c;

                                                                                                                                            {
                                                                                                                                                this.f452c = this;
                                                                                                                                            }

                                                                                                                                            @Override // android.view.View.OnClickListener
                                                                                                                                            public final void onClick(View view) {
                                                                                                                                                int i6 = i3;
                                                                                                                                                OnlineGameDetailActivity onlineGameDetailActivity = this.f452c;
                                                                                                                                                switch (i6) {
                                                                                                                                                    case 0:
                                                                                                                                                        int i7 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                        onlineGameDetailActivity.finish();
                                                                                                                                                        break;
                                                                                                                                                    case 1:
                                                                                                                                                        int i8 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                        onlineGameDetailActivity.startActivity(new Intent(onlineGameDetailActivity, (Class<?>) HubActivity.class).addFlags(603979776));
                                                                                                                                                        onlineGameDetailActivity.finish();
                                                                                                                                                        break;
                                                                                                                                                    default:
                                                                                                                                                        int i9 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                        int i10 = ImageViewerActivity.f3783e;
                                                                                                                                                        OnlineCatalogItem onlineCatalogItem = onlineGameDetailActivity.f;
                                                                                                                                                        OnlineCatalogItem onlineCatalogItem2 = null;
                                                                                                                                                        if (onlineCatalogItem == null) {
                                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                            onlineCatalogItem = null;
                                                                                                                                                        }
                                                                                                                                                        List listListOf = CollectionsKt.listOf(onlineCatalogItem.getThumbnailUrl());
                                                                                                                                                        OnlineCatalogItem onlineCatalogItem3 = onlineGameDetailActivity.f;
                                                                                                                                                        if (onlineCatalogItem3 == null) {
                                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                        } else {
                                                                                                                                                            onlineCatalogItem2 = onlineCatalogItem3;
                                                                                                                                                        }
                                                                                                                                                        Y0.e.o(onlineGameDetailActivity, listListOf, 0, onlineCatalogItem2.getTitle(), 20);
                                                                                                                                                        break;
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        });
                                                                                                                                        f fVar13 = this.f3802e;
                                                                                                                                        if (fVar13 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar13 = null;
                                                                                                                                        }
                                                                                                                                        fVar13.f5762c.setOnClickListener(new View.OnClickListener(this) { // from class: C1.J1

                                                                                                                                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                                                                                            public final /* synthetic */ OnlineGameDetailActivity f452c;

                                                                                                                                            {
                                                                                                                                                this.f452c = this;
                                                                                                                                            }

                                                                                                                                            @Override // android.view.View.OnClickListener
                                                                                                                                            public final void onClick(View view) {
                                                                                                                                                int i6 = i5;
                                                                                                                                                OnlineGameDetailActivity onlineGameDetailActivity = this.f452c;
                                                                                                                                                switch (i6) {
                                                                                                                                                    case 0:
                                                                                                                                                        int i7 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                        onlineGameDetailActivity.finish();
                                                                                                                                                        break;
                                                                                                                                                    case 1:
                                                                                                                                                        int i8 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                        onlineGameDetailActivity.startActivity(new Intent(onlineGameDetailActivity, (Class<?>) HubActivity.class).addFlags(603979776));
                                                                                                                                                        onlineGameDetailActivity.finish();
                                                                                                                                                        break;
                                                                                                                                                    default:
                                                                                                                                                        int i9 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                        int i10 = ImageViewerActivity.f3783e;
                                                                                                                                                        OnlineCatalogItem onlineCatalogItem = onlineGameDetailActivity.f;
                                                                                                                                                        OnlineCatalogItem onlineCatalogItem2 = null;
                                                                                                                                                        if (onlineCatalogItem == null) {
                                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                            onlineCatalogItem = null;
                                                                                                                                                        }
                                                                                                                                                        List listListOf = CollectionsKt.listOf(onlineCatalogItem.getThumbnailUrl());
                                                                                                                                                        OnlineCatalogItem onlineCatalogItem3 = onlineGameDetailActivity.f;
                                                                                                                                                        if (onlineCatalogItem3 == null) {
                                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                        } else {
                                                                                                                                                            onlineCatalogItem2 = onlineCatalogItem3;
                                                                                                                                                        }
                                                                                                                                                        Y0.e.o(onlineGameDetailActivity, listListOf, 0, onlineCatalogItem2.getTitle(), 20);
                                                                                                                                                        break;
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        });
                                                                                                                                        f fVar14 = this.f3802e;
                                                                                                                                        if (fVar14 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar14 = null;
                                                                                                                                        }
                                                                                                                                        TextView textView20 = fVar14.f5759E;
                                                                                                                                        OnlineCatalogItem onlineCatalogItem = this.f;
                                                                                                                                        if (onlineCatalogItem == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem = null;
                                                                                                                                        }
                                                                                                                                        textView20.setText(onlineCatalogItem.getTitle());
                                                                                                                                        f fVar15 = this.f3802e;
                                                                                                                                        if (fVar15 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar15 = null;
                                                                                                                                        }
                                                                                                                                        TextView textView21 = fVar15.f5756B;
                                                                                                                                        OnlineCatalogItem item = this.f;
                                                                                                                                        if (item == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            item = null;
                                                                                                                                        }
                                                                                                                                        Intrinsics.checkNotNullParameter(item, "item");
                                                                                                                                        List<String> categories = item.getCategories();
                                                                                                                                        ArrayList arrayList = new ArrayList();
                                                                                                                                        for (Object obj : categories) {
                                                                                                                                            if (!StringsKt.isBlank((String) obj)) {
                                                                                                                                                arrayList.add(obj);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        final int i6 = 2;
                                                                                                                                        List listTake = CollectionsKt.take(arrayList, 2);
                                                                                                                                        if (listTake.isEmpty()) {
                                                                                                                                            List<String> tags = item.getTags();
                                                                                                                                            ArrayList arrayList2 = new ArrayList();
                                                                                                                                            for (Object obj2 : tags) {
                                                                                                                                                if (!StringsKt.isBlank((String) obj2)) {
                                                                                                                                                    arrayList2.add(obj2);
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            List listTake2 = CollectionsKt.take(arrayList2, 2);
                                                                                                                                            if (listTake2.isEmpty()) {
                                                                                                                                                String string2 = StringsKt.trim((CharSequence) new Regex("\\s+").replace(item.getExcerpt(), " ")).toString();
                                                                                                                                                if (StringsKt.isBlank(string2)) {
                                                                                                                                                    string2 = item.getSlug();
                                                                                                                                                    if (StringsKt.isBlank(string2)) {
                                                                                                                                                        title = item.getTitle();
                                                                                                                                                    } else {
                                                                                                                                                        title = string2;
                                                                                                                                                    }
                                                                                                                                                } else {
                                                                                                                                                    title = string2;
                                                                                                                                                }
                                                                                                                                            } else {
                                                                                                                                                title = CollectionsKt.o(listTake2, " • ", null, null, null, 62);
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            title = CollectionsKt.o(listTake, " • ", null, null, null, 62);
                                                                                                                                        }
                                                                                                                                        textView21.setText(title);
                                                                                                                                        f fVar16 = this.f3802e;
                                                                                                                                        if (fVar16 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar16 = null;
                                                                                                                                        }
                                                                                                                                        TextView textView22 = fVar16.f5780w;
                                                                                                                                        OnlineCatalogItem onlineCatalogItem2 = this.f;
                                                                                                                                        if (onlineCatalogItem2 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem2 = null;
                                                                                                                                        }
                                                                                                                                        String strO = CollectionsKt.o(onlineCatalogItem2.getCategories(), ", ", null, null, null, 62);
                                                                                                                                        if (StringsKt.isBlank(strO)) {
                                                                                                                                            strO = "-";
                                                                                                                                        }
                                                                                                                                        textView22.setText(strO);
                                                                                                                                        f fVar17 = this.f3802e;
                                                                                                                                        if (fVar17 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar17 = null;
                                                                                                                                        }
                                                                                                                                        TextView textView23 = fVar17.f5758D;
                                                                                                                                        OnlineCatalogItem onlineCatalogItem3 = this.f;
                                                                                                                                        if (onlineCatalogItem3 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem3 = null;
                                                                                                                                        }
                                                                                                                                        String strO2 = CollectionsKt.o(onlineCatalogItem3.getTags(), ", ", null, null, null, 62);
                                                                                                                                        textView23.setText(StringsKt.isBlank(strO2) ? "-" : strO2);
                                                                                                                                        f fVar18 = this.f3802e;
                                                                                                                                        if (fVar18 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar18 = null;
                                                                                                                                        }
                                                                                                                                        TextView textView24 = fVar18.f5781x;
                                                                                                                                        OnlineCatalogItem onlineCatalogItem4 = this.f;
                                                                                                                                        if (onlineCatalogItem4 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem4 = null;
                                                                                                                                        }
                                                                                                                                        textView24.setText(p000a.a.C(onlineCatalogItem4));
                                                                                                                                        f fVar19 = this.f3802e;
                                                                                                                                        if (fVar19 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar19 = null;
                                                                                                                                        }
                                                                                                                                        TextView tvGalleryEmpty = fVar19.f5783z;
                                                                                                                                        Intrinsics.checkNotNullExpressionValue(tvGalleryEmpty, "tvGalleryEmpty");
                                                                                                                                        OnlineCatalogItem onlineCatalogItem5 = this.f;
                                                                                                                                        if (onlineCatalogItem5 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem5 = null;
                                                                                                                                        }
                                                                                                                                        int i7 = 8;
                                                                                                                                        tvGalleryEmpty.setVisibility(onlineCatalogItem5.getGalleryImages().isEmpty() ? 0 : 8);
                                                                                                                                        C0076j0 c0076j2 = this.g;
                                                                                                                                        if (c0076j2 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("imageAdapter");
                                                                                                                                            c0076j2 = null;
                                                                                                                                        }
                                                                                                                                        OnlineCatalogItem onlineCatalogItem6 = this.f;
                                                                                                                                        if (onlineCatalogItem6 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem6 = null;
                                                                                                                                        }
                                                                                                                                        List<String> list = onlineCatalogItem6.getGalleryImages();
                                                                                                                                        c0076j2.getClass();
                                                                                                                                        Intrinsics.checkNotNullParameter(list, "list");
                                                                                                                                        c0076j2.f625e = list;
                                                                                                                                        c0076j2.c();
                                                                                                                                        OnlineCatalogItem item2 = this.f;
                                                                                                                                        if (item2 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            item2 = null;
                                                                                                                                        }
                                                                                                                                        Intrinsics.checkNotNullParameter(item2, "item");
                                                                                                                                        String string3 = StringsKt.trim((CharSequence) item2.getGameSize()).toString();
                                                                                                                                        if (StringsKt.isBlank(string3)) {
                                                                                                                                            f fVar20 = this.f3802e;
                                                                                                                                            if (fVar20 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar20 = null;
                                                                                                                                            }
                                                                                                                                            fVar20.f5768k.setVisibility(8);
                                                                                                                                            f fVar21 = this.f3802e;
                                                                                                                                            if (fVar21 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar21 = null;
                                                                                                                                            }
                                                                                                                                            fVar21.f5757C.setVisibility(8);
                                                                                                                                            f fVar22 = this.f3802e;
                                                                                                                                            if (fVar22 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar22 = null;
                                                                                                                                            }
                                                                                                                                            fVar22.f5757C.setText("");
                                                                                                                                        } else {
                                                                                                                                            f fVar23 = this.f3802e;
                                                                                                                                            if (fVar23 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar23 = null;
                                                                                                                                            }
                                                                                                                                            fVar23.f5768k.setVisibility(0);
                                                                                                                                            f fVar24 = this.f3802e;
                                                                                                                                            if (fVar24 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar24 = null;
                                                                                                                                            }
                                                                                                                                            fVar24.f5757C.setVisibility(0);
                                                                                                                                            f fVar25 = this.f3802e;
                                                                                                                                            if (fVar25 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar25 = null;
                                                                                                                                            }
                                                                                                                                            fVar25.f5757C.setText(string3);
                                                                                                                                        }
                                                                                                                                        OnlineCatalogItem onlineCatalogItem7 = this.f;
                                                                                                                                        if (onlineCatalogItem7 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem7 = null;
                                                                                                                                        }
                                                                                                                                        if (StringsKt.isBlank(onlineCatalogItem7.getThumbnailUrl())) {
                                                                                                                                            f fVar26 = this.f3802e;
                                                                                                                                            if (fVar26 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar26 = null;
                                                                                                                                            }
                                                                                                                                            fVar26.f5767j.setImageDrawable(null);
                                                                                                                                            f fVar27 = this.f3802e;
                                                                                                                                            if (fVar27 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar27 = null;
                                                                                                                                            }
                                                                                                                                            TextView textView25 = fVar27.f5755A;
                                                                                                                                            OnlineCatalogItem onlineCatalogItem8 = this.f;
                                                                                                                                            if (onlineCatalogItem8 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem8 = null;
                                                                                                                                            }
                                                                                                                                            String upperCase = StringsKt.take(onlineCatalogItem8.getTitle(), 3).toUpperCase(Locale.ROOT);
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                                                                                                                            textView25.setText(upperCase);
                                                                                                                                            f fVar28 = this.f3802e;
                                                                                                                                            if (fVar28 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar28 = null;
                                                                                                                                            }
                                                                                                                                            fVar28.f5767j.setOnClickListener(null);
                                                                                                                                        } else {
                                                                                                                                            f fVar29 = this.f3802e;
                                                                                                                                            if (fVar29 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar29 = null;
                                                                                                                                            }
                                                                                                                                            fVar29.f5755A.setText("");
                                                                                                                                            f fVar30 = this.f3802e;
                                                                                                                                            if (fVar30 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar30 = null;
                                                                                                                                            }
                                                                                                                                            n nVarC = b.c(fVar30.f5767j);
                                                                                                                                            OnlineCatalogItem onlineCatalogItem9 = this.f;
                                                                                                                                            if (onlineCatalogItem9 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem9 = null;
                                                                                                                                            }
                                                                                                                                            Object url = onlineCatalogItem9.getThumbnailUrl();
                                                                                                                                            Intrinsics.checkNotNullParameter(url, "url");
                                                                                                                                            if (!StringsKt.isBlank(url)) {
                                                                                                                                                try {
                                                                                                                                                    if (com.bumptech.glide.c.U(url)) {
                                                                                                                                                        i iVar = new i();
                                                                                                                                                        iVar.a();
                                                                                                                                                        iVar.f4629a = true;
                                                                                                                                                        url = new g(url, new k(iVar.b));
                                                                                                                                                    }
                                                                                                                                                } catch (Exception unused) {
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            nVarC.getClass();
                                                                                                                                            com.bumptech.glide.k kVarX = new com.bumptech.glide.k(nVarC.b, nVarC, Drawable.class, nVarC.f3274c).x(url);
                                                                                                                                            f fVar31 = this.f3802e;
                                                                                                                                            if (fVar31 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar31 = null;
                                                                                                                                            }
                                                                                                                                            kVarX.v(fVar31.f5767j);
                                                                                                                                            f fVar32 = this.f3802e;
                                                                                                                                            if (fVar32 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar32 = null;
                                                                                                                                            }
                                                                                                                                            fVar32.f5767j.setOnClickListener(new View.OnClickListener(this) { // from class: C1.J1

                                                                                                                                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                                                                                                public final /* synthetic */ OnlineGameDetailActivity f452c;

                                                                                                                                                {
                                                                                                                                                    this.f452c = this;
                                                                                                                                                }

                                                                                                                                                @Override // android.view.View.OnClickListener
                                                                                                                                                public final void onClick(View view) {
                                                                                                                                                    int i8 = i6;
                                                                                                                                                    OnlineGameDetailActivity onlineGameDetailActivity = this.f452c;
                                                                                                                                                    switch (i8) {
                                                                                                                                                        case 0:
                                                                                                                                                            int i9 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                            onlineGameDetailActivity.finish();
                                                                                                                                                            break;
                                                                                                                                                        case 1:
                                                                                                                                                            int i10 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                            onlineGameDetailActivity.startActivity(new Intent(onlineGameDetailActivity, (Class<?>) HubActivity.class).addFlags(603979776));
                                                                                                                                                            onlineGameDetailActivity.finish();
                                                                                                                                                            break;
                                                                                                                                                        default:
                                                                                                                                                            int i11 = OnlineGameDetailActivity.f3801i;
                                                                                                                                                            int i12 = ImageViewerActivity.f3783e;
                                                                                                                                                            OnlineCatalogItem onlineCatalogItem10 = onlineGameDetailActivity.f;
                                                                                                                                                            OnlineCatalogItem onlineCatalogItem11 = null;
                                                                                                                                                            if (onlineCatalogItem10 == null) {
                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                                onlineCatalogItem10 = null;
                                                                                                                                                            }
                                                                                                                                                            List listListOf = CollectionsKt.listOf(onlineCatalogItem10.getThumbnailUrl());
                                                                                                                                                            OnlineCatalogItem onlineCatalogItem12 = onlineGameDetailActivity.f;
                                                                                                                                                            if (onlineCatalogItem12 == null) {
                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                            } else {
                                                                                                                                                                onlineCatalogItem11 = onlineCatalogItem12;
                                                                                                                                                            }
                                                                                                                                                            Y0.e.o(onlineGameDetailActivity, listListOf, 0, onlineCatalogItem11.getTitle(), 20);
                                                                                                                                                            break;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            });
                                                                                                                                        }
                                                                                                                                        OnlineCatalogItem onlineCatalogItem10 = this.f;
                                                                                                                                        if (onlineCatalogItem10 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem10 = null;
                                                                                                                                        }
                                                                                                                                        String str = (String) CollectionsKt.firstOrNull((List) onlineCatalogItem10.getCategories());
                                                                                                                                        if (str != null) {
                                                                                                                                            string = str.toUpperCase(Locale.ROOT);
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(string, "toUpperCase(...)");
                                                                                                                                            if (string == null) {
                                                                                                                                                string = getString(R.string.label_online);
                                                                                                                                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                                                                                                                            }
                                                                                                                                        } else {
                                                                                                                                            string = getString(R.string.label_online);
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                                                                                                                        }
                                                                                                                                        f fVar33 = this.f3802e;
                                                                                                                                        if (fVar33 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar33 = null;
                                                                                                                                        }
                                                                                                                                        fVar33.f5779v.setText(string);
                                                                                                                                        f fVar34 = this.f3802e;
                                                                                                                                        if (fVar34 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                            fVar34 = null;
                                                                                                                                        }
                                                                                                                                        TextView textView26 = fVar34.f5779v;
                                                                                                                                        GradientDrawable gradientDrawable = new GradientDrawable();
                                                                                                                                        gradientDrawable.setShape(0);
                                                                                                                                        gradientDrawable.setCornerRadius(10.0f);
                                                                                                                                        gradientDrawable.setColor(Color.parseColor("#22EF4444"));
                                                                                                                                        gradientDrawable.setStroke(1, Color.parseColor("#44EF4444"));
                                                                                                                                        textView26.setBackground(gradientDrawable);
                                                                                                                                        OnlineCatalogItem onlineCatalogItem11 = this.f;
                                                                                                                                        if (onlineCatalogItem11 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem11 = null;
                                                                                                                                        }
                                                                                                                                        if (!StringsKt.isBlank(onlineCatalogItem11.getTranslator())) {
                                                                                                                                            f fVar35 = this.f3802e;
                                                                                                                                            if (fVar35 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar35 = null;
                                                                                                                                            }
                                                                                                                                            fVar35.f5770m.setVisibility(0);
                                                                                                                                            f fVar36 = this.f3802e;
                                                                                                                                            if (fVar36 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar36 = null;
                                                                                                                                            }
                                                                                                                                            fVar36.f5760F.setVisibility(0);
                                                                                                                                            f fVar37 = this.f3802e;
                                                                                                                                            if (fVar37 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar37 = null;
                                                                                                                                            }
                                                                                                                                            TextView textView27 = fVar37.f5760F;
                                                                                                                                            OnlineCatalogItem onlineCatalogItem12 = this.f;
                                                                                                                                            if (onlineCatalogItem12 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem12 = null;
                                                                                                                                            }
                                                                                                                                            textView27.setText(onlineCatalogItem12.getTranslator());
                                                                                                                                        }
                                                                                                                                        OnlineCatalogItem onlineCatalogItem13 = this.f;
                                                                                                                                        if (onlineCatalogItem13 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem13 = null;
                                                                                                                                        }
                                                                                                                                        if (onlineCatalogItem13.getStoreLinks().hasAny()) {
                                                                                                                                            f fVar38 = this.f3802e;
                                                                                                                                            if (fVar38 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar38 = null;
                                                                                                                                            }
                                                                                                                                            fVar38.f5769l.setVisibility(0);
                                                                                                                                            f fVar39 = this.f3802e;
                                                                                                                                            if (fVar39 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar39 = null;
                                                                                                                                            }
                                                                                                                                            fVar39.f5777t.setVisibility(0);
                                                                                                                                            f fVar40 = this.f3802e;
                                                                                                                                            if (fVar40 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar40 = null;
                                                                                                                                            }
                                                                                                                                            TextView btnStoreSteam = fVar40.f5765h;
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(btnStoreSteam, "btnStoreSteam");
                                                                                                                                            OnlineCatalogItem onlineCatalogItem14 = this.f;
                                                                                                                                            if (onlineCatalogItem14 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem14 = null;
                                                                                                                                            }
                                                                                                                                            n(btnStoreSteam, onlineCatalogItem14.getStoreLinks().getSteam());
                                                                                                                                            f fVar41 = this.f3802e;
                                                                                                                                            if (fVar41 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar41 = null;
                                                                                                                                            }
                                                                                                                                            TextView btnStoreDlsite = fVar41.f5763d;
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(btnStoreDlsite, "btnStoreDlsite");
                                                                                                                                            OnlineCatalogItem onlineCatalogItem15 = this.f;
                                                                                                                                            if (onlineCatalogItem15 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem15 = null;
                                                                                                                                            }
                                                                                                                                            n(btnStoreDlsite, onlineCatalogItem15.getStoreLinks().getDlsite());
                                                                                                                                            f fVar42 = this.f3802e;
                                                                                                                                            if (fVar42 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar42 = null;
                                                                                                                                            }
                                                                                                                                            TextView btnStoreDmm = fVar42.f5764e;
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(btnStoreDmm, "btnStoreDmm");
                                                                                                                                            OnlineCatalogItem onlineCatalogItem16 = this.f;
                                                                                                                                            if (onlineCatalogItem16 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem16 = null;
                                                                                                                                            }
                                                                                                                                            n(btnStoreDmm, onlineCatalogItem16.getStoreLinks().getDmm());
                                                                                                                                            f fVar43 = this.f3802e;
                                                                                                                                            if (fVar43 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar43 = null;
                                                                                                                                            }
                                                                                                                                            TextView btnStoreItchio = fVar43.f;
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(btnStoreItchio, "btnStoreItchio");
                                                                                                                                            OnlineCatalogItem onlineCatalogItem17 = this.f;
                                                                                                                                            if (onlineCatalogItem17 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem17 = null;
                                                                                                                                            }
                                                                                                                                            n(btnStoreItchio, onlineCatalogItem17.getStoreLinks().getItchio());
                                                                                                                                            f fVar44 = this.f3802e;
                                                                                                                                            if (fVar44 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                                                                                fVar44 = null;
                                                                                                                                            }
                                                                                                                                            TextView btnStoreOther = fVar44.g;
                                                                                                                                            Intrinsics.checkNotNullExpressionValue(btnStoreOther, "btnStoreOther");
                                                                                                                                            OnlineCatalogItem onlineCatalogItem18 = this.f;
                                                                                                                                            if (onlineCatalogItem18 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem18 = null;
                                                                                                                                            }
                                                                                                                                            n(btnStoreOther, onlineCatalogItem18.getStoreLinks().getOther());
                                                                                                                                        }
                                                                                                                                        m();
                                                                                                                                        OnlineCatalogItem onlineCatalogItem19 = this.f;
                                                                                                                                        if (onlineCatalogItem19 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                            onlineCatalogItem19 = null;
                                                                                                                                        }
                                                                                                                                        if (StringsKt.isBlank(onlineCatalogItem19.getContentHtml())) {
                                                                                                                                            OnlineCatalogItem onlineCatalogItem20 = this.f;
                                                                                                                                            if (onlineCatalogItem20 == null) {
                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("item");
                                                                                                                                                onlineCatalogItem20 = null;
                                                                                                                                            }
                                                                                                                                            if (onlineCatalogItem20.getPostId() > 0) {
                                                                                                                                                A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new N1(this, null), 3);
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        CatalogDownloadQueue catalogDownloadQueue2 = this.f3803h;
                                                                                                                                        if (catalogDownloadQueue2 == null) {
                                                                                                                                            Intrinsics.throwUninitializedPropertyAccessException("downloadQueue");
                                                                                                                                        } else {
                                                                                                                                            catalogDownloadQueue = catalogDownloadQueue2;
                                                                                                                                        }
                                                                                                                                        catalogDownloadQueue.observe(new C0035p(i7, this));
                                                                                                                                        p(K1.b);
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i4)));
    }

    public final void p(K1 k2) {
        f fVar = this.f3802e;
        f fVar2 = null;
        if (fVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar = null;
        }
        fVar.f5774q.setVisibility(k2 == K1.b ? 0 : 8);
        f fVar3 = this.f3802e;
        if (fVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            fVar3 = null;
        }
        fVar3.f5772o.setVisibility(k2 == K1.f459c ? 0 : 8);
        f fVar4 = this.f3802e;
        if (fVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            fVar2 = fVar4;
        }
        fVar2.f5773p.setVisibility(k2 == K1.f460d ? 0 : 8);
    }
}
