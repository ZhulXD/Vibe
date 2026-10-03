package C1;

import A1.C0015e;
import A1.C0035p;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.core.view.MotionEventCompat;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.google.android.material.textfield.TextInputLayout;
import com.hatkid.mkxpz.gamepad.Gamepad;
import com.minhub.gamehub.R;
import com.minhub.gamehub.editor.ButtonEditorActivity;
import com.minhub.gamehub.editor.EditModeOverlay;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.game.KiriKiriGameActivity;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.LoginActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.auth.MinHubAuthBridge;
import java.nio.ByteBuffer;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.godotengine.godot.plugin.AndroidRuntimePlugin;
import org.godotengine.godot.service.GodotService;
import org.godotengine.godot.variant.Callable;
import p064y1.ViewOnClickListenerC0431z0;

/* JADX INFO: renamed from: C1.g1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0068g1 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f603c;

    public /* synthetic */ RunnableC0068g1(int i3, Object obj) {
        this.b = i3;
        this.f603c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objM9constructorimpl;
        int i3 = 3;
        p058w1.c cVar = null;
        final int i4 = 0;
        int i5 = 2;
        final int i6 = 1;
        switch (this.b) {
            case 0:
                HubActivity ctx = (HubActivity) this.f603c;
                int i7 = HubActivity.f3779j;
                if (ctx.isFinishing() || ctx.isDestroyed()) {
                    return;
                }
                C0035p onResult = new C0035p(5, ctx);
                C0015e onError = new C0015e(18);
                Intrinsics.checkNotNullParameter(ctx, "ctx");
                Intrinsics.checkNotNullParameter(onResult, "onResult");
                Intrinsics.checkNotNullParameter(onError, "onError");
                Thread thread = new Thread(new A1(new Handler(Looper.getMainLooper()), new A1.r(ctx, onResult, onError, 7), onError, i3));
                thread.setDaemon(true);
                thread.setName("update-check");
                thread.start();
                return;
            case 1:
                LoginActivity loginActivity = (LoginActivity) this.f603c;
                int i8 = LoginActivity.f3793l;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    List list = S1.j.f2065a;
                    Intrinsics.checkNotNullParameter("auth.h-game18.xyz", "host");
                    objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(!S1.j.a("auth.h-game18.xyz").isEmpty()));
                    break;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                Boolean bool = Boolean.FALSE;
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = bool;
                }
                loginActivity.runOnUiThread(new RunnableC0121y1(loginActivity, MinHubAuthBridge.buildPatreonStartUrl$default(MinHubAuthBridge.INSTANCE, null, ((Boolean) objM9constructorimpl).booleanValue(), 1, null), i4));
                return;
            case 2:
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) this.f603c;
                int i9 = OnlineGameDetailActivity.f3801i;
                onlineGameDetailActivity.m();
                return;
            case 3:
                ((ImageView) this.f603c).animate().setStartDelay(0L).scaleX(1.0f).scaleY(1.0f).setDuration(170L).setInterpolator(new AccelerateInterpolator()).start();
                return;
            case 4:
                ((l2) this.f603c).f();
                return;
            case 5:
                ((CarouselLayoutManager) this.f603c).r0();
                return;
            case 6:
                View view = (View) this.f603c;
                ((InputMethodManager) ContextCompat.getSystemService(view.getContext(), InputMethodManager.class)).showSoftInput(view, 1);
                return;
            case 7:
                H0.i iVar = (H0.i) this.f603c;
                iVar.f1066c = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) iVar.f1068e;
                D.e eVar = sideSheetBehavior.f3493i;
                if (eVar != null && eVar.f()) {
                    iVar.a(iVar.b);
                    return;
                } else {
                    if (sideSheetBehavior.f3492h == 2) {
                        sideSheetBehavior.w(iVar.b);
                        return;
                    }
                    return;
                }
            case 8:
                androidx.emoji2.text.q qVar = (androidx.emoji2.text.q) this.f603c;
                synchronized (qVar.f2891e) {
                    try {
                        if (qVar.f2893i == null) {
                            return;
                        }
                        try {
                            FontsContractCompat.FontInfo fontInfoC = qVar.c();
                            int resultCode = fontInfoC.getResultCode();
                            if (resultCode == 2) {
                                synchronized (qVar.f2891e) {
                                }
                            }
                            if (resultCode != 0) {
                                throw new RuntimeException("fetchFonts result is not OK. (" + resultCode + ")");
                            }
                            try {
                                TraceCompat.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                androidx.emoji2.text.p pVar = qVar.f2890d;
                                Context context = qVar.b;
                                pVar.getClass();
                                Typeface typefaceBuildTypeface = FontsContractCompat.buildTypeface(context, null, new FontsContractCompat.FontInfo[]{fontInfoC});
                                ByteBuffer byteBufferMmap = TypefaceCompatUtil.mmap(qVar.b, null, fontInfoC.getUri());
                                if (byteBufferMmap == null || typefaceBuildTypeface == null) {
                                    throw new RuntimeException("Unable to open file.");
                                }
                                try {
                                    TraceCompat.beginSection("EmojiCompat.MetadataRepo.create");
                                    N1.w wVar = new N1.w(typefaceBuildTypeface, p000a.a.F(byteBufferMmap));
                                    TraceCompat.endSection();
                                    TraceCompat.endSection();
                                    synchronized (qVar.f2891e) {
                                        try {
                                            com.bumptech.glide.c cVar2 = qVar.f2893i;
                                            if (cVar2 != null) {
                                                cVar2.C(wVar);
                                            }
                                        } catch (Throwable th2) {
                                            throw th2;
                                        }
                                        break;
                                    }
                                    qVar.b();
                                    return;
                                } catch (Throwable th3) {
                                    TraceCompat.endSection();
                                    throw th3;
                                }
                            } catch (Throwable th4) {
                                TraceCompat.endSection();
                                throw th4;
                            }
                            break;
                        } catch (Throwable th5) {
                            synchronized (qVar.f2891e) {
                                try {
                                    com.bumptech.glide.c cVar3 = qVar.f2893i;
                                    if (cVar3 != null) {
                                        cVar3.B(th5);
                                    }
                                    qVar.b();
                                    return;
                                } catch (Throwable th6) {
                                    throw th6;
                                }
                            }
                        }
                    } catch (Throwable th7) {
                        throw th7;
                    }
                }
            case 9:
                ProcessLifecycleOwner.delayedPauseRunnable$lambda$0((ProcessLifecycleOwner) this.f603c);
                return;
            case 10:
                ((com.google.android.material.timepicker.e) this.f603c).e();
                return;
            case MotionEventCompat.AXIS_Z /* 11 */:
                ((Gamepad) this.f603c).createDynamicButtons();
                return;
            case 12:
                ((p010d1.d) this.f603c).s(true);
                return;
            case 13:
                p010d1.i iVar2 = (p010d1.i) this.f603c;
                boolean zIsPopupShowing = iVar2.f3892h.isPopupShowing();
                iVar2.s(zIsPopupShowing);
                iVar2.f3897m = zIsPopupShowing;
                return;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                ((TextInputLayout) this.f603c).f3588e.requestLayout();
                return;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                AndroidRuntimePlugin.createRunnableFromGodotCallable$lambda$0((Callable) this.f603c);
                return;
            case 16:
                GodotService.performEngineInitialization$lambda$1((GodotService) this.f603c);
                return;
            case 17:
                ButtonEditorActivity buttonEditorActivity = (ButtonEditorActivity) this.f603c;
                int i10 = buttonEditorActivity.f3667h;
                p058w1.c cVar4 = buttonEditorActivity.f3666e;
                if (cVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    cVar4 = null;
                }
                ((EditModeOverlay) cVar4.f5652i).getWidth();
                p058w1.c cVar5 = buttonEditorActivity.f3666e;
                if (cVar5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                    cVar5 = null;
                }
                ((EditModeOverlay) cVar5.f5652i).getHeight();
                List listA = p061x1.e.a(buttonEditorActivity, i10, true);
                buttonEditorActivity.f = listA;
                p058w1.c cVar6 = buttonEditorActivity.f3666e;
                if (cVar6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    cVar = cVar6;
                }
                ((EditModeOverlay) cVar.f5652i).d(listA);
                return;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                GodotGameActivity godotGameActivity = (GodotGameActivity) this.f603c;
                int i11 = GodotGameActivity.f3707q;
                View decorView = godotGameActivity.getWindow().getDecorView();
                Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup = (ViewGroup) decorView;
                float f = godotGameActivity.getResources().getDisplayMetrics().density;
                final View viewInflate = LayoutInflater.from(godotGameActivity).inflate(R.layout.view_godot_menu_overlay, viewGroup, false);
                viewGroup.addView(viewInflate);
                godotGameActivity.f3712i = viewInflate;
                viewInflate.setOnClickListener(new View.OnClickListener() { // from class: y1.A0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i12 = i6;
                        View view3 = viewInflate;
                        switch (i12) {
                            case 0:
                                int i13 = GodotGameActivity.f3707q;
                                view3.setVisibility(view3.getVisibility() != 0 ? 0 : 8);
                                break;
                            default:
                                int i14 = GodotGameActivity.f3707q;
                                view3.setVisibility(8);
                                break;
                        }
                    }
                });
                viewInflate.findViewById(R.id.layout_godot_menu_card).setOnClickListener(new org.renpy.android.b(i5));
                viewInflate.findViewById(R.id.btn_godot_menu_open).setOnClickListener(new p064y1.I0(godotGameActivity, viewInflate));
                viewInflate.findViewById(R.id.btn_godot_gamepad_toggle).setOnClickListener(new p064y1.I0(viewInflate, godotGameActivity, i6));
                viewInflate.findViewById(R.id.btn_godot_menu_choose).setOnClickListener(new p064y1.I0(viewInflate, godotGameActivity, i5));
                viewInflate.findViewById(R.id.btn_godot_menu_arrange).setOnClickListener(new p064y1.I0(viewInflate, godotGameActivity, i3));
                viewInflate.findViewById(R.id.btn_godot_menu_cheat).setOnClickListener(new p064y1.I0(viewInflate, godotGameActivity, 4));
                viewInflate.findViewById(R.id.btn_godot_menu_exit).setOnClickListener(new ViewOnClickListenerC0431z0(godotGameActivity, i4));
                ImageView imageView = new ImageView(godotGameActivity);
                imageView.setImageDrawable(ContextCompat.getDrawable(godotGameActivity, R.drawable.ic_menu_selector));
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setFocusable(true);
                float f3 = 8 * f;
                imageView.setElevation(f3);
                int i12 = (int) (44 * f);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i12, i12);
                layoutParams.gravity = 8388659;
                int i13 = (int) f3;
                layoutParams.topMargin = i13;
                layoutParams.setMarginStart(i13);
                imageView.setLayoutParams(layoutParams);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: y1.A0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        int i14 = i4;
                        View view3 = viewInflate;
                        switch (i14) {
                            case 0:
                                int i15 = GodotGameActivity.f3707q;
                                view3.setVisibility(view3.getVisibility() != 0 ? 0 : 8);
                                break;
                            default:
                                int i16 = GodotGameActivity.f3707q;
                                view3.setVisibility(8);
                                break;
                        }
                    }
                });
                imageView.setOnTouchListener(new p064y1.S(new Ref.IntRef(), new Ref.IntRef(), new Ref.FloatRef(), new Ref.FloatRef(), new Ref.BooleanRef(), ViewConfiguration.get(godotGameActivity).getScaledTouchSlop(), godotGameActivity.getResources().getDisplayMetrics().density * 24.0f));
                AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
                AnimatorSet animatorSet = new AnimatorSet();
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(imageView, "scaleX", 1.0f, 0.84f);
                objectAnimatorOfFloat.setDuration(1200L);
                objectAnimatorOfFloat.setRepeatCount(-1);
                objectAnimatorOfFloat.setRepeatMode(2);
                objectAnimatorOfFloat.setInterpolator(accelerateDecelerateInterpolator);
                Unit unit = Unit.INSTANCE;
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(imageView, "scaleY", 1.0f, 0.84f);
                objectAnimatorOfFloat2.setDuration(1200L);
                objectAnimatorOfFloat2.setRepeatCount(-1);
                objectAnimatorOfFloat2.setRepeatMode(2);
                objectAnimatorOfFloat2.setInterpolator(accelerateDecelerateInterpolator);
                animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
                animatorSet.start();
                viewGroup.addView(imageView);
                if (godotGameActivity.f3713j != null) {
                    return;
                }
                FrameLayout frameLayoutK = godotGameActivity.k();
                View decorView2 = godotGameActivity.getWindow().getDecorView();
                Intrinsics.checkNotNull(decorView2, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) decorView2).addView(frameLayoutK);
                godotGameActivity.f3713j = frameLayoutK;
                return;
            default:
                KiriKiriGameActivity.k((KiriKiriGameActivity) this.f603c);
                return;
        }
    }
}
