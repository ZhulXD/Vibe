package C1;

import A1.C0009b;
import A1.C0013d;
import P.AbstractC0138c;
import P.C0144f;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.material.card.MaterialCardView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.GameStatus;
import com.minhub.gamehub.hub.catalog.OnlineCatalogItem;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogItem;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executors;
import k.C0319v;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: C1.j0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0076j0 extends P.W {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f625e;
    public Object f;

    public C0076j0(A1.r onInstall) {
        this.f624d = 4;
        Intrinsics.checkNotNullParameter(onInstall, "onInstall");
        this.f625e = onInstall;
        this.f = CollectionsKt.emptyList();
    }

    @Override // P.W
    public final int a() {
        switch (this.f624d) {
            case 0:
                return ((C0144f) this.f625e).f.size();
            case 1:
                return ((List) this.f625e).size();
            case 2:
                return ((List) this.f).size();
            case 3:
                return ((List) this.f625e).size();
            default:
                return ((List) this.f).size();
        }
    }

    @Override // P.W
    public final void e(P.y0 y0Var, int i3) {
        int i4;
        String string;
        Pair pair;
        switch (this.f624d) {
            case 0:
                C0073i0 h2 = (C0073i0) y0Var;
                Intrinsics.checkNotNullParameter(h2, "h");
                Object obj = ((C0144f) this.f625e).f.get(i3);
                Intrinsics.checkNotNullExpressionValue(obj, "getItem(...)");
                Game g = (Game) obj;
                Intrinsics.checkNotNullParameter(g, "g");
                M1.g gVar = h2.f616u;
                LinearLayout linearLayout = (LinearLayout) gVar.f1362a;
                ProgressBar progressBar = (ProgressBar) gVar.f1363c;
                TextView textView = (TextView) gVar.f1365e;
                linearLayout.setOnClickListener(new ViewOnClickListenerC0075j(1, h2.f617v, g));
                ((TextView) gVar.f1366h).setText(g.getTitle());
                TextView textView2 = (TextView) gVar.g;
                textView2.setText(Intrinsics.areEqual(GameKt.getPlaytimeLabel(g), "0h") ? "" : GameKt.getPlaytimeLabel(g));
                textView2.setVisibility(Intrinsics.areEqual(GameKt.getPlaytimeLabel(g), "0h") ? 8 : 0);
                textView.setText(GameKt.getEngineEnum(g).getLabel());
                ((TextView) gVar.f).setVisibility(g.getFavorite() ? 0 : 8);
                FrameLayout ivCover = (FrameLayout) gVar.b;
                Intrinsics.checkNotNullExpressionValue(ivCover, "ivCover");
                p000a.a.c(ivCover, (TextView) gVar.f1364d, g, 20.0f);
                int color = Color.parseColor(GameKt.getEngineEnum(g).getColorHex());
                textView.setTextColor(color);
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(10.0f);
                gradientDrawable.setColor(Color.argb(26, Color.red(color), Color.green(color), Color.blue(color)));
                gradientDrawable.setStroke(1, Color.argb(51, Color.red(color), Color.green(color), Color.blue(color)));
                textView.setBackground(gradientDrawable);
                if (GameKt.getStatusEnum(g) != GameStatus.DOWNLOADING) {
                    progressBar.setVisibility(8);
                    return;
                } else {
                    progressBar.setVisibility(0);
                    progressBar.setProgress(g.getDownloadProgress());
                    return;
                }
            case 1:
                C0118x1 holder = (C0118x1) y0Var;
                Intrinsics.checkNotNullParameter(holder, "holder");
                D1.l lVar = (D1.l) ((List) this.f625e).get(i3);
                View view = holder.f1807a;
                Context context = view.getContext();
                holder.f711u.setText(lVar.f838e);
                int iOrdinal = lVar.f837d.ordinal();
                if (iOrdinal == 0) {
                    i4 = R.string.launch_pick_confidence_high;
                } else if (iOrdinal == 1) {
                    i4 = R.string.launch_pick_confidence_medium;
                } else {
                    if (iOrdinal != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i4 = R.string.launch_pick_confidence_low;
                }
                String string2 = context.getString(i4);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                holder.f712v.setText(lVar.f836c.getLabel() + " · " + string2);
                view.setOnClickListener(new ViewOnClickListenerC0075j(6, this, lVar));
                return;
            case 2:
                D1 holder2 = (D1) y0Var;
                Intrinsics.checkNotNullParameter(holder2, "holder");
                OnlineCatalogItem item = (OnlineCatalogItem) ((List) this.f).get(i3);
                Intrinsics.checkNotNullParameter(item, "item");
                C0319v c0319v = holder2.f411u;
                TextView textView3 = (TextView) c0319v.f;
                ImageView imageView = (ImageView) c0319v.b;
                textView3.setText(item.getTitle());
                TextView textView4 = (TextView) c0319v.f4923d;
                Intrinsics.checkNotNullParameter(item, "item");
                List<String> categories = item.getCategories();
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : categories) {
                    String str = (String) obj2;
                    if (!StringsKt.isBlank(str)) {
                        String strD = U.d(str);
                        if ((Intrinsics.areEqual(strD, "fixed") ? EnumC0067g0.FIXED : Intrinsics.areEqual(strD, "update") ? EnumC0067g0.UPDATE : null) == null) {
                            arrayList.add(obj2);
                        }
                    }
                }
                List listTake = CollectionsKt.take(arrayList, 2);
                if (listTake.isEmpty()) {
                    List<String> tags = item.getTags();
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj3 : tags) {
                        if (!StringsKt.isBlank((String) obj3)) {
                            arrayList2.add(obj3);
                        }
                    }
                    List listTake2 = CollectionsKt.take(arrayList2, 2);
                    if (listTake2.isEmpty()) {
                        string = StringsKt.trim((CharSequence) new Regex("\\s+").replace(item.getExcerpt(), " ")).toString();
                        if (StringsKt.isBlank(string)) {
                            string = item.getSlug();
                            if (StringsKt.isBlank(string)) {
                                string = item.getTitle();
                            }
                        }
                    } else {
                        string = CollectionsKt.o(listTake2, " • ", null, null, null, 62);
                    }
                } else {
                    string = CollectionsKt.o(listTake, " • ", null, null, null, 62);
                }
                textView4.setText(string);
                TextView textView5 = (TextView) c0319v.f4922c;
                String upperCase = StringsKt.take(item.getTitle(), 3).toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                textView5.setText(upperCase);
                Intrinsics.checkNotNullParameter(item, "item");
                List listPlus = CollectionsKt___CollectionsKt.plus((Collection) item.getCategories(), (Iterable) item.getTags());
                ArrayList arrayList3 = new ArrayList();
                Iterator it = listPlus.iterator();
                while (it.hasNext()) {
                    String strD2 = U.d((String) it.next());
                    EnumC0067g0 enumC0067g0 = Intrinsics.areEqual(strD2, "fixed") ? EnumC0067g0.FIXED : Intrinsics.areEqual(strD2, "update") ? EnumC0067g0.UPDATE : null;
                    if (enumC0067g0 != null) {
                        arrayList3.add(enumC0067g0);
                    }
                }
                EnumC0067g0 enumC0067g1 = EnumC0067g0.FIXED;
                if (!arrayList3.contains(enumC0067g1)) {
                    enumC0067g1 = EnumC0067g0.UPDATE;
                    if (!arrayList3.contains(enumC0067g1)) {
                        enumC0067g1 = null;
                    }
                }
                TextView tvStatusBadge = (TextView) c0319v.f4924e;
                Intrinsics.checkNotNullExpressionValue(tvStatusBadge, "tvStatusBadge");
                if (enumC0067g1 == null) {
                    tvStatusBadge.setVisibility(8);
                } else {
                    int iOrdinal2 = enumC0067g1.ordinal();
                    if (iOrdinal2 == 0) {
                        pair = TuplesKt.to(-208051, -12770304);
                    } else {
                        if (iOrdinal2 != 1) {
                            throw new NoWhenBranchMatchedException();
                        }
                        pair = TuplesKt.to(-8530948, -16240823);
                    }
                    int iIntValue = ((Number) pair.component1()).intValue();
                    int iIntValue2 = ((Number) pair.component2()).intValue();
                    tvStatusBadge.setText(enumC0067g1.b);
                    tvStatusBadge.setTextColor(iIntValue2);
                    tvStatusBadge.setBackgroundTintList(ColorStateList.valueOf(iIntValue));
                    tvStatusBadge.setVisibility(0);
                }
                if (StringsKt.isBlank(item.getThumbnailUrl())) {
                    com.bumptech.glide.n nVarC = com.bumptech.glide.b.c(imageView);
                    nVarC.getClass();
                    nVarC.j(new com.bumptech.glide.l(imageView));
                    imageView.setImageDrawable(null);
                } else {
                    com.bumptech.glide.n nVarC2 = com.bumptech.glide.b.c(imageView);
                    Object objG = com.bumptech.glide.c.g(item.getThumbnailUrl());
                    nVarC2.getClass();
                    com.bumptech.glide.k kVarX = new com.bumptech.glide.k(nVarC2.b, nVarC2, Drawable.class, nVarC2.f3274c).x(objG);
                    kVarX.getClass();
                    p033m0.n nVar = p033m0.n.b;
                    Intrinsics.checkNotNull(((com.bumptech.glide.k) kVarX.p(new p033m0.h())).v(imageView));
                }
                ((MaterialCardView) c0319v.f4921a).setOnClickListener(new ViewOnClickListenerC0075j(8, holder2.f412v, item));
                return;
            case 3:
                P1 holder3 = (P1) y0Var;
                Intrinsics.checkNotNullParameter(holder3, "holder");
                Object obj4 = ((List) this.f625e).get(i3);
                Intrinsics.checkNotNullExpressionValue(obj4, "get(...)");
                String url = (String) obj4;
                Intrinsics.checkNotNullParameter(url, "url");
                C0013d c0013d = holder3.f486u;
                com.bumptech.glide.n nVarC3 = com.bumptech.glide.b.c((ImageView) c0013d.f178d);
                Object objG2 = com.bumptech.glide.c.g(url);
                nVarC3.getClass();
                com.bumptech.glide.k kVarX2 = new com.bumptech.glide.k(nVarC3.b, nVarC3, Drawable.class, nVarC3.f3274c).x(objG2);
                kVarX2.getClass();
                p033m0.n nVar2 = p033m0.n.b;
                ((com.bumptech.glide.k) kVarX2.p(new p033m0.h())).v((ImageView) c0013d.f178d);
                ((MaterialCardView) c0013d.f177c).setOnClickListener(new O1(holder3.f487v, i3));
                return;
            default:
                W1 holder4 = (W1) y0Var;
                Intrinsics.checkNotNullParameter(holder4, "holder");
                RemotePluginCatalogItem item2 = (RemotePluginCatalogItem) ((List) this.f).get(i3);
                TextView textView6 = holder4.f522x;
                TextView textView7 = holder4.f521w;
                Intrinsics.checkNotNullParameter(item2, "item");
                holder4.f519u.setText(item2.getTitle());
                TextView textView8 = holder4.f520v;
                String version = item2.getVersion();
                if (StringsKt.isBlank(version)) {
                    version = item2.getSlug();
                }
                textView8.setText(version);
                if (StringsKt.isBlank(item2.getDescription())) {
                    textView7.setVisibility(8);
                } else {
                    textView7.setText(item2.getDescription());
                    textView7.setVisibility(0);
                }
                List listCreateListBuilder = CollectionsKt.createListBuilder();
                Set<GameEngine> supportedEngines = item2.getSupportedEngines();
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedEngines, 10));
                Iterator<T> it2 = supportedEngines.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(((GameEngine) it2.next()).name());
                }
                listCreateListBuilder.addAll(arrayList4);
                listCreateListBuilder.addAll(CollectionsKt.take(item2.getProblemTags(), 3));
                List listBuild = CollectionsKt.build(listCreateListBuilder);
                if (listBuild.isEmpty()) {
                    textView6.setVisibility(8);
                } else {
                    textView6.setText(CollectionsKt.o(listBuild, " · ", null, null, null, 62));
                    textView6.setVisibility(0);
                }
                holder4.f523y.setOnClickListener(new ViewOnClickListenerC0075j(15, holder4.f524z, item2));
                return;
        }
    }

    @Override // P.W
    public final P.y0 f(ViewGroup parent) {
        switch (this.f624d) {
            case 0:
                Intrinsics.checkNotNullParameter(parent, "parent");
                View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_game_card, parent, false);
                int i3 = R.id.iv_cover;
                FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.iv_cover);
                if (frameLayout != null) {
                    i3 = R.id.progress_download;
                    ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_download);
                    if (progressBar != null) {
                        i3 = R.id.tv_cover_abbr;
                        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_cover_abbr);
                        if (textView != null) {
                            i3 = R.id.tv_engine;
                            TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_engine);
                            if (textView2 != null) {
                                i3 = R.id.tv_fav;
                                TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_fav);
                                if (textView3 != null) {
                                    i3 = R.id.tv_playtime;
                                    TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_playtime);
                                    if (textView4 != null) {
                                        i3 = R.id.tv_title;
                                        TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_title);
                                        if (textView5 != null) {
                                            M1.g gVar = new M1.g((LinearLayout) viewInflate, frameLayout, progressBar, textView, textView2, textView3, textView4, textView5);
                                            Intrinsics.checkNotNullExpressionValue(gVar, "inflate(...)");
                                            return new C0073i0(this, gVar);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
            case 1:
                Intrinsics.checkNotNullParameter(parent, "parent");
                View viewInflate2 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_launch_candidate, parent, false);
                Intrinsics.checkNotNullExpressionValue(viewInflate2, "inflate(...)");
                return new C0118x1(viewInflate2);
            case 2:
                Intrinsics.checkNotNullParameter(parent, "parent");
                View viewInflate3 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_online_catalog, parent, false);
                int i4 = R.id.img_cover;
                ImageView imageView = (ImageView) viewInflate3.findViewById(R.id.img_cover);
                if (imageView != null) {
                    i4 = R.id.tv_cover_abbr;
                    TextView textView6 = (TextView) viewInflate3.findViewById(R.id.tv_cover_abbr);
                    if (textView6 != null) {
                        i4 = R.id.tv_meta;
                        TextView textView7 = (TextView) viewInflate3.findViewById(R.id.tv_meta);
                        if (textView7 != null) {
                            i4 = R.id.tv_status_badge;
                            TextView textView8 = (TextView) viewInflate3.findViewById(R.id.tv_status_badge);
                            if (textView8 != null) {
                                i4 = R.id.tv_title;
                                TextView textView9 = (TextView) viewInflate3.findViewById(R.id.tv_title);
                                if (textView9 != null) {
                                    C0319v c0319v = new C0319v((MaterialCardView) viewInflate3, imageView, textView6, textView7, textView8, textView9);
                                    Intrinsics.checkNotNullExpressionValue(c0319v, "inflate(...)");
                                    return new D1(this, c0319v);
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i4)));
            case 3:
                Intrinsics.checkNotNullParameter(parent, "parent");
                View viewInflate4 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_online_image, parent, false);
                ImageView imageView2 = (ImageView) viewInflate4.findViewById(R.id.img_gallery);
                if (imageView2 == null) {
                    throw new NullPointerException("Missing required view with ID: ".concat(viewInflate4.getResources().getResourceName(R.id.img_gallery)));
                }
                C0013d c0013d = new C0013d(24, (MaterialCardView) viewInflate4, imageView2);
                Intrinsics.checkNotNullExpressionValue(c0013d, "inflate(...)");
                return new P1(this, c0013d);
            default:
                Intrinsics.checkNotNullParameter(parent, "parent");
                View viewInflate5 = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_plugin_catalog_row, parent, false);
                Intrinsics.checkNotNull(viewInflate5);
                return new W1(this, viewInflate5);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0076j0(C0050a1 onClick) {
        this(0);
        this.f624d = 0;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.f = onClick;
    }

    public C0076j0(C0069h onClick) {
        this.f624d = 2;
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.f625e = onClick;
        this.f = CollectionsKt.emptyList();
    }

    public C0076j0(List items, A1.r onClick) {
        this.f624d = 1;
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        this.f625e = items;
        this.f = onClick;
    }

    public C0076j0(int i3) {
        this.f624d = i3;
        switch (i3) {
            case 3:
                return;
            default:
                P.N n2 = new P.N(this);
                C0009b c0009b = new C0009b(this);
                synchronized (AbstractC0138c.f1652a) {
                    try {
                        if (AbstractC0138c.b == null) {
                            AbstractC0138c.b = Executors.newFixedThreadPool(2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                C0144f c0144f = new C0144f(c0009b, new C0009b(AbstractC0138c.b));
                this.f625e = c0144f;
                c0144f.f1666d.add(n2);
                return;
        }
    }
}
