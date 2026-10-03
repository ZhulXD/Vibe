package com.minhub.gamehub.game;

import C1.ViewOnClickListenerC0106t1;
import S1.c;
import android.R;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import com.hatkid.mkxpz.cheat.CheatsManager;
import com.minhub.gamehub.game.VxAceCheatActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.unsigned.a;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.renpy.android.b;
import p064y1.Q;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/game/VxAceCheatActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVxAceCheatActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VxAceCheatActivity.kt\ncom/minhub/gamehub/game/VxAceCheatActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1#2:345\n1878#3,3:346\n1878#3,3:349\n1878#3,3:352\n*S KotlinDebug\n*F\n+ 1 VxAceCheatActivity.kt\ncom/minhub/gamehub/game/VxAceCheatActivity\n*L\n266#1:346,3\n318#1:349,3\n278#1:352,3\n*E\n"})
public final class VxAceCheatActivity extends c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f3725o = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CheatsManager f3726e = new CheatsManager();
    public int f = -1;
    public int g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f3727h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f3728i = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3729j = -535685600;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f3730k = 1090519039;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f3731l = -657414;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f3732m = -1096636;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f3733n = -1728053248;

    public final TextView m(String str, Function0 function0) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(this.f3731l);
        textView.setTextSize(13.0f);
        textView.setGravity(8388627);
        textView.setMinimumHeight(o(44));
        textView.setPadding(o(18), o(10), o(18), o(10));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(419430399);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(0);
        gradientDrawable2.setColor(0);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, gradientDrawable);
        stateListDrawable.addState(new int[0], gradientDrawable2);
        textView.setBackground(stateListDrawable);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        textView.setOnClickListener(new ViewOnClickListenerC0106t1(2, function0));
        return textView;
    }

    public final GradientDrawable n(boolean z2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(o(6));
        if (z2) {
            gradientDrawable.setColor(this.f3732m);
            return gradientDrawable;
        }
        gradientDrawable.setColor(Color.argb(30, 255, 255, 255));
        gradientDrawable.setStroke(o(1), this.f3730k);
        return gradientDrawable;
    }

    public final int o(int i3) {
        return (int) (i3 * getResources().getDisplayMetrics().density);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int iMin = Math.min(o(300), (int) (displayMetrics.widthPixels * 0.44f));
        int i3 = (int) (displayMetrics.heightPixels * 0.88f);
        ViewGroup frameLayout = new FrameLayout(this);
        frameLayout.setBackgroundColor(this.f3733n);
        final int i4 = 0;
        frameLayout.setOnClickListener(new View.OnClickListener(this) { // from class: y1.Z1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6167c;

            {
                this.f6167c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i4;
                VxAceCheatActivity vxAceCheatActivity = this.f6167c;
                switch (i5) {
                    case 0:
                        int i6 = VxAceCheatActivity.f3725o;
                        vxAceCheatActivity.finish();
                        break;
                    default:
                        int i7 = VxAceCheatActivity.f3725o;
                        vxAceCheatActivity.finish();
                        break;
                }
            }
        });
        LinearLayout linearLayout = new LinearLayout(this);
        final int i5 = 1;
        linearLayout.setOrientation(1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(this.f3729j);
        final int i6 = 16;
        gradientDrawable.setCornerRadius(o(16));
        gradientDrawable.setStroke(o(1), this.f3730k);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.setElevation(o(14));
        final int i7 = 4;
        linearLayout.setOnClickListener(new b(4));
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        linearLayout2.setPadding(o(18), o(12), o(10), o(12));
        TextView textView = new TextView(this);
        textView.setText(getString(com.minhub.gamehub.R.string.cheat_title));
        int i8 = this.f3731l;
        textView.setTextColor(i8);
        textView.setTextSize(13.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this);
        textView2.setText("×");
        textView2.setTextColor(-1711276033);
        textView2.setTextSize(18.0f);
        textView2.setPadding(o(8), o(4), o(6), o(4));
        textView2.setOnClickListener(new View.OnClickListener(this) { // from class: y1.Z1

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6167c;

            {
                this.f6167c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i9 = i5;
                VxAceCheatActivity vxAceCheatActivity = this.f6167c;
                switch (i9) {
                    case 0:
                        int i10 = VxAceCheatActivity.f3725o;
                        vxAceCheatActivity.finish();
                        break;
                    default:
                        int i11 = VxAceCheatActivity.f3725o;
                        vxAceCheatActivity.finish();
                        break;
                }
            }
        });
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2);
        View view = new View(this);
        view.setBackgroundColor(553648127);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, o(1)));
        linearLayout.addView(view);
        LinearLayout linearLayout3 = new LinearLayout(this);
        linearLayout3.setOrientation(1);
        linearLayout3.setPadding(0, o(4), 0, o(16));
        String string = getString(com.minhub.gamehub.R.string.cheat_section_gold);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        linearLayout3.addView(r(string));
        final int i9 = 3;
        linearLayout3.addView(m("+1,000", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i9) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        linearLayout3.addView(m("+10,000", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i7) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i10 = 5;
        linearLayout3.addView(m("+9,999,999", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i10) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string2 = getString(com.minhub.gamehub.R.string.cheat_section_battle);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        linearLayout3.addView(r(string2));
        String string3 = getString(com.minhub.gamehub.R.string.cheat_btn_heal_all);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        final int i11 = 6;
        linearLayout3.addView(m(string3, new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i11) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string4 = getString(com.minhub.gamehub.R.string.cheat_btn_kill_enemies);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        final int i12 = 8;
        linearLayout3.addView(m(string4, new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i12) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string5 = getString(com.minhub.gamehub.R.string.cheat_btn_1hp);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        final int i13 = 9;
        linearLayout3.addView(m(string5, new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i13) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string6 = getString(com.minhub.gamehub.R.string.cheat_section_items);
        Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
        linearLayout3.addView(r(string6));
        final int i14 = 10;
        linearLayout3.addView(m("Items +10", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i14) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i15 = 7;
        linearLayout3.addView(m("Items +99", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i15) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i16 = 11;
        linearLayout3.addView(m("Weapons +10", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i16) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i17 = 12;
        linearLayout3.addView(m("Weapons +99", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i17) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i18 = 13;
        linearLayout3.addView(m("Armors +10", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i18) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i19 = 14;
        linearLayout3.addView(m("Armors +99", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i19) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string7 = getString(com.minhub.gamehub.R.string.cheat_section_level);
        Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
        linearLayout3.addView(r(string7));
        linearLayout3.addView(p(this.f3727h, new Function1(this) { // from class: y1.a2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6181c;

            {
                this.f6181c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i20 = i5;
                int iIntValue = ((Integer) obj).intValue();
                switch (i20) {
                    case 0:
                        this.f6181c.g = iIntValue;
                        break;
                    default:
                        this.f6181c.f = iIntValue;
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i20 = 15;
        linearLayout3.addView(m("Level +1", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i20) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        linearLayout3.addView(m("Level +5", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i6) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i21 = 17;
        linearLayout3.addView(m("Level +10", new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i21) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string8 = getString(com.minhub.gamehub.R.string.cheat_section_stats);
        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
        linearLayout3.addView(r(string8));
        linearLayout3.addView(p(this.f3728i, new Function1(this) { // from class: y1.a2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6181c;

            {
                this.f6181c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i22 = i4;
                int iIntValue = ((Integer) obj).intValue();
                switch (i22) {
                    case 0:
                        this.f6181c.g = iIntValue;
                        break;
                    default:
                        this.f6181c.f = iIntValue;
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        final int i22 = 2;
        Iterator it = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_maxhp), 0), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_maxmp), 1), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_atk), 2), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_def), 3), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_mat), 4), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_mdf), 5), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_agi), 6), TuplesKt.to(getString(com.minhub.gamehub.R.string.cheat_stat_luk), 7)}).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = (String) pair.component1();
            final int iIntValue = ((Number) pair.component2()).intValue();
            LinearLayout linearLayout4 = new LinearLayout(this);
            linearLayout4.setOrientation(i4);
            linearLayout4.setGravity(i6);
            linearLayout4.setMinimumHeight(o(40));
            Iterator it2 = it;
            ViewGroup viewGroup = frameLayout;
            LinearLayout linearLayout5 = linearLayout2;
            linearLayout4.setPadding(o(18), o(4), o(10), o(4));
            linearLayout4.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            TextView textView3 = new TextView(this);
            textView3.setText(str);
            textView3.setTextColor(i8);
            textView3.setTextSize(12.0f);
            textView3.setGravity(16);
            textView3.setLayoutParams(new LinearLayout.LayoutParams(o(50), -1));
            linearLayout4.addView(textView3);
            LinearLayout linearLayout6 = new LinearLayout(this);
            linearLayout6.setOrientation(0);
            linearLayout6.setGravity(8388629);
            linearLayout6.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0f));
            Iterator it3 = CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("+5", 5), TuplesKt.to("+20", 20), TuplesKt.to("+100", 100)}).iterator();
            int i23 = 0;
            while (it3.hasNext()) {
                Object next = it3.next();
                int i24 = i23 + 1;
                if (i23 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                Pair pair2 = (Pair) next;
                String str2 = (String) pair2.component1();
                final int iIntValue2 = ((Number) pair2.component2()).intValue();
                Iterator it4 = it3;
                TextView textView4 = new TextView(this);
                textView4.setText(str2);
                textView4.setGravity(17);
                textView4.setTextColor(i8);
                textView4.setTextSize(11.0f);
                int i25 = i23;
                textView4.setBackground(n(false));
                int i26 = i8;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(o(46), o(28));
                if (i25 > 0) {
                    layoutParams.leftMargin = o(4);
                }
                textView4.setLayoutParams(layoutParams);
                textView4.setOnClickListener(new View.OnClickListener() { // from class: y1.d2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        VxAceCheatActivity vxAceCheatActivity = this.b;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.addStatScript(vxAceCheatActivity.g, iIntValue, iIntValue2));
                    }
                });
                linearLayout6.addView(textView4);
                i23 = i24;
                it3 = it4;
                i8 = i26;
            }
            linearLayout4.addView(linearLayout6);
            linearLayout3.addView(linearLayout4);
            frameLayout = viewGroup;
            it = it2;
            linearLayout2 = linearLayout5;
            i8 = i8;
            i4 = 0;
            i6 = 16;
        }
        ViewGroup viewGroup2 = frameLayout;
        LinearLayout linearLayout7 = linearLayout2;
        String string9 = getString(com.minhub.gamehub.R.string.cheat_section_movement);
        Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
        linearLayout3.addView(r(string9));
        String string10 = getString(com.minhub.gamehub.R.string.cheat_btn_save_pos);
        Intrinsics.checkNotNullExpressionValue(string10, "getString(...)");
        final int i27 = 0;
        linearLayout3.addView(m(string10, new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i27) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string11 = getString(com.minhub.gamehub.R.string.cheat_btn_load_pos);
        Intrinsics.checkNotNullExpressionValue(string11, "getString(...)");
        final int i28 = 1;
        linearLayout3.addView(m(string11, new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i28) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        String string12 = getString(com.minhub.gamehub.R.string.cheat_btn_noclip);
        Intrinsics.checkNotNullExpressionValue(string12, "getString(...)");
        linearLayout3.addView(m(string12, new Function0(this) { // from class: y1.b2

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ VxAceCheatActivity f6200c;

            {
                this.f6200c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i22) {
                    case 0:
                        VxAceCheatActivity vxAceCheatActivity = this.f6200c;
                        vxAceCheatActivity.q(vxAceCheatActivity.f3726e.savePositionScript());
                        break;
                    case 1:
                        VxAceCheatActivity vxAceCheatActivity2 = this.f6200c;
                        vxAceCheatActivity2.q(vxAceCheatActivity2.f3726e.loadPositionScript());
                        break;
                    case 2:
                        VxAceCheatActivity vxAceCheatActivity3 = this.f6200c;
                        vxAceCheatActivity3.q(vxAceCheatActivity3.f3726e.toggleNoClipScript());
                        break;
                    case 3:
                        VxAceCheatActivity vxAceCheatActivity4 = this.f6200c;
                        vxAceCheatActivity4.q(vxAceCheatActivity4.f3726e.addGoldScript(1000));
                        break;
                    case 4:
                        VxAceCheatActivity vxAceCheatActivity5 = this.f6200c;
                        vxAceCheatActivity5.q(vxAceCheatActivity5.f3726e.addGoldScript(10000));
                        break;
                    case 5:
                        VxAceCheatActivity vxAceCheatActivity6 = this.f6200c;
                        vxAceCheatActivity6.q(vxAceCheatActivity6.f3726e.addGoldScript(9999999));
                        break;
                    case 6:
                        VxAceCheatActivity vxAceCheatActivity7 = this.f6200c;
                        vxAceCheatActivity7.q(vxAceCheatActivity7.f3726e.healAllScript());
                        break;
                    case 7:
                        VxAceCheatActivity vxAceCheatActivity8 = this.f6200c;
                        vxAceCheatActivity8.q(vxAceCheatActivity8.f3726e.giveAllItemsScript(99));
                        break;
                    case 8:
                        VxAceCheatActivity vxAceCheatActivity9 = this.f6200c;
                        vxAceCheatActivity9.q(vxAceCheatActivity9.f3726e.killAllEnemiesScript());
                        break;
                    case 9:
                        VxAceCheatActivity vxAceCheatActivity10 = this.f6200c;
                        vxAceCheatActivity10.q(vxAceCheatActivity10.f3726e.enemies1HPScript());
                        break;
                    case 10:
                        VxAceCheatActivity vxAceCheatActivity11 = this.f6200c;
                        vxAceCheatActivity11.q(vxAceCheatActivity11.f3726e.giveAllItemsScript(10));
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        VxAceCheatActivity vxAceCheatActivity12 = this.f6200c;
                        vxAceCheatActivity12.q(vxAceCheatActivity12.f3726e.giveAllWeaponsScript(10));
                        break;
                    case 12:
                        VxAceCheatActivity vxAceCheatActivity13 = this.f6200c;
                        vxAceCheatActivity13.q(vxAceCheatActivity13.f3726e.giveAllWeaponsScript(99));
                        break;
                    case 13:
                        VxAceCheatActivity vxAceCheatActivity14 = this.f6200c;
                        vxAceCheatActivity14.q(vxAceCheatActivity14.f3726e.giveAllArmorsScript(10));
                        break;
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        VxAceCheatActivity vxAceCheatActivity15 = this.f6200c;
                        vxAceCheatActivity15.q(vxAceCheatActivity15.f3726e.giveAllArmorsScript(99));
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        VxAceCheatActivity vxAceCheatActivity16 = this.f6200c;
                        vxAceCheatActivity16.q(vxAceCheatActivity16.f3726e.levelUpScript(vxAceCheatActivity16.f, 1));
                        break;
                    case 16:
                        VxAceCheatActivity vxAceCheatActivity17 = this.f6200c;
                        vxAceCheatActivity17.q(vxAceCheatActivity17.f3726e.levelUpScript(vxAceCheatActivity17.f, 5));
                        break;
                    default:
                        VxAceCheatActivity vxAceCheatActivity18 = this.f6200c;
                        vxAceCheatActivity18.q(vxAceCheatActivity18.f3726e.levelUpScript(vxAceCheatActivity18.f, 10));
                        break;
                }
                return Unit.INSTANCE;
            }
        }));
        ScrollView scrollView = new ScrollView(this);
        scrollView.addView(linearLayout3, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iMin, i3, 8388661);
        layoutParams2.topMargin = o(16);
        Unit unit = Unit.INSTANCE;
        viewGroup2.addView(linearLayout, layoutParams2);
        linearLayout7.setOnTouchListener(new Q(new Ref.FloatRef(), new Ref.FloatRef(), new Ref.FloatRef(), linearLayout, new Ref.FloatRef(), new Ref.BooleanRef(), ViewConfiguration.get(this).getScaledTouchSlop(), o(16)));
        setContentView(viewGroup2);
    }

    public final LinearLayout p(final ArrayList arrayList, final Function1 function1) {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = o(14);
        layoutParams.rightMargin = o(14);
        layoutParams.topMargin = o(4);
        layoutParams.bottomMargin = o(2);
        linearLayout.setLayoutParams(layoutParams);
        final List listListOf = CollectionsKt.listOf((Object[]) new Integer[]{-1, 0, 1, 2, 3});
        List listListOf2 = CollectionsKt.listOf((Object[]) new String[]{getString(com.minhub.gamehub.R.string.cheat_member_all), "#1", "#2", "#3", "#4"});
        arrayList.clear();
        final int i3 = 0;
        for (Object obj : listListOf2) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            TextView textView = new TextView(this);
            textView.setText((String) obj);
            textView.setGravity(17);
            textView.setTextColor(this.f3731l);
            textView.setTextSize(11.0f);
            textView.setBackground(n(i3 == 0));
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, o(30), 1.0f);
            if (i3 > 0) {
                layoutParams2.leftMargin = o(4);
            }
            textView.setLayoutParams(layoutParams2);
            textView.setOnClickListener(new View.OnClickListener() { // from class: y1.c2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i5 = VxAceCheatActivity.f3725o;
                    List list = listListOf;
                    int i6 = i3;
                    function1.invoke(list.get(i6));
                    int i7 = 0;
                    for (Object obj2 : arrayList) {
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            CollectionsKt.throwIndexOverflow();
                        }
                        ((TextView) obj2).setBackground(this.n(i7 == i6));
                        i7 = i8;
                    }
                }
            });
            arrayList.add(textView);
            linearLayout.addView(textView);
            i3 = i4;
        }
        return linearLayout;
    }

    public final void q(String str) {
        SharedPreferences sharedPreferences = getSharedPreferences("vxace_cheat_queue", 0);
        String string = sharedPreferences.getString("pending_scripts", "");
        String str2 = string != null ? string : "";
        if (str2.length() != 0) {
            str = a.h(str2, "\n", str);
        }
        sharedPreferences.edit().putString("pending_scripts", str).apply();
        Toast.makeText(this, getString(com.minhub.gamehub.R.string.cheat_queued), 0).show();
    }

    public final TextView r(String str) {
        TextView textView = new TextView(this);
        textView.setText(str);
        textView.setTextColor(this.f3732m);
        textView.setTextSize(10.0f);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setPadding(o(18), o(14), o(18), o(2));
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return textView;
    }
}
