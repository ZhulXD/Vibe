package com.minhub.gamehub.hub.catalog;

import A1.C0036q;
import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.webkit.WebView;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.utils.PermissionsUtil;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CfWebViewRenderHost;", "", "<init>", "()V", "canRender", "", "context", "Landroid/content/Context;", "attach", "Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;", "webView", "Landroid/webkit/WebView;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCfWebViewRenderHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CfWebViewRenderHost.kt\ncom/minhub/gamehub/hub/catalog/CfWebViewRenderHost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n1#2:132\n*E\n"})
public final class CfWebViewRenderHost {
    public static final CfWebViewRenderHost INSTANCE = new CfWebViewRenderHost();

    private CfWebViewRenderHost() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attach$lambda$6(Ref.BooleanRef booleanRef, WindowManager windowManager, WebView webView) {
        if (!booleanRef.element) {
            booleanRef.element = true;
            try {
                Result.Companion companion = Result.INSTANCE;
                windowManager.removeView(webView);
                Result.m9constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th));
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit attach$lambda$9(Ref.BooleanRef booleanRef, Ref.BooleanRef booleanRef2, DisplayMetrics displayMetrics, int i3, WindowManager windowManager, WebView webView) {
        if (!booleanRef.element && !booleanRef2.element) {
            booleanRef2.element = true;
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(displayMetrics.widthPixels, displayMetrics.heightPixels, i3, 40, -2);
            layoutParams.gravity = 8388659;
            layoutParams.x = 0;
            layoutParams.y = 0;
            try {
                Result.Companion companion = Result.INSTANCE;
                windowManager.updateViewLayout(webView, layoutParams);
                Result.m9constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            Log.i("MinHub-DL", "CfRenderHost: overlay shown on-screen (Turnstile detected)");
        }
        return Unit.INSTANCE;
    }

    public final CfOverlayHandle attach(Context context, final WebView webView) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webView, "webView");
        if (!canRender(context)) {
            Log.w("MinHub-DL", "CfRenderHost: no overlay permission — WebView runs unattached, Cloudflare challenge will likely NOT clear");
            return new CfOverlayHandle(new C0036q(10), new C0036q(11));
        }
        Object systemService = context.getSystemService("window");
        final WindowManager windowManager = systemService instanceof WindowManager ? (WindowManager) systemService : null;
        if (windowManager == null) {
            return new CfOverlayHandle(new C0036q(12), new C0036q(13));
        }
        final int i3 = Build.VERSION.SDK_INT >= 26 ? 2038 : PermissionsUtil.REQUEST_MANAGE_EXTERNAL_STORAGE_REQ_CODE;
        final DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(displayMetrics.widthPixels, displayMetrics.heightPixels, i3, 56, -2);
        layoutParams.gravity = 8388659;
        layoutParams.x = -displayMetrics.widthPixels;
        layoutParams.y = 0;
        try {
            windowManager.addView(webView, layoutParams);
            Log.i("MinHub-DL", "CfRenderHost: WebView attached (hidden, off-screen)");
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            final Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            return new CfOverlayHandle(new I1.e(booleanRef, windowManager, webView, 1), new Function0() { // from class: com.minhub.gamehub.hub.catalog.g
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CfWebViewRenderHost.attach$lambda$9(booleanRef, booleanRef2, displayMetrics, i3, windowManager, webView);
                }
            });
        } catch (Exception e2) {
            Log.w("MinHub-DL", "CfRenderHost: overlay attach failed: " + e2.getMessage());
            return new CfOverlayHandle(new C0036q(14), new C0036q(15));
        }
    }

    public final boolean canRender(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Settings.canDrawOverlays(context);
    }
}
