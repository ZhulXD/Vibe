package com.minhub.gamehub.game;

import A1.F;
import C1.C0117x0;
import C1.Z0;
import S1.c;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.lifecycle.ViewModelLazy;
import com.minhub.gamehub.R;
import k.C0319v;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import p064y1.Q1;
import p064y1.R1;
import p064y1.T1;
import p064y1.U1;
import p064y1.V1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/game/SplashGameActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSplashGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashGameActivity.kt\ncom/minhub/gamehub/game/SplashGameActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n75#2,13:218\n295#3,2:231\n*S KotlinDebug\n*F\n+ 1 SplashGameActivity.kt\ncom/minhub/gamehub/game/SplashGameActivity\n*L\n79#1:218,13\n92#1:231,2\n*E\n"})
public final class SplashGameActivity extends c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f3723h = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0319v f3724e;
    public final ViewModelLazy f = new ViewModelLazy(Reflection.getOrCreateKotlinClass(Z0.class), new R1(this, 0), new Q1(this), new R1(this, 1));
    public boolean g;

    public static final void m(SplashGameActivity splashGameActivity, T1 binding, Drawable drawable) {
        ImageView.ScaleType scaleType;
        Intrinsics.checkNotNullParameter(binding, "binding");
        boolean z2 = binding.b;
        V1 v2 = z2 ? V1.b : V1.f6149c;
        U1 u2 = new U1(z2, z2, z2, v2);
        if (z2 || drawable == null) {
            splashGameActivity.n(u2);
            return;
        }
        int i3 = z2 ? (int) (14 * splashGameActivity.getResources().getDisplayMetrics().density) : 0;
        C0319v c0319v = splashGameActivity.f3724e;
        if (c0319v == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            c0319v = null;
        }
        ImageView imageView = (ImageView) c0319v.f4921a;
        imageView.setPadding(i3, i3, i3, i3);
        imageView.setImageTintList(null);
        int iOrdinal = v2.ordinal();
        if (iOrdinal == 0) {
            scaleType = ImageView.ScaleType.CENTER_INSIDE;
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            scaleType = ImageView.ScaleType.FIT_XY;
        }
        imageView.setScaleType(scaleType);
        imageView.setImageDrawable(drawable);
    }

    public final void n(U1 u2) {
        ImageView.ScaleType scaleType;
        int i3 = u2.f6141a ? (int) (14 * getResources().getDisplayMetrics().density) : 0;
        C0319v c0319v = this.f3724e;
        if (c0319v == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            c0319v = null;
        }
        ImageView imageView = (ImageView) c0319v.f4921a;
        imageView.setPadding(i3, i3, i3, i3);
        imageView.setImageTintList(u2.f6142c ? ColorStateList.valueOf(-855638017) : null);
        int iOrdinal = u2.f6143d.ordinal();
        if (iOrdinal == 0) {
            scaleType = ImageView.ScaleType.CENTER_INSIDE;
        } else {
            if (iOrdinal != 1) {
                throw new NoWhenBranchMatchedException();
            }
            scaleType = ImageView.ScaleType.FIT_XY;
        }
        imageView.setScaleType(scaleType);
        if (u2.b) {
            imageView.setImageResource(R.drawable.ic_play);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_splash_game, (ViewGroup) null, false);
        int i3 = R.id.img_splash_icon;
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.img_splash_icon);
        if (imageView != null) {
            i3 = R.id.progress_bar;
            ProgressBar progressBar = (ProgressBar) viewInflate.findViewById(R.id.progress_bar);
            if (progressBar != null) {
                FrameLayout frameLayout = (FrameLayout) viewInflate;
                i3 = R.id.tv_game_title;
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_game_title);
                if (textView != null) {
                    i3 = R.id.tv_percent;
                    TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_percent);
                    if (textView2 != null) {
                        i3 = R.id.tv_powered;
                        TextView textView3 = (TextView) viewInflate.findViewById(R.id.tv_powered);
                        if (textView3 != null) {
                            C0319v c0319v = new C0319v(imageView, progressBar, frameLayout, textView, textView2, textView3);
                            Intrinsics.checkNotNullExpressionValue(c0319v, "inflate(...)");
                            this.f3724e = c0319v;
                            setContentView(frameLayout);
                            int intExtra = getIntent().getIntExtra("game_id", -1);
                            if (intExtra == -1) {
                                finish();
                                return;
                            } else {
                                ((Z0) this.f.getValue()).b.observe(this, new C0117x0(new F(this, intExtra, 4), (char) 0));
                                return;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
